import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

class SIngleNewsScreen extends StatefulWidget {
  const SIngleNewsScreen({super.key});

  @override
  State<SIngleNewsScreen> createState() => _SIngleNewsScreenState();
}

class _SIngleNewsScreenState extends State<SIngleNewsScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 4;
    // var width = MediaQuery.of(context).size.width / 4;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.blue,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              margin: const EdgeInsets.only(left: 20, right: 20),
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/obi.png'),
                      fit: BoxFit.fill)),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              width: double.infinity,
              child: const Text(
                '2023: Peter Obi Promises a new Nigeria devoid of poverty',
                style: TextStyle(
                    color: Colors.black, fontFamily: "Lato", fontSize: 15),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      TextButton(
                          style: TextButton.styleFrom(
                              minimumSize: const Size(8, 8),
                              backgroundColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3)),
                                side: BorderSide(color: Colors.blue, width: 1),
                              )),
                          onPressed: () {},
                          child: const Text(
                            "Politics",
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          )),
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
                            PhosphorIcons.chat_centered_dots_light,
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
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
              width: double.infinity,
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
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
              width: double.infinity,
              child: const Text(
                "Peter Obi, presidential candidate of Labour Party (LP), has promised to build a new Nigeria devoid of mass poverty and criminalities, if elected in 2023 general election. \nObi said this on Wednesday at his presidential campaign rally in Makurdi, pledging to ensure that youth were gainfully engaged by empowering them with skills. He promised to invest heavily in education and ensure that unemployment became history in Nigeria.",
                style: TextStyle(fontSize: 15, height: 1.5),
              ),
            ),
            Container(
              height: 200,
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/obi.png'),
                      fit: BoxFit.fill)),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
              width: double.infinity,
              child: const Text(
                "Obi also pledged to address the security challenge bedevilling the country, especially Benue, to ensure quick return of Internally Displaced Persons (IDPs) back to their ancestral homes.“We will secure and bring peace to Benue so that those at the IDP camps will go back to their homes and farms and we will support them in production. Benue will be supported to become an exporting state considering that it is an agriculturally rich state,” Obi said. He promised that Rivers Benue and Niger would be dredged to enhance water transportation in Nigeria, promising also to end crude oil theft in the country for the benefit of all Nigerians. With Obi and Datti, a new Nigeria is possible and I dare to say that Nigerians can hold me responsible if we do not turn Nigeria around for good,” he said.",
                style: TextStyle(fontSize: 15, height: 1.5),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Related",
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
              width: double.infinity,
              height: height * 3,
              padding: const EdgeInsets.all(20),
              child: ListView.builder(
                itemCount: 14,
                itemBuilder: (BuildContext context, int index) {
                  var boxwidth = MediaQuery.of(context).size.width / 4;
                  return Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
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
                                  child: const Text(
                                    'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum ',
                                    softWrap: true,
                                    maxLines: 2,
                                    overflow: TextOverflow.fade,
                                    style: TextStyle(
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
                                  style: TextStyle(
                                      fontFamily: "Lato", fontSize: 12),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
