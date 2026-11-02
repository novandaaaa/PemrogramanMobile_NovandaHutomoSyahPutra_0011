import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profil'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 32,
                    child: Icon(
                      Icons.person,
                      size: 32,
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Novanda Putra',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text('NIM 3012410011'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.email),
                    Icon(Icons.phone),
                    Icon(Icons.location_on),
                  ],
                ),
              ),

              const SizedBox(height: 24),
              const Text(
                'Daftar Mahasiswa',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              const Column(
                children: [
                  KartuMahasiswa(
                    nama: 'Novanda Putra',
                    nim: '3012410011',
                    prodi: 'Informatika',
                  ),
                  KartuMahasiswa(
                    nama: 'Alok Samuel',
                    nim: '3012410012',
                    prodi: 'Infomatika',
                  ),
                  KartuMahasiswa(
                    nama: 'Regi Ariwobo',
                    nim: '3012410013',
                    prodi: 'Informatika',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KartuMahasiswa extends StatelessWidget {
  final String nama;
  final String nim;
  final String prodi;

  const KartuMahasiswa({
    super.key,
    required this.nama,
    required this.nim,
    required this.prodi,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      child: ListTile(
        leading: const CircleAvatar(child: Icon(Icons.school)),
        title: Text(
          nama,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('NIM: $nim\nProdi: $prodi'),
        isThreeLine: true,
      ),
    );
  }
}