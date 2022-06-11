import 'package:crud_with_api/model/murid.dart';
import 'package:http/http.dart' as http;

class MuridService {
  static final String _baseUrl = 'http://app-sekolah.herokuapp.com/api/murid';

  Future getMurid() async{
    Uri urlAPI = Uri.parse(_baseUrl);

    final response = await http.get(urlAPI);
    if (response.statusCode == 200) {
      return muridFromJson(response.body.toString());
    } else {
      throw Exception("Failed using api");
    }
  }
}