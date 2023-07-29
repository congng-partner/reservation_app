class FoodInfoModel {
  final String name;
  final String description;
  final int rate;
  final int rateNumber;
  final String imageAddress;
  final String restaurantAddress;

  FoodInfoModel(this.name, this.description, this.rate, this.rateNumber,
      this.imageAddress, this.restaurantAddress);
}

final List<FoodInfoModel> foodInfoListMockData = [
  FoodInfoModel('Beef Ribs', 'USDA beef ribs finger', 5, 100,
      'assets/images/images/image_example.png', 'An BBQ Su Van Hanh'),
  FoodInfoModel('Beef Bacon', 'USDA beef bacon', 3, 33,
      'assets/images/images/image_example_02.png', 'An BBQ Su Van Hanh'),
  FoodInfoModel('Beef Stake', 'USDA beefstake', 2, 150,
      'assets/images/images/image_example_03.png', 'An BBQ Su Van Hanh'),
  FoodInfoModel('Salad', 'Lemony White Bean Salad with Prosciutto', 5, 1000,
      'assets/images/images/image_example_04.png', 'An BBQ Su Van Hanh'),
  FoodInfoModel('Beef Ribs', 'USDA beef ribs finger', 5, 99,
      'assets/images/images/image_example.png', 'An BBQ Su Van Hanh'),
  FoodInfoModel('Beef Ribs', 'USDA beef ribs finger', 5, 99,
      'assets/images/images/image_example.png', 'An BBQ Su Van Hanh'),
  FoodInfoModel('Beef Ribs', 'USDA beef ribs finger', 5, 99,
      'assets/images/images/image_example.png', 'An BBQ Su Van Hanh'),
];
