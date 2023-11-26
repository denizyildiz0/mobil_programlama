import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
            children: [   
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(61, 4, 96, 1),
                  Color.fromRGBO(63, 106, 219, 1),
                  Color.fromRGBO(234, 64, 225, 1)
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment:MainAxisAlignment.spaceAround ,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                    children: [
                    Image.asset(width:150,"assets/images/logo.png"),
                   Row(
                      children: [ 
                        Icon(Icons.podcasts, color: Colors.white,),
                        SizedBox(width: 10,),
                        Icon(Icons.search, color: Colors.white,),
                        SizedBox(width: 10,),
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/p.jpeg",),
                          radius: 15,
                        ),
                      ],
                    ),
                  ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryItem("Energize"),
                      CategoryItem("Workout"),
                      CategoryItem("Feel Good"),
                      CategoryItem("Relaxation"),
                      CategoryItem("Chill Out"),
                      CategoryItem("Rock"),
                      CategoryItem("Pops"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 120,
              color: Color.fromRGBO(5, 5, 5, 1),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("START RADİO FROM A SONG",
                      style: TextStyle(
                        color: Color.fromARGB(255, 156, 155, 155),
                        fontSize: 12,
                      ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Quick Picks",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize:20,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 3.0, bottom: 3, right: 9, left: 9),
                            decoration: BoxDecoration(
                              border:Border.all(color: const Color.fromARGB(145, 255, 255, 255)
                              ),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Text(
                              "Play all",
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 156, 155, 155),
                                              fontSize: 12,
                                            ),
                                            ),
                          ),
                      ],
                      ),
                      MusicRow("assets/images/p1.jpeg","Doja Cat","Say So"),
                      MusicRow("assets/images/p3.jpeg","Flo Rida","Low"),
                      MusicRow("assets/images/p6.jpeg","Ed Sheeran","Shape Of You"),
                      MusicRow("assets/images/p8.jpeg","Sean Paul","Tempature"),
                      MusicRow("assets/images/p9.jpeg","Arıana Grande","Side to side"),
                      MusicRow("assets/images/p11.jpeg","Doja Cat","Paint The Town Red"),
                      MusicRow("assets/images/p12.jpeg","Miley Cyrus","Flowers"),
                      MusicRow("assets/images/p13.jpeg","Katy Perry","Dark Horse"),
                      MusicRow("assets/images/p14.jpeg","Doja Cat","Boss Bitch"),
                      SizedBox(height: 30,),
                      Title("Forgetten favorites","Playy all"),
                      
                      SizedBox(height: 20,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                        children: [
                            MusicRow2("assets/images/p9.jpeg","Ariana Grande","7 Rings"),
                            MusicRow2("assets/images/p14.jpeg","Doja Cat","Woman"),
                            MusicRow2("assets/images/p11.jpeg","Miley Cyrus","Flowers"),
                            MusicRow2("assets/images/p6.jpeg","Doja Cat","Vegas"),
                            SizedBox(height: 30,),                           
                          ],
                        ),                      
                        ),
                        SizedBox(height: 30),
                         Title("Most played","Play all"),
                         SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                           child: Row(
                            children: [
                               MusicRow3("assets/images/p13.jpeg","Flo Rida","Low"),
                               MusicRow3("assets/images/p7.jpeg","Sean Paul","Tempature"),
                               MusicRow3("assets/images/p5.jpeg","Doja Cat","Paint The Town Red"),
                               MusicRow3("assets/images/p1.jpeg","Doja Cat","Say So"),
                             ],
                           ),
                         ),
                      ],
                    ),
                ),
              ),
            ),
            ),
          Container(
            width: double.infinity,
            height: 60,
            color: Color.fromRGBO(35, 35, 35, 1),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.home, color: Colors.white,),
                      Text("Home",style: TextStyle(fontSize: 10,color: Colors.white),)
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.video_library, color: Colors.white,),
                      Text("Samples",style: TextStyle(fontSize: 10,color: Colors.white),)
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.explore, color: Colors.white,),
                      Text("Explore",style: TextStyle(fontSize: 10,color: Colors.white),)
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.video_library, color: Colors.white,),
                      Text("Library",style: TextStyle(fontSize: 10,color: Colors.white),)
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.upgrade, color: Colors.white,),
                      Text("Upgrade",style: TextStyle(fontSize: 10,color: Colors.white),)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
        ),
      ),
    );
  }

  Row Title(String title,String play) {
    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(title,
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize:20,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 3.0, bottom: 3, right: 9, left: 9),
                          decoration: BoxDecoration(
                            border:Border.all(color: const Color.fromARGB(145, 255, 255, 255)
                            ),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Text(
                            play,
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 156, 155, 155),
                                            fontSize: 12,
                                          ),
                                          ),
                        ),
                    ],
                    );
  }

  Padding MusicRow3(String photo, String title, String artist) {
    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(photo, 
                              width: 150),
                              SizedBox(height: 20,),
                              Text(
                                  title,
                                style: TextStyle(color: Colors.white, 
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                                ),
                                 Text(
                                  artist,
                                style: TextStyle(
                                  color: Color.fromARGB(224, 255, 254, 255),
                                  fontSize: 12),
                                ),
                            ],
                          )
                        ],
                      ),
                    );
  }

  Padding MusicRow2(String photo, String title, String artist) {
    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(photo, 
                              width: 150),
                              SizedBox(height: 20,),
                              Text(
                                  title,
                                style: TextStyle(color: Colors.white, 
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                                ),
                                 Text(
                                  artist,
                                style: TextStyle(
                                  color: Color.fromARGB(224, 255, 254, 255),
                                  fontSize: 12),
                                ),
                            ],
                          )
                        ],
                      ),
                    );
  }

  Widget MusicRow(String photo, String title, String artist) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(photo, width: 60,),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text(
                                  title,
                                style: TextStyle(color: Colors.white, 
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                                ),
                                 Text(
                                  artist,
                                style: TextStyle(
                                  color: Color.fromARGB(225, 198, 158, 232),
                                  fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.more_vert, 
                          color: Colors.white,
                          ),
                      ],
                    ),
    );
  }

  Container CategoryItem(String text) {
    return Container(
                      padding: const EdgeInsets.only(top: 6.0, bottom: 6.0, left: 12, right: 12),
                       margin: const EdgeInsets.only(left: 3, right: 3),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(38, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color.fromARGB(100, 255, 255, 255),
                        )
                      ),
                      child: Text(text,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),),
                    );
  }
}
