import 'package:deltanews/provider/blog_provider.dart';
import 'package:deltanews/screens/single_news.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:provider/provider.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({super.key});

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 4;
    var width = MediaQuery.of(context).size.width / 4;

    // call the blog provider to display the list of blogs
    // final blogProvider = Provider.of<BlogProvider>(context);

    return SingleChildScrollView(
      child: Column(
        children: [
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
                        hintText: "Search",
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
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Featured",
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
          FutureBuilder(
            future: BlogProvider().getBlogs(),
            builder: (context, snapshot) {
              if(snapshot.hasData){
                  return CarouselSlider(
                options: CarouselOptions(
                    enableInfiniteScroll: true,
                    aspectRatio: 20 / 9,
                    viewportFraction: 0.9,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    pauseAutoPlayOnTouch: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.scale),
                items: [4].map((i) {
                  print(i);
                  return Builder(
                    builder: ( context) {
                      return Container(
                        margin: const EdgeInsets.only(top: 5),
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, bottom: 30),
                        width: double.infinity,
                        height: 200,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/obi.png'),
                                fit: BoxFit.fill)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children:  [
                            Text(
                              snapshot.data![i].title,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Lato",
                                  fontSize: 15),
                            )
                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              );
          
              }else{
                return const Center(
                    child:  CircularProgressIndicator(),
                  );
              }
              }
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "News",
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
            width: double.infinity,
            height: height * 2,
            padding: const EdgeInsets.all(20),
            child: FutureBuilder(
              future: BlogProvider().getBlogs(),
              builder: (context, snapshot) {
                if(snapshot.hasData){

                   return ListView.builder(
                  reverse: true,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, int index) {
                    var boxwidth = MediaQuery.of(context).size.width / 4;
                    return Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      width: double.infinity,
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.blue)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: double.infinity,
                            width: boxwidth * 1.5,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/newsimage.png'),
                                    fit: BoxFit.fill)),
                          ),
                          Container(
                            width: boxwidth * 2,
                            height: double.infinity,
                            clipBehavior: Clip.none,
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 60,
                                  padding: const EdgeInsets.all(5),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SIngleNewsScreen()));
                                    },
                                    child:  Text(
                                      "${snapshot.data![index].title}\n${snapshot.data![index].body}",
                                      softWrap: true,
                                      maxLines: 2,
                                      overflow: TextOverflow.fade,
                                      style: const TextStyle(
                                          fontFamily: "Lato", fontSize: 15),
                                    ),
                                  ),
                                ),
                                ListTile(
                                  leading: const Image(
                                    image: AssetImage('assets/images/logo.png'),
                                    width: 25,
                                  ),
                                  title: const Text(
                                    "Delta News",
                                    style:
                                        TextStyle(fontFamily: "Lato", fontSize: 12),
                                  ),
                                  horizontalTitleGap: .1,
                                  trailing: TextButton(
                                      style: TextButton.styleFrom(
                                          minimumSize: const Size(8, 8),
                                          backgroundColor: Colors.white,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(3)),
                                            side: BorderSide(
                                                color: Colors.blue, width: 1),
                                          )),
                                      onPressed: () {},
                                      child: const Text(
                                        "News",
                                        style: TextStyle(fontSize: 10),
                                      )),
                                ),
                                Container(
                                  height: 50,
                                  width: double.infinity,
                                  clipBehavior: Clip.none,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                PhosphorIcons.thumbs_up_light,
                                                color: Colors.blue,
                                              )),
                                          const Text('32k'),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                PhosphorIcons
                                                    .chat_centered_dots_light,
                                                color: Colors.blue,
                                              )),
                                          const Text('11.5k'),
                                        ],
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            PhosphorIcons.bookmark_light,
                                            color: Colors.blue,
                                          ))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );

                }else{
                  return const Center(
                    child:  CircularProgressIndicator(),
                  );
                }
               
              }
            ),
          )
        ],
      ),
    );
  }
}
