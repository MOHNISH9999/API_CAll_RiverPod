import 'dart:convert';

import 'package:api_call_riverpod/models/user_models.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_riverpod/flutter_riverpod.dart';

class ApiServices {
  String endpoint =
      "https://aincfapim.test.apimanagement.eu10.hana.ondemand.com:443/GW_SCWM_SRV/RepackHuItemSet?\$filter=Status eq 'O'";



  Future<List<UserModels>> getUsers() async {

    final String username = 'sapui';
    final String password = 'Crave@2022';

    // Encode the username and password in Base64
    final String basicAuth = 'Basic ' + base64Encode(utf8.encode('$username:$password'));

    Map <String, String> headers= {
      'Authorization': basicAuth, // Set Basic Auth header
      'sap-client': '200', // Replace with the desired SAP client
      'Accept': 'application/json', // Set the desired Accept header
      'Content-Type': 'application/json',
      "Accept-Encoding":"gzip, deflate",
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Credentials': 'true',
      'Access-Control-Allow-Headers': 'Content-Type',
      'Access-Control-Allow-Methods':
      'GET,PUT,POST,DELETE'// Set the desired Content-Type header
    };
    final http.Response response = await http.get(Uri.parse(
        endpoint
    ),
        headers: headers
        // getHeaders(),
        // <String, String>{
        //   'Authorization': basicAuth, // Set Basic Auth header
        //   'sap-client': '200', // Replace with the desired SAP client
        //   'Accept': 'application/json', // Set the desired Accept header
        //   'Content-Type': 'application/json', // Set the desired Content-Type header
        // },


    );


    if (response.statusCode == 200) {



      final List result = jsonDecode(response.body)['d']['results'];

      // return result.map(((e) {
      //   final userModels = userModelsFromJson(json.decode(e));
      //   return userModels;
      // })).toList();
      return result.map(((e) => UserModels.fromJson(e))).toList();

    } else {
      throw Exception(response.reasonPhrase);
    }
  }


}

final userprovider = Provider<ApiServices>((ref) => ApiServices());
