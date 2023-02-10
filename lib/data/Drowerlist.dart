import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';

final List items = [
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/Live videos.png'),
    ),
    "title": Text("Live videos"),
    "post": Icon(Icons.bolt),
  },
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/Messages.png'),
    ),
    "title": Text("Messages"),
    "post": Icon(Icons.bolt),
  },
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/Groups.png'),
    ),
    "title": Text("Groups"),
    "post": Icon(Icons.bolt),
  },
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/Friends.png'),
    ),
    "title": Text("Friends"),
    "post": Icon(Icons.bolt),
  },
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/Videos.png'),
    ),
    "title": Text("Videos"),
    "post": Icon(Icons.bolt),
  },
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/Marketplace.png'),
    ),
    "title": Text("Marketplace"),
    "post": Icon(Icons.bolt),
  },
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/Pages.png'),
    ),
    "title": Text("Pages"),
    "post": Icon(Icons.bolt),
  },
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/Saved.png'),
    ),
    "title": Text("Saved"),
    "post": Icon(Icons.bolt),
  },
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/Wifi & cellular performance.png'),
    ),
    "title": Text("Wifi & cellular performance"),
    "post": Icon(Icons.bolt),
  },
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/Memories.png'),
    ),
    "title": Text("Memories"),
    "post": Icon(Icons.bolt),
  },
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/Events .png'),
    ),
    "title": Text("Events"),
    "post": Icon(Icons.bolt),
  },
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/Games.png'),
    ),
    "title": Text("Games"),
    "post": Icon(Icons.bolt),
  },
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/Fantasy Games.png'),
    ),
    "title": Text("Fantasy Games"),
    "post": Icon(Icons.bolt),
  },
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/Climate Science Center.png'),
    ),
    "title": Text("Climate Science Center"),
    "post": Icon(Icons.bolt),
  },
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/Feeds.png'),
    ),
    "title": Text("Feeds"),
    "post": Icon(Icons.bolt),
  },
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/Settings.png'),
    ),
    "title": Text("Settings"),
    "post": Icon(Icons.bolt),
  },
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/Dark mode .png'),
    ),
    "title": Text("Dark mode"),
    "post": SwitcherButton(
      onColor: Colors.lightBlueAccent,
      value: true,
      onChange: (value) {
        print(value);
      },
    )
  },
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/Language.png'),
    ),
    "title": Text("Language"),
    "post": Icon(Icons.bolt),
  },
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/Data Saver.png'),
    ),
    "title": Text("Data Saver"),
    "post": Icon(Icons.bolt),
  },
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/Clear Space.png'),
    ),
    "title": Text("Clear Space"),
    "post": Icon(Icons.bolt),
  },
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/Help.png'),
    ),
    "title": Text("Help"),
    "post": Icon(Icons.bolt),
  },
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/Support index.png'),
    ),
    "title": Text("Support inbox"),
    "post": Icon(Icons.bolt),
  },
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/About.png'),
    ),
    "title": Text("About"),
    "post": Icon(Icons.bolt),
  },
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/Report a Problem.png'),
    ),
    "title": Text("Report a Problem"),
    "post": Icon(Icons.bolt),
  },
  {
    "pre": Image(
      image: AssetImage('Assets/iconDrowr/Log out.png'),
    ),
    "title": Text("Log out"),
    "post": Icon(Icons.bolt),
  },
];
