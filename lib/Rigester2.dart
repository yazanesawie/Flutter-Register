
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

//laheeb comments AppBar + space between first two text fields
class Register2 extends StatefulWidget {
  const Register2({super.key});

  @override
  State<Register2> createState() => _Register2State();
}

class _Register2State extends State<Register2> {
  bool pass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.pink, Colors.yellow, Colors.blue])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Lottie.asset('assets/lotti/login2.json', height: 150, width: 150),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                padding:
                EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 20),
               width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  children: [
                    Text(
                      'Hello',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Please Login to Your Account',
                      style:
                      TextStyle(fontSize: 16, color: Colors.grey.shade700),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                gapPadding: 10,
                                borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                                borderSide:
                                BorderSide(color: Colors.grey.shade800)),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 35, vertical: 25),
                            border: OutlineInputBorder(
                                gapPadding: 10,
                                borderRadius:
                                const BorderRadius.all(Radius.circular(25)),
                                borderSide:
                                BorderSide(color: Colors.grey.shade800)),
                            labelText: 'Email Address',
                            labelStyle: TextStyle(color: Colors.grey.shade800),
                            hintText: 'Email Address',
                            suffixIcon: Icon(
                              Icons.email,
                              size: 30,
                              color: Colors.red,
                            ))),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                        obscureText: !pass,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                gapPadding: 10,
                                borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                                borderSide:
                                BorderSide(color: Colors.grey.shade800)),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 35, vertical: 25),
                            border: OutlineInputBorder(
                                gapPadding: 10,
                                borderRadius:
                                const BorderRadius.all(Radius.circular(25)),
                                borderSide:
                                BorderSide(color: Colors.grey.shade800)),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.grey.shade800),
                            hintText: 'Password',
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    pass = !pass;
                                  });
                                },
                                icon: Icon(
                                  pass
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.red,
                                  size: 30,
                                )))),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forget Password',
                            style: TextStyle(color: Colors.red),
                          )),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: 55,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.purple, Colors.orange],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Or Login using Social Media Account',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.facebook,
                              color: Colors.blue,
                              size: 35,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.facebook,
                              color: Colors.red,
                              size: 35,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.facebook,
                              color: Colors.orange,
                              size: 35,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.facebook,
                              color: Colors.green,
                              size: 35,
                            )),
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
