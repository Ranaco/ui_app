import 'dart:convert';

import 'package:stacked/stacked.dart';
import 'package:http/http.dart' as http;

class HomePageViewModel extends BaseViewModel {
  Future getData() async {
    Uri url = Uri.parse('https://picsum.photos/v2/list?page=2&limit=100');

    var response = await http.get(url);
    var data = jsonDecode(response.body);
  }
}
