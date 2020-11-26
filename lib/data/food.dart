class Food {
  const Food({this.name, this.price, this.imageName});

  final String name;
  final String price;
  final String imageName;
}

const List<Food> foodList = const <Food>[
  const Food(
      name: 'Moi-moi and ekpa',
      price: 'R\$ 8,00',
      imageName: 'images/food4.png'),
  const Food(
      name: 'Cananpe',
      price: 'R\$ 22,00',
      imageName: 'images/food5.png'),
  const Food(
      name: 'Meal and Potatos',
      price: 'R\$ 58,00',
      imageName: 'images/food6.png'),
  const Food(
      name: 'Veggie\ntomato mix',
      price: 'R\$ 29,00',
      imageName: 'images/food.png'),
  const Food(
      name: 'Egg',
      price: 'R\$ 39,00',
      imageName: 'images/food2.png'),
  const Food(
      name: 'Fried chicken',
      price: 'R\$ 12,00',
      imageName: 'images/food3.png'),
];