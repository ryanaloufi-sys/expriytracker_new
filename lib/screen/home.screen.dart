import 'package:flutter/material.dart';
import '../widgets/app_header.dart';
import 'inventory_screen.dart';
import 'expired_screen.dart';
import 'stocktake_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(title: 'متعقب الصلاحية والمخزون'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _buildMenuCard(
              context,
              'المخزون',
              Icons.inventory,
              Colors.blue,
              const InventoryScreen(),
            ),
            _buildMenuCard(
              context,
              'المنتهيات',
              Icons.warning_amber_rounded,
              Colors.red,
              const ExpiredScreen(),
            ),
            _buildMenuCard(
              context,
              'الجرد',
              Icons.fact_check,
              Colors.orange,
              const StocktakeScreen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard(BuildContext context, String title, IconData icon, Color color, Widget destinationScreen) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destinationScreen),
          );
        },
        borderRadius: BorderRadius.circular(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: color),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

