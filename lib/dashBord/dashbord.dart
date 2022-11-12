import 'package:flutter/material.dart';
import 'package:swalih_exm/home_screen/homeScreen.dart';
import 'package:swalih_exm/profile/profile.dart';

class DashedBoad extends StatefulWidget {
  const DashedBoad({super.key});

  @override
  State<DashedBoad> createState() => _DashedBoadState();
}

class _DashedBoadState extends State<DashedBoad> {
  int _currentIndex = 0;
  List<Widget> widegit1 = [
    homeScreen(),
    Text("data"),
    Text("data"),
    Profilepage(),
    Text("data")
  ];
  @override
  Widget build(BuildContext context) {
    return _currentIndex != 3
        ? Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios_new_sharp),
                color: Colors.black,
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.horizontal_split),
                  color: Colors.black,
                )
              ],
            ),
            body: widegit1[_currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: const Color(0xff202020),
              currentIndex: _currentIndex,

              // ignore: prefer_const_literals_to_create_immutables
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                  ),
                  label: "Store",
                  backgroundColor: Color(0xff202020),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart_checkout_outlined,
                    color: Colors.white,
                  ),
                  label: "My Cart",
                  backgroundColor: Color(0xff202020),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.white,
                  ),
                  label: "Favorite",
                  backgroundColor: Color(0xff202020),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_add_alt_1_outlined,
                    color: Colors.white,
                  ),
                  label: "Profile",
                  backgroundColor: Color(0xff202020),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                  label: "My Cart",
                  backgroundColor: Color(0xff202020),
                ),
              ],
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          )
        : Scaffold(
            body: widegit1[_currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: const Color(0xff202020),
              currentIndex: _currentIndex,

              // ignore: prefer_const_literals_to_create_immutables
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                  ),
                  label: "Store",
                  backgroundColor: Color(0xff202020),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart_checkout_outlined,
                    color: Colors.white,
                  ),
                  label: "My Cart",
                  backgroundColor: Color(0xff202020),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.white,
                  ),
                  label: "Favorite",
                  backgroundColor: Color(0xff202020),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_add_alt_1_outlined,
                    color: Colors.white,
                  ),
                  label: "Profile",
                  backgroundColor: Color(0xff202020),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                  label: "My Cart",
                  backgroundColor: Color(0xff202020),
                ),
              ],
              onTap: (value) {
                setState(() {
                  _currentIndex = value;
                });
              },
            ),
          );
  }
}
