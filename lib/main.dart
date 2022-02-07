import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:retailer/src/models/models.dart';
import 'package:retailer/src/navigation/app_router.dart';
import 'package:retailer/src/pages/screens.dart';

void main() {
  runApp(
    Retailer(),
  );
}

class Retailer extends StatefulWidget {
  const Retailer({Key? key}) : super(key: key);

  @override
  State<Retailer> createState() => _RetailerState();
}

class _RetailerState extends State<Retailer> {
  final _appStateManager = AppStateManager();
  late AppRouter _appRouter;
  @override
  void initState() {
    _appRouter = AppRouter(
      appStateManager: _appStateManager,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => _appStateManager,
          ),
        ],
        child: const SignUpScreen(),
      ),
    );
  }
}
