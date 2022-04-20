import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            child: Container(
              color: Colors.black.withOpacity(0.8),
            ),
            clipper: getClipper(),
          ),
          Positioned(
            width: 350,
              left: 80,
              top: MediaQuery.of(context).size.height / 5,
              child: Column(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage("images/jk1.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(75)),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 7,
                          color: Colors.black,
                        ),
                      ]
                    ),
                  ),
                  SizedBox(height: 50,),
                  Text("Jeon JungKook",
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                  Text("Available for Singing",
                    style: TextStyle(fontSize: 17,
                        fontStyle: FontStyle.italic,
                    color: Colors.green),),
                  SizedBox(height: 70,),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 100,
                              child: Material(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black,
                                child: GestureDetector(
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "ARTISTS",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 40,
                              width: 100,
                              child: Material(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black,
                                child: GestureDetector(
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "SINGER",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 40,
                              width: 100,
                              child: Material(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black,
                                child: GestureDetector(
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "DANCER",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 100,
                              child: Material(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black,
                                child: GestureDetector(
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "VOCALIST",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 40,
                              width: 100,
                              child: Material(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black,
                                child: GestureDetector(
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "BTS",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 150,),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 120,
                            child: Material(
                              borderRadius: BorderRadius.circular(20),
                              shadowColor: Colors.greenAccent,
                              color: Colors.green,
                              elevation: 7,
                              child: GestureDetector(
                                onTap: (){},
                                child: Center(
                                  child: Text(
                                    "Edit Name",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 100,),
                          Container(
                            height: 50,
                            width: 120,
                            child: Material(
                              borderRadius: BorderRadius.circular(20),
                              shadowColor: Colors.greenAccent,
                              color: Colors.red,
                              elevation: 7,
                              child: GestureDetector(
                                onTap: (){},
                                child: Center(
                                  child: Text(
                                    "Log out",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 125, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
