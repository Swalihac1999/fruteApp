import 'package:flutter/material.dart';
import 'package:swalih_exm/models/models.dart';

class ProductTile extends StatelessWidget {
  ProductTile({super.key, required this.pro_dis});
  final ProductDetails pro_dis;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text("${pro_dis.name}"),
          Text("${pro_dis.price}"),
          Text("${pro_dis.discound}"),
          Image.network(
            '${pro_dis.image}',
            height: 170,
            width: double.infinity,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
