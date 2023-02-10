import 'package:flutter/material.dart';

void main() => runApp(mystory());

class mystory extends StatelessWidget {
  const mystory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      // width: 50,

      // height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[200],
      ),

      // height: 80,
      // color: Colors.yellow,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(5), bottom: Radius.zero),
                image: DecorationImage(
                  image: AssetImage(
                      'Assets/images/smart-handsome-positive-indian-or-arabian-guy-with-glasses-in-casual-wear-student-or.jpg'),
                  fit: BoxFit.fill,
                )),
          ),
          Container(
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 1),
                  child: Icon(
                    Icons.add_circle,
                    size: 14,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  "Add to ",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                Text(
                  "Story",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
