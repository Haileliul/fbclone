import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(Notific());

class Notific extends StatefulWidget {
  const Notific({super.key});

  @override
  State<Notific> createState() => _NotificState();
}

class _NotificState extends State<Notific> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
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
                  "Messages",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 25,
                  ),
                  splashRadius: 20,
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 11,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.778,
            width: MediaQuery.of(context).size.width,
            // color: Colors.red, ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.07,
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Mark all as read"),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white)),
                      ),
                    ),
                  ),
                  Text(
                    "Earlier",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.7,
                    // color: Colors.amber,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.7,
                          // color: Colors.red,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'Assets/images/woman-with-hot-cup-at-home-calendar.jpg',
                                        ),
                                      ),
                                      CircleAvatar(
                                        radius: 7,
                                        backgroundColor: Colors.amber,
                                        child: Icon(
                                          Icons.groups,
                                          color: Colors.white,
                                          size: 10,
                                        ),
                                      ),
                                    ]),
                                title: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Haileliule baye" + " " + "posted in",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                          "Contrary to popular belief, Lorem Ipsum is not simply random text. "),
                                    ]),
                                subtitle: Text(
                                  DateFormat('MMMd').format(DateTime.now()) +
                                      " at" +
                                      DateFormat('jm').format(DateTime.now()),
                                ),
                                trailing: IconButton(
                                  icon: Icon(Icons.more_horiz),
                                  onPressed: () {},
                                ),
                              );
                            },
                            // physics: NeverScrollableScrollPhysics(),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
