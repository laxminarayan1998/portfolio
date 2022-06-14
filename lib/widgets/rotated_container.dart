import 'package:flutter/material.dart';

class RotatedContainer extends StatelessWidget {
  final String? title;
  final bool? latoFamily;
  const RotatedContainer(
      {Key? key, @required this.title, this.latoFamily = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.translationValues(0, 2, 0),
      child: Transform.rotate(
        angle: -(3.0 * (3.14) / 180.0),
        child: Container(
          color: Theme.of(context).primaryColor,
          padding: EdgeInsets.all(2),
          child: Transform.rotate(
            angle: (3.0 * (3.14) / 180.0),
            child: Text(
              '$title',
              style: TextStyle(
                fontFamily: latoFamily! ? 'Lato' : null,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}