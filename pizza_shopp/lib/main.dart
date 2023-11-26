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
              Header(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kampanyalı Menüler",
                            style: TextStyle(
                              color: Color.fromARGB(236, 83, 83, 83),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Image.asset(width: 15, "assets/images/p.png"),
                              Text(
                                "17.90₺ Pizza Puan",
                                style: TextStyle(
                                    color: Color.fromARGB(236, 141, 137, 137),
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                KampanyaKutu("assets/images/p2.jpeg","Orta Boy Fırsatı","Tıkla Gelsinn.."),
                                KampanyaKutu("assets/images/p4.jpeg","Orta Boy Fırsatı","Tıkla Gelsinn.."),
                                KampanyaKutu("assets/images/p1.jpeg","Orta Boy Fırsatı","Tıkla Gelsinn.."),
                              ],
                            ),
                          ),
                          Divider(),
                          gecmisSiparis(),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  StoryMenu("assets/images/p1.jpeg","Kampanyalar"),
                                  StoryMenu("assets/images/s3.jpeg","Pizzalar"),
                                  StoryMenu("assets/images/s4.jpeg","Yan Ürünler"),
                                  StoryMenu("assets/images/s1.jpeg","İçecekler"),
                                  StoryMenu("assets/images/s5.jpeg","Soslar"),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                               Text("Uzadıkça Uzayan Lezzetlerimiz",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                            ),
                            ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Menuler("assets/images/m.jpeg","Pizza Margarita","Özel sos ve mozzaralla peyniri"),
                          Menuler("assets/images/m.jpeg","Pizza Gamer","Mozzaralla peyniri,sosis,mantar,zeytin"),
                          Menuler("assets/images/m.jpeg","Pizza Karışık","Mozzaralla peyniri,mısır,pepperoni"),
                          Menuler("assets/images/m.jpeg","Pizza Boston","Mozzaralla peyniri,mantar,soğan,mısır"),
                          Menuler("assets/images/m.jpeg","Pizza Nefis","Mozzaralla peyniri,sosis,mantar,zeytin"),
                          Menuler("assets/images/m.jpeg","Pizza Seattle","Mozzaralla peyniri,sosis,mantar,zeytin"),
                          Menuler("assets/images/m.jpeg","Pizza Dallas","Mozzaralla peyniri,sosis,mantar,zeytin"),
                          Menuler("assets/images/m.jpeg","Pizza Sacramento","Mozzaralla peyniri,sosis,mantar,zeytin"),
                          Menuler("assets/images/m.jpeg","Pizza Miami","Mozzaralla peyniri,mısır,pepperoni"),
                          Menuler("assets/images/m.jpeg","Pizza Chicago","Mozzaralla peyniri,mısır,pepperoni"),
                          Menuler("assets/images/m.jpeg","Pizza Orlando","Mozzaralla peyniri,ton balığı,karides,mısır"),
                    
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              IconItem(),
            ],
          ),
        ),
      ),
    );
  }

 Widget Menuler(String photo, String title, String icerik) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(width: 90, photo,),
                                SizedBox(width: 10,),
                          Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(title,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                    Text(icerik,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8,
                                    ),
                                    ),
                                ],
                          ),
                              ],
                            ),
                          Icon(Icons.add,color: Colors.amber,size: 30,),
                          ],
                        ),
    );
  }

  Widget StoryMenu(String photo, String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                    photo
                                    ),
                                    radius: 40,
                                  ),
                                  Text(title,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),),
                                ],
                              ),
    );
  }

  Padding gecmisSiparis() {
    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.receipt_long,color: Colors.amber,),
                                 Text(
                          "Geçmiş Siparişlerim",
                          style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                          ),
                        ),
                              ],
                            ),
                        Text(
                          "Tümü",
                          style: TextStyle(
                            color: Color.fromARGB(255, 229, 135, 4),
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                          ],
                        ),
                      );
  }

  Padding KampanyaKutu(String photo, String title, String tikla) {
    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                    width: 170, 
                                    photo),
                                Text(
                                  title,
                                  style: TextStyle(
                                      color: const Color.fromARGB(
                                          208, 158, 158, 158),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  tikla,
                                  style: TextStyle(
                                      color: Color.fromARGB(208, 252, 193, 147),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
  }

  Container Header() {
    return Container(
      width: double.infinity,
      height: 65,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(235, 248, 5, 1),
            Color.fromRGBO(247, 230, 99, 1),
            Color.fromRGBO(255, 183, 0, 1),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu),
            Image.asset(width: 55, "assets/images/p.png"),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/p.jpeg"),
            ),
          ],
        ),
      ),
    );
  }

  Container IconItem() {
    return Container(
        width: double.infinity,
        color: Color.fromARGB(255, 203, 201, 199),
        height: 60,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Icon(Icons.home, color: Color.fromARGB(255, 99, 98, 98)),
                  Text(
                    "Home",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.local_pizza,
                    color: Colors.orange,
                    size: 30,
                  ),
                  Text(
                    "Orders",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.shopping_cart,
                      color: Color.fromARGB(255, 99, 98, 98)),
                  Text(
                    "Shopp",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
