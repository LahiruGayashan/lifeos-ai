import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF02152D),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 20),

                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        "Welcome Gayashan",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      "👋",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                const Text(
                  "Let's make today productive",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 30),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF3B82F6),
                        Color(0xFF8B5CF6),
                      ],
                    ),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today's Goals",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 12),

                      Text(
                        "3 Tasks Pending",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  "Quick Actions",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                Row(
                  children: [

                    Expanded(
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.white12,
                          ),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.flag,
                              color: Colors.white,
                              size: 40,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Goals",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.white12,
                          ),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.smart_toy,
                              color: Colors.white,
                              size: 40,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "AI Coach",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "AI Recommendation",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        "Complete your Flutter project today to keep your learning streak alive.",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),




      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF3B82F6),
        onPressed: () {
          debugPrint("Add Goal");
        },
        child: const Icon(Icons.add),
      ),



      bottomNavigationBar: Container(
  decoration: BoxDecoration(
    color: const Color(0xFF07162E),
    borderRadius: const BorderRadius.vertical(
      top: Radius.circular(25),
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.3),
        blurRadius: 20,
      ),
    ],
  ),
  child: BottomNavigationBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: const Color(0xFF3B82F6),
    unselectedItemColor: Colors.grey,
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home_rounded),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.flag_rounded),
        label: 'Goals',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.smart_toy_rounded),
        label: 'AI',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_rounded),
        label: 'Profile',
      ),
    ],
  ),
)

    );
  }
}