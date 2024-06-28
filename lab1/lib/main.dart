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
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 98, 242, 15)),
        useMaterial3: true,
      ),
      home: MyAppPage(),
    );
  }
}

class MyAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> people = [
      {"name": "อรัญ ศรีสวัสดิ์ 643450095-5", "image": 'image/Arun.jpg'},
      {"name": "กฤติยา สินโพธิ์ 643450320-4", "image": 'image/B1.jpg'},
      {"name": "ปรเมศวร์ สิทธิมงคล 643450078-5", "image": 'image/Parames.jpg'},
      {"name": "พรธิตา ขานพล 643450080-8", "image": 'image/B5.jpg'},
      {"name": "อมรรัตน์ มาระเหว 643450094-7", "image": 'image/B2.jpg'},
      {"name": "ณัฐธิดา บุญพา 643450647-2", "image": 'image/B4.jpg'},
      {"name": "ทัศนีย์ มลาตรี 	643450075-1", "image": 'image/B3.jpg'},
      {"name": "รัตพงษ์ ปานเจริญ 643450650-3", "image": 'image/Ratpong.jpg'},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("My App"),
      ),
      body: ListView.builder(
        itemCount: people.length,
        itemBuilder: (context, index) {
          return displayNameItem(
            name: people[index]["name"]!,
            imagePath: people[index]["image"]!,
          );
        },
      ),
    );
  }

  Widget displayNameItem({required String name, required String imagePath}) {
    bool isHighlight = name == "พรธิตา ขานพล 643450080-8";

    return Container(
      padding: const EdgeInsets.all(10),
      color:
          isHighlight ? Color.fromARGB(255, 118, 218, 180) : Colors.transparent,
      child: Row(
        children: [
          Image(
            width: 100,
            image: AssetImage(imagePath),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: isHighlight ? FontWeight.bold : FontWeight.normal,
              color: isHighlight
                  ? const Color.fromARGB(255, 255, 255, 255)
                  : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
