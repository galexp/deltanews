import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:deltanews/screens/notification_screen.dart';
import 'package:deltanews/widgets/accountscreen.dart';
import 'package:deltanews/widgets/bookmarkscreen.dart';
import 'package:deltanews/widgets/homescreen.dart';
import 'package:deltanews/widgets/searchscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:provider/provider.dart';
import 'package:unicons/unicons.dart';

import '../model/user.dart';
import '../preference/user_preference.dart';
import '../provider/user_provider.dart';
import '../widgets/add_post_screen.dart';

class SearchScreen extends StatefulWidget {
  final User user;
  const SearchScreen({super.key, required this.user});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int selectedIndex = 0;

  static const List<Widget> screens = [
    HomeScreenWidget(),
    SearchWidget(),
    BookMarkWidget(),
    AccountWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Image(image: AssetImage('assets/images/logo.png')),
        ),
        leadingWidth: 50,
        title: Text(
          widget.user.name.toUpperCase(),
          style: const TextStyle(color: Colors.black, fontFamily: "Lato"),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 160, 208, 244),
              maxRadius: 15,
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NotificationScreen()));
                  },
                  icon: const Icon(
                    FeatherIcons.bell,
                    size: 15,
                  )),
            ),
          )
        ],
      ),
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 10,
        selectedLabelStyle: const TextStyle(fontSize: 13, fontFamily: "Lato"),
        unselectedFontSize: 10,
        unselectedLabelStyle: const TextStyle(
            fontSize: 13, color: Color.fromARGB(255, 153, 158, 161)),
        unselectedIconTheme:
            const IconThemeData(color: Color.fromARGB(255, 153, 158, 161)),
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(UniconsLine.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(UniconsSolid.bookmark), label: "Bookmark"),
          BottomNavigationBarItem(
              icon: Icon(BootstrapIcons.person_circle), label: "Account")
        ],
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddPostScreen()));
        },
        child: const Icon(BootstrapIcons.plus),
      ),
    );
  }
}
