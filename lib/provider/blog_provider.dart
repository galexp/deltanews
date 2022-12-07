import 'dart:convert';

import 'package:deltanews/model/blog.dart';
import 'package:deltanews/provider/auth_provider.dart';
import 'package:deltanews/util/http_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class BlogProvider with ChangeNotifier{
  Status _isLoadingData = Status.notLoading;

  Status get isLoadingData => _isLoadingData;

  Future<Map<String, dynamic>> saveBlog(String title, String body, 
  String author, String token) async{

    final Map<String, dynamic> blogData = {
        "title" : title,
        "body" : body,
        "author" : author
    }; 

    _isLoadingData = Status.isLoading;
    notifyListeners();

    final response = await post(Uri.parse(HttpService.blog),
      headers: {
        'content-Type': 'application/json',
        'Authorization' : 'Bearer $token'
      },
      body: json.encode(blogData)
    ).then(onValue)
    .catchError(onError);

    _isLoadingData = Status.loaded;
    notifyListeners();

  return response;

  }

  static Future onValue(Response response) async{

    var result;

    final Map<String, dynamic> responseData = json.decode(response.body);
  
    if(response.statusCode == 200){

      print(responseData);
      
      Blog blog = Blog.fromJson(responseData['data']);
 print(blog.body);
      result = {
        'status' : 200,
        'message' : responseData['message'],
        'data' : blog
      };
    
    }else{
      result = {
        'status' : 500,
        'message' : "Unable to create post!",
        'data' : "Server"
      };
    }

    

    return result;

  }

  static onError(error){
    print(error);
    return {'status': false, 'message': 'Unsuccessful Request', 'data': error};
  }
}