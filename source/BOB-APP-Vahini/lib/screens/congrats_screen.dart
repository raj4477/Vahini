import 'package:app/main_home_screen.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class CongratsScreen extends StatefulWidget {
  const CongratsScreen({Key? key}) : super(key: key);

  @override
  State<CongratsScreen> createState() => _CongratsScreenState();
}

class _CongratsScreenState extends State<CongratsScreen> {
  @override
  void dispose() {
    // TODO: implement dispose
    Navigator.pop(context);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 24),
          child: Column(
            children: [
              SizedBox(
                height: size.height * .1,
              ),
              Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 80,
              ),
              Text(
                'Success!!!',
                style: TextStyle(
                    color: Colors.green,
                    fontFamily: 'OutFit-Bold',
                    fontSize: 25),
              ),
              SizedBox(
                height: size.height * .04,
              ),
              const Divider(
                color: Color(0xffCBCBCB),
                thickness: .8,
              ),
              SizedBox(
                height: size.height * .08,
              ),
              Text(
                'You have sent',
                style: TextStyle(fontFamily: 'OutFit-Regular', fontSize: 20),
              ),
              SizedBox(
                height: size.height * .015,
              ),
              Text(
                'Rs. 5000',
                style: TextStyle(
                  color: mainOrange,
                  fontFamily: 'OutFit-Bold',
                  fontSize: 40,
                ),
              ),
              SizedBox(
                height: size.height * .015,
              ),
              Text(
                'to Ritik Raj on 24th November, 2022\n                       at 07:05 PM ',
                style: TextStyle(fontFamily: 'OutFit-Regular', fontSize: 20),
              ),
              SizedBox(
                height: size.height * .15,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    vahini = !vahini;
                  });
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainHomeScreen(),
                    ),
                  );
                },
                child: Container(
                  width: size.width * .6,
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: mainOrange,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Center(
                    child: Text(
                      'Back to homepage',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OutFit-SemiBold',
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
