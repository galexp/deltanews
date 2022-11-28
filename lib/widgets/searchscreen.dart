import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 4;
    var width = MediaQuery.of(context).size.width / 4;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: const Text(
              "Search",
              style: TextStyle(fontFamily: "Lato", fontSize: 20),
            ),
          ),
          Container(
            clipBehavior: Clip.none,
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: width * 3.5,
                  height: 40,
                  padding: const EdgeInsets.only(left: 20),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: "Asaba",
                        suffixIcon: Icon(Icons.search),
                        filled: true,
                        fillColor: Color.fromARGB(255, 244, 246, 249),
                        enabledBorder: InputBorder.none),
                  ),
                ),
                Container(
                    width: width / 2,
                    height: 40,
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(right: 20),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          PhosphorIcons.funnel_simple_bold,
                          color: Colors.blue,
                        )))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            height: 30,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                            side: BorderSide(color: Colors.blue, width: 1),
                          )),
                      onPressed: () {},
                      child: const Text("Trending")),
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Popular News",
                  style: TextStyle(fontFamily: "Lato", fontSize: 18),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View All",
                      style: TextStyle(fontFamily: "Lato", fontSize: 13),
                    ))
              ],
            ),
          ),
          Container(
            height: 260,
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Container(
                      height: double.infinity,
                      width: width * 2.5,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/obi.png'),
                                    fit: BoxFit.fill)),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 10),
                            width: double.infinity,
                            height: 60,
                            child: const Text(
                              "2023: Obi Promises a new Nigeria deviod of poverty",
                              maxLines: 2,
                              softWrap: true,
                              style:
                                  TextStyle(fontFamily: "Lato", fontSize: 15),
                            ),
                          ),
                          Container(
                            height: 15,
                            width: double.infinity,
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Vangard News',
                                  maxLines: 1,
                                  softWrap: true,
                                  style: TextStyle(color: Colors.blue),
                                ),
                                Text(
                                  '5 hours Ago',
                                  maxLines: 1,
                                  softWrap: true,
                                  style: TextStyle(color: Colors.blue),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ));
              },
            ),
          ),
          const Divider(
            height: .1,
            thickness: 2,
            color: Color.fromARGB(155, 230, 230, 230),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Recommended Topics ",
                  style: TextStyle(fontFamily: "Lato", fontSize: 18),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View All",
                      style: TextStyle(fontFamily: "Lato", fontSize: 13),
                    ))
              ],
            ),
          ),
          Container(
            height: height * 2,
            width: double.infinity,
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: double.infinity,
                  height: 100,
                  clipBehavior: Clip.none,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 100,
                        width: width * 2.5,
                        clipBehavior: Clip.none,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              "Okowa imports ‘Birmingham 2022 Tartan Track’ for NSF in Asaba",
                              maxLines: 3,
                              softWrap: true,
                              style: TextStyle(fontFamily: "Lato"),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Vangard News',
                                  maxLines: 1,
                                  softWrap: true,
                                  style: TextStyle(color: Colors.blue),
                                ),
                                Text(
                                  '5 hours Ago',
                                  maxLines: 1,
                                  softWrap: true,
                                  style: TextStyle(color: Colors.blue),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                          height: 100,
                          width: width * 1.1,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/Image.png'),
                                fit: BoxFit.fill),
                          ))
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
