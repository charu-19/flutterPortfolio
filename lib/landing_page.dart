import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}
class _LandingPageState extends State<LandingPage> {
  _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: BoxDecoration( 
      gradient: LinearGradient( 
        colors: [Colors.purple[200],Colors.purple],
      )
      ),
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(80)),
            child: Image.asset("assets/me.jpg",width:100,height:100,)),
          SizedBox(height:12,),
          Text("Charulatha J",style: TextStyle(color: Colors.white ,fontSize: 27,fontWeight: FontWeight.bold),),
          SizedBox(height:6,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text("Hola..I am a 3rd year student studying B.Tech Information Technology in Velammal College of Engineering and Technology.\nI am learning more about Machine Learning and Artificial Intelligence.I am passionate towards languages,currently I am learning Spanish(español).\nIn fact, I am a jovial person and I love to dance!",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white ,fontSize: 15,fontWeight: FontWeight.normal)),
          ),
          SizedBox(height:20,),
          GestureDetector(
            onTap:(){
              _launchURL("https://drive.google.com/file/d/1dGhjMLhKljqV6w23r66qrkk-kdWi5CM6/view?usp=sharing");
            },
              child: Container(
              padding: EdgeInsets.symmetric(horizontal:15 ,vertical:8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                gradient: LinearGradient(colors: [const Color(0xffA2834D),const Color(0xffBC9A5F)])
              ),
              child: Text ("View my Resume",
              textAlign: TextAlign.center,
               style: TextStyle(color: Colors.white ,fontSize:15,fontWeight: FontWeight.normal)),
              ),
          ),
          SizedBox(height:12,),
          Text("Personal Projects",
          style: TextStyle(decoration: TextDecoration.underline,color: Colors.black87 ,fontSize: 20,fontWeight: FontWeight.bold)) ,
          SizedBox(height:8,),
          Text("1)Hotel Management System",
          style: TextStyle(
            decoration: TextDecoration.underline,
            color: Colors.black ,fontSize: 15,fontWeight: FontWeight.bold)) ,
          Container(
              padding: EdgeInsets.symmetric(horizontal:15 ,vertical:8),
              child: Text ("This is a simple Hotel Management System using HTML,CSS,PHP,MySql with User and Admin Modules.User can book Rooms,Tables,PartyHall accoding to the availablity and the Admin can View the bookings.",
              textAlign: TextAlign.center,
               style: TextStyle(
                 fontStyle: FontStyle.italic,
                 color: Colors.white ,fontSize: 15,fontWeight: FontWeight.normal)),
              ),
              SizedBox(height:10,),
          GestureDetector(
            onTap:(){
              _launchURL("https://drive.google.com/file/d/1cTvrUVfYfqZwlWifUWklHa-qbTG8Odet/view?usp=sharing");
            },
              child: Container(
              padding: EdgeInsets.symmetric(horizontal:15 ,vertical:8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                gradient: LinearGradient(colors: [const Color(0xffA2834D),const Color(0xffBC9A5F)])
              ),
              child: Text ("Click to View",
              textAlign: TextAlign.center,
               style: TextStyle(color: Colors.white ,fontSize:15,fontWeight: FontWeight.normal)),
              ),
          ),
              SizedBox(height:8,),
          Text("2)Fan Automation using Arduino",
          style: TextStyle(
            decoration: TextDecoration.underline,
            color: Colors.black ,fontSize: 15,fontWeight: FontWeight.bold)) ,
          Container(
              padding: EdgeInsets.symmetric(horizontal:15 ,vertical:8),
              child: Text ("An IOT Project in which depending upon the room temperature the fan is automatically switched on or off.",
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontStyle: FontStyle.italic,
                 color: Colors.white ,fontSize: 15,fontWeight: FontWeight.normal)),
              ),
              SizedBox(height:10,),
          GestureDetector(
            onTap:(){
              _launchURL("https://www.github.com/charu-19");
            },
              child: Container(
              padding: EdgeInsets.symmetric(horizontal:15 ,vertical:8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                gradient: LinearGradient(colors: [const Color(0xffA2834D),const Color(0xffBC9A5F)])
              ),
              child: Text ("Click to View",
              textAlign: TextAlign.center,
               style: TextStyle(color: Colors.white ,fontSize:15,fontWeight: FontWeight.normal)),
              ),
          ),
          SizedBox(height:12,),
          Text("Connect with me",style: TextStyle(color: Colors.black87 ,fontSize: 15,fontWeight: FontWeight.bold)) ,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              GestureDetector(
                onTap: (){
                  _launchURL('https://www.facebook.com/charulatha.janardhanan.3');
                },
                child: Image.asset("assets/facebook.jpg",width: 25,height: 25,)
                ),
              SizedBox(width:8,),
              GestureDetector(
                onTap: (){
                  _launchURL("https://www.github.com/charu-19");
                },
                child: Image.asset("assets/GitHub.png",width: 25,height: 25,)),
              SizedBox(width:8,),
              GestureDetector(
                onTap: (){
                  _launchURL("https://www.linkedin.com/in/charulathaj");
                },
                child: Image.asset("assets/linkedin.jpg",width: 25,height: 25,)),
            
          ],
          ), 
        ]
      ),
    ),
    );
  }
}
