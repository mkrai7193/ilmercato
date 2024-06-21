import 'package:flutter/material.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/screens/product/product_screen.dart';

class CategoriesDesign extends StatefulWidget {
  const CategoriesDesign();

  @override
  State<CategoriesDesign> createState() => _CategoriesDesignState();
}

class _CategoriesDesignState extends State<CategoriesDesign> {

  List<Map<String, dynamic>> categoryDetail = [

    {
      "id": "55",
      "name": "TEA",
      "subCat": "0",
      "image": "https://healthcarelive.online/imagefolder/tea.png",
    },
    {
      "id": "56",
      "name": "COFFEE",
      "subCat": "0",
      "image": "https://healthcarelive.online/imagefolder/coffee.png",
    },
    {
      "id": "57",
      "name": "SYRUPS",
      "subCat": "0",
      "image": "https://healthcarelive.online/imagefolder/syrups.png",
    },
    {
      "id": "58",
      "name": "MACHINES",
      "description": "Machine Description",
      "subCat": "0",
      "image": "https://healthcarelive.online/imagefolder/machines.png",
    },

    {
      "id": "59",
      "name": "ACCESSORIES",
      "subCat": "0",
      "image": "https://healthcarelive.online/imagefolder/accessories.png",
    },

    {
      "id": "23",
      "name": "VENDING PRODUCTS",
      "description": "",
      "subCat": "0",
      "image": "https://healthcarelive.online/imagefolder/vending.png",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount:2,
          mainAxisExtent:180),
      itemCount: categoryDetail.length,
      itemBuilder: (BuildContext ctx, index) {

        /* Start Category Design */

        return Container(
          decoration: BoxDecoration(
              border: Border.all(color: kTextColor,width: 0.2)
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductScreen(
                        parent: categoryDetail[index]['id'].toString(),
                        name: categoryDetail[index]['id'].toString(),

                      )));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                AspectRatio(
                  aspectRatio:2.5,
                  child: Image.network(
                    "${categoryDetail[index]['image']}",
                    loadingBuilder: (_, child, loadingProgress) =>
                    loadingProgress == null
                        ? child
                        : const Center(child: CircularProgressIndicator()),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top:2.0,bottom: 2.0,right: 2.0,left: 2.0),
                    child: Center(
                      child: Text(
                          "${categoryDetail[index]['name']}",
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 14,
                            color: kTextColor,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                          )
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );

        /* End Category Design */

      },
    );
  }
}
