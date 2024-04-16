import 'package:royal_plate/phone.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Walkthrough extends StatefulWidget {
  const Walkthrough({super.key});

  @override
  State<Walkthrough> createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> 
{
  // Page Controller helps in controlling the pages of the app.
  final PageController _pageController = PageController(
    initialPage: 0
  );
  
  // The index of the current page
  int _activepage = 0;

  // list of widgets.
  final List<Widget> _pages = [
    const PageOne(),
    const PageTwo(),
    const PageThree()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Explanation.
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (int page)
            {
              setState(() {
                _activepage = page;
              });
            },

            itemCount: _pages.length,
            itemBuilder: (BuildContext context,int index)
            {
              return _pages[index % _pages.length];
            },
          )
        ],
      )

      );
    
  }
}

// First Page in walkthrough
class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          const SizedBox(height: 70),

          Row(
            children: [
              const SizedBox(width: 320),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.purple,
                ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (
                    (BuildContext context) =>
                    const OnBoarding15() )));
              }, 
              child: const Text("Skip"),
              ),
            ],
          ),

          const SizedBox(height: 40),

          Image.asset("images/dinner_set.jpeg",height: 220,),

          const SizedBox(height: 40),

          const Text("Create Your Own Cart",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w500
          ),),

          const SizedBox(height: 10),

          const Center(
            child: Text(
              "  Create Unforgettable memories with our  ",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w300,
                wordSpacing: 4,
              ),
              ),
          ),

           const Center(
            child: Text(
              "   unique feature to curate your favourite  ",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w300,
                wordSpacing: 3,
              ),
              ),
          ),

           const Center(
            child: Text(
              "   Cusines and food, tailored to your",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w300,
                wordSpacing: 4,
              ),
              ),
          ),

          const Center(
            child: Text(
              "  Special Occassion.",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w300,
                wordSpacing: 4,
              ),
              ),
          ),

          const SizedBox(height: 40),

          Row(
            children: const [
             Center(

             )
            ],
          ),

          const SizedBox(height: 20),

          Row(
            children: [
              const SizedBox(width: 130),

              Container(
                width: 45,
                height: 15,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 137, 16, 156),
                  borderRadius: BorderRadius.circular(15)
                ),
                ),

                const SizedBox(width: 10),
                Container(
                width: 45,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.lightBlue[100],
                  borderRadius: BorderRadius.circular(10)
                ),
                ),
                
                const SizedBox(width: 10),
                Container(
                width: 45,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.lightBlue[100],
                  borderRadius: BorderRadius.circular(10)
                ),
                ),
            ],
          )
    ]));
  }
}

// Second Page in walkthrough
class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> 
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          const SizedBox(height: 70),

          Row(
            children: [
              const SizedBox(width: 320),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.purple,
                ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (
                    (BuildContext context) =>
                    const OnBoarding15() )));
              }, 
              child: const Text("Skip"),
              ),
            ],
          ),

          const SizedBox(height: 80),

          Image.asset("images/Thoughts.png",height: 205,),

          const SizedBox(height: 15),

          const Text("Exquisite Catering",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w500
          ),),

          const SizedBox(height: 10),

          const Center(
            child: Text(
              "Experience Culinary artistry like never",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w300,
                wordSpacing: 4,
              ),
              ),
          ),

           const Center(
            child: Text(
              "before with our innovative and exquisite",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w300,
                wordSpacing: 3,
              ),
              ),
          ),

           const Center(
            child: Text(
              "Cuisine creations.",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w300,
                wordSpacing: 4,
              ),
              ),
          ),

           const SizedBox(height: 80),

          Row(
            children: [
              const SizedBox(width: 130),

              Container(
                width: 45,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.lightBlue[100],
                  borderRadius: BorderRadius.circular(10)
                ),
                ),

                const SizedBox(width: 10),
                Container(
                width: 45,
                height: 15,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 137, 16, 156),
                  borderRadius: BorderRadius.circular(10)
                ),
                ),
                
                const SizedBox(width: 10),
                Container(
                width: 45,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.lightBlue[100],
                  borderRadius: BorderRadius.circular(10)
                ),
                ),
                
                
            ],
          ),

          
  ]));
  }
}

// Third Page in walkthrough
class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          const SizedBox(height: 70),

          Row(
            children: [
              const SizedBox(width: 320),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.purple,
                ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (
                    (BuildContext context) =>
                    const OnBoarding15() )));
              }, 
              child: const Text("Skip"),
              ),
            ],
          ),

          const SizedBox(height: 120),

          Image.asset("images/Calling.jpeg",),

          const SizedBox(height: 16),

          const Text("Personal Order Executive",
          style: TextStyle(
            fontSize: 33,
            fontWeight: FontWeight.w500
          ),),

          const SizedBox(height: 10),

          const Center(
            child: Text(
              "Embark on a personalized culinary ",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                wordSpacing: 4,
              ),
              ),
          ),

           const Center(
            child: Text(
              "with our dedicated one-to-one customer",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                wordSpacing: 3,
              ),
              ),
          ),

           const Center(
            child: Text(
              "   support, ensuring a seamless",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                wordSpacing: 4,
              ),
              ),
          ),

          const Center(
            child: Text(
              "   experience every step of the way ",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                wordSpacing: 4,
              ),
              ),
          ),

          const SizedBox(height: 15),

          const SizedBox(height: 40),

          Row(
            children: [
              const SizedBox(width: 130),

              Container(
                width: 45,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.lightBlue[100],
                  borderRadius: BorderRadius.circular(10)
                ),
                ),

                const SizedBox(width: 10),
                Container(
                width: 45,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.lightBlue[100],
                  borderRadius: BorderRadius.circular(10)
                ),
                ),
                
                const SizedBox(width: 10),
                Container(
                width: 45,
                height: 15,
                decoration: BoxDecoration(
                  color:Color.fromARGB(255, 137, 16, 156),
                  borderRadius: BorderRadius.circular(10)
                ),
                ),
            ],
          ),

          const SizedBox(height: 58,),

          Row(
            children: [
              const SizedBox(width: 328,),

              Container(
                child: FloatingActionButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute
                            (builder: (BuildContext context) =>
                            const OnBoarding15()));
                },
                child: const Icon(Icons.arrow_forward),),
              ),
            ],
          ),
    ]));
  }
}