// ignore_for_file: prefer_const_constructors

import './Tabs/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import './Login.dart';

void main() => runApp(signup());

class signup extends StatelessWidget {
  signup({super.key});
  final _EmailController = TextEditingController();
  final _Passwordontroller = TextEditingController();
  final _FNamecontroller = TextEditingController();
  final _LNamecontroller = TextEditingController();
  final _phonecontroller = TextEditingController();

  /*  final firebase = FirebaseFirestore.instance;

  Create() async {
    try {
      await firebase
          .collection("user")
          .doc(Name.text)
          .set({"name": Name.text, "email": Email.text});
    } catch (e) {
      print(e);
    }
  }

 */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: Colors.grey[200],
            elevation: 20,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "it's free and always will be.",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: SizedBox(
                                        height: 50,
                                        child: TextFormField(
                                          controller: _FNamecontroller,
                                          decoration: InputDecoration(
                                            label: Text("First Name"),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 1, color: Colors.blue),
                                              // borderRadius: BorderRadius.circular(50),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: SizedBox(
                                        height: 50,
                                        child: TextFormField(
                                          controller: _LNamecontroller,
                                          decoration: InputDecoration(
                                            label: Text("Last Name"),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 1, color: Colors.blue),
                                              // borderRadius: BorderRadius.circular(50),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  height: 50,
                                  child: TextFormField(
                                    controller: _EmailController,
                                    decoration: InputDecoration(
                                      label: Text("Enter Email"),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.blue),
                                        // borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  height: 50,
                                  child: TextFormField(
                                    keyboardType: TextInputType.phone,
                                    controller: _phonecontroller,
                                    decoration: InputDecoration(
                                      label: Text("Phone NUmber"),
                                      enabledBorder: OutlineInputBorder(
                                        // ignore: prefer_const_constructors
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.blue),
                                        // borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  height: 50,
                                  child: TextFormField(
                                    controller: _Passwordontroller,
                                    decoration: InputDecoration(
                                      label: Text("Password"),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.blue),
                                        // borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Birthday:",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                TextButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.blue),
                                  ),
                                  onPressed: () {
                                    print("klicked");
                                  },
                                  child: Text(
                                    "Set Date",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Row(
                                  children: [
                                    TextButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.blue),
                                      ),
                                      child: Text(
                                        "Sign Up",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {
                                        FirebaseAuth.instance
                                            .createUserWithEmailAndPassword(
                                                email: _EmailController.text,
                                                password:
                                                    _Passwordontroller.text)
                                            .then((value) {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Main()));
                                          print("created new Account");
                                        }).onError((error, stackTrace) {
                                          print("Error ${error.toString()}");
                                        });
                                      },
                                    ),
                                    Text("Do you have an Account?"),
                                    TextButton(
                                      onPressed: () {
                                        print("you shloud be login");
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Main(),
                                            ));
                                      },
                                      child: Text("Login"),
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      ]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
