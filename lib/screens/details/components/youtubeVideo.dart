// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:youtube_player_iframe/youtube_player_iframe.dart';
//
// class YoutubeVideo extends StatefulWidget {
//   final String video;
//
//   const YoutubeVideo({Key? key, required this.video}) : super(key: key);
//   @override
//   _YoutubeVideoState createState() => _YoutubeVideoState();
// }
//
// class _YoutubeVideoState extends State<YoutubeVideo> {
//   YoutubePlayerController? _ytbPlayerController;
//   var videosList;
//   @override
//   void initState() {
//     super.initState();
//     videosList = "${widget.video.toString()}";
//     _setOrientation([
//       DeviceOrientation.landscapeRight,
//       DeviceOrientation.landscapeLeft,
//       DeviceOrientation.portraitUp,
//       DeviceOrientation.portraitDown,
//     ]);
//
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       setState(() {
//         _ytbPlayerController = YoutubePlayerController(
//           initialVideoId: videosList,
//           params: YoutubePlayerParams(
//             showFullscreenButton: true,
//           ),
//         );
//       });
//     });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//
//     _setOrientation([
//       DeviceOrientation.portraitUp,
//       DeviceOrientation.portraitDown,
//     ]);
//
//     _ytbPlayerController!.close();
//   }
//
//   _setOrientation(List<DeviceOrientation> orientations) {
//     SystemChrome.setPreferredOrientations(orientations);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Column(
//         children: [
//           _buildYtbView(),
//         ],
//       ),
//     );
//   }
//
//   _buildYtbView() {
//     return AspectRatio(
//       aspectRatio: 16 / 9,
//       child: _ytbPlayerController != null
//           ? YoutubePlayerIFrame(controller: _ytbPlayerController)
//           : Center(child: CircularProgressIndicator()),
//     );
//   }
//
//   _buildMoreVideoTitle() {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(14, 10, 182, 10),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Text(
//             "More videos",
//             style: TextStyle(fontSize: 16, color: Colors.black),
//           ),
//         ],
//       ),
//     );
//   }
//
//   _buildMoreVideosView() {
//     return Expanded(
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 15),
//         child: ListView.builder(
//             itemCount: videosList.length,
//             physics: AlwaysScrollableScrollPhysics(),
//             itemBuilder: (context, index) {
//               return GestureDetector(
//                 onTap: () {
//                   final _newCode = videosList;
//                   _ytbPlayerController!.load(_newCode);
//                   _ytbPlayerController!.stop();
//                 },
//                 child: Container(
//                   height: MediaQuery.of(context).size.height / 5,
//                   margin: EdgeInsets.symmetric(vertical: 7),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(18),
//                     child: Stack(
//                       fit: StackFit.expand,
//                       children: <Widget>[
//                         Positioned(
//                           child: Image.network(
//                             "https://img.youtube.com/vi/${videosList.toString()}/0.jpg",
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         Positioned(
//                           child: Align(
//                             alignment: Alignment.center,
//                             child: Image.asset(
//                               'assets/ytbPlayBotton.png',
//                               height: 30,
//                               width: 30,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             }),
//       ),
//     );
//   }
// }
