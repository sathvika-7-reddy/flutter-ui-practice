import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6FA),

      appBar: AppBar(
        title: Text("My Profile"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: 20),

            /// MAIN CARD
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 10),
                ],
              ),

              child: Column(
                children: [

                  /// PROFILE
                  Stack(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage:  NetworkImage("https://i.pravatar.cc/150?img=5"),
                          ),
                          SizedBox(height: 10),

                          Text(
                            "Sathvika Reddy",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),

                          Text("Flutter Developer",
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),

                      Positioned(
                        right: 0,
                        child: Text("Edit",
                            style: TextStyle(color: Colors.blue)),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  /// CARDS TITLE
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Cards (2/3)",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Icon(Icons.add_circle_outline, color: Colors.blue),
                    ],
                  ),

                  SizedBox(height: 15),

                  /// CARD UI (FINAL)
                  Container(
                    height: 160,
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [Color(0xFF4A90E2), Color(0xFF8E2DE2)],
                      ),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text("Shopping card",
                            style: TextStyle(color: Colors.white)),

                        Spacer(),

                        Text("**** **** **** 3960",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                letterSpacing: 2)),

                        SizedBox(height: 15),

                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [

                            /// CARD HOLDER
                            Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Text("CARD HOLDER",
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 10)),
                                Text("SATHVIKA REDDY",
                                    style:
                                        TextStyle(color: Colors.white)),
                              ],
                            ),

                            /// EXPIRES
                            Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Text("EXPIRES",
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 10)),
                                Text("10/22",
                                    style:
                                        TextStyle(color: Colors.white)),
                              ],
                            ),

                            /// CVV
                            Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Text("CVV",
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 10)),
                                Text("***",
                                    style:
                                        TextStyle(color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15),

                  /// DOTS
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      dot(true),
                      dot(false),
                      dot(false),
                    ],
                  ),

                  SizedBox(height: 20),

                  /// BANK TITLE
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Bank Accounts (1/2)",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Icon(Icons.add_circle_outline, color: Colors.blue),
                    ],
                  ),

                  SizedBox(height: 15),

                  /// BANK CARD
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xFFF1F3F6),
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Column(
                      children: [

                        Row(
                          children: [
                            Icon(Icons.account_balance,
                                color: Colors.grey),
                            SizedBox(width: 10),
                            Text("Bank Name"),
                          ],
                        ),

                        SizedBox(height: 5),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("SBI Bank",
                              style:
                                  TextStyle(fontWeight: FontWeight.bold)),
                        ),

                        SizedBox(height: 10),

                        Row(
                          children: [
                            Icon(Icons.person, color: Colors.grey),
                            SizedBox(width: 10),
                            Text("Account Name"),
                            Spacer(),
                            Text("Ac Number"),
                          ],
                        ),

                        SizedBox(height: 5),

                        Row(
                          children: [
                            Text("Sathvika Reddy",
                                style:
                                    TextStyle(fontWeight: FontWeight.bold)),
                            Spacer(),
                            Text("4582569585",
                                style:
                                    TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
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

  /// DOT WIDGET
  Widget dot(bool active) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: active ? Colors.blue : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}