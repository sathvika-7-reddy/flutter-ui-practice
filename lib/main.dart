import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TransactionsScreen(),
    );
  }
}

class TransactionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6FA),
      appBar: AppBar(
        title: Text("Transactions"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                children: [
                  filterBox("All", true),
                  SizedBox(width: 10),
                  filterBox("Received", false),
                  SizedBox(width: 10),
                  filterBox("Spend", false),
                ],
              ),

              SizedBox(height: 20),

              Text("Today", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),

              SizedBox(height: 10),

              item(Icons.fastfood, "Foodpanda", "Meal", "- \$15.85", "10:00 PM", Colors.pink),
              item(Icons.phone, "Vodafone", "Phone", "- \$58", "04:13 PM", Colors.red),
              item(Icons.facebook, "Facebook", "Salary", "+ \$7000", "11:45 AM", Colors.blue),

              SizedBox(height: 20),

              Text("Yesterday", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),

              SizedBox(height: 10),

              item(Icons.local_taxi, "Uber Premier", "Transport", "- \$8.75", "08:30 AM", Colors.black),
              item(Icons.fastfood, "Uber Eats", "Meal", "- \$25", "01:30 PM", Colors.green),
              item(Icons.account_balance, "Citibank", "Wire Transfer", "+ \$975.48", "09:39 AM", Colors.blue),

            ],
          ),
        ),
      ),
    );
  }

  Widget filterBox(String text, bool active) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: active ? Colors.blue : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: active ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  Widget item(IconData icon, String title, String sub, String amt, String time, Color color) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: color),
        ),
        title: Text(title),
        subtitle: Text(sub),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              amt,
              style: TextStyle(
                color: amt.contains("+") ? Colors.green : Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(time, style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}