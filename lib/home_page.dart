import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController animationController2;
  bool one = false;
  bool two = false;
  double size = 0;

  @override
  void initState() {
    super.initState();

    animationController2 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 5000));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Align(
              alignment: const Alignment(0, -0.8),
              child: Visibility(
                visible: two,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: double.infinity,
                  child: Lottie.network(
                      "https://assets8.lottiefiles.com/packages/lf20_a8czjo3v.json",
                      controller: animationController2),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, -0.5),
              child: Visibility(
                visible: two,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: double.infinity,
                  child: Lottie.network(
                      "https://assets5.lottiefiles.com/private_files/lf30_by4vic69.json",
                      controller: animationController2),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.3),
              child: AnimatedDefaultTextStyle(
                curve: Curves.easeInOut,
                textAlign: TextAlign.center,
                duration: const Duration(milliseconds: 1000),
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: size,
                  fontWeight: FontWeight.bold,
                ),
                child: Text("Happy\nDiwali".toUpperCase()),
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.8),
              child: Visibility(
                visible: two,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200,
                      width: 100,
                      child: Lottie.network(
                          "https://assets6.lottiefiles.com/packages/lf20_fpxnx6ry.json",
                          controller: animationController2,
                          frameRate: FrameRate(120)),
                    ),
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: Lottie.network(
                          "https://assets6.lottiefiles.com/packages/lf20_fpxnx6ry.json",
                          controller: animationController2,
                          frameRate: FrameRate(120)),
                    ),
                    SizedBox(
                      height: 200,
                      width: 100,
                      child: Lottie.network(
                          "https://assets6.lottiefiles.com/packages/lf20_fpxnx6ry.json",
                          controller: animationController2,
                          frameRate: FrameRate(120)),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.9),
              child: MaterialButton(
                color: Colors.red,
                child: const Text("  "),
                onPressed: () async {
                  two = true;
                  setState(() {});
                  animationController2.repeat();
                  await Future.delayed(const Duration(milliseconds: 300));
                  one = false;
                  setState(() {
                    size = 55;
                  });
                },
              ),
            )
          ],
        ));
  }
}
