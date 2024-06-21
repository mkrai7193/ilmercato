import 'package:flutter/material.dart';
import 'package:ilmercato/Api/LoginApi.dart';
import 'package:ilmercato/screens/product/components/body.dart';
import 'package:ilmercato/screens/product/model/NewCategoryBrandModel.dart';

class MainBrandList extends StatefulWidget {
  final String cid;
  final String brand;
  const MainBrandList({super.key, required this.cid, required this.brand});

  @override
  State<MainBrandList> createState() => _MainBrandListState();
}

class _MainBrandListState extends State<MainBrandList> {
  String? brand;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewCategoryBrandModel>(
      future:LoginApi.GetCategoryBrandApi({"cname":widget.cid}),
      builder: (context, snapshot) {
        // Checking if future is resolved or not
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {

            return ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data!.data!.records!.length,
                      itemBuilder: (context, int index) {
                        brand =snapshot.data!.data!.records![index].bname;
                        return getPrntCat(snapshot.data!.data!.records![index], snapshot.data!.data!.records!.length );
                      }
            );
          } else if (snapshot.hasError) {
            return Container(
                alignment:AlignmentDirectional.center,
                child: Text("Technical Issue! Please Try Again"));
          }
        }
        return Container(
            alignment:AlignmentDirectional.center,
            child: const CircularProgressIndicator.adaptive());
      },
    );
  }

  Widget getPrntCat(Records records, int count) {

    return Column(

      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Body11(
                      brand: records.bname.toString(),
                  parent: widget.cid,
                    name:""
                )));
          },
          child: Image.network(records.bimage.toString(),width:MediaQuery.of(context).size.width/count, height:94),
        ),
        Container(
          width: MediaQuery.of(context).size.width/count,
          height: 5,
          color: (records.bname.toString() == widget.brand )? Colors.green: Colors.white,
        )
      ],
    );

  }
}
