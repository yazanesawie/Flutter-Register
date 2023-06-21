
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project1/CompleteProfile.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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

          body: Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            padding:
            EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: [


                //SizedBox(height: 50,),
                Text('Register Account',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),textAlign: TextAlign.center),
                Text('Complete your getails or continue\nwith social media',style: TextStyle(fontSize: 15,color: Colors.grey ,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                SizedBox(height: 44,),

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

                        labelText: 'Confirm password',
                        labelStyle: TextStyle(color: Colors.grey.shade800),
                        hintText: 'Re-enter your password',
                        suffixIcon: Icon(
                          Icons.lock_outline,
                          size: 25,

                        ))),
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
                SizedBox(height: 20,),
                Row(
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
                SizedBox(height: 20,),

                Text('By continuing your confirm that you agree',
                textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
                ),

              ],
              

            ),
          ),
        )
    );
  }
}
