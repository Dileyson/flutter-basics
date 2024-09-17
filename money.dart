// moneda.dart
mixin Format {
  String format(double value) {
    return value.toStringAsFixed(5);
  }
}

class Money with Format {
  final String name;
  final double exchangeRate;

  Money(this.name, this.exchangeRate);

  void showExchangeRate() {
    print('The exchange rate of $name is: ${format(exchangeRate)} COP');
  }
}


