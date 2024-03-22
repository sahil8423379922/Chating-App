import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<LoginScreen> {
  bool _isanimate = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 400), () {
      setState(() {
        _isanimate = true;
      });
    });
  }

  late Size mq;
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      //toolbar code
      appBar: AppBar(
        title: Text("Welcome to Chat"),
      ),
      body: Stack(children: [
        AnimatedPositioned(
          top: mq.height * .15,
          width: mq.width * .5,
          right: _isanimate ? mq.width * .25 : -mq.width * .5,
          duration: Duration(seconds: 1),
          child: Image.asset(
            'images/chat.png',
            scale: 1.0,
          ),
        ),
        Positioned(
          bottom: mq.height * .15,
          width: mq.width * .9,
          left: mq.width * .05,
          height: mq.height * .07,
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 247, 255, 237),
                shape: StadiumBorder(),
                elevation: 1),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => HomeScreen()));
            },
            icon: Image.asset(
              'images/google.png',
              height: mq.height * .03,
            ),
            label: RichText(
              text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  children: [
                    TextSpan(text: "Sign In with "),
                    TextSpan(
                        text: "Google",
                        style: TextStyle(fontWeight: FontWeight.w500))
                  ]),
            ),
          ),
        )
      ]),
      //Floating action code
    );
  }
}
