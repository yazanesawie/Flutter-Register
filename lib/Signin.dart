
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project1/CompleteProfile.dart';
import 'package:project1/ForgetPassword.dart';
import 'package:project1/Register.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool check=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),

      body: Container(
        padding: EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Welcome back',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),textAlign: TextAlign.center),
            Text('Signin with your email and password \n or continue with social media',style: TextStyle(fontSize: 15,color: Colors.grey ,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
            SizedBox(height: 60,),

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
            SizedBox(height: 20,),
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

                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.grey.shade800),
                    hintText: 'Enter your password',
                    suffixIcon: Icon(
                      Icons.lock_outline,
                      size: 25,

                    ))),

            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Checkbox(value: check,
                      onChanged: (value){
                    setState(() {
                      check=!check;
                    });
                      }
                  ),
                  Text('Remember me' ,style: TextStyle(color: Colors.grey.shade800),),
                  Spacer(),
                  TextButton(onPressed: (){

                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ForgetPassword()));

                  },
                      child: Text('Forget Password' ,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        decoration: TextDecoration.underline
                      ),
                      ),
                  ),

                ],

              ),
            ),
            SizedBox(height: 20,),
            MaterialButton(

              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CompleteProfile()));
              },
              height: 50,
              minWidth: 200,
              child: Text("Contiue",style: TextStyle(fontSize: 20),),
              textColor: Colors.white,
              color: Colors.deepOrange.shade400,
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(18)),
            ),

            Container(

              margin: EdgeInsets.only(top: 23,right: 40,left: 40,bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  InkWell(
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey.shade200,
                      child: SvgPicture.asset(
                        'assets/icons/google-icon.svg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  InkWell(
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey.shade200,
                      child: SvgPicture.asset(
                        'assets/icons/facebook-2.svg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  InkWell(
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey.shade200,
                      child: SvgPicture.asset(
                        'assets/icons/twitter.svg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],

              ),
            ),
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
    );
  }
}
