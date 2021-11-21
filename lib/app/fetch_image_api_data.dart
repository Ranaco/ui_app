// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:http/http.dart' as http;

Future getData() async {
  var data;
  http.Response response;
  var url = Uri.parse("https://picsum.photos/v2/list?page=2&limit=100");
  response = await http.get(url);
  data = jsonDecode(response.body);
  return data;
}
