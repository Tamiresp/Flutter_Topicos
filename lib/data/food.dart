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

const List<Food> drinksList = const <Food>[
  const Food(
      name: 'Caipirinha',
      price: 'R\$ 20,00',
      imageName: 'images/drink.png'),
  const Food(
      name: 'Lemon drink',
      price: 'R\$ 12,00',
      imageName: 'images/drink2.png'),
  const Food(
      name: 'Summer Cocktail',
      price: 'R\$ 19,00',
      imageName: 'images/drink3.png'),
  const Food(
      name: 'Strawberry cocktail',
      price: 'R\$ 9,00',
      imageName: 'images/drink4.png'),
];

const List<Food> snacksList = const <Food>[
  const Food(
      name: 'Cheesecake',
      price: 'R\$ 9,00',
      imageName: 'images/snack.png'),
  const Food(
      name: 'Hamburguer',
      price: 'R\$ 12,00',
      imageName: 'images/snack2.png'),
  const Food(
      name: 'French Fries',
      price: 'R\$ 10,00',
      imageName: 'images/snack3.png'),
  const Food(
      name: 'Skittles',
      price: 'R\$ 6,00',
      imageName: 'images/snack4.png'),
];