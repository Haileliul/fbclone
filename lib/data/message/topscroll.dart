import 'package:flutter/material.dart';

void main() => runApp(myTop());

class myTop extends StatelessWidget {
  const myTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      // color: Colors.red,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 10),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                        'Assets/images/smiling-woman-point-finger-at-you.jpg'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Your Story"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
