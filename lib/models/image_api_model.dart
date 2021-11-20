import 'dart:convert';

import 'package:http/http.dart' as http;

class ImageHandleApi {
  String id;
  String author;
  int width;
  int height;
  int download_url;
  ImageHandleApi(
      {required this.id,
      required this.author,
      required this.download_url,
      required this.height,
      required this.width});

  factory ImageHandleApi.fromJson(Map<String, dynamic> json) {
    return ImageHandleApi(
        id: json['id'],
        author: json['author'],
        download_url: json['download_url'],
        height: json['height'],
        width: json['width']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'author': author,
      'width': width,
      'height': height,
      'download_url': download_url,
    };
  }

}
