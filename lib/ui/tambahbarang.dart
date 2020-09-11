import 'package:flutter/material.dart';
import 'package:flutterbloc/blocbarang/blocbarang.dart';

class TambahBarang extends StatefulWidget {
  @override
  _TambahBarangState createState() => _TambahBarangState();
}

class _TambahBarangState extends State<TambahBarang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Barang"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextFormField(
                onChanged: blocBarang.namaBarang,
                decoration: InputDecoration(
                  labelText: "Nama Barang",
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                onChanged: blocBarang.qtyBarang,
                decoration: InputDecoration(
                  labelText: "Quantity Barang",
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                onChanged: blocBarang.hargaBarang,
                decoration: InputDecoration(
                  labelText: "Harga Barang",
                ),
              ),
              SizedBox(height: 20,),
              OutlineButton(
                child: Text("Simpan"),
                onPressed: (){
                  blocBarang.tambahBarang();
                  Navigator.of(context).pop();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
