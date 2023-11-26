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
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                  width: double.infinity,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Image.asset("assets/images/logo.jpeg"),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.add_circle,
                              color: Color.fromARGB(255, 249, 24, 99),
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.favorite,
                              color: Color.fromARGB(255, 249, 24, 99),
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8.0, left: 8, bottom: 8, right: 20),
                            child: Icon(
                              Icons.send,
                              color: Color.fromARGB(255, 249, 24, 99),
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              Expanded(
                child: Container(
                    child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            hikaye("assets/images/serenay.jpeg",
                                "serenaysarıkaya"),
                            hikaye("assets/images/gigi.jpeg", "gigihadid"),
                            hikaye(
                                "assets/images/kıvanc.jpeg", "kıvanctatlıtug"),
                            hikaye("assets/images/hadise.jpeg", "hadise"),
                            hikaye("assets/images/burak.jpeg", "burakozcivit"),
                            hikaye("assets/images/damla.jpeg", "damlaaltun"),
                            hikaye("assets/images/afra.jpeg", "afrasaracoglu"),
                            hikaye("assets/images/burak.jpeg", "burakozcivit"),
                            hikaye("assets/images/hadise.jpeg", "hadise"),
                            hikaye("assets/images/serenay.jpeg",
                                "serenaysarıkaya"),
                            hikaye("assets/images/gigi.jpeg", "gigihadid"),
                            hikaye(
                                "assets/images/kıvanc.jpeg", "kıvanctatlıtug"),
                            hikaye("assets/images/damla.jpeg", "damlaaltun"),
                            hikaye("assets/images/afra.jpeg", "afrasaracoglu"),
                          ],
                        ),
                      ),
                      PostItem(
                          "assets/images/gigi.jpeg",
                          "assets/images/gpost.jpeg",
                          "gigihadid",
                          "Los Angeles"),
                      PostItem(
                          "assets/images/serenay.jpeg",
                          "assets/images/serpost.jpeg",
                          "serenaysarıkaya",
                          "İstanbul/Sarıyer"),
                      PostItem(
                          "assets/images/kıvanc.jpeg",
                          "assets/images/kpost.jpeg",
                          "kıvanctatlıtug",
                          "Bebek"),
                      PostItem("assets/images/hadise.jpeg",
                          "assets/images/hpost.jpeg", "hadise", "Kadıköy"),
                      PostItem(
                          "assets/images/burak.jpeg",
                          "assets/images/bpost.jpeg",
                          "burakozcivit",
                          "Beşiktaş"),
                      PostItem("assets/images/damla.jpeg",
                          "assets/images/dpost.jpeg", "damlaaltun", "Beşiktaş"),
                      PostItem(
                          "assets/images/afra.jpeg",
                          "assets/images/apost.jpeg",
                          "afrasaracoglu",
                          "Beşiktaş"),
                    ],
                  ),
                )),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black12,
                  ),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.home_outlined,
                          size: 29,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.search,
                          size: 29,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.movie_outlined,
                          size: 29,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.local_mall_outlined,
                          size: 29,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.account_circle_outlined,
                          size: 29,
                          color: Colors.black,
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container PostItem(
          String avatar, String photo, String name, String location) =>
      Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          avatar,
                        ),
                        radius: 20,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            location,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
            ),
            Image.asset(photo),
            LikeCommentBox(),
            CommentBox("kıvactatlıtug",
                "Mükemmelsin, harikasın çok güzel işler başarıyorsun.."),
            CommentBox("hadise","Perfect.."),
          ],
        ),
      );

  Padding LikeCommentBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.favorite_border),
              SizedBox(width: 8),
              Icon(Icons.chat_bubble_outline),
              SizedBox(width: 8),
              Icon(Icons.send),
            ],
          ),
          Icon(Icons.bookmark_border),
        ],
      ),
    );
  }

  Padding CommentBox(String name, String comments) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: RichText(
                maxLines: 3,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        fontSize: 12,
                      ),
                    ),
                    TextSpan(text: " "),
                    TextSpan(
                      text: comments,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12,
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  Widget hikaye(String avatar, String name) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.blue,
              gradient: LinearGradient(colors: [
                Colors.purple,
                Colors.orange,
                Colors.pink,
              ]),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(1),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: CircleAvatar(
                backgroundImage: AssetImage(avatar),
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
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}
