import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:demo2/data/Drowerlist.dart';

import '../Login.dart';

void main() => runApp(drowe());

class drowe extends StatelessWidget {
  drowe({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: 40,
                // color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.arrow_back),
                          ),
                          Text(
                            "Menu",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 25,
                      ),
                      // focusColor: Colors.amber,
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              flex: 15,
              child: SingleChildScrollView(
                child: Column(children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                          'Assets/images/multi-ethnic-guys-and-girls-taking-selfie-outdoors-with-backlight-happy-life-style-friendship.jpg'),
                    ),
                    title: Text("Haileliul Baye"),
                    subtitle: Text("View Your profile"),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                    indent: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.85,
                    // color: Colors.yellow,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Container(
                          height: 50,
                          width: double.infinity,
                          color: Colors.white,
                          child: TextButton(
                            onPressed: () {
                              print("it has been cliked");
                              FirebaseAuth.instance.signOut().then((value) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Main(),
                                  ),
                                );
                              });
                            },
                            child: ListTile(
                              leading: items[index]["pre"],
                              title: items[index]["title"],
                              trailing: items[index]["post"],
                            ),
                          ),
                          margin: EdgeInsets.only(bottom: 5),
                        );
                      },
                      itemCount: items.length,
                    ),
                  ),
                ]),
              ),
            ),
            // list
          ],
        ),
      ),
    );
  }
}
