import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import './Home.dart';
import './signup.dart';
// import 'package:get/get.dart';

void main() => runApp(Main());

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  final _EmailController = TextEditingController();
  final _Passwordontroller = TextEditingController();
  final GlobalKey<FormState> _emailkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _passkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 2,
          title: Text(
            "Facebook",
            style: TextStyle(color: Colors.grey),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mobile number or email ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Form(
                      key: _emailkey,
                      child: TextFormField(
                        controller: _EmailController,
                        onChanged: (value) {
                          _emailkey.currentState?.validate();
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please Enter a phone Number";
                          } else if (!RegExp(
                                  r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$')
                              .hasMatch(value)) {
                            return "Please Enter A valid Number";
                          }
                        },
                        decoration: InputDecoration(
                          suffix: IconButton(
                            onPressed: () {
                              setState(() {
                                _EmailController.clear();
                              });
                            },
                            icon: Icon(Icons.close),
                          ),
                          label: Text("Enter name or Email"),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.blue),
                            // borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Password",
                      style: TextStyle(fontSize: 20),
                    ),
                    Form(
                      key: _passkey,
                      child: TextFormField(
                        onChanged: (value) {
                          _passkey.currentState?.validate();
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Password";
                          }
                        },
                        controller: _Passwordontroller,
                        decoration: InputDecoration(
                          suffix: IconButton(
                            onPressed: () {
                              setState(() {
                                _Passwordontroller.clear();
                              });
                            },
                            icon: Icon(Icons.close),
                          ),
                          label: Text(
                            "Enter the password",
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.blue),
                            // borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            (Color.fromARGB(255, 0, 89, 162)))),
                    onPressed: () {
                      FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: _EmailController.text,
                              password: _Passwordontroller.text)
                          .then((value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyhomePage()));
                      });
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green)),
                        onPressed: () {
                          print("you should be signed up");
                          // Get.toNamed("/second");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => signup(),
                              ));
                        },
                        child: Text(
                          "Create new Acconunt",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Image(
                  image: AssetImage('Assets/images/email.png'),
                ),
                Text(
                  "አማርኛ",
                  style: TextStyle(color: Colors.blue),
                ),
                Text(
                  "Englishe",
                  style: TextStyle(color: Colors.blue),
                ),
                Text(
                  "Afaan Oro",
                  style: TextStyle(color: Colors.blue),
                ),
                Text(
                  "More language...",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ));
  }
}
