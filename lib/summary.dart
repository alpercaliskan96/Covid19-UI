import 'package:flutter/material.dart';

class SummaryBox extends StatefulWidget {
  final String title;
  final String count;
  final Color color;

  const SummaryBox(
      {@required this.title, @required this.count, @required this.color});

  @override
  _SummaryBoxState createState() => _SummaryBoxState();
}

class _SummaryBoxState extends State<SummaryBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            widget.title,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          Text(
            widget.count,
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
