
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login2 extends StatefulWidget {
  const Login2({Key? key}) : super(key: key);

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.green.shade900,
                Colors.green,

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
                    Text('Login',style: TextStyle(color: Colors.white,fontSize: 35),),
                    SizedBox(height: 10,),
                    Text('Welcome Back!',style: TextStyle(color: Colors.white,fontSize: 20),),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)
                    ),
                  ),
                  child: Column(
                    children: [

                      SizedBox(height: 50,),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(fontSize: 14,color: Colors.grey),

                        ),
                      ),
                      Divider(color: Colors.black54,height: 1,),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(fontSize: 14,color: Colors.grey),

                        ),
                      ),
                      SizedBox(height: 50,),
                      MaterialButton(onPressed: (){},
                        height: 50,
                        minWidth: 250,
                        child: Text('Login'),
                        textColor: Colors.white,
                        color: Colors.green.shade700,
                        shape: StadiumBorder(),

                      ),
                      SizedBox(height: 30,),
                      Text('Login with SNS' ,style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      )),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MaterialButton(onPressed: (){},
                            height: 50,
                            minWidth: 140,
                            child: Text('Facebook'),
                            textColor: Colors.white,
                            color: Colors.blue.shade700,
                            shape: StadiumBorder(),

                          ),
                          MaterialButton(onPressed: (){},
                            height: 50,
                            minWidth: 140,
                            child: Text('Github'),
                            textColor: Colors.white,
                            color: Colors.black,
                            shape: StadiumBorder(),

                          ),
                        ],
                      )

                    ],
                  ),
                ),
              ),

            ],

          ),
        ),

      ),
    );
  }
}
