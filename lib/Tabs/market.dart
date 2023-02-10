import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(Market());

class Market extends StatefulWidget {
  const Market({super.key});

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              // color: Colors.red,
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: Colors.white,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Marketplace",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: 25,
                      ),
                      splashRadius: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 10,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.78,
            width: MediaQuery.of(context).size.width,
            // color: Colors.red,
            child: ListView(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.green,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Inbox",
                          style: TextStyle(color: Colors.grey),
                        ),
                        /*   style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.red),
                          shape: MaterialStateProperty.all(OutlinedBorder()
                             ),
                        ), */
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sell",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Categories",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Search",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.amber,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("New for you"),
                          Text(
                            "See all(" + "21" + ") ",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.12,
                        color: Colors.grey,
                        child: ListTile(
                          leading: Image(
                            image: AssetImage(
                                'Assets/images/smiling-woman-point-finger-at-you.jpg'),
                          ),
                          title: Text(
                              "Browth more Electronics & \n computers listings in your\n area"),
                          subtitle: Text(
                            DateFormat('MMMd').format(DateTime.now()) +
                                " at" +
                                DateFormat('jm').format(DateTime.now()),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Today's Picks"),
                          Row(
                            children: [
                              Icon(Icons.navigation),
                              Text("Bahir Dar . 65 km")
                            ],
                          ),
                        ],
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.3,
                              width: MediaQuery.of(context).size.width,
                              // color: Colors.red,
                              child: Row(children: [
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Image(
                                            image: AssetImage(
                                                'Assets/images/smiling-young-black-woman-with-afro-hairstyle-using-her-smart-phone-on-the-street.jpg'),
                                          ),
                                        ),
                                        ListTile(
                                          title: Row(
                                            children: [
                                              Icon(Icons.price_change),
                                              Text("1,500")
                                            ],
                                          ),
                                          subtitle: Text("Manila, National"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Image(
                                            image: AssetImage(
                                                'Assets/images/smiling-young-black-woman-with-afro-hairstyle-using-her-smart-phone-on-the-street.jpg'),
                                          ),
                                        ),
                                        ListTile(
                                          title: Row(
                                            children: [
                                              Icon(Icons.price_change),
                                              Text("1,500")
                                            ],
                                          ),
                                          subtitle: Text("Manila, National"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
