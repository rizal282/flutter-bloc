import 'package:flutterbloc/apiprovider/apiproviderbarang.dart';
import 'package:flutterbloc/modelbarang/modelbarang.dart';

class RepositoryBarang {
  final apiProviderBarang = ApiProviderBarang();

  Future<List<ModelBarang>> fetchAllBarang() => apiProviderBarang.fetchBarang();
  Future tambahDataBarang(String nmBarang, String qtyBarang, String hrgBarang) => apiProviderBarang.simpanDataBarang(nmBarang, qtyBarang, hrgBarang);
  Future editDataBarang(String id, String nmBarang, String qtyBarang, String hrgBarang) => apiProviderBarang.updateDataBarang(
    id, nmBarang, qtyBarang, hrgBarang
  );

  Future hapusDataBarangId(id) => apiProviderBarang.deleteDataId(id);
}