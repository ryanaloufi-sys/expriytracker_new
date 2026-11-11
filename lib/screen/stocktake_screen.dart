import 'package:flutter/material.dart';
import '../widgets/app_header.dart';

class StocktakeScreen extends StatelessWidget {
  const StocktakeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(title: 'عمليات الجرد'),
      body: const Center(
        child: Text(
          'قسم جرد الكميات والتقارير',
          style: TextStyle(fontSize: 18, color: Colors.orange),
        ),
      ),
    );
  }
}

