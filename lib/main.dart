import 'package:flutter/material.dart';
import 'package:vsapp/summary.dart';
import 'background/background.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Text(
                "Stay Home\nStay Safe",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                childAspectRatio: size.width / (size.height / 3),
                children: <Widget>[
                  SummaryBox(
                      title: "CONFIRMED", count: "723", color: confirmBoxColor),
                  SummaryBox(
                      title: "ACTIVE", count: "521", color: activeBoxColor),
                  SummaryBox(
                      title: "RECOVERED",
                      count: "98",
                      color: recoveredBoxColor),
                  SummaryBox(
                      title: "DECEASED", count: "57", color: deceasedBoxColor),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Ink(
                  width: double.infinity,
                  height: 80.0,
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage("images/image.jpg"),
                        fit: BoxFit.fill),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Live Update",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "About Corona Virus",
                        style: TextStyle(color: Colors.white.withOpacity(.7)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 200,
                padding: EdgeInsets.only(left: 20, right: 20, top: 40),
                decoration: BoxDecoration(
                    color: simptomsBoxColor.withOpacity(.7),
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "5 Simptoms\nabout Corona",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 24),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 40,
                          width: 120,
                          alignment: Alignment.center,
                          child: Text("Learn More",
                              style: TextStyle(color: Colors.white)),
                          decoration: BoxDecoration(
                              color: backgroundColor.withOpacity(.9),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ],
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset("images/doctor.png"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
