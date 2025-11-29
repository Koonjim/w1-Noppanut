import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.green[200]),
              child: Column(
                children: [
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),

                    child: ClipOval(
                      child: Image.network(
                        "https://borkormee.com/wp-content/uploads/2024/06/reincarnated-as-the-7th-prince-07-06-2023-1024x577.jpg",
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text("Noppanut Tariruk", style: TextStyle(fontSize: 18)),
                  SizedBox(height: 8),
                  Text(
                    "Noppanut.tariruk@e-tech.ac.th",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.green[100],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(Icons.phone, color: Colors.green),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "เบอร์โทรศัพท์",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text("0952502585", style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.red[100],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(Icons.cake, color: Colors.redAccent),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("วันเกิด", style: TextStyle(fontSize: 16)),
                            Text(
                              "24 เมษายน 2549",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.orange[100],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(Icons.pin_drop, color: Colors.orange),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ที่อยู่", style: TextStyle(fontSize: 16)),
                            Text("ชลบุรี", style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.purple[100],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(Icons.school, color: Colors.purple),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("การศีึกษา", style: TextStyle(fontSize: 16)),
                            Text(
                              "วิทยาลัยเทคโนโลยีภาคตะวันออก(อี.เทค)",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/second'),
                      child: Text(
                        "ไปยังหน้า 2",
                        style: TextStyle(fontSize: 16),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightGreen[300],
                        foregroundColor: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: ClipOval(
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_7PaqTsKWO15UYN1-ARaJuEHDSkUMfiU3vMgcSLXiUrx0P3R7Gx2mReMfIiM8QJCAEzHGI1BbXLN5lI1iIm44b673vOQi4pxBHdBukQ&s=10",
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  child: Column(
                    children: [
                      Text("40"),
                      Text("กำลังติตาม", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(width: 2, height: 60, color: Colors.grey,),
                SizedBox(width: 10),
                Container(
                  child: Column(
                    children: [
                      Text("200"),
                      Text("ผู้ติดตาม", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(width: 2, height: 60, color: Colors.grey,),
                SizedBox(width: 10),
                Container(
                  child: Column(
                    children: [
                      Text("500"),
                      Text(
                        "ถูกใจและบันทึก",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 10),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Noppanut_Tariruk", style: TextStyle(fontSize: 20),),
                  Icon(Icons.verified, color: Colors.blueAccent,),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 10),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.tiktok),
                    Text("Noppanut",
                      style: TextStyle(fontSize: 16, color: Colors.grey),),
                    Icon(Icons.arrow_drop_down)
                  ],
                )
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/second'),
                      child: Text(
                        "ติดตาม",
                        style: TextStyle(fontSize: 16),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[200],
                        foregroundColor: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Icon(Icons.share),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Image.network(
                    "https://i.pinimg.com/564x/71/a6/7a/71a67adac001e41568813f5739e50006.jpg",
                    width: 190, height: 200,),
                  SizedBox(width: 10,),
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTR4elsIlYWujM2yWv2pefKFfPgvYCk21GuI1H5IpopkNirjwApP1H6t9GVu4gony6NCrY&usqp=CAU",
                    width: 190, height: 200,),
                  SizedBox(width: 10,),
                ],

              ),
            ),


          ],
        ),
      ),
    );
  }
}
