import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../provider/Education_Provider.dart';



class Eduweb extends StatefulWidget {
  const Eduweb({Key? key}) : super(key: key);

  @override
  State<Eduweb> createState() => _EduwebState();
}

class _EduwebState extends State<Eduweb> {
  EducationProvider? ET;
  EducationProvider? EF;
  @override
  Widget build(BuildContext context) {
    EF = Provider.of<EducationProvider>(context, listen: false);
    ET = Provider.of<EducationProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(controller: ET!.webViewController!),
      ),
    );
  }
}