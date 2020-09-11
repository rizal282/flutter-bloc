import 'package:flutter/material.dart';
import 'package:flutterbloc/blocbarang/blocbarang.dart';

class EditBarang extends StatefulWidget {
  final String id, namaBarang, qtyBarang, hargaBarang;

  const EditBarang({Key key, this.id, this.namaBarang, this.qtyBarang, this.hargaBarang}) : super(key: key);
  @override
  _EditBarangState createState() => _EditBarangState();
}

class _EditBarangState extends State<EditBarang> {

  final _namaBarang = new TextEditingController();
  final _qtyBarang = new TextEditingController();
  final _hargaBarang = new TextEditingController();

  void setFormValue(){
    _namaBarang.text = widget.namaBarang;
    _qtyBarang.text = widget.qtyBarang;
    _hargaBarang.text = widget.hargaBarang;
  }

  @override
  void initState() {
    setFormValue();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Barang"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _namaBarang,
                onChanged: blocBarang.namaBarang,
                decoration: InputDecoration(
                  labelText: "Nama Barang",
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: _qtyBarang,
                onChanged: blocBarang.qtyBarang,
                decoration: InputDecoration(
                  labelText: "Quantity Barang",
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: _hargaBarang,
                onChanged: blocBarang.hargaBarang,
                decoration: InputDecoration(
                  labelText: "Harga Barang",
                ),
              ),
              SizedBox(height: 20,),
              OutlineButton(
                child: Text("Simpan"),
                onPressed: (){
                  blocBarang.editBarang(widget.id);
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
