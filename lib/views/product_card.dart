import 'package:flutter/material.dart';
import 'package:flutter3_5/models/product_model.dart';
import '../widgets/text_widget.dart';

class ProudctCard extends StatelessWidget {
  final ProductModel productModel;
  const ProudctCard({Key? key, required this.productModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.0,
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            width: 170,
            height: 200,
            child: Image.asset(
              productModel.image,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(text: productModel.name, size: 18),
                  TextWidget(
                    text: '${productModel.price} \$',
                    size: 20,
                    color: Colors.orange,
                  ),
                  TextWidget(
                    text: '${productModel.discount}% OFF',
                    size: 18,
                    color: Colors.grey,
                  ),
                  Row(
                    children: const [
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.grey),
                      Icon(Icons.star, color: Colors.grey),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
