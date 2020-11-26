class Snacks {
  const Snacks({this.name, this.price, this.imageName});

  final String name;
  final String price;
  final String imageName;
}

const List<Snacks> snacksList = const <Snacks>[
  const Snacks(
      name: 'Cheesecake',
      price: 'R\$ 9,00',
      imageName: 'images/snack.png'),
  const Snacks(
      name: 'Hamburguer',
      price: 'R\$ 12,00',
      imageName: 'images/snack2.png'),
  const Snacks(
      name: 'French Fries',
      price: 'R\$ 10,00',
      imageName: 'images/snack3.png'),
  const Snacks(
      name: 'Skittles',
      price: 'R\$ 6,00',
      imageName: 'images/snack4.png'),
];