import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'about.me',
      theme: ThemeData(
        fontFamily: 'Questrial',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override

  double deviceWidth;
  double deviceHeight;

  String name = 'K H U R R A M   R I Z V I';
  String url = 'https://aboutme.imgix.net/background/users/k/h/u/khurramrizvi_1531853708_78.jpg';
  String designation = 'Project Engineer @ Wipro and Flutter Developer in Mumbai, India';
  String description1 = 'Hi, I’m Khurram. I’m a student living in Mumbai, India. I am a fan of technology, entrepreneurship, and design.';
  String description2 = 'I’m also interested in innovation and programming. You can view my App on Play Store with a click on the button above.';

  Widget build(BuildContext context) {

    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(icon: Icon(Icons.star, color: Colors.yellow[700],), onPressed: (){},tooltip: "Star It on Github!",)
          ],
          elevation: 10.0,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("about",style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800
              ),),
              Text(".me",style: TextStyle(
                fontSize: 18,
                color: Colors.blue[700],
              ),)
            ],
          )
        ),

        body: SingleChildScrollView(
          child: Container(
            width: deviceWidth,
            height: deviceHeight,
            //decorating the main body with gradient

            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue[700], Colors.cyan[600]],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                )
            ),


            child: Center(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      color: Colors.white,
                      elevation: 20,
                      child: Container(
                        height: deviceHeight/1.6,
                        width: 640,
                        color: Colors.white,

                        child: SingleChildScrollView(
                          physics:  AlwaysScrollableScrollPhysics(
                          ),
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              children: [

                                SizedBox(
                                  height: 10,
                                ),

                                //Profile Image
                                CircleAvatar(
                                  radius: 80,
                                  backgroundImage: NetworkImage(url)
                                ),

                                SizedBox(
                                  height: 16,
                                ),

                                //Name
                                Text(name,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,

                                ),),

                                SizedBox(
                                  height: 16,
                                ),

                                //Designation
                                Text(designation,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w800,

                                  ),
                                ),

                                SizedBox(
                                  height: 8,
                                ),



                                //Material Button
                                Padding(
                                  padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                                  child: MaterialButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6)
                                    ),
                                    onPressed: (){},
                                    color: Colors.blue,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.cloud_download,
                                          color: Colors.white,
                                        ),

                                        SizedBox(
                                          width: 8,
                                        ),

                                        Text('Download my app',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                        ),)
                                      ],
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  height: 8,
                                ),


                                //Description 1
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(description1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,

                                    ),
                                  ),
                                ),

                                SizedBox(
                                  height: 4,
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(description2,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,

                                    ),
                                  ),
                                ),

                                SizedBox(
                                  height: 32,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left:32.0, right: 32.0,top:32.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [

                                      //fb
                                      InkWell(
                                        child: CircleAvatar(
                                          backgroundColor: Colors.blue[900],
                                          radius: 24,
                                          backgroundImage: AssetImage('icons/fb.png',),
                                        ),
                                        onTap: (){},
                                      ),

                                      //insta
                                      InkWell(
                                        child: CircleAvatar(
                                          backgroundColor: Colors.blue[700],
                                          radius: 24,
                                          backgroundImage: AssetImage('icons/linkedin.png',),
                                        ),
                                        onTap: (){},
                                      ),


                                      //git
                                      InkWell(
                                        child: CircleAvatar(
                                          backgroundColor: Colors.black,
                                          radius: 24,
                                          backgroundImage: AssetImage('icons/git.png',),
                                        ),
                                        onTap: (){},
                                      ),

                                      //linkedin
                                      InkWell(
                                        child: CircleAvatar(
                                          backgroundColor: Colors.pink,
                                          radius: 24,
                                          backgroundImage: AssetImage('icons/insta.png',),
                                        ),
                                        onTap: (){},
                                      ),

                                      //twitter
                                      InkWell(
                                        hoverColor: Colors.cyan,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.blue,
                                          radius: 24,
                                          backgroundImage: AssetImage('icons/twitter.png',),
                                        ),
                                        onTap: (){},
                                      ),

                                    ],
                                  ),
                                ),


                              ],
                            ),
                          ),
                        ),

                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
        extendBody: true,
      ),
    );
  }
}

