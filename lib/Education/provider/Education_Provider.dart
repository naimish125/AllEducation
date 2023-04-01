import 'package:flutter/foundation.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EducationProvider extends ChangeNotifier {
  WebViewController? webViewController;

  List images = [
    "assets/images/Akash.jpeg",
    "assets/images/Allen.png",
    "assets/images/Byjus.png",
    "assets/images/unekedmy.jpg",
    "assets/images/w3.png",
    "assets/images/wiki.png",
  ];

  List Link = [
    "https://www.aakash.ac.in/",
    "https://www.allen.ac.in/",
    "https://byjus.com/class-6-10/",
    "https://www.referralcouponcode.com/",
    "https://www.w3schools.com/",
    "https://wikiedu.org/",
     ];

  List names = [
    "Akash",
    "Allen",
    "Byju's",
    "Unacademy",
    "W3school",
    "wiki",
  ];

  void loadurl(int index) {
    webViewController = WebViewController();
    webViewController!.loadRequest(
      Uri.parse("${Link[index]}"),
    );
  }
}