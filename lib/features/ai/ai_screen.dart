import 'package:flutter/material.dart';

class AiScreen extends StatelessWidget {
  const AiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF02152D),

      appBar: AppBar(
        title: const Text("AI Coach"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "Tell me your goal and I'll create a roadmap for you.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Become a Flutter Developer",
                hintStyle: const TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white10,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              child: const Text("Generate Roadmap"),
            ),
          ],
        ),
      ),
    );
  }
}