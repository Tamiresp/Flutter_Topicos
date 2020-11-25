enum PaymentMethod { card, bank, paypal }

class User {
  int id;
  String name;
  PaymentMethod paymentMethod;
 
  User({this.id, this.name, this.paymentMethod});
 
  static List<User> getUser() {
    return <User>[
      User(id: 1, name: "Card", paymentMethod: PaymentMethod.card),
      User(id: 2, name: "Bank Account", paymentMethod: PaymentMethod.bank),
      User(id: 3, name: "Paypal", paymentMethod: PaymentMethod.paypal),
    ];
  }
}