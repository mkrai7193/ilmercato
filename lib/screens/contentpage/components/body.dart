import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:ilmercato/Api/LoginApi.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/screens/contentpage/model/contentModel.dart';

class Body extends StatefulWidget {
  final String cmsId;

  const Body({Key? key, required this.cmsId}) : super(key: key);
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ContentModel>(
        future: LoginApi.cmsApi("${widget.cmsId}"),
        builder: (context, snapshot) {
          // Checking if future is resolved or not
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return  Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      if (snapshot.data!.featuredMedia.toString() != '0')
                        Image.network(
                          "${snapshot.data!.featuredMedia.toString()}",
                          fit: BoxFit.fitWidth,
                        ),
                      Text(
                        "${snapshot.data!.title!.rendered.toString()}",
                        style: TextStyle(
                            color: kDarkTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),

                      HtmlWidget(
                        '''${snapshot.data!.content!.rendered.toString()}''',
                        textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: kDescriptionTextColor,
                          ),
                      ),

                    ],
                  ),

                ),
              );
            } else if (snapshot.hasError) {
              return Container(
                  alignment: AlignmentDirectional.center,
                  child: Text("Technical Issue! Please Try Again"));
            }
          }
          return Container(
              alignment: AlignmentDirectional.center,
              child: const CircularProgressIndicator.adaptive());
        });
  }
}
