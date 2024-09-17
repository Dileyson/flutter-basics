void main() {
  // Map product list
  List<Map<String, dynamic>> products = [
    {
      'name': 'Arroz',
      'price': 2100.0,
      'discount': 10.0,
      'iva': 10.0 
    },
    {
      'name': 'Pera',
      'price': 3000.0,
      'discount': 0.0,
      'iva': 19.0
    },
    {
      'name': 'Leche',
      'price': 4500.0,
      'discount': 20.0,
      'iva': 15.0
    },
    {
      'name': 'Yogurt',
      'price': 28900.0,
      'discount': 5.0,
      'iva': 190.0
    },
  ];

  // Final price for each product
  for (var product in products) {
    double? finalPrice = getFinalPrice(
      product['price'],
      product['discount'],
      product['iva'],
    );

    if (finalPrice != null) {
      print('The  final price for ${product['name']} is: \$${finalPrice.toStringAsFixed(2)}');
    } else {
      print('One or more values in ${product['name']} are invalid.');
    }
  }
}

// Function to get final price
double? getFinalPrice(double price, double discount, double iva) {
  if (discount < 0 || discount > 100 || iva < 0 || iva > 100) {
    print('Error: Discount or IVA invalid values (0-100)');
    return null;
  }

  double discountedPrice = price - (price * (discount / 100));
  double finalPrice = discountedPrice + (discountedPrice * (iva / 100));

  return finalPrice;
}
