import 'package:flutter/material.dart';
import '../widgets/app_header.dart';

class ExpiredScreen extends StatelessWidget {
  const ExpiredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(title: 'المنتجات المنتهية'),
      body: const Center(
        child: Text(
          'قائمة المنتجات التي تجاوزت تاريخ الصلاحية',
          style: TextStyle(fontSize: 18, color: Colors.red),
        ),
      ),
    );
  }
}

