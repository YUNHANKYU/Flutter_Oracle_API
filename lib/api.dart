import 'dart:convert';

import 'package:flutter_oracle_example/user_model.dart';
import 'package:http/http.dart' as http;

var api =
    'g04b85700cd70c0-db20220613144312.adb.ap-chuncheon-1.oraclecloudapps.com'; // 배포 시 사용
var ss = '/ords/admin/';

Future<dynamic> getAllUsers() async {
  var path = '${ss}users/allUsers';

  print('오오11: ${api + path}');
  print('오오22: ${Uri.https(api, path)}');

  final response = await http
      .get(Uri.https(api, path), headers: {'Accept': 'application/json'});
  print('일단 여기: ${Uri.http(api, path)}');
  if (response.statusCode == 200) {
    print('여기');
    print('items: ${jsonDecode((response.body))['items']}');
    print('count: ${jsonDecode((response.body))['count']}');
    // return UserModel.fromDs(jsonDecode((response.body))['data']);
  } else {
    print(response.statusCode);
    print(response.body);
    // throw Exception('Failed to load airscan');
    // return UserModel();
  }
}

Future<dynamic> getUser(String userName) async {
  var path = '${ss}users/user/$userName';

  print('오오11: ${api + path}');
  print('오오22: ${Uri.https(api, path)}');

  final response = await http
      .get(Uri.https(api, path), headers: {'Accept': 'application/json'});
  print('일단 여기: ${Uri.http(api, path)}');
  if (response.statusCode == 200) {
    print('여기');
    print('items: ${jsonDecode(utf8.decode(response.bodyBytes))['items']}');
    print('count: ${jsonDecode(utf8.decode(response.bodyBytes))['count']}');
    print(
        'decode: ${jsonDecode(utf8.decode(response.bodyBytes))['items'][0]['username']}');
    // return UserModel.fromDs(jsonDecode((response.body))['data']);
  } else {
    print(response.statusCode);
    print(response.body);
    // throw Exception('Failed to load airscan');
    // return UserModel();
  }
}
