import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

const request =
    'https://api.freecurrencyapi.com/v1/latest?apikey=fca_live_nNSJpueNH0i2U2ql9dl3oDJ7Vl24R3LT1whEUCUG';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Map<String, dynamic> rates = await getData();

  //print("USD: ${rates['USD']}");
  //print("BRL: ${rates['BRL']}");
  //print("EUR: ${rates['EUR']}");

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

Future<Map<String, dynamic>> getData() async {
  http.Response response = await http.get(Uri.parse(request));
  Map<String, dynamic> data = jsonDecode(response.body);
  return data['data'];
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("\$ Conversor \$"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
    );
  }
}
