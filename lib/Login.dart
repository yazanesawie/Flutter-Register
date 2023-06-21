import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.green,
                Colors.green.shade800,
                Colors.green.shade400,

              ]
            )
          ),
          child: Column(
            children: [
              Container(
                height: 200,
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Login',style: TextStyle(color: Colors.white , fontSize: 32),),
                    SizedBox(height: 7,),
                    Text('Welcome Back!'),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(children: [
                    SizedBox(height: 50,),
                    TextField(
                      style: TextStyle(fontSize: 14),
                      decoration:InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(fontSize: 14,color: Colors.grey),
                      ) ,
                    ),
                    Divider(color: Colors.black54,height: 1,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(fontSize: 14,color: Colors.grey),

                      ),
                    ),
                    SizedBox(height: 40,),
                    MaterialButton(
                        onPressed: (){},
                      height: 40,
                      minWidth: 200,
                      child: Text("Login",),
                      textColor: Colors.white,
                      color: Colors.green.shade700,
                      shape: StadiumBorder(),
                    ),
                    SizedBox(height: 30,),
                    Text("Login with SNS",
                      style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 25,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      MaterialButton(
                        onPressed: (){},
                        height: 40,
                        minWidth: 140,
                        child: Text("Facebook",),
                        textColor: Colors.white,
                        color: Colors.blue,
                        shape: StadiumBorder(),
                      ),

                      MaterialButton(
                        onPressed: (){},
                        height: 40,
                        minWidth: 140,
                        child: Text("Github",),
                        textColor: Colors.white,
                        color: Colors.black,
                        shape: StadiumBorder(),
                      ),
                    ],),

                  ]),
                ),
              ),
            ],
          ),
        ) ,
      ),
    );
  }
}
