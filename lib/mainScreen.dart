import 'package:flutter/material.dart';
import 'package:myapp/detailScreen.dart';
import 'package:myapp/rincian.dart';

class Mainscreen extends StatelessWidget {
  // final Produk produk;
  const Mainscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ini title'),
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          final Produk produk = produkList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(
                  produk: produk,
                );
              }));
            },
            child: Card(
                child: Row(children: [
              Expanded(flex: 1, child: Image.network(produk.ikon)),
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [Text(produk.nama)],
                  ))
            ])),
          );
        },
        itemCount: produkList.length,
        )
        );
  }
}
