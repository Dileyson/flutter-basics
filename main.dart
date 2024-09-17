// main.dart
import 'apiExchange.dart';
import 'money.dart';

void main() async {
  ApiExchange apiExchange = ApiExchange();

  try {
    List<Money> monies = await apiExchange.getExchangeRate();
    
    print('Exchange rates compare to (COP):');
    for (var money in monies) {
      money.showExchangeRate();
    }
  } catch (e) {
    print('Error: $e');
  }
}
