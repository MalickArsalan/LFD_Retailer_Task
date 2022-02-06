import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';

void main() {
  runApp(
    Retailer(),
  );
}

class Retailer extends StatefulWidget {
  Retailer({Key? key}) : super(key: key);

  @override
  State<Retailer> createState() => _RetailerState();
}

class _RetailerState extends State<Retailer> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
