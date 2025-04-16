import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> contacts = [
    {'name': 'Dishant Upadhyay', 'icon': Icons.person, 'color': Colors.blue},
    {'name': 'Tushar Parmar', 'icon': Icons.person_outline, 'color': Colors.green},
    {'name': 'Harshad Dalsaniya', 'icon': Icons.account_circle, 'color': Colors.red},
    {'name': 'Ashishkumar Dabhi', 'icon': Icons.emoji_people, 'color': Colors.orange},
    {'name': 'Mansi Dhandha', 'icon': Icons.face, 'color': Colors.purple},
    {'name': 'Mohitkumar Makavana', 'icon': Icons.person_pin, 'color': Colors.teal},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "GridView Example",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Container(
                width: 300, // Fixed square container height: 500,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[200],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.all(10),
                child: GridView.builder(
                  shrinkWrap: true, // Ensure the GridView doesn't take more space than necessary
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 columns
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 1, // Ensures squares
                  ),
                  itemCount: contacts.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Icon Style Changes
                          Container(
                            padding: EdgeInsets.all(8), // Added padding around icon
                            decoration: BoxDecoration(
                              color: contacts[index]['color']
                                  .withOpacity(0.1), // Light background for icon
                              shape: BoxShape.circle, // Circular background for icon
                            ),
                            child: Icon(
                              contacts[index]['icon'],
                              color: contacts[index]['color'],
                              size: 40, // Increased icon size
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            contacts[index]['name'],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12, // Increased font size slightly
                              fontWeight: FontWeight.w600, // Slightly lighter font weight
                              color: Colors.black, // Text color changed for better contrast
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
