import 'package:flutter/material.dart';

void main() => runApp(myList());

class myList extends StatelessWidget {
  const myList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 40,
        backgroundImage: AssetImage(
          'Assets/images/shot-of-a-young-woman-going-for-a-road-trip-with-their-dog.jpg',
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("this your name "),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Confirm",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Confirm",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey)),
                ),
              ),
            ],
          ),
        ],
      ),
      trailing: Text(
        "2d",
        style: TextStyle(color: Colors.red),
      ),
    );
  }
}
