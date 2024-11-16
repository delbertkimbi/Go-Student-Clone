import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 4,
        centerTitle: false,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Go-Student',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'University of Buea',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Colors.white,
              elevation: 0,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/ub.jpg'),
                      backgroundColor: Colors.blue,
                      radius: 50,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Delbert Kimbi',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'FE23A129',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'B.ENG COMPUTER ENGINEERING',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: [
                              Text('2024/2025'),
                              SizedBox(
                                width: 20,
                              ),
                              Text('First Semester'),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyBox(icon: Icons.grade, name: 'Academic Structure'),
                MyBox(
                    icon: Icons.my_library_books_rounded,
                    name: 'Course Registration'),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyBox(icon: Icons.menu_book_outlined, name: 'Form B'),
                MyBox(icon: Icons.payments, name: 'Pay Fees'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyBox(icon: Icons.note_add, name: 'CA Results'),
                MyBox(icon: Icons.pages, name: 'Final Results'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyBox extends StatelessWidget {
  final IconData icon;
  final String name;
  const MyBox({super.key, required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 175,
      padding: const EdgeInsets.all(5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Icon(
            icon,
            color: Colors.blue,
            size: 50,
          ),
          Text(
            name,
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
