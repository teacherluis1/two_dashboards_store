import 'package:flutter/material.dart';

class MainWidget extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> toggleDarkMode;

  const MainWidget({
    super.key,
    required this.isDarkMode,
    required this.toggleDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ITLA Dashboard"),
        centerTitle: true,
        actions: [
          Row(
            children: [
              Text("Dark Mode", style: TextStyle(color: Colors.white)),
              Switch(
                value: isDarkMode,
                onChanged: toggleDarkMode, // Usa toggleDarkMode para alternar el tema
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text("QUICK RECAP"),
            ),
            Container(
              height: 200,
              padding: EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 1.4,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Card(
                    color: Colors.red.shade700,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.inventory, color: Colors.red, size: 40),
                          ),
                          SizedBox(height: 12),
                          Text(
                            "4",
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                          Text(
                            "Total items in stock",
                            style: TextStyle(color: Colors.white70),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.red.shade700,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.attach_money, color: Colors.red, size: 50),
                          ),
                          SizedBox(height: 12),
                          Text(
                            "\$1,452.00",
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                          Text(
                            "Total items in stock",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // LOW STOCK widget con badge
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    child: Card(
                      color: Colors.red.shade700,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.trending_down,
                                color: Colors.red,
                                size: 55,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              "Low stock",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "View all stock items with low inventory levels",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    right: 16,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "1 Item",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
              child: Text("RECENT ITEMS"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                height: 120,
                child: Center(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 100,
                        margin: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Card(
                          color: Colors.red.shade700,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.insert_drive_file,
                                  size: 30,
                                  color: Colors.red.shade100,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Item ${index + 1}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "${(index + 1) * 10} units",
                                  style: TextStyle(
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF8C1D1A),
        selectedItemColor: Color(0xFFF5A623),
        unselectedItemColor: Colors.white70,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory),
            label: "Inventory",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
