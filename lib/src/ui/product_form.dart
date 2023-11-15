import 'package:flutter/material.dart';

import 'product_details.dart';

class ProductForm extends StatefulWidget {
  const ProductForm({super.key});

  @override
  State<ProductForm> createState() => _ProductForm();
}

class _ProductForm extends State<ProductForm> {
  @override
  Widget build(BuildContext context) {
    return InputForm();
  }
}

class InputForm extends StatelessWidget {
  InputForm({
    super.key,
  });

  final _kodeProdukTextController = TextEditingController();
  final _namaProdukTextController = TextEditingController();
  final _hargaProdukTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _kodeProduk(),
        _namaProduk(),
        _hargaProduk(),
        _buttonSimpan(context)
      ],
    );
  }

  _buttonSimpan(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          String kodeProduk = _kodeProdukTextController.text;
          String namaProduk = _namaProdukTextController.text;
          int hargaProduk = int.parse(_hargaProdukTextController.text);

          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProductDetails(
                    kodeProduk: kodeProduk,
                    namaProduk: namaProduk,
                    hargaProduk: hargaProduk,
                  )));
        },
        child: const Text("Simpan"));
  }

  _hargaProduk() {
    return TextField(
      decoration: const InputDecoration(
          labelText: "Harga Produk",
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(width: 1))),
      controller: _hargaProdukTextController,
    );
  }

  _namaProduk() {
    return TextField(
      decoration: const InputDecoration(
          labelText: "Nama Produk",
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(width: 1))),
      controller: _namaProdukTextController,
    );
  }

  _kodeProduk() {
    return TextField(
      decoration: const InputDecoration(
          labelText: "Kode Produk",
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(width: 1))),
      controller: _kodeProdukTextController,
    );
  }
}
