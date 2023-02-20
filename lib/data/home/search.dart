import 'package:flutter/material.dart';

void main() => runApp(const Search());

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Column(children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              // ignore: prefer_const_constructors
              icon: Icon(
                Icons.arrow_back,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 5,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        const Divider(
          color: Colors.grey,
          height: 2,
          thickness: 5,
        ),
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text("Recent Search"),
            const Text(
              "See all",
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
        ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return TextButton(
              onPressed: () {
                print("I love you!!");
              },
              child: ListTile(
                leading: Stack(
                  alignment: Alignment.bottomRight,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(
                          'Assets/images/woman-with-hot-cup-at-home-calendar.jpg'),
                    ),
                  ],
                ),
                title: const Text("Haileliul  Baye"),
                subtitle: const Text("Hi"),
                trailing: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {},
                ),
              ),
            );
          },
        ),
      ]),
    ));
  }
}
