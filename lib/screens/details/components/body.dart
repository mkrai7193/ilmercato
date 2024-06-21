import 'package:flutter/material.dart';
import 'package:ilmercato/Api/LoginApi.dart';
import 'package:ilmercato/screens/product/model/NewProductCategoryModel.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
class Body extends StatefulWidget {
  final String pid;

  const Body({Key? key, required this.pid}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {


  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewProductCategoryModel>(
      future: LoginApi.GetProductDetailApi({"pid":widget.pid}),
      builder: (context, snapshot) {
        // Checking if future is resolved or not
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
         //  List<ProductsModel>? product = snapshot.data as List<ProductsModel>;
            return getDetail(snapshot.data!.data!.records![0], context);
          } else if (snapshot.hasError) {
            return Container(
                alignment: AlignmentDirectional.center,
                child: Text("Technical Issue! Please Try Again"));
          }
        }
        return Container(
            alignment: AlignmentDirectional.center,
            child: const CircularProgressIndicator.adaptive());
      },
    );
  }



  Widget getDetail(Records records, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12,top: 12,right: 12),
      child: ListView(
        children: [

      //    ProductImages(product: records),
          SizedBox(
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 1,

              child: Hero(
                tag: records.images!.toString(),
                child: Image.network(
                  "${records.images!.toString()}",
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          TopRoundedContainer(
            color: Colors.transparent,
            child: Column(
              children: [
                ProductDescription(
                  product: records,
                ),
              ],
            ),
          ),


          SizedBox(height: 20),
        ],
      ),
    );
  }
}
