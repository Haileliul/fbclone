import './Tabs/group.dart';
import './Tabs/home.dart';
import './Tabs/market.dart';
import './Tabs/message.dart';
import './Tabs/notification.dart';
import './Tabs/video.dart';
import 'data/Drower.dart';

import 'package:flutter/material.dart';

import './Login.dart';
import 'data/home/search.dart';

void main() => runApp(MyhomePage());

class MyhomePage extends StatefulWidget {
  const MyhomePage({super.key});

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 1,
          backgroundColor: Colors.white,
          title: const Text(
            "facebook",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Search()),
                );
              },
              icon: const Icon(
                Icons.search,
                color: Colors.black,
                size: 25,
              ),
              focusColor: Colors.amber,
            ),
            Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 25,
                  ),
                  // highlightColor: Colors.amber,
                );
              },
            )
          ],
          bottom: const TabBar(
              unselectedLabelColor: Colors.black54,
              labelColor: Colors.blue,
              indicatorColor: Colors.blue,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.home_outlined)),
                Tab(icon: Icon(Icons.group_outlined)),
                Tab(icon: Icon(Icons.messenger_outline_outlined)),
                Tab(icon: Icon(Icons.notifications_on_outlined)),
                Tab(icon: Icon(Icons.ondemand_video_outlined)),
                Tab(icon: Icon(Icons.shop_outlined)),
              ]),
        ),
        body: const TabBarView(children: <Widget>[
          Home(),
          Group(),
          Message(),
          Notific(),
          Video(),
          Market(),
        ]),
        drawer: drowe(),
      ),
    );
  }
}
