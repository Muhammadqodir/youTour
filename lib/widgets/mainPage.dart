import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> images = [
    "assets/1.jpg",
    "assets/2.jpg",
    "assets/3.jpg",
    "assets/4.jpg",
    "assets/5.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Поиск',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Избранные',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/main_imag1.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Your location',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on,color: Colors.white,),
                        Text(
                          'Ставрополь, Россия',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.white,
                            fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.red
                        ,
                        fontWeight: FontWeight.w700
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.zero,
              child: CarouselSlider(
                options: CarouselOptions(
                    height: 200.0,
                  enableInfiniteScroll: false,
                    initialPage: 0,
                    viewportFraction: 0.92,
                  autoPlay: true,
                  autoPlayInterval: Duration(milliseconds: 8000),
                  autoPlayAnimationDuration: Duration(milliseconds: 1500),
                  autoPlayCurve: Curves.linear,

                ),
                items: [0,1,2,3,4].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(0),
                          margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  images[i]),
                              fit: BoxFit.fill,
                            ),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(left: 15,bottom: 15,right: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('\$50',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Best of Bali Waterfails',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400
                                      ),
                                    ),
                                    Icon(Icons.arrow_forward,color: Colors.white,),
                                  ],
                                )

                              ],
                            ),
                          )
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 25,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.red
                        ,
                        fontWeight: FontWeight.w700
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
        Container(
          padding: EdgeInsets.only(left: 15),
          height: 70.0,
          child:  ListView(
            scrollDirection: Axis.horizontal,
            children: [Container(
              alignment: Alignment.center,
              width: 155,
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/6.jpg'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text(
                'Activity',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
              SizedBox(width: 15,),
              Container(
                alignment: Alignment.center,
                width: 155,
                height: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/7.jpg'),
                    fit: BoxFit.fill,
                  ),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Text(
                  'Relax',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
              SizedBox(width: 15,),
              Container(
                alignment: Alignment.center,
                width: 155,
                height: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/8.jpg'),
                    fit: BoxFit.fill,
                  ),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Text(
                  'Activity',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
              SizedBox(width: 15,),
              Container(
                alignment: Alignment.center,
                width: 155,
                height: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/2.jpg'),
                    fit: BoxFit.fill,
                  ),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Text(
                  'Activity',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
              SizedBox(width: 15,),
            ],
          ),
          ),
            SizedBox(height: 25,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommend',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.red
                        ,
                        fontWeight: FontWeight.w700
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.zero,
              child: CarouselSlider(
                options: CarouselOptions(
                    height: 200.0,
                    enableInfiniteScroll: false,
                    initialPage: 0,
                    viewportFraction: 0.92

                ),
                items: [0,1,2,3,4].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(0),
                          margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    images[i]),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(left: 15,bottom: 15,right: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('\$50',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Best of Bali Waterfails',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400
                                      ),
                                    ),
                                    Icon(Icons.arrow_forward,color: Colors.white,),
                                  ],
                                )

                              ],
                            ),
                          )
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 25,),
          ],
        ),
      ),
    );
  }
}


