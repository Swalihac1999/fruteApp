import 'package:flutter/material.dart';

import 'package:swalih_exm/models/models.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key, required this.p2});
  final ProductDetails p2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: p2.color,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined)),
        actions: [Icon(Icons.horizontal_split_rounded)],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              // Container(
              //   decoration: BoxDecoration(color: p2.color),
              // ),
              Image.network("${p2.image}"),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  title: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 150),
                        child: Text("${p2.name}"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: Text(
                          "${p2.price}",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: Text(
                          "${p2.discound}",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Text(
                        "Product Decrption",
                        style: TextStyle(),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ''',
                        ),
                      ),
                      Row(
                        children: [
                          Card(
                            color: Colors.yellow,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite),
                            ),
                          ),
                          Card(
                            //width: 200,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Colors.yellow,
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.shopping_bag_outlined,
                                      color: Colors.white,
                                    )),
                                const Text("Add to cart")
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),

                  //    subtitle:
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}