// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_const

import 'package:flutter/material.dart';
import 'package:swalih_exm/dashBord/dashbord.dart';
import 'package:swalih_exm/home_screen/productTile.dart';
import 'package:swalih_exm/home_screen/productScreen.dart';

import '../models/models.dart';

class homeScreen extends StatefulWidget {
  homeScreen({
    super.key,
  });

  @override
  State<homeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<homeScreen> {
  List<ProductDetails> product = [
    ProductDetails(
        image:
            'https://5.imimg.com/data5/CK/LM/MY-46960546/fresh-red-strawberry-500x500.jpg',
        name: 'Starwbarry',
        discound: '30% off',
        price: '\$20.0'),
    ProductDetails(
        image: 'https://nutriworks.in/wp-content/uploads/2018/04/mango.jpg',
        name: 'Mango',
        discound: '23% off ',
        price: '\$8.0'),
    ProductDetails(
        image:
            'https://i.pinimg.com/originals/ac/82/5f/ac825f3bdd5aca8512e21287034561b8.png',
        name: 'Orange',
        discound: '30% off',
        price: '\$12.0'),
    ProductDetails(
        image:
            'https://www.farmersalmanac.com/wp-content/uploads/2020/11/Adocortland_apples-as225320764-944x630.jpeg',
        name: 'Apple',
        discound: '30% off',
        price: '\$4.50'),
    ProductDetails(
        image:
            'https://images.pexels.com/photos/1395958/pexels-photo-1395958.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        name: 'blue barry',
        discound: '30% off',
        price: '\$4.0'),
    ProductDetails(
        image:
            'https://www.bhg.com/thmb/yGqTwF71JUtIdTyT7GfedSmm8A8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/gummy-berry-grapes-c1436588f0914f65a6a99495c4d82ade.jpg',
        name: 'Grap',
        discound: '30% off',
        price: '\$6.00'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     backgroundColor: Colors.white,
      //     leading: IconButton(
      //       onPressed: () {
      //         Navigator.pop(context);
      //       },
      //       icon: Icon(
      //         Icons.arrow_back_ios,
      //         color: Colors.black,
      //       ),
      //       //replace with our own icon data.
      //     )),
      body: Column(
        children: [
          SizedBox(
            height: 10,

          ),
          Text(
            'fruits and berries',
            style: TextStyle(fontSize: 22),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      /* Clear the search field */
                    },
                  ),
                  hintText: 'Search...',
                  border: InputBorder.none),
            ),
          ),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 10,
                mainAxisExtent: 300,
              ),
              itemCount: product.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductScreen(
                          p2: product[index],
                        ),
                      )),
                  // child: Padding(
                  //   padding: const EdgeInsets.only(top: 20.0),
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(12.2),
                  //         color: Colors.grey),
                  //     child: Column(
                  //       children: [
                  //         Padding(
                  //             padding: const EdgeInsets.only(top: 2),
                  //             child: Column(
                  //               children: [
                  //                 Text('${product.elementAt(index).name}'),
                  //                 Text(
                  //                     '${product.elementAt(index).discound}'),
                  //                 Text('${product.elementAt(index).price}'),
                  //               ],
                  //             )),
                  //         Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: Column(
                  //             children: [
                  //               Image.network(
                  //                 '${product.elementAt(index).image}',
                  //                 height: 130,
                  //                 width: 180,
                  //                 fit: BoxFit.contain,
                  //               ),
                  //               IconButton(
                  //                   alignment: Alignment.bottomLeft,
                  //                   onPressed: () {},
                  //                   icon: const Padding(
                  //                     padding:
                  //                         const EdgeInsets.only(left: 56),
                  //                     child: const Icon(Icons.check),
                  //                   ))
                  //             ],
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  child: ProductTile(pro_dis: product[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
