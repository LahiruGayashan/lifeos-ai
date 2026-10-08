import 'package:flutter/material.dart';

class GoalsScreen extends StatefulWidget {
  const GoalsScreen({super.key});

  @override
  State<GoalsScreen> createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  final TextEditingController goalController = TextEditingController();

  final List<String> goals = [
    "Learn Flutter",
    "Build LifeOS AI",
    "Release MVP",
  ];

  void addGoal() {
    if (goalController.text.trim().isNotEmpty) {
      setState(() {
        goals.add(goalController.text.trim());
      });

      goalController.clear();
      Navigator.pop(context);
    }
  }

  void deleteGoal(int index) {
    setState(() {
      goals.removeAt(index);
    });
  }

  void showAddGoalDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF02152D),

          title: const Text(
            "Add Goal",
            style: TextStyle(color: Colors.white),
          ),

          content: TextField(
            controller: goalController,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: "Enter your goal",
              hintStyle: const TextStyle(color: Colors.grey),
              filled: true,
              fillColor: Colors.white10,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),

          actions: [
            TextButton(
              onPressed: () {
                goalController.clear();
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),

            ElevatedButton(
              onPressed: addGoal,
              child: const Text("Save"),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    goalController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF02152D),

      appBar: AppBar(
        title: const Text("My Goals"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: goals.isEmpty
          ? const Center(
              child: Text(
                "No Goals Yet",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                ),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: goals.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    leading: const Icon(
                      Icons.flag,
                      color: Color(0xFF3B82F6),
                    ),
                    title: Text(
                      goals[index],
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      onPressed: () => deleteGoal(index),
                    ),
                  ),
                );
              },
            ),

      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color(0xFF3B82F6),
        onPressed: showAddGoalDialog,
        icon: const Icon(Icons.add),
        label: const Text("Goal"),
      ),
    );
  }
}