class CurrencyModel {
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  CurrencyModel({this.name = '', this.real = 0.0, this.dolar = 0.0, this.euro = 0.0, this.bitcoin = 0.0});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(name: 'Real', real: 1.0, dolar: 0.18, euro: 0.15, bitcoin: 0.000015),
      CurrencyModel(name: 'Dolar', real: 5.65, dolar: 1.0, euro: 0.15, bitcoin: 0.000015),
      CurrencyModel(name: 'Euro', real: 6.10, dolar: 1.18, euro: 0.15, bitcoin: 0.000015),
      CurrencyModel(name: 'Bitcoin', real: 6542342.10, dolar: 1231.18, euro: 0.15, bitcoin: 0.000015)
    ];
  }
}