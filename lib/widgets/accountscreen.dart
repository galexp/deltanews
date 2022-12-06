import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:deltanews/preference/user_preference.dart';
import 'package:deltanews/screens/signin_screen.dart';
import 'package:deltanews/util/http_service.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AccountWidget extends StatefulWidget {
  const AccountWidget({super.key});

  @override
  State<AccountWidget> createState() => _AccountWidgetState();
}

class _AccountWidgetState extends State<AccountWidget> {
  XFile? image;

  final ImagePicker picker = ImagePicker();

  //we can upload image from camera or from gallery based on parameter
  Future getImage(ImageSource media) async {
   var img = await picker.pickImage(source: media);
   
    
    setState(() {
      image = img;
    });
    // print(img!.path);
  }

  //show popup dialog
  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: const Text('Please choose media to select'),
            content: Container(
              clipBehavior: Clip.none,
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                    //if user click this button, user can upload image from gallery
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.gallery);
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.image),
                        Text('From Gallery'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    //if user click this button. user can upload image from camera
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.camera);
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.camera),
                        Text('From Camera'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'My Account',
                  style: TextStyle(fontFamily: "Lato", fontSize: 20),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(BootstrapIcons.pencil_square),
                  color: Colors.blue,
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        anchorPoint: const Offset(10, 10),
                        enableDrag: true,
                        context: context,
                        builder: (context) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ListTile(
                                leading: const Icon(Icons.photo),
                                title: const Text('Gallery'),
                                onTap: () {
                                  Navigator.pop(context);
                                  getImage(ImageSource.gallery);
                                },
                              ),
                              ListTile(
                                leading: const Icon(Icons.camera),
                                title: const Text('Camera'),
                                onTap: () {
                                  Navigator.pop(context);
                                  getImage(ImageSource.camera);
                                },
                              ),
                            ],
                          );
                        });
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 3),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(80)),
                        
                            ),
                        child: 
                        image != null ? 
                        Image.file(File(image!.path))
                        :  const Image(image: AssetImage('assets/images/placeholder.png')) ,
                  ),
                ),
              ],
            ),
          ),

          Container(
                  height: 70,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: 
                ElevatedButton(  
                  onPressed: (() {
                    UserPreference().removeUser();
                    HttpService().showMessage("Log Out successfully!", context);
                    Navigator.push(context, MaterialPageRoute(builder: 
                    (context) => const SignInScreen()));
                  }), 
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50)
                  ),
                  child: const Text("Log Out")),
                
           
          ),
        ],
      ),
    );
  }
}
