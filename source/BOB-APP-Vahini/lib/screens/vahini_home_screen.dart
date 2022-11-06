import 'package:app/screens/chatbot.dart';
import 'package:app/theme.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class VahiniHomeScreen extends StatelessWidget {
  const VahiniHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Color(0xff2E3B7A),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset('assets/Bob-Logo-Orange.png'),
                  const Spacer(),
                ],
              ),
              const Divider(
                color: Color(0xffCBCBCB),
                thickness: .8,
              ),
              LottieBuilder.asset('assets/lottie/Final2Character.json',
              frameRate: FrameRate(10)),
              SizedBox(height: size.height*.02,),
              const Text('Hi, I am Vahini',
                style: TextStyle(
                  fontFamily: 'OutFit-SemiBold',
                  fontSize: 30
                ),
              ),
              SizedBox(height: size.height*.02,),
              Text('Your Personal Virtual Assistant of the Bank of Baroda App.Please tap on the Get Started button so that I can help you make your experience better with our app.',
              textAlign: TextAlign.center,
              softWrap: true,
              style: TextStyle(
                fontFamily: 'Outfit-Regular',
                color: mainBlue,
                fontSize: 16
              ),),
              SizedBox(height: size.height*.06,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatBot(),));
                },
                child: Container(
                  padding: const EdgeInsets.all(15),
                  width: size.width*.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: mainOrange
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OutFit-Bold',
                        ),
                      ),
                      Icon(Icons.arrow_forward,
                      color: Colors.white,)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
