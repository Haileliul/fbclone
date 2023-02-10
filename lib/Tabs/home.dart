import 'package:flutter/material.dart';

import '../data/common/contents.dart';
// import '../data/maincontent/bottom.dart';
// import '../data/maincontent/heading.dart';
import '../data/home/mystory.dart';
import '../data/home/photodata.dart';

void main() => runApp(const Home());

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.width * 0.8,
      child: Column(
        children: [
          Container(
            height: size.height * 0.10,
            width: size.width,
            // color: Colors.red,
            // padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 27,
                  backgroundImage: AssetImage(
                      'Assets/images/smiling-business-woman-working-with-laptop-while-looking-at-camera-in-modern-startup-office.jpg'),
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.grey[200])),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "  What's in Your Mind?                 ",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.photo_album,
                      ),
                    ),
                    const Text("Photo"),
                  ],
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2.0,
          ),
          Container(
              height: size.height * 0.695,
              width: size.width,
              // color: Colors.red,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: size.height * 0.15,
                      width: size.width,
                      // color: Colors.red,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          mystory(),
                          Container(
                            height: double.infinity,
                            width: size.width * 0.9,
                            // color: Colors.amber,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return RecentPhotos();
                                }),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                      thickness: 5.0,
                    ),
                    Container(
                      height: size.height * 0.7,
                      child: ListView.builder(
                        itemCount: 4,
                        itemBuilder: (context, index) => content(),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
