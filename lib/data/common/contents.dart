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
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  'Assets/images/businessman-smiling-with-arms-crossed-on-white-background.jpg'),
            ),
            title: Row(
              children: [
                Text("this is Tile for "),
                Icon(
                  Icons.circle_rounded,
                  size: 5,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Follow",
                      style: TextStyle(color: Colors.blue),
                    ))
              ],
            ),
            subtitle: Row(
              children: [
                Text("this is the sub title  . 1d ."),
                Icon(
                  Icons.circle_rounded,
                  size: 15,
                )
              ],
            ),
            trailing: IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {},
            ),
          ),

          Container(
            height: size.height * 0.4,
            width: size.width,
            color: Colors.pink,
          ),
          Text(" this is the place where the text exist"),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 9,
                        child: Icon(
                          Icons.thumb_up,
                          size: 10,
                        ),
                      ),
                      CircleAvatar(
                        radius: 9,
                        backgroundColor: Colors.red,
                        // backgroundColor: Colors.red,
                        child: Icon(
                          Icons.heart_broken,
                          size: 10,
                        ),
                      ),
                      Text("257K"),
                    ],
                  ),
                ),
                Text("20M Views"),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.thumb_up_outlined),
                    Text("89K"),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.messenger_outline),
                    Text("89K"),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.forward_rounded),
                    Text("89K"),
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
