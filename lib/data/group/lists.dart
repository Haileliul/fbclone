// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

void main() => runApp(const myList());

class myList extends StatelessWidget {
  const myList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // ignore: prefer_const_constructors
      leading: CircleAvatar(
        radius: 40,
        backgroundImage: const AssetImage(
          'Assets/images/shot-of-a-young-woman-going-for-a-road-trip-with-their-dog.jpg',
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("this your name "),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {},
                  // ignore: sort_child_properties_last
                  child: const Text(
                    "Confirm",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
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
      trailing: const Text(
        "2d",
        style: TextStyle(color: Colors.red),
      ),
    );
  }
}
