import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? hargaProduk;

  const ProductDetails(
      {super.key, this.kodeProduk, this.namaProduk, this.hargaProduk});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Produk"),
      ),
      body: Column(
        children: [
          Text("Kode Produk: ${widget.kodeProduk}"),
          Text("Nama Produk: ${widget.namaProduk}"),
          Text("Harga Produk: ${widget.hargaProduk}")
        ],
      ),
    );
  }
}
