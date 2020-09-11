class ModelBarang {
  int id;
  String namaBarang;
  String qtyBarang;
  String hargaBarang;

  ModelBarang({this.namaBarang, this.qtyBarang, this.hargaBarang});

  factory ModelBarang.fromMap(Map<String, dynamic> obj) => ModelBarang (
    namaBarang : obj["nama_barang"],
    qtyBarang : obj["qty_barang"],
    hargaBarang : obj["harga_barang"],
  );

  Map<String, dynamic> toMap() => {
    "nama_barang" : namaBarang,
    "qty_barang" : qtyBarang,
    "harga_barang" : hargaBarang
  };

  void setIdBarang(int id){
    this.id = id;
  }
}