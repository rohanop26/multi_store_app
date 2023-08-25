import 'package:flutter/material.dart';
import 'package:multi_store_app/utilites/categ_list.dart';
import '../minor_screens/subcateg_products.dart';
import '../widgets/categ_widgets.dart';

class BagsCategory extends StatelessWidget {
  const BagsCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.76,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CategHeaderLabel(
                    headerLabel: 'Bags',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.68,
                    child: GridView.count(
                      mainAxisSpacing: 70,
                      crossAxisSpacing: 15,
                      crossAxisCount: 3,
                      children: List.generate(bags.length, (index) {
                        return SubcategModel(
                          assetName: 'images/bags/bags$index.jpg',
                          mainCategName: 'bags',
                          subCategName: bags[index],
                          subcategLabel: bags[index],
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            right: 0,
            child: SliderBar(
              maincategName: 'bags',
            ),
          )
        ],
      ),
    );
  }
}
