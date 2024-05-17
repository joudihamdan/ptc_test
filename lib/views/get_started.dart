import 'package:flutter/material.dart';
import 'package:test_app/views/home_view.dart';
import 'package:test_app/widgets/custom_botton.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage(
            "assets/getStarted.png",
          ),
        )),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("assets/Group.png"),
              const Text(
                "Welcome ",
                style: TextStyle(fontSize: 48, color: Colors.white),
              ),
              const Text(
                "to our store",
                style: TextStyle(fontSize: 48, color: Colors.white),
              ),
              const Text("Ger your groceries in as fast as one hour",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  )),
              const SizedBox(
                height: 40,
              ),
              CustomBotton(
                name: "Get Started",
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const HomeView();
                      },
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
