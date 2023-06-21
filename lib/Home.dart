
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:project1/Signin.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 30,left: 20,right: 20),
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: 20,),
              Text('TOKOYO',style: TextStyle(
                fontSize: 50,
                color: Colors.deepOrange.shade400,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text('Welcome to Tokoto, Let\'s shop!',
                style: TextStyle(
                fontSize: 18,
                  color: Colors.grey.shade600
              ),
              ),


              SizedBox(
                width: 250,
                height: 350,
                child: PageView.builder(
                    controller: controller,
                    itemCount: 3,
                    itemBuilder: (_,index) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/splash_${index+1}.png')),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    )
                ),
              ),
              SmoothPageIndicator(controller: controller, count: 3,effect: ExpandingDotsEffect(activeDotColor:Color(0XFFff7643),dotColor: Colors.grey.shade200,dotHeight: 10,dotWidth: 10),),
              SizedBox(height: 80,),

              MaterialButton(

                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Signin()));
                },
                height: 50,
                minWidth: 350,
                child: Text("Contiue",style: TextStyle(fontSize: 20),),
                textColor: Colors.white,
                color: Colors.deepOrange.shade400,
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(18)),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
