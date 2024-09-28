import 'package:flutter/material.dart';
import 'package:myapp/rincian.dart';

class DetailScreen extends StatelessWidget {
  final Produk produk;
  const DetailScreen({super.key, required this.produk});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('detail screen'),
          actions: [BtnSave()],
        ),
        body: Column(
          children: [
            Text(produk.nama),
          ],
        ));
  }
}

class BtnSave extends StatefulWidget {
  BtnSave({Key? key}) : super(key: key);

  @override
  _BtnSaveState createState() => _BtnSaveState();
}

class _BtnSaveState extends State<BtnSave> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        icon: Icon(isFavorite? Icons.favorite : Icons.favorite_border, color: Colors.red,));
  }
}
