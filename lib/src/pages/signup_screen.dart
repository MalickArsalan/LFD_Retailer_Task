import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

import '../components/components.dart';
import '../models/models.dart';

class SignUpScreen extends StatefulWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: AppPages.signUpPath,
      key: ValueKey(AppPages.signUpPath),
      child: const SignUpScreen(),
    );
  }

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _cnicController = TextEditingController();
  String _cnicText = '';
  bool _isSubmitted = true;

  void initState() {
    _cnicController.addListener(onChange);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              color: Colors.blue[400],
              image: DecorationImage(
                image: AssetImage('assets/images/splash.png'),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  height: MediaQuery.of(context).size.height * .60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(40.0),
                      topRight: const Radius.circular(40.0),
                    ),
                    color: Colors.white,
                  ),
                  child: _isSubmitted
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ContainerHeader(
                                title: 'New User', subtitle: 'SIGNUP'),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Thanks for signing up. Welcome to our"
                                        " \ncommunity."),
                                    SizedBox(height: 16),
                                    Text('We are happy to have you on board.'),
                                    SizedBox(height: 16),
                                    Text(
                                      'Shukria',
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 48),
                                    )
                                  ]),
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            ContainerHeader(
                                title: 'New User', subtitle: 'SIGNUP'),
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 24, right: 24),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                controller: _cnicController,
                                maxLength: 15,
                                cursorColor: Colors.green,
                                decoration: InputDecoration(
                                  hintText: 'CNIC',
                                  counterText: "",
                                  hintStyle: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 24, vertical: 20),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    borderSide: const BorderSide(width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    borderSide: BorderSide(
                                        width: 2, color: Colors.green),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    borderSide: BorderSide(
                                        width: 2, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                DottedBorder(
                                  dashPattern: [4, 6],
                                  strokeWidth: 1,
                                  color: Colors.grey,
                                  strokeCap: StrokeCap.square,
                                  borderType: BorderType.RRect,
                                  radius: Radius.circular(8),
                                  child: Container(
                                    height: 120,
                                    width: 160,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.cloud_upload_outlined,
                                          color: Colors.green,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            text: 'Upload ',
                                            style:
                                                TextStyle(color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'CNIC Front',
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 4),
                                DottedBorder(
                                  dashPattern: [4, 6],
                                  strokeWidth: 1,
                                  color: Colors.grey,
                                  strokeCap: StrokeCap.square,
                                  borderType: BorderType.RRect,
                                  radius: Radius.circular(8),
                                  child: Container(
                                    height: 120,
                                    width: 160,
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.cloud_upload_outlined,
                                            color: Colors.green,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              text: 'Upload ',
                                              style: TextStyle(
                                                  color: Colors.black),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'CNIC Back',
                                                  style: TextStyle(
                                                      color: Colors.green,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 32),
                            Container(
                              width: MediaQuery.of(context).size.width * .88,
                              height: 64,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.green),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(32),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Submit',
                                  style: TextStyle(fontSize: 24),
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            RichText(
                              text: TextSpan(
                                text: 'Already have an account? ',
                                style: TextStyle(color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Login',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onChange() {
    String text = _cnicController.text;
    print(_cnicText);
    if (text.length < _cnicText.length) {
      // handling backspace in keyboard
      _cnicText = text;
    } else if (text.isNotEmpty && text != _cnicText) {
      // handling typing new characters.
      String tempText = text.replaceAll("-", "");
      if (tempText.length == 5 || tempText.length == 12) {
        //do your text transforming
        _cnicText = '$text-';

        setState(() {
          _cnicController.text = _cnicText;
          _cnicController.selection = new TextSelection(
              baseOffset: _cnicText.length, extentOffset: _cnicText.length);
        });
      }
    }
  }

  @override
  void dispose() {
    _cnicController.dispose();
    super.dispose();
  }
}
