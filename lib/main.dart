import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StatsScreen(),
    );
  }
}

class StatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6FA),

      appBar: AppBar(
        title: Text("Stats"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// TOP CARD
              Center(
                child: SizedBox(
                  width: 350,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 4,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: [

                          /// LEFT SIDE
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text("\$13580",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),

                                Text("Available balance"),

                                SizedBox(height: 10),

                                Row(
                                  children: [
                                    Icon(Icons.arrow_upward,
                                        color: Colors.red, size: 16),
                                    SizedBox(width: 5),
                                    Text("Spend"),
                                  ],
                                ),
                                Text("\$3123"),

                                SizedBox(height: 10),

                                Row(
                                  children: [
                                    Icon(Icons.arrow_downward,
                                        color: Colors.green, size: 16),
                                    SizedBox(width: 5),
                                    Text("Received"),
                                  ],
                                ),
                                Text("\$4074"),
                              ],
                            ),
                          ),

                          /// RIGHT SIDE (Simple circle)
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 110,
                                width: 110,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue.shade100,
                                ),
                              ),
                              Text("June"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              /// TRANSACTIONS HEADER
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Transactions",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  Text("See All", style: TextStyle(color: Colors.blue)),
                ],
              ),

              SizedBox(height: 10),

              /// TRANSACTIONS LIST
              transactionItem(
                  Icons.facebook, "Facebook", "Salary", "+ \$7000", "12:45 PM", Colors.blue),

              transactionItem(
                  Icons.phone, "Vodafone", "Phone", "- \$58", "10:13 AM", Colors.red),

              transactionItem(
                  Icons.work, "Upwork", "Freelance", "+ \$975.48", "7 Jun", Colors.green),

              transactionItem(
                  Icons.shopping_cart, "Amazon", "Shopping", "- \$70", "5 Jun", Colors.orange),
            ],
          ),
        ),
      ),
    );
  }

  /// SIMPLE FUNCTION
  Widget transactionItem(IconData icon, String title, String subtitle,
      String amount, String time, Color color) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        contentPadding:
            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        leading: Icon(icon, color: color),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              amount,
              style: TextStyle(
                  color: amount.contains("+")
                      ? Colors.green
                      : Colors.red),
            ),
            Text(time, style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}