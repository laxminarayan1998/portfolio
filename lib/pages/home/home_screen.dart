import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laxminarayan_portfolio/utils/utils.dart';
import 'package:laxminarayan_portfolio/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          child: Text(Responsive.isDesktop(context) ? 'DESKTOP' : (Responsive.isTablet(context) ? 'TABLET' : 'MOBILE')),
        ),
      );
}
