import 'package:demo2/data/common/yvideos.dart';
import 'package:flutter/material.dart';

class content extends StatelessWidget {
  const content({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: MediaQuery.of(context).size.height * 0.623,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          //   it is from here
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage(
                  'Assets/images/businessman-smiling-with-arms-crossed-on-white-background.jpg'),
            ),
            title: Row(
              children: [
                const Text("this is Tile for "),
                const Icon(
                  Icons.circle_rounded,
                  size: 5,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Follow",
                      style: TextStyle(color: Colors.blue),
                    ))
              ],
            ),
            subtitle: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text("this is the sub title  . 1d ."),
                const Icon(
                  Icons.circle_rounded,
                  size: 15,
                )
              ],
            ),
            trailing: IconButton(
              icon: const Icon(Icons.more_horiz),
              onPressed: () {},
            ),
          ),

          Container(
            height: size.height * 0.4,
            width: size.width,
            // color: Colors.pink,
            child: video(),
          ),
          const Text(" this is the place where the text exist"),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CircleAvatar(
                        radius: 9,
                        child: Icon(
                          Icons.thumb_up,
                          size: 10,
                        ),
                      ),
                      const CircleAvatar(
                        radius: 9,
                        backgroundColor: Colors.red,
                        // backgroundColor: Colors.red,
                        child: Icon(
                          Icons.heart_broken,
                          size: 10,
                        ),
                      ),
                      const Text("257K"),
                    ],
                  ),
                ),
                const Text("20M Views"),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(Icons.thumb_up_outlined),
                    const Text("89K"),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(Icons.messenger_outline),
                    const Text("89K"),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(Icons.forward_rounded),
                    const Text("89K"),
                  ],
                ),
              ),
            ],
          )
          // upto here
        ],
      ),
    );
  }
}
