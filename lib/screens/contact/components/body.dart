import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../constants.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Future<void>? _launched;

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  openContactWhatApp() async {
    var whatsapp = "97366300488";
    var whatsappURl_android = "https://wa.me/$whatsapp?text=hello";
    var whatappURL_ios = "https://wa.me/$whatsapp?text=hello";
    if (Platform.isIOS) {
      // for iOS phone only
      if (await canLaunch(whatappURL_ios)) {
        await launch(whatappURL_ios, forceSafariVC: false);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsApp no installed",style: smallListTextWhite,)));
      }
    } else {
      // android , web
      if (await canLaunch(whatsappURl_android)) {
        await launch(whatsappURl_android);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsApp no installed",style: smallListTextWhite,)));
      }
    }
  }

  @override
  void initState() {
    super.initState();
    setCustomMarker();
  }

  Set<Marker> _marker = {};

  BitmapDescriptor? mapMarker;

  Completer<GoogleMapController> _controller = Completer();

  void setCustomMarker() async {
    mapMarker = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), "assets/images/logo.png");
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
    setState(() {
      _marker.add(Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(28.68579228655879, 77.34444269396948),
          icon: mapMarker!,
          infoWindow: InfoWindow(
            title: "iL Mercato BH",
            snippet: "Unit 0, Bldg 219, Road 18, Block 320, Al Hoora, Kingdom of Bahrain",
          )));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   height: 300,
            //   child: GoogleMap(
            //     onMapCreated: _onMapCreated,
            //     markers: _marker,
            //     initialCameraPosition: CameraPosition(
            //       target: LatLng(28.68579228655879, 77.34444269396948),
            //       zoom: 18,
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("IL Mercato Bahrain",
                    style: TextStyle(color: kDarkTextColor, fontSize: 25)),
              ),
            ),
            Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16, left: 16),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Icon(
                                Icons.location_on,
                                color: kDarkTextColor,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16, left: 16),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Unit 0, Bldg 219, Road 18, \nBlock 320, Al Hoora, \nKingdom of Bahrain",
                              style: TextStyle(
                                color: kDarkTextColor,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16, left: 16),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.call,
                            color: kDarkTextColor,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, left: 16),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: new InkWell(
                            onTap: () => setState(() {
                                  _launched = _makePhoneCall('tel:97377033333');
                                }),
                            child: new Text(
                              "+973-77033333",
                              style:
                                  TextStyle(color: kDarkTextColor, fontSize: 18),
                            )),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16, left: 16),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Image.asset(
                            "assets/images/whatsapp.png",

                            width:25
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, left: 16),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: new InkWell(
                            onTap: () => openContactWhatApp(),

                            child: new Text(
                              "+973-66300488",
                              style:
                              TextStyle(color: kDarkTextColor, fontSize: 18),
                            )),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16, left: 16),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.email,
                            color: kDarkTextColor,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, left: 16),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "info@ilmercato.com",
                            style: TextStyle(color: kDarkTextColor, fontSize: 18),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
  // @override
  // Widget build(BuildContext context) {
  //   return  FutureBuilder<Contact_model>(
  //         future: getContact(),
  //         builder: (context, snapshot) {
  //           if (snapshot.hasData) {
  //             return ListView.builder(
  //                 itemCount: snapshot.data.data.records.length,
  //                 itemBuilder: (context, index) {
  //                   return contactDesign(snapshot.data.data.records[index]);
  //                 });
  //           } else if (snapshot.hasError) {
  //             return Text("Error");
  //           }
  //           return Text("Loading...");
  //         });
  // }

//   Set<Marker> _marker = {};
//
//   BitmapDescriptor? mapMarker;
//
//   Completer<GoogleMapController> _controller = Completer();
//
//   void setCustomMarker() async {
//     mapMarker = await BitmapDescriptor.fromAssetImage(
//         ImageConfiguration(), "assets/images/logo.png");
//   }
//
//   void _onMapCreated(GoogleMapController controller) {
//     _controller.complete(controller);
//     setState(() {
//       _marker.add(Marker(
//           markerId: MarkerId('id-1'),
//           position: LatLng(28.68579228655879, 77.34444269396948),
//           icon: mapMarker!,
//           infoWindow: InfoWindow(
//             title: "Riddi Siddhi Jewellers",
//             snippet: "B-7 shop no, Gaur Plaza, 204, Sahibabad Rd, \n Ext-I, Block B, Shalimar Garden Extension II, \n Ghaziabad, Uttar Pradesh 201005",
//           )));
//     });
//   }
//
//   contactDesign(Records record) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       child: Column(
//         children: [
//           Container(
//             height: 350,
//             child: GoogleMap(
//               onMapCreated: _onMapCreated,
//               markers: _marker,
//               initialCameraPosition: CameraPosition(
//                 target: LatLng(28.68579228655879, 77.34444269396948),
//                 zoom: 18,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: kDefaultPadding20-4, left: kDefaultPadding20-4),
//             child: Align(
//                 alignment: Alignment.topLeft,
//                 child: Text(
//                   record.name,
//                   style:
//                       TextStyle(color: kDarkTextColor, fontSize: kTextSize20+8)),
//                 ),
//           ),
//           Column(
//             children: [
//               Container(
//                   width: MediaQuery.of(context).size.width,
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(top: kDefaultPadding20-4, left: kDefaultPadding20-4),
//                         child: Align(
//                             alignment: Alignment.topLeft,
//                             child: Icon(Icons.location_on)),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: kDefaultPadding20-4, left: kDefaultPadding20-4),
//                         child: Align(
//                             alignment: Alignment.topLeft,
//                             child: Text(" B-7 shop no, Gaur Plaza,\n Sahibabad Rd, Shalimar Garden \n Ghaziabad, Uttar Pradesh 201005",
//                               style:  TextStyle(
//                                   color: kDarkTextColor,
//                                   fontSize: kTextSize20-2,
//                                 ),
//                               ),
//                             ),
//                       ),
//                     ],
//                   )),
//               Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: kDefaultPadding20-4, left: kDefaultPadding20-4),
//                     child: Align(
//                         alignment: Alignment.topLeft, child: Icon(Icons.call)),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: kDefaultPadding20-4, left: kDefaultPadding20-4),
//                     child: Align(
//                       alignment: Alignment.topLeft,
//                       child: new InkWell(
//                           onTap: () => setState(() {
//                             _launched = _makePhoneCall('tel:${record.mobile}');
//                           }),
//                           child: new Text("${record.mobile}",
//                             style: TextStyle(
//                                     color: kDarkTextColor, fontSize: kTextSize20+2),
//                           )
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top:kDefaultPadding20-4, left: kDefaultPadding20-4),
//                     child: Align(
//                         alignment: Alignment.topLeft, child: Icon(Icons.email)),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: kDefaultPadding20-4, left: kDefaultPadding20-4),
//                     child: Align(
//                         alignment: Alignment.topLeft,
//                         child: Text(
//                           record.email,
//                           style: TextStyle(
//                                   color: kDarkTextColor, fontSize: kTextSize20+2),
//                         )),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
