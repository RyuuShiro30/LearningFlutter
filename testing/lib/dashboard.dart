import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),

      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [

          dashboardCard(Icons.person, "Profile"),
          dashboardCard(Icons.bar_chart, "Statistics"),
          dashboardCard(Icons.settings, "Settings"),
          dashboardCard(Icons.notifications, "Notifications"),

        ],
      ),
    );
  }

  Widget dashboardCard(IconData icon, String title) {
    return Card(
      elevation: 4,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40),
            const SizedBox(height: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}