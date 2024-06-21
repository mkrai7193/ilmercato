import 'package:flutter/material.dart';
import 'package:ilmercato/constants.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    print(selected);
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () => displayModalBottomSheet(context),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Icon(
                  Icons.filter_list_alt,
                  color: kAppBarIconColor,
                ),
                Text(
                  " Filter",
                  style: listText,
                )
              ]),
            ),
          ),
        ),
        // Expanded(
        //   flex: 1,
        //   child: GestureDetector(
        //     onTap: () => displayModalBottomSheet(context),
        //     child: Padding(
        //       padding: const EdgeInsets.only(right: 20),
        //       child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        //         Icon(
        //           Icons.sort_by_alpha,
        //           color: kAppBarIconColor,
        //         ),
        //         Text(
        //           " Sort",
        //           style: listText,
        //         )
        //       ]),
        //     ),
        //   ),
        // )
      ],
    );
  }

  void displayModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            decoration: BoxDecoration(
              color: kPrimaryColor,
              // borderRadius: BorderRadius.only(
              //     topLeft: Radius.elliptical(200, 30),
              //     topRight: Radius.elliptical(200, 30)),
            ),
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: Icon(
                      Icons.arrow_downward,
                      color: kDarkTextColor,
                    ),
                    title: new Text('Gold Weight Low to High', style: listText),
                    onTap: () {
                      setState(() => selected = 1);
                      Navigator.of(context).pop();
                    }),
                new ListTile(
                    leading: Icon(
                      Icons.arrow_upward,
                      color: kDarkTextColor,
                    ),
                    title: new Text(
                      'Gold Weight High to Low',
                      style: listText,
                    ),
                    onTap: () {
                      setState(() => selected = 2);
                      Navigator.of(context).pop();
                    }),
                new ListTile(
                    leading: Icon(
                      Icons.arrow_downward,
                      color: kDarkTextColor,
                    ),
                    title:
                        new Text('Diamond Weight Low to High', style: listText),
                    onTap: () {
                      setState(() => selected = 3);
                      Navigator.of(context).pop();
                    }),
                new ListTile(
                    leading: Icon(
                      Icons.arrow_upward,
                      color: kDarkTextColor,
                    ),
                    title: new Text(
                      'Diamond Weight High to Low',
                      style: listText,
                    ),
                    onTap: () {
                      setState(() => selected = 4);
                      Navigator.of(context).pop();
                    }),
              ],
            ),
          );
        });
  }
}
