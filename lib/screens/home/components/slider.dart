import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ilmercato/Api/LoginApi.dart';

class SliderA extends StatefulWidget {
  const SliderA({
    Key? key,
  }) : super(key: key);

  @override
  _SliderAState createState() => _SliderAState();
}

class _SliderAState extends State<SliderA> {
  initState() {
    super.initState();
    Banner();
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 2,
        enlargeCenterPage: false,
        autoPlay: true,
      ),
      items: imgList
          .map((item) => Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Center(
                    child: CachedNetworkImage(
                        imageUrl: "${item.toString()}", fit: BoxFit.cover)),
              ))
          .toList(),
    );
  }

  final List<String> imgList = [];

  Future<dynamic> Banner() async {
    try {
      var res = await LoginApi.bannerApi({"btype": "Main_banner"});
      var length = res.data!.records!.length;

      for (var ia = 0; ia < length; ia++) {
        var bimage1 = res.data!.records![ia].bimage;
        imgList.add(bimage1!);
      }
      setState(() {});
      return imgList;
    } catch (e) {
      throw (e);
    }
  }
}

//
//
//
// final List<String> imgList = [
//
//   'https://ilmercatobh.com/adminpanel/upload/images/banner/lavazzabanner.webp',
//
//   'https://ilmercatobh.com/adminpanel/upload/images/banner/lavazzabanner1.webp',
//
//   'https://ilmercatobh.com/adminpanel/upload/images/banner/odkbanner.webp'
// ];

/*final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  Image.network(
                    item,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(200, 0, 0, 0),
                            Color.fromARGB(0, 0, 0, 0)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: Text(
                        'No. ${imgList.indexOf(item)} image',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ))
    .toList();*/
