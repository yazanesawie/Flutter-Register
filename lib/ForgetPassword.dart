
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/Register.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 25,right: 25,left: 25,bottom: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Forget Password',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),textAlign: TextAlign.center),
              Text('Please enter your email and we will send\nyou a link to return to your account',style: TextStyle(fontSize: 15,color: Colors.grey ,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
              SizedBox(height: 44,),
              TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          gapPadding: 10,
                          borderRadius:
                          const BorderRadius.all(Radius.circular(30)),
                          borderSide:
                          BorderSide(color: Colors.grey)),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 25),

                      border: OutlineInputBorder(
                          gapPadding: 10,
                          borderRadius:
                          const BorderRadius.all(Radius.circular(25)),
                          borderSide:
                          BorderSide(color: Colors.grey.shade800)),

                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.grey.shade800),
                      hintText: 'Enter your email ',
                      suffixIcon: Icon(
                        Icons.email_outlined,
                        size: 30,

                      ))),
              SizedBox(height: 90,),
              MaterialButton(

                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Register()));
                },
                height: 50,
                minWidth: 200,
                child: Text("Contiue",style: TextStyle(fontSize: 20),),
                textColor: Colors.white,
                color: Colors.deepOrange.shade400,
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(18)),
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have account?' ,
                    style:TextStyle(color: Colors.grey.shade700, fontSize: 18) ,
                    textAlign: TextAlign.center,
                  ),
                  TextButton(onPressed: (){

                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Register()));

                  },
                    child: Text('Sgin Up',
                        textAlign: TextAlign.center,
                        style: TextStyle(

                          fontSize: 18,
                          color: Colors.deepOrange,
                        )),)
                ],
              )
            ],
          ),

        ),
      ),
    );
  }
}
