
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// class NotificationHelper{
//     FlutterLocalNotificationsPlugin
//   flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin(); //

//   initializeNotification() async {
//     //tz.initializeTimeZones();
// //  final InitializationSettings initializationSettingsIOS =
 
//      IOSInitializationSettings(
//          requestSoundPermission: false,
//          requestBadgePermission: false,
//          requestAlertPermission: false,
//          onDidReceiveLocalNotification: onDidReceiveLocalNotification
//      );


//  const AndroidInitializationSettings initializationSettingsAndroid =
//      AndroidInitializationSettings("appicon");

//     final InitializationSettings initializationSettings =
//         InitializationSettings(
//        iOS: initializationSettingsIOS,
//        android:initializationSettingsAndroid,
//     );
//     await flutterLocalNotificationsPlugin.initialize(
//         initializationSettings,
//         onSelectNotification: selectNotification);

//   }
// }