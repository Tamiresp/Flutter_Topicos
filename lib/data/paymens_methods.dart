class PaymentMethods {
  int id;
  String name;
 
  PaymentMethods({this.id, this.name});
 
  static List<PaymentMethods> getMethods() {
    return <PaymentMethods>[
      PaymentMethods(id: 1, name: "Card"),
      PaymentMethods(id: 2, name: "Bank Account"),
      PaymentMethods(id: 3, name: "Paypal"),
    ];
  }
}