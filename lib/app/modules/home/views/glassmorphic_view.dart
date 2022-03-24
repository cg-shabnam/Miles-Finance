import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';

class GlassMorphicView extends StatelessWidget {
  const GlassMorphicView({Key? key}) : super(key: key);

  ///todo: implement Getx, model etc. and pass values

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              "assets/floating_spheres.jpeg",
              fit: BoxFit.cover,
              height: Get.height,
              width: Get.width,
              scale: 1,
            ),
            SafeArea(
              child: Center(
                child: GlassmorphicContainer(
                  ///todo: assign height width etc. dynamically
                  width: 350,
                  height: 550,
                  borderRadius: 20,
                  blur: 15,
                  alignment: Alignment.bottomCenter,
                  border: 1,
                  linearGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFffffff).withOpacity(0.1),
                        Color(0xFFFFFFFF).withOpacity(0.05),
                      ],
                      stops: [0.1, 1,]),
                  borderGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFffffff).withOpacity(0.1),
                      Color((0xFFFFFFFF)).withOpacity(0.2),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome!',
                          style: const TextStyle(fontSize: 40),),
                        Text(
                          'Sign in to continue',
                          style: const TextStyle(fontSize: 15),),
                        SizedBox(height: 40),
                        TextField(
                          decoration: InputDecoration(label: Text('Username')),),
                        SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(label: Text('Password')),),
                        SizedBox(height: 40),
                        Center(
                          child: Text(
                            'Forgot Password?',
                            style: const TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                                width: Get.width,
                                child: Center(child: Text('LOGIN')))),
                        SizedBox(height: 20),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              /// color the text in TextButton (two ways):
                              /// 1. color in TextStyle inside Text which is child of TextButton,
                              /// 2. foregroundColor in ButtonStyle inside TextButton
                              TextButton(
                                onPressed: () {},
                                child: Text('Demo Login'),
                                style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all(Colors.black),
                                    overlayColor:
                                        MaterialStateProperty.all(Colors.teal)),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text('Check CPA Eligibility',
                                  style: TextStyle(color: Colors.black),
                                ),
                                style: ButtonStyle(
                                    overlayColor: MaterialStateProperty.all(Colors.teal)),
                              ),
                            ]),],
                    ),
                  ),
                ),
              ),
            )],
        ),
      ),
    );
  }
}
