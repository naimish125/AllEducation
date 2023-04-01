import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/Education_Provider.dart';



class EduScreen extends StatefulWidget {
  const EduScreen({Key? key}) : super(key: key);

  @override
  State<EduScreen> createState() => _EduScreenState();
}

class _EduScreenState extends State<EduScreen> {
  EducationProvider? ET, EF;
  @override
  Widget build(BuildContext context) {
    ET = Provider.of<EducationProvider>(context, listen: true);
    EF = Provider.of<EducationProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("All in one Education"),
          backgroundColor: Colors.black,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.cast_for_education),
            )
          ],
        ),
        body: Container(
          child: GridView.builder(
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
            itemBuilder: (context, index) =>
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context,'web');
                    EF!.loadurl(index);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 145,
                            width: 145,
                            child: Image.asset("${ET!.images[index]}",fit:BoxFit.cover),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        SizedBox(height: 1,),
                        Column(
                          children: [
                            Text(
                              "${EF!.names[index]}",
                              style: TextStyle(fontSize: 15, color: Colors.blue,fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
            itemCount:ET!.images.length,
          ),
        ),
      ),
    );
  }
}
