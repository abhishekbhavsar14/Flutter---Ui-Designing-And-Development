import 'package:flutter/material.dart';

void main() {
  runApp(RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RestaurantScreen(),
    );
  }
}

class RestaurantScreen extends StatelessWidget {
  final List<Map<String, String>> menuItems = [
    {
      'title': 'Soba Soup',
      'subtitle': 'No.1 in sales',
      'price': '\$12',
      'image':
          'https://images.pexels.com/photos/539451/pexels-photo-539451.jpeg?auto=compress&cs=tinysrgb&w=600'
    },
    {
      'title': 'Sei Ua Samun Phrai',
      'subtitle': 'No.1 in sales',
      'price': '\$12',
      'image':
          'https://images.pexels.com/photos/1437267/pexels-photo-1437267.jpeg?auto=compress&cs=tinysrgb&w=600'
    },
    {
      'title': 'Pizza',
      'subtitle': 'No.1 in sales',
      'price': '\$12',
      'image':
          'https://images.pexels.com/photos/708587/pexels-photo-708587.jpeg?auto=compress&cs=tinysrgb&w=600'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.94),
      appBar: AppBar(
        backgroundColor: Colors.black12.withOpacity(0.01),
        elevation: 0,
        leading: IconButton(
          icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: Container(
                  child: Icon(Icons.arrow_back, color: Colors.black))),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.search, color: Colors.black)),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Restaurant',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text('20-30min',
                        style: TextStyle(color: Colors.white))),
                SizedBox(width: 8),
                Text('2.4km', style: TextStyle(color: Colors.grey)),
                SizedBox(width: 8),
                Text('Restaurant', style: TextStyle(color: Colors.grey)),
                Spacer(),
                Icon(Icons.star, color: Colors.amber),
                Text('4.7', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 8),
            Text('Orange Sandwiches is delicious'),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildCategoryButton('Recommend', true),
                  _buildCategoryButton('Popular', false),
                  _buildCategoryButton('Noodles', false),
                  _buildCategoryButton('Pizza', false),
                ],
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: menuItems.length,
                itemBuilder: (context, index) {
                  var image = menuItems[index]['image'];
                  var title = menuItems[index]['title'];
                  var subtitle = menuItems[index]['subtitle'];
                  var price = menuItems[index]['price'];
                  return Container(
                    padding: EdgeInsets.all(11),
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage:
                                  NetworkImage(menuItems[index]['image']!),
                            ),
                            SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(menuItems[index]['title']!),
                                Text(
                                  menuItems[index]['subtitle']!,
                                  style: TextStyle(color: Colors.amber),
                                ),
                                Text(menuItems[index]['price']!),
                              ],
                            ),
                          ],
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          MenuItemDetailsScreen(
                                              title: title!,
                                              subtitle: subtitle!,
                                              price: price!,
                                              imageUrl: image!)));
                            },
                            icon:
                                Icon(Icons.chevron_right, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.circle_outlined,
                      color: Colors.amber,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.4)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.4)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.4)),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black45, spreadRadius: 1, blurRadius: 6)
                  ], shape: BoxShape.circle, color: Colors.amber),
                  child: Stack(children: [
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.black,
                      size: 30,
                    )
                  ]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(String text, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          foregroundColor: isSelected ? Colors.white : Colors.black,
          backgroundColor: isSelected ? Colors.amber : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}

class MenuItemDetailsScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final String imageUrl;

  // Constructor to accept data
  MenuItemDetailsScreen({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.arrow_back, color: Colors.black)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.favorite_border, color: Colors.black)),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
          children: [
        SizedBox(height: 40,),
        Container(
          margin: EdgeInsets.only(top: 80),
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.94),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70),
              Center(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.access_time, color: Colors.blue),
                  SizedBox(width: 5),
                  Text('50min'),
                  SizedBox(width: 20),
                  Icon(Icons.star, color: Colors.amber),
                  SizedBox(width: 5),
                  Text('4.8'),
                  SizedBox(width: 20),
                  Icon(Icons.local_fire_department, color: Colors.red),
                  SizedBox(width: 5),
                  Text('325 Kcal'),
                ],
              ),
              SizedBox(height: 36),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '\$ ${price}',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 20),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.remove, color: Colors.white),
                        SizedBox(width: 10),
                        Text('1', style: TextStyle(color: Colors.white)),
                        SizedBox(width: 10),
                        Icon(Icons.add, color: Colors.white),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Ingredients',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildIngredientIcon('Noodle', '🍜'),
                  _buildIngredientIcon('Shrimp', '🍤'),
                  _buildIngredientIcon('Egg', '🥚'),
                  _buildIngredientIcon('Scallion', '🧅'),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'About',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'A vibrant Thai sausage made with ground chicken, plus its spicy chile dip, from Chef Parnass Savang of Atlanta\'s Talat Market.',
                style: TextStyle(color: Colors.grey[700]),
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black45,
                            spreadRadius: 1,
                            blurRadius: 6)
                      ],
                      shape: BoxShape.rectangle,
                      color: Colors.amber),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Text(
                          '1',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 5,
          child: CircleAvatar(
            radius: 70,
            backgroundImage: NetworkImage(
                imageUrl
            ),
          ),),
      ]),
    );
  }

  Widget _buildIngredientIcon(String name, String emoji) {
    return Container(
      padding: EdgeInsets.all(7),
      height: 100,
      width: 70,
      decoration: BoxDecoration(
          color: Colors.black12.withOpacity(0.1),
          borderRadius: BorderRadius.circular(44)),
      child: Padding(
        padding: const EdgeInsets.only(top: 13),
        child: Column(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundColor: Colors.grey[200],
              child: Text(emoji, style: TextStyle(fontSize: 24)),
            ),
            SizedBox(height: 4),
            Text(name, style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
