import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


class AccountPage extends StatefulWidget {
  
  
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

  @override
  Widget build(BuildContext context) {
    var divider = Divider(
      color: Colors.greenAccent,
      thickness: 8.0,
    );
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    height: 125.0,
                    width: 125.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/Background-02.jpg',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Column(
                  children: [
                    Text(
                      'Please Select Your language',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'From Here',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
              ],
            ),
          ),
          divider,
//   ListView(
//   children: const <Widget>[
//     Card(child: ListTile(title: Text('One-line ListTile'))),
//     Card(
//       child: ListTile(
//         leading: FlutterLogo(),
//         title: Text('One-line with leading widget'),
//       ),
//     ),
//     Card(
//       child: ListTile(
//         title: Text('One-line with trailing widget'),
//         trailing: Icon(Icons.more_vert),
//       ),
//     ),
//     Card(
//       child: ListTile(
//         leading: FlutterLogo(),
//         title: Text('One-line with both widgets'),
//         trailing: Icon(Icons.more_vert),
//       ),
//     ),
//     Card(
//       child: ListTile(
//         title: Text('One-line dense ListTile'),
//         dense: true,
//       ),
//     ),
//     Card(
//       child: ListTile(
//         leading: FlutterLogo(size: 56.0),
//         title: Text('Two-line ListTile'),
//         subtitle: Text('Here is a second line'),
//         trailing: Icon(Icons.more_vert),
//       ),
//     ),
//     Card(
//       child: ListTile(
//         leading: FlutterLogo(size: 72.0),
//         title: Text('Three-line ListTile'),
//         subtitle: Text(
//           'A sufficiently long subtitle warrants three lines.'
//         ),
//         trailing: Icon(Icons.more_vert),
//         isThreeLine: true,
//       ),
//     ),
//   ],
// )
          // ListTile(
          //   leading: Icon(
          //     Icons.notifications,
          //     color: Colors.black,
          //   ),
          //   title: Text(
          //     'Notifications',
          //     style: Theme.of(context).textTheme.headline3,
          //   ),
          //   trailing: Icon(
          //     Icons.keyboard_arrow_right,
          //     color: Colors.black,
          //   ),
          //   onTap: () {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (_) => NotificationView()));
          //   },
          // ),
          // ListTile(
          //   leading: Icon(
          //     Icons.local_activity,
          //     color: Colors.black,
          //   ),
          //   title: Text(
          //     'Recent Activity',
          //     style: Theme.of(context).textTheme.headline3,
          //   ),
          //   trailing: Icon(
          //     Icons.keyboard_arrow_right,
          //     color:Colors.black,
          //   ),
          //   onTap: () {
          //     // Navigator.push(context,
          //     //     MaterialPageRoute(builder: (_) => RecentActivityView()));
          //   },
          // ),
          // ListTile(
          //   leading: Icon(
          //     Icons.rate_review,
          //     color: Colors.black,
          //   ),
          //   title: Text(
          //     'Rate Us',
          //     style: Theme.of(context).textTheme.headline3,
          //   ),
          //   trailing: Icon(
          //     Icons.keyboard_arrow_right,
          //     color: Colors.black,
          //   ),
          //   onTap: () {},
          // ),
          // ListTile(
          //   leading: Icon(
          //     Icons.contact_support,
          //     color:Colors.black,
          //   ),
          //   title: Text(
          //     'Connect With Us',
          //     style: Theme.of(context).textTheme.headline3,
          //   ),
          //   trailing: Icon(
          //     Icons.keyboard_arrow_right,
          //     color: Colors.black,
          //   ),
          //   onTap: () {
          //     // Navigator.push(
          //     //     context, MaterialPageRoute(builder: (_) => ConnectView()));
          //   },
          // ),
          // ListTile(
          //   leading: Icon(
          //     Icons.policy,
          //     color: Colors.black,
          //   ),
          //   title: Text(
          //     'Privacy Policy',
          //     style: Theme.of(context).textTheme.headline3,
          //   ),
          //   trailing: Icon(
          //     Icons.keyboard_arrow_right,
          //     color: Colors.black,
          //   ),
          //   onTap: () {
          //     // Navigator.push(context,
          //     //     MaterialPageRoute(builder: (_) => PrivacyPolicyView()));
          //   },
          // ),
          // ListTile(
          //   leading: Icon(
          //     Icons.pages,
          //     color: Colors.black,
          //   ),
          //   title: Text(
          //     'Terms & Condition',
          //     style: Theme.of(context).textTheme.headline3,
          //   ),
          //   trailing: Icon(
          //     Icons.keyboard_arrow_right,
          //     color: Colors.black,
          //   ),
          //   onTap: () {
          //     // Navigator.push(context,
          //     //     MaterialPageRoute(builder: (_) => TermsAndConditionView()));
          //   },
          // ),
          // Divider(
          //   color: Colors.black,
          //   thickness: 8.0,
          // ),
          // ListTile(
          //   leading: Icon(
          //     Icons.logout,
          //     color: Colors.red,
          //   ),
          //   title: Text(
          //     'LOGOUT',
          //     style: Theme.of(context).textTheme.headline3,
          //   ),
          //   trailing: FutureBuilder(
          //     // future: getVersionNumber(),
          //     builder: (BuildContext context, AsyncSnapshot<String> snapshot) =>
          //         Text(
          //       snapshot.hasData ? snapshot.data : "Loading ...",
          //     ),
          //   ),
          //   onTap: () {
          //     showDialog(
          //         context: context,
          //         builder: (context) {
          //           return AlertDialog(
          //             title: Text('Logging Out'),
          //             content: Text('Are you sure ?'),
          //             actions: [
          //               // FlatButton(
          //                 // onPressed: () async {
          //                 //   // await _userRepository.logout();
          //                 //   Navigator.pushAndRemoveUntil(
          //                 //     context,
          //                 //     // MaterialPageRoute(
          //                 //       // builder: (context) => LoginView(),
          //                 //   //   ),
          //                 //   //   (Route<dynamic> route) => false,
          //                 //   // );
          //                 // },
          //               //   child: Text('Yes'),
          //               // // ),
          //               // FlatButton(
          //               //   onPressed: () => Navigator.pop(context),
          //               //   child: Text('No'),
          //               // ),
          //             ],
          //           );
          //         });
          //   },
          // ),
        ],
      ),
    );
  }
}
