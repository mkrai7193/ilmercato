import 'package:flutter/material.dart';
import 'package:ilmercato/Api/LoginApi.dart';
import 'package:ilmercato/constants.dart';
import 'package:ilmercato/screens/order/model/OrderModel.dart';

import 'orderlistdetail.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {


  GlobalKey<FormState> myFormKey = new GlobalKey();
  DateTimeRange? myDateRange;
// This holds a list of fiction users
  // You can use data fetched from a database or a server as well
   List<Map<String, dynamic>> _allUsers = [ ];
   List<Map<String, dynamic>> _foundUsers = [];

  void _submitForm() {
    final FormState? form = myFormKey.currentState;
    form!.save();
  }


    getList() async{
    var res = await LoginApi.myOrdersApi();

    var length = res.length;

    for (var ia = 0; ia < length; ia++) {
      var orderNo = res[ia].number;
      var grandTotal = res[ia].total;
      var status = res[ia].status;
      var subDate = res[ia].dateModified;

      _allUsers.add({"orderNo":"$orderNo","grandTotal":"$grandTotal","status":"$status","subDate":"$subDate"});
    }
    setState(() {
      _foundUsers = _allUsers;
    });

    return _foundUsers;
  }

  // This list holds the data for the list view

  @override
  initState() {
    // at the beginning, all users are shown
    getList();
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
          user["orderNo"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  // This function is called whenever the text field changes
  void _runFilter1(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
          user["orderNo"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }


  @override
  Widget build(BuildContext context) {
    print(myDateRange.toString());
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) => _runFilter(value),
              style: TextStyle(color: kDarkTextColor),
              decoration: const InputDecoration(
                  hintText: 'Search Order No',
                  hintStyle: TextStyle(color: kDarkTextColor),
                  suffixIcon: Icon(Icons.search,color: kDarkTextColor,)),
            ),
          ),

          Expanded(
            child: (_foundUsers !="null")
                ? ListView.builder(
                itemCount: _foundUsers.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,color: kDarkTextColor.withOpacity(0.1),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                        //   leading: Icon(Icons.add,color: kDarkTextColor,),
                        title: Text("Order No.: ${_foundUsers[index]['orderNo']}", style: listText),
                        subtitle: Text("Date: ${_foundUsers[index]['subDate']} \nTotal Amount : BD ${_foundUsers[index]['grandTotal']}", style: largeListText),
                        trailing:  Text("${_foundUsers[index]['status']} ", style: listText),
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OrderListDetail(orderNo:"${_foundUsers[index]['orderNo']}")));
                        },
                      ),
                    ),
                  );
                })
                : const Text(
              'No results found',
              style: TextStyle(fontSize: 24),
            ),
          ),


        ],

    );
  }

   void displayModalBottomSheet(context) {

     showModalBottomSheet(
         context: context,
         builder: (BuildContext bc) {
           return Theme(
               data: Theme.of(context).copyWith(
             colorScheme: ColorScheme.light(
               primary: Colors.black, // header background color
               onPrimary: kTextColor, // header text color
               onSurface: Colors.green, // body text color
             ),
             textButtonTheme: TextButtonThemeData(
               style: TextButton.styleFrom(
                 foregroundColor: Colors.red, // button text color
               ),
             ),
           ),
           child:Container(
             decoration: BoxDecoration(
               color: kSecondaryColor,

             ),
             child: new Wrap(
               children: <Widget>[

                 new SafeArea(
                   child: Form(
                     key: myFormKey,
                     child: Column(
                       children: [
                         // SafeArea(
                         //   child: DateRangeField(
                         //       firstDate: DateTime(2022),
                         //       enabled: true,
                         //       initialValue: DateTimeRange(
                         //           start: DateTime.now(),
                         //           end: DateTime.now().add(Duration(days: 7))),
                         //       decoration: InputDecoration(
                         //         fillColor: kSecondaryColor,
                         //         labelText: 'Date Range',
                         //         labelStyle: TextStyle(color: kDarkTextColor),
                         //         prefixIcon: Icon(Icons.date_range),
                         //         hintText: 'Please select a start and end date',
                         //         hintStyle: TextStyle(color: kSecondaryColor),
                         //         border: OutlineInputBorder(),
                         //
                         //       ),
                         //       validator: (value) {
                         //         if (value!.start.isBefore(DateTime.now())) {
                         //           return 'Please enter a later start date';
                         //         }
                         //         return null;
                         //       },
                         //       onSaved: (value) {
                         //         setState(() {
                         //           myDateRange = value!;
                         //         });
                         //       }),
                         // ),
                         ElevatedButton(
                           child: Text('Submit',style: TextStyle(color: kSecondaryColor),),
                           onPressed: _submitForm,
                         ),
                         if (myDateRange != null)
                           Text("Saved value is: ${myDateRange.toString()}")
                       ],
                     ),
                   ),
                 ),

                 // new ListTile(
                 //     title: new Text('Price : Lowest to High'),
                 //     onTap: () { setState(() => selected = 1);
                 //     Navigator.of(context).pop();
                 //     }
                 // ),
                 // new ListTile(
                 //     title: new Text('Price : Highest to Low'),
                 //     onTap: () { setState(() => selected = 2);
                 //     Navigator.of(context).pop();
                 //     }
                 // ),
                 // new ListTile(
                 //     title: new Text('Weight : Lowest to High'),
                 //     onTap: () { setState(() => selected = 3);
                 //     Navigator.of(context).pop();
                 //     }),
                 // new ListTile(
                 //     title: new Text('Weight : Highest to Low'),
                 //     onTap: () { setState(() => selected = 4);
                 //     Navigator.of(context).pop();
                 //     }),
               ],
             ),
           ),
           );
         });
   }

}