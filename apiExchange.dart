// api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'money.dart';

class ApiExchange {
  final String apiUrl = 'https://api.exchangerate-api.com/v4/latest/COP';

  Future<List<Money>> getExchangeRate() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print(data);
      final rates = data['rates'];

      List<Money> monies = [
        Money('American Dolar (USD)', rates['USD']),
        Money('Euro (EUR)', rates['EUR']),
        Money('Pound Sterling (GBP)', rates['GBP']),
        Money('Canadian Dólar (CAD)', rates['CAD']),
      ];

      return monies;
    } else {
      throw Exception('Error getting exchange rates from API');
    }
  }
}
