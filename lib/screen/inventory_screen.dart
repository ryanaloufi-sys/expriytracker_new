import 'package:flutter/material.dart';
import '../widgets/app_header.dart';

class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(title: 'إدارة المخزون'),
      body: const Center(
        child: Text(
          'قائمة المخزون والمنتجات المضافة',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

