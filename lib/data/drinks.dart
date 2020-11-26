class Drinks {
  const Drinks({this.name, this.price, this.imageName});

  final String name;
  final String price;
  final String imageName;
}

const List<Drinks> drinksList = const <Drinks>[
  const Drinks(
      name: 'Caipirinha',
      price: 'R\$ 20,00',
      imageName: 'images/drink.png'),
  const Drinks(
      name: 'Lemon drink',
      price: 'R\$ 12,00',
      imageName: 'images/drink2.png'),
  const Drinks(
      name: 'Summer Cocktail',
      price: 'R\$ 19,00',
      imageName: 'images/drink3.png'),
  const Drinks(
      name: 'Strawberry cocktail',
      price: 'R\$ 9,00',
      imageName: 'images/drink4.png'),
];