import 'package:flutter/material.dart';
import 'package:ilmercato/Api/LoginApi.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/screens/category/category_screen.dart';
import 'package:ilmercato/screens/home/model/NewCategoryModel.dart';
import 'package:ilmercato/screens/product/product_screen.dart';


class Body extends StatefulWidget {
  final String parent;

  Body({required this.parent});

  @override
  State<Body> createState() => _BodyState();
}
class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewCategoryModel>(
        future: LoginApi.GetCategoryApi({"parent": "${widget.parent.toString()}"}),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return GridView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                    childAspectRatio: 1,
                  ),
                  itemCount: snapshot.data!.data!.records!.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: kTextColor, width: 0.2)
                      ),
                      child: GestureDetector(
                        onTap: () {
                          if (snapshot.data!.data!.records![index].count !=0) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CategoryScreen(
                                              parent: "${snapshot.data!.data!
                                                  .records![index].cid.toString()}",
                                              cname: "${snapshot.data!.data!
                                                  .records![index].cname.toString()}"
                                          )));
                                } else {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ProductScreen(
                                              parent:  snapshot.data!.data!
                                                  .records![index].cid.toString(),
                                            name:  snapshot.data!.data!
                                                .records![index].cname.toString(),
                                             )));
                                }

                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            AspectRatio(
                              aspectRatio: 1.2,
                              child: Image.network(
                                "${snapshot.data!.data!.records![index].cimages
                                    .toString()}",
                                loadingBuilder: (_, child, loadingProgress) =>
                                loadingProgress == null
                                    ? child
                                    : const Center(
                                    child: CircularProgressIndicator()),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 2.0,
                                    bottom: 2.0,
                                    right: 2.0,
                                    left: 2.0),
                                child: Center(
                                  child: Text(
                                      "${snapshot.data!.data!.records![index]
                                          .cname.toString()}",
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 13,
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
                  });
            } else if (snapshot.hasError) {
              return Container(
                  alignment: AlignmentDirectional.center,
                  child: Text("Technical Issue! Please Try Again"));
            }
          }
          return Container(
              alignment: AlignmentDirectional.center,
              child: const CircularProgressIndicator.adaptive());
        }
    );
  }
}
