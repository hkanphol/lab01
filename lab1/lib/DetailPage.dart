import 'package:flutter/material.dart';
import 'package:lab1/student.dart';

class DetailPage extends StatelessWidget {
  final Student data;

  const DetailPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Detail Page"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                      image: AssetImage(data.image),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    data.name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Student ID: ${data.studentid}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Email: ${data.email}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 46, 188, 89),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'About Me:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    data.aboutMe,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Social Media:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  InkWell(
                    onTap: () {
                      // Handle social media link tap, e.g., open in a web browser
                    },
                    child: Text(
                      data.socialMediaLink,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
