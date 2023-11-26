// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
            Header(),
            Expanded(
              child: Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    
                    
                    children: [
                      SearchBox(),
                      Divider(),
                      TopLocation(),
                      Divider(),
                      NearLocations(),
                      Divider(),
                      Suggestions(),
                      Divider(),
                      TopRated(),
                
                    ],
                  ),
                ),
              ),
            ),
            BottomMenu(),
          ],
        ),
      ),
    );
  }

  Widget TopRated() => Container(
    child: Column(
      children: [
        TitleItem("Top Rated", "View all"),
        SingleChildScrollView(
        scrollDirection: Axis.horizontal,
          child: Row(
            children: [
             LocationItem("assets/images/post2.jpeg","Galata Kulesi.","11 km from you","₺ 320"),
             LocationItem("assets/images/taksım.avif","Taksım","6 km from you","₺ 867"),
             LocationItem("assets/images/aya.jpg","Ayasofya","17 km from you","₺ 370"),
             LocationItem("assets/images/mısır.jpg","Mısır Carsısı","18 km from you","₺ 930"),
              
              
            ],
          ),
        )
      ],
      ),
      );

  Widget Suggestions() => Container(
    child: Column(
      children: [
        TitleItem("Suggestions", "View all"),
        SingleChildScrollView(
        scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              LocationItem("assets/images/mısır.jpg","Mısır Carsısı","18 km from you","₺ 930"),
              LocationItem("assets/images/aya.jpg","Ayasofya","17 km from you","₺ 370"),
              LocationItem("assets/images/post2.jpeg","Galata Kulesi.","11 km from you","₺ 320"),
             LocationItem("assets/images/kız.webp","Kız Kulesi.","22 km from you","₺ 460"),
              
            ],
          ),
        )
      ],
      ),
      );

  Widget NearLocations() => Container(
    child: Column(
      children: [
        TitleItem("Near Locations", "View all"),
        SingleChildScrollView(
        scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              LocationItem("assets/images/kopru.webp","Bogaziçi Kop.","7 km from you","₺ 280"),
              LocationItem("assets/images/camı.jpg","Ortaköy","9 km from you","₺ 550"),
              LocationItem("assets/images/yer.jpg","Yerebatan Sarnıcı","2 km from you","₺ free"),
              LocationItem("assets/images/post4.jpeg","15 Temmuz Kop.","14 km from you","₺ 180"),
              
            ],
          ),
        )
      ],
      ),
      );

  Widget LocationItem(String photo, String title, String description, String fiyat) => Container(
    width: 165,
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
        color: Colors.white,
        border:Border.all(
          color: Color.fromARGB(23, 158, 158, 158),
        ),
        borderRadius: BorderRadius.circular(25),
      ),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(width:150, photo)),
          SizedBox(height: 8,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                style: TextStyle(fontSize: 12,
                color: Color.fromARGB(155, 0, 0, 0)
                ),
                ),
                
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.grey,
                    size: 8,),
                    SizedBox(width: 2,),
                    Text(description,
                    style: TextStyle(
                      fontSize: 10,
                      color: Color.fromARGB(217, 158, 158, 158)),),
                  ],
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 4, 11, 144),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(fiyat,
              style: TextStyle(
                fontSize: 10,
                color: Color.fromARGB(255, 226, 223, 223),
              ),)),
          ],
        ),
    ],),
  );

  Widget TopLocation() => Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleItem("Top Locations", "View all"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                StoryItem("assets/images/p1.jpeg","Burak O."),
                StoryItem("assets/images/p5.jpeg","Serenay S."),
                StoryItem("assets/images/p2.jpeg","Kıvanc T."),
                StoryItem("assets/images/p6.jpeg","Hadise"),
                StoryItem("assets/images/p3.jpeg","Damla A."),
                StoryItem("assets/images/p4.jpeg","Afra S."),
                StoryItem("assets/images/p1.jpeg","Burak O."),
                StoryItem("assets/images/p5.jpeg","Serenay S."),
                StoryItem("assets/images/p2.jpeg","Kıvanc T."),
               
              ],
            ),
          ),
        ],
      ),
                    
                  );

  Widget SearchBox() {
    return Container(
      height: 50,
      margin: EdgeInsets.all(12.0),
      padding: EdgeInsets.symmetric(horizontal: 14.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border:Border.all(
          color: Color.fromARGB(23, 158, 158, 158),
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Row(
            children: [
              Icon(Icons.location_on,
              size: 17,
              color: Colors.grey,),
              SizedBox(width: 10,),
              Text("Arnavutköy/Beşiktaş",
              style: TextStyle(
                color: Colors.grey,
              )
               ),
            ],
          ),
           Icon(Icons.tune,size: 17, color: Color.fromARGB(255, 63, 24, 237),),
        ],
      ),
    );
  }

  Widget StoryItem(String photo, String name) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 121, 190, 236),
                  Color.fromARGB(255, 51, 27, 232),
                ],
              ),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(photo),
                radius: 30,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(
              color: Color.fromRGBO(101, 101, 100, 0.955),
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }

  Padding TitleItem(String title, String link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color.fromRGBO(80, 80, 80, 0.784),
              fontSize: 16,
            ),
          ),
          Text(
            link,
            style: TextStyle(
              color: Color.fromRGBO(96, 92, 92, 0.404),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget Header() {
    return Container(
      padding: EdgeInsets.all(8.0),
      width: double.infinity,
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome, Deniz",
                style: TextStyle(
                  color: Color.fromARGB(255, 155, 153, 153),
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Explore İstanbul City",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(6.0),
                child: Icon(Icons.sunny,
                    size: 18, color: Color.fromRGBO(93, 40, 241, 1)),
              ),
              SizedBox(
                width: 2,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(6.0),
                child: Icon(Icons.notifications, size: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget BottomMenu() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(178, 158, 158, 158),
          width: 1,
        ),
      ),
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomMenuItem("Home", Icons.home_outlined, true),
          BottomMenuItem("Moments", Icons.groups, false),
          HighlightedItem("Book", Icons.add_box),
          BottomMenuItem("Chats", Icons.chat_bubble_outline, false),
          BottomMenuItem("Profiles", Icons.face_2, false),
        ],
      ),
    );
  }

  Widget BottomMenuItem(String title, IconData icon, bool active) {
    var renk = Color.fromRGBO(178, 181, 182, 1);

    if (active) {
      renk = Color.fromRGBO(43, 43, 43, 1);
    } else {}

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 20,
            color: renk,
          ),
          SizedBox(height: 3),
          Text(
            title,
            style: TextStyle(fontSize: 10, color: renk),
          ),
        ],
      ),
    );
  }

  Widget HighlightedItem(String title, IconData icon) {
    var renk = Color.fromRGBO(59, 44, 234, 1);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 33,
            color: renk,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 10, color: renk),
          ),
        ],
      ),
    );
  }
}
