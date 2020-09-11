import 'dart:convert';

import 'package:flutterbloc/modelbarang/modelbarang.dart';
import 'package:http/http.dart';

class ApiProviderBarang {
  Client client = Client();

   final url = "http://10.0.2.2/crud_bloc";

   Future deleteDataId(String id) async {
     var response = await client.post("$url/hapusbarang.php", body: {
       "idbarang" : id,
     });

     if(response.statusCode == 200){
       print("Data barang sudah dihapus!");
     }
   }
   
   Future updateDataBarang(String id, String namaBarang, String qtyBarang, String hrgBarang) async {
     var response = await client.post("$url/updatebarang.php", body: {
       "id_barang" : id,
       "nama_barang" : namaBarang,
       "qty_barang" : qtyBarang,
       "harga_barang" : hrgBarang,
     });

     if(response.statusCode == 200){
       print("Data Barang diupdate");
     }

   }

   Future simpanDataBarang(String nmBarang, String qtyBarang, String hrgBarang) async {
     var response = await client.post("$url/tambahBarang.php", body: {
       "nama_barang" : nmBarang,
       "qty_barang" : qtyBarang,
       "harga_barang" : hrgBarang,
     });

     if(response.statusCode == 200){
       print("Data Barang sudah disimpan");
     }
   }
   
   Future<List<ModelBarang>> fetchBarang() async {
     var result = await client.get("$url/ambildatabarang.php");
     var dataBarang = jsonDecode(result.body);

     List<ModelBarang> listBarang = List();

     for(int i = 0; i < dataBarang.length; i ++){
       var modelBarang = ModelBarang(namaBarang: dataBarang[i]["nama_barang"], qtyBarang: dataBarang[i]["qty_barang"], hargaBarang: dataBarang[i]["harga_barang"]);

       int id = int.parse(dataBarang[i]["id_barang"]);
       modelBarang.setIdBarang(id);

       listBarang.add(modelBarang);
     }

     return listBarang;
   }
}