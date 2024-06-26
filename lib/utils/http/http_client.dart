import 'dart:convert';

import 'package:http/http.dart' as http;

class THttpHelper{
  static const String _baseUrl = "http://your-api-base-url.com";//can replace with any api base url

  //Helper method to make get request
  static Future<Map<String, dynamic>> get(String endpoint) async{
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  //helper method to make post request
  static Future<Map<String, dynamic>> post(String endpoint, dynamic data) async{
    final response = await http.post(Uri.parse('$_baseUrl/$endpoint'),
    headers: {'Content-Type' : 'application/json'},
    body: json.encode(data),
    );
    return _handleResponse(response);
  }

  //helper method to make put request
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async{
    final response = await http.put(Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type' : 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  //helper method to amke a delete request
  static Future<Map<String, dynamic>> delete(String endpoint) async{
    final response = await http.delete(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  //handle http response
  static Map<String,dynamic> _handleResponse(http.Response response){
    if(response.statusCode == 200){
      return json.decode(response.body);
    }else{
      throw Exception("FAILED TO LOAD DATA : ${response.statusCode}");
    }
  }
}