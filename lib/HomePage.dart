import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_proto/ProductPage.dart';
import 'package:ecommerce_proto/models/Product.dart';
import 'package:ecommerce_proto/widgets/CategoryItem.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List bannerAdSlider = [
    'assets/banner1.jpg',
    'assets/banner2.jpg',
    'assets/banner3.jpg',
    'assets/banner4.jpg',
    'assets/banner5.jpg',
    'assets/banner6.jpg',
    'assets/banner7.jpg',
    'assets/banner8.jpg',
  ];

  List<Product> products = [
    Product(
        image: 'assets/product1.jpg',
        description:
            'A earum praesentium voluptates nemo fugit. Repudiandae velit ea at et dolorum quisquam eius. Doloremque molestias rerum repellat ad. Et consequatur aspernatur sed et magni. Sit maiores officiis quos quibusdam voluptas. Et quis et veniam dolores possimus.',
        price: '100/-',
        productName: 'iPad Mini'),
    Product(
        image: 'assets/product2.jpg',
        description:
            'A earum praesentium voluptates nemo fugit. Repudiandae velit ea at et dolorum quisquam eius. Doloremque molestias rerum repellat ad. Et consequatur aspernatur sed et magni. Sit maiores officiis quos quibusdam voluptas. Et quis et veniam dolores possimus.',
        price: '100/-',
        productName: 'iPad Pro'),
    Product(
        image: 'assets/product3.jpg',
        description:
            'A earum praesentium voluptates nemo fugit. Repudiandae velit ea at et dolorum quisquam eius. Doloremque molestias rerum repellat ad. Et consequatur aspernatur sed et magni. Sit maiores officiis quos quibusdam voluptas. Et quis et veniam dolores possimus.',
        price: '100/-',
        productName: 'iPhone Pro Max'),
    Product(
        image: 'assets/product4.jpg',
        description:
            'A earum praesentium voluptates nemo fugit. Repudiandae velit ea at et dolorum quisquam eius. Doloremque molestias rerum repellat ad. Et consequatur aspernatur sed et magni. Sit maiores officiis quos quibusdam voluptas. Et quis et veniam dolores possimus.',
        price: '100/-',
        productName: 'Apple Watch 3'),
    Product(
        image: 'assets/product5.jpg',
        description:
            'A earum praesentium voluptates nemo fugit. Repudiandae velit ea at et dolorum quisquam eius. Doloremque molestias rerum repellat ad. Et consequatur aspernatur sed et magni. Sit maiores officiis quos quibusdam voluptas. Et quis et veniam dolores possimus.',
        price: '100/-',
        productName: 'Apple Watch 4'),
    Product(
        image: 'assets/product6.jpg',
        description:
            'A earum praesentium voluptates nemo fugit. Repudiandae velit ea at et dolorum quisquam eius. Doloremque molestias rerum repellat ad. Et consequatur aspernatur sed et magni. Sit maiores officiis quos quibusdam voluptas. Et quis et veniam dolores possimus.',
        price: '100/-',
        productName: 'Macbook pro 16inch'),
    Product(
        image: 'assets/product7.jpg',
        description:
            'A earum praesentium voluptates nemo fugit. Repudiandae velit ea at et dolorum quisquam eius. Doloremque molestias rerum repellat ad. Et consequatur aspernatur sed et magni. Sit maiores officiis quos quibusdam voluptas. Et quis et veniam dolores possimus.',
        price: '100/-',
        productName: 'Macbook Pro'),
    Product(
        image: 'assets/product8.jpg',
        description:
            'A earum praesentium voluptates nemo fugit. Repudiandae velit ea at et dolorum quisquam eius. Doloremque molestias rerum repellat ad. Et consequatur aspernatur sed et magni. Sit maiores officiis quos quibusdam voluptas. Et quis et veniam dolores possimus.',
        price: '100/-',
        productName: 'iMac 4'),
    Product(
        image: 'assets/product9.jpg',
        description:
            'A earum praesentium voluptates nemo fugit. Repudiandae velit ea at et dolorum quisquam eius. Doloremque molestias rerum repellat ad. Et consequatur aspernatur sed et magni. Sit maiores officiis quos quibusdam voluptas. Et quis et veniam dolores possimus.',
        price: '100/-',
        productName: 't-Shirts'),
    Product(
        image: 'assets/product10.jpg',
        description:
            'A earum praesentium voluptates nemo fugit. Repudiandae velit ea at et dolorum quisquam eius. Doloremque molestias rerum repellat ad. Et consequatur aspernatur sed et magni. Sit maiores officiis quos quibusdam voluptas. Et quis et veniam dolores possimus.',
        price: '100/-',
        productName: 'Ethnic Wear - Dresses'),
    Product(
        image: 'assets/product11.jpg',
        description:
            'A earum praesentium voluptates nemo fugit. Repudiandae velit ea at et dolorum quisquam eius. Doloremque molestias rerum repellat ad. Et consequatur aspernatur sed et magni. Sit maiores officiis quos quibusdam voluptas. Et quis et veniam dolores possimus.',
        price: '100/-',
        productName: 'Dresses'),
    Product(
        image: 'assets/product12.jpg',
        description:
            'A earum praesentium voluptates nemo fugit. Repudiandae velit ea at et dolorum quisquam eius. Doloremque molestias rerum repellat ad. Et consequatur aspernatur sed et magni. Sit maiores officiis quos quibusdam voluptas. Et quis et veniam dolores possimus.',
        price: '100/-',
        productName: 't-Shirts'),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'E-Com',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.black),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(EvaIcons.menu2Outline),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(EvaIcons.shoppingBagOutline),
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    CategoryItem(
                      icon: EvaIcons.giftOutline,
                      size: 70,
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xFFffa100),
                    ),
                    CategoryItem(
                      icon: EvaIcons.headphonesOutline,
                      size: 70,
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xFF200bfff),
                    ),
                    CategoryItem(
                      icon: EvaIcons.hardDriveOutline,
                      size: 70,
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xFFff91c90),
                    ),
                    CategoryItem(
                      icon: EvaIcons.printerOutline,
                      size: 70,
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xFF9120de),
                    ),
                    CategoryItem(
                      icon: EvaIcons.videoOffOutline,
                      size: 70,
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xFF17e6a9),
                    ),
                    CategoryItem(
                      icon: EvaIcons.umbrellaOutline,
                      size: 70,
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xFFff788e),
                    ),
                    CategoryItem(
                      icon: EvaIcons.tvOutline,
                      size: 70,
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xFFff8176),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),

              //banner ad Slider

              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  autoPlay: true,
                ),
                items: bannerAdSlider.map(
                  (i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image(
                              image: AssetImage(i),
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ).toList(),
              ),

              //banner ad Slider

              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Products',
                  style: TextStyle(fontSize: 18),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              GridView.count(
                physics: ClampingScrollPhysics(),
                crossAxisCount: 2,
                shrinkWrap: true,
                childAspectRatio: 1 / 1.25,
                children: products.map((product) {
                  return Stack(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            Hero(
                              tag: product.image,
                              child: AspectRatio(
                                aspectRatio: 1 / 1,
                                child: Image(
                                  image: AssetImage(product.image),
                                ),
                              ),
                            ),
                            Text(product.productName),
                            Text(
                              '${product.price}',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.purpleAccent),
                            ),
                          ],
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductPage(
                                    product: product,
                                  ),
                                ));
                          },
                        ),
                      )
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
