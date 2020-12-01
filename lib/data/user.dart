//enum PaymentMethod { card, bank, paypal }

import 'package:project_topicos_avancados/features/profile/profile_page.dart';

class User {
  const User({this.email: 'tamires@gmail.com', this.name: "Tamires", this.imageName: "images/profile.png",
              this.paymentMethod: PaymentMethod.paypal});
  final String email;
  final String name;
  final String imageName;
  final PaymentMethod paymentMethod;

}