import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class Produk {
  final String nama;
  final int harga;
  const Produk(this.nama, this.harga);
}

const List<Produk> daftarProduk = [
  Produk('Laptop', 8500000),
  Produk('Smartphone', 4200000),
  Produk('Headphone', 750000),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan 2',
      theme: ThemeData(colorSchemeSeed: Colors.teal, useMaterial3: true),
      home: const DaftarProduk(),
    );
  }
}

class DaftarProduk extends StatelessWidget {
  const DaftarProduk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Produk')),
      body: ListView.builder(
        itemCount: daftarProduk.length,
        itemBuilder: (context, i) {
          final p = daftarProduk[i];
          return ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: Text(p.nama),
            subtitle: Text('Rp ${p.harga}'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DetailProduk(produk: p),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailProduk extends StatelessWidget {
  final Produk produk;
  const DetailProduk({super.key, required this.produk});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(produk.nama)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(produk.nama,
                style: const TextStyle(
                    fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text('Harga: Rp ${produk.harga}',
                style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
