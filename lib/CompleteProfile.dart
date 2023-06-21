
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project1/Home.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({Key? key}) : super(key: key);

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
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
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
    padding:
    EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 20),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
    Text('Complete Profile',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),textAlign: TextAlign.center),
      SizedBox(height: 5,),
    Text('Complete your details or continue \n with social media',style: TextStyle(fontSize: 15,color: Colors.grey ,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
      SizedBox(height: 30,),
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
              labelText: 'First Name',
              labelStyle: TextStyle(color: Colors.grey.shade800),
              hintText: 'Enter your first name',

              suffixIcon: Padding(
                padding: const EdgeInsets.only(
                    right: 20, top: 13, bottom: 13),
                child: SvgPicture.asset(
                  'assets/icons/User Icon.svg',
                  color: Colors.grey.shade600,
                  fit: BoxFit.contain,
                ),

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

              labelText: 'Last Name',
              labelStyle: TextStyle(color: Colors.grey.shade800),
              hintText: 'Enter your last name',
              suffixIcon: Padding(
                padding: const EdgeInsets.only(
                    right: 20, top: 13, bottom: 13),
                child: SvgPicture.asset(
                  'assets/icons/User Icon.svg',
                  color: Colors.grey.shade600,
                  fit: BoxFit.contain,
                ),

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

              labelText: 'Phone Number',
              labelStyle: TextStyle(color: Colors.grey.shade800),
              hintText: 'Enter your phone number',
              suffixIcon: Padding(
                padding: const EdgeInsets.only(
                    right: 20, top: 13, bottom: 13),
                child: SvgPicture.asset(
                  'assets/icons/Phone.svg',
                  color: Colors.grey.shade600,
                  fit: BoxFit.contain,
                ),

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

              labelText: 'Address',
              labelStyle: TextStyle(color: Colors.grey.shade800),
              hintText: 'Enter your address',
              suffixIcon: Padding(
                padding: const EdgeInsets.only(
                    right: 20, top: 13, bottom: 13),
                child: SvgPicture.asset(
                  'assets/icons/Location point.svg',
                  color: Colors.grey.shade600,
                  fit: BoxFit.contain,
                ),

              ))),
      SizedBox(height: 20,),
      MaterialButton(

        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const Home()));
        },
        height: 50,
        minWidth: 200,
        child: Text("Contiue",style: TextStyle(fontSize: 20),),
        textColor: Colors.white,
        color: Colors.deepOrange.shade400,
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(18)),



      ),
      SizedBox(height: 14,),

        Text('By continuing your confirm that you agree \n with our Term and Condition',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
        ),
    ],
    ),
      ),
    );
  }
}
