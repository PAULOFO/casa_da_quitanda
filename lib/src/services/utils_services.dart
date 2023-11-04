import 'package:intl/intl.dart/';

class UtilsServices {
  // R$ valor
  String priceToCurrency(double price) {
    Intl.defaultLocale = 'pt_BR';
    NumberFormat numberFormat = NumberFormat.simpleCurrency(locale: 'pt_BR');
      return numberFormat.format(price);
  }
}

//price to currency tradução preço para a moeda