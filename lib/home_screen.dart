import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController msgController = TextEditingController();
  String finalMessage = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage( "https://picsum.photos/200"),
            ),
            SizedBox(height: 25),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Column(
                mainAxisAlignment:  MainAxisAlignment.start,
                children: [
                  Text("Name: Muhammad Hasaan",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 5),
                  Text("Age: 23"),
                  Text("City: Wazirabad"),
                ],
              ),
            ),
             SizedBox( height: 30),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: msgController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Type a message",
                  ),
                ),
              ),
              SizedBox( height: 30),
            ElevatedButton(onPressed: () {
              setState(() {
                finalMessage = msgController.text;
              });
            }, child: Text("Show Msg")),
            SizedBox( height: 20),
            Text(
              finalMessage,
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
