import 'package:shared_preferences/shared_preferences.dart';

import '../model/user.dart';

class UserPreference{

  Future<bool> saveUser(User user) async{

    final SharedPreferences pref = await SharedPreferences.getInstance();

    pref.setString("name", user.name);
    pref.setString("token", user.token);

    return pref.commit();
  }

}