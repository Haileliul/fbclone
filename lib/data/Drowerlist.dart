import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';

final List items = [
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/Live videos.png'),
    ),
    "title": const Text("Live videos"),
    "post": const Icon(Icons.bolt),
  },
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/Messages.png'),
    ),
    "title": const Text("Messages"),
    "post": const Icon(Icons.bolt),
  },
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/Groups.png'),
    ),
    "title": const Text("Groups"),
    "post": const Icon(Icons.bolt),
  },
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/Friends.png'),
    ),
    "title": const Text("Friends"),
    "post": const Icon(Icons.bolt),
  },
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/Videos.png'),
    ),
    "title": const Text("Videos"),
    "post": const Icon(Icons.bolt),
  },
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/Marketplace.png'),
    ),
    "title": const Text("Marketplace"),
    "post": const Icon(Icons.bolt),
  },
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/Pages.png'),
    ),
    "title": const Text("Pages"),
    "post": const Icon(Icons.bolt),
  },
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/Saved.png'),
    ),
    "title": const Text("Saved"),
    "post": const Icon(Icons.bolt),
  },
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/Wifi & cellular performance.png'),
    ),
    "title": const Text("Wifi & cellular performance"),
    "post": const Icon(Icons.bolt),
  },
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/Memories.png'),
    ),
    "title": const Text("Memories"),
    "post": const Icon(Icons.bolt),
  },
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/Events .png'),
    ),
    "title": const Text("Events"),
    "post": const Icon(Icons.bolt),
  },
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/Games.png'),
    ),
    "title": const Text("Games"),
    "post": const Icon(Icons.bolt),
  },
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/Fantasy Games.png'),
    ),
    "title": const Text("Fantasy Games"),
    "post": const Icon(Icons.bolt),
  },
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/Climate Science Center.png'),
    ),
    "title": const Text("Climate Science Center"),
    "post": const Icon(Icons.bolt),
  },
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/Feeds.png'),
    ),
    "title": const Text("Feeds"),
    "post": const Icon(Icons.bolt),
  },
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/Settings.png'),
    ),
    "title": const Text("Settings"),
    "post": const Icon(Icons.bolt),
  },
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/Dark mode .png'),
    ),
    "title": const Text("Dark mode"),
    "post": SwitcherButton(
      onColor: Colors.lightBlueAccent,
      value: true,
      onChange: (value) {
        print(value);
      },
    )
  },
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/Language.png'),
    ),
    "title": const Text("Language"),
    "post": const Icon(Icons.bolt),
  },
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/Data Saver.png'),
    ),
    "title": const Text("Data Saver"),
    "post": const Icon(Icons.bolt),
  },
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/Clear Space.png'),
    ),
    "title": const Text("Clear Space"),
    "post": const Icon(Icons.bolt),
  },
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/Help.png'),
    ),
    "title": const Text("Help"),
    "post": const Icon(Icons.bolt),
  },
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/Support index.png'),
    ),
    "title": const Text("Support inbox"),
    "post": const Icon(Icons.bolt),
  },
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/About.png'),
    ),
    "title": const Text("About"),
    "post": const Icon(Icons.bolt),
  },
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/Report a Problem.png'),
    ),
    "title": const Text("Report a Problem"),
    "post": const Icon(Icons.bolt),
  },
  {
    "pre": const Image(
      image: AssetImage('Assets/iconDrowr/Log out.png'),
    ),
    "title": const Text("Log out"),
    "post": const Icon(Icons.bolt),
  },
];
