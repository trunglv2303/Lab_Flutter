import 'dart:convert';
import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR',
];

const List<String> cryptoList = ['BTC', 'ETH', 'LTC'];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'aff272c2-6477-474b-b567-fd2a2f3a8983';

class CoinData {
  Future<Map<String, String>> getCoinData(String selectedCurrency) async {
    Map<String, String> cryptoPrices = {};

    for (String crypto in cryptoList) {
      String requestURL = '$coinAPIURL/$crypto/$selectedCurrency';

      var headers = {
        'X-CoinAPI-Key': apiKey, // Correct way to pass API key
      };

      http.Response response = await http.get(
        Uri.parse(requestURL),
        headers: headers,
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        cryptoPrices[crypto] = data['rate'].toString(); // Extract exchange rate
      } else {
        print(
          'Failed with status: ${response.statusCode}, Response: ${response.body}',
        );
      }
    }

    return cryptoPrices;
  }
}
