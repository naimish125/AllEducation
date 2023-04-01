
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'Education/provider/Education_Provider.dart';
import 'Education/view/Education_Screen.dart';
import 'Education/view/Education_Web.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) =>EducationProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => EduScreen(),
          'web': (context) => Eduweb(),
        },
      ),
    ),
  );
}
