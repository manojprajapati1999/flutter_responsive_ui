import 'package:flutter/material.dart';
import 'package:responsive_bootstrap_ui/responsive_bootstrap_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bootstrap Grid Demo',
      home: const DemoPage(),
    );
  }
}

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bootstrap Grid Example")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            BootstrapRow(
              children: [
                BootstrapCol(md: 6, lg: 3, xl: 4, child: _box("One")),
                BootstrapCol(md: 6, lg: 3, xl: 4, child: _box("Two")),
                BootstrapCol(md: 12, lg: 6, xl: 4, child: _box("Three")),
              ],
            ),
            const SizedBox(height: 20),
            BootstrapRow(
              children: [
                BootstrapCol(md: 6, lg: 6, xl: 6, child: _box("One")),
                BootstrapCol(md: 6, lg: 6, xl: 6, child: _box("Two")),
              ],
            ),
            const SizedBox(height: 20),
            BootstrapRow(
              children: [
                BootstrapCol(md: 6, lg: 4, xl: 3, child: _box("One")),
                BootstrapCol(md: 6, lg: 4, xl: 3, child: _box("Two")),
                BootstrapCol(md: 6, lg: 4, xl: 3, child: _box("Three")),
                BootstrapCol(md: 6, lg: 4, xl: 3, child: _box("Four")),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _box(String text) => Container(
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.blue.shade100,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Center(child: Text(text, style: const TextStyle(fontSize: 18))),
  );
}
