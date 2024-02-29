import 'package:flutter/material.dart';
import 'package:newproject/component/page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoarding extends StatefulWidget {
  const onBoarding({super.key});

 

  @override
  State<onBoarding> createState() => _onBoardingState();
}

 
class _onBoardingState extends State<onBoarding> {

 static final PageController _pageController = PageController(initialPage: 0);

  List<Widget>onboarding=[
  Page_View(image: 'assets/spider_.png',title: 'Welcome',description: 'Welcome to [Afridi App]! Get started with a quick tour to discover all the amazing features. Swipe through our simple onboarding screens to learn how to make the most of your experience.',buttontext: 'Next',onPressed: (){
_pageController.animateToPage(1, duration: Duration(seconds: 1), curve: Curves.linear);
  },
  ),
   Page_View(image: 'assets/superman.png',title: 'Features',description: 'Discover the power of [Your App Name] with a sneak peek into our standout features. From effortless navigation to seamless interactions, weve got everything you need to enhance your experience',buttontext: 'Next',onPressed: (){
_pageController.animateToPage(2, duration: Duration(seconds: 1), curve: Curves.linear);
  }),

  Page_View(image: 'assets/bat.png',title: 'Get-Started',description: 'Ready to unleash the full potential of [Your App Name]? Lets get started! Join our community of users and embark on a personalized journey tailored just for you. Start exploring now!',buttontext: 'Done',onPressed: (){

  }),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(51),
      child: Column(
       mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: PageView(
            
            controller: _pageController,
            children: onboarding
            
          ),),
          SmoothPageIndicator(controller: _pageController, 
          effect:JumpingDotEffect(
            dotColor: Colors.redAccent,
            activeDotColor: Colors.deepPurple,
          verticalOffset: 3        
          ),
          count: onboarding.length,
          onDotClicked: (index) {
            _pageController.animateToPage(index, duration: const Duration(seconds: 1), curve: Curves.linear);
          },
          ),
        ],
      ),),
    );
  }
}