import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bonus',
      theme: ThemeData(colorSchemeSeed: Colors.purple, useMaterial3: true),
      home: const HalamanUtama(),
    );
  }
}

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  int _index = 0;

  final List<Widget> _halaman = const [
    TabBeranda(),
    TabCari(),
    TabProfil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bonus · BottomNavigationBar')),
      body: _halaman[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Cari',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}

class TabBeranda extends StatelessWidget {
  const TabBeranda({super.key});
  @override
  Widget build(BuildContext context) => const Center(
        child: Text('Halaman Beranda', style: TextStyle(fontSize: 22)),
      );
}

class TabCari extends StatelessWidget {
  const TabCari({super.key});
  @override
  Widget build(BuildContext context) => const Center(
        child: Text('Halaman Cari', style: TextStyle(fontSize: 22)),
      );
}

class TabProfil extends StatelessWidget {
  const TabProfil({super.key});
  @override
  Widget build(BuildContext context) => const Center(
        child: Text('Halaman Profil', style: TextStyle(fontSize: 22)),
      );
}
