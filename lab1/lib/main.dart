import 'package:flutter/material.dart';
import 'package:lab1/DetailPage.dart';
import 'package:lab1/student.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyAppPage(),
    );
  }
}

class MyAppPage extends StatelessWidget {
  const MyAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Student> datas = [
      Student("อรัญ ศรีสวัสดิ์", "643450095-5", 
          "image/Arun.jpg",
          "Student KhonKaen University", 
          "arun.s@kkumail.com", 
          "https://www.facebook.com/profile.php?id=100009484489572"),
      Student("กฤติยา สินโพธิ์", 
          "643450320-4", 
          "image/B1.jpg",
          "Student KhonKaen University", 
          "Krittiya.s@kkumail.com", 
          "https://www.facebook.com/profile.php?id=100008555494222"),
      Student("ปรเมศวร์ สิทธิมงคล", 
          "643450078-5", 
          "image/Parames.jpg",
          "Student KhonKaen University", 
          "poramet.si@kkumail.com", 
          "https://www.facebook.com/kki.jik.3"),
      Student(
          "พรธิตา ขานพล",
          "643450080-8",
          "image/B5.jpg",
          "Student KhonKaen University",
          "pornthita.h@kkumail.com",
          "https://www.facebook.com/pornthita.hkanphol"),
      Student("อมรรัตน์ มาระเหว", 
          "643450094-7", 
          "image/B2.jpg",
          "Student KhonKaen University", 
          "amonrart.m@kkumail.com", 
          "https://www.facebook.com/amonrart.m"),
      Student("ณัฐธิดา บุญพา", 
          "643450647-2", "image/B4.jpg",
          "Student KhonKaen University", 
          "natthida.bo@kkumail.com", 
          "https://www.facebook.com/jannattida.za"),
      Student("ทัศนีย์ มลาตรี", "643450075-1", 
          "image/B3.jpg",
          "Student KhonKaen University", 
          "thatsanee.m@kkumail.com", 
          "https://www.facebook.com/tatsanee.tookta"),
      Student("รัตพงษ์ ปานเจริญ", "643450650-3", 
          "image/Ratpong.jpg",
          "Student KhonKaen University", 
          "Ratpong.p@kkumail.com", 
          "https://www.facebook.com/profile.php?id=100011589436120"),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("My App"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: datas.length,
        itemBuilder: (context, index) {
          return DisplayItem(context: context, student: datas[index]);
        },
      ),
    );
  }

  Widget DisplayItem({required BuildContext context, required Student student}) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(data: student),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image(
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                  image: AssetImage(student.image),
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    student.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    student.studentid,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
