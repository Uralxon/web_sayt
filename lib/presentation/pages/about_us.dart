import 'package:flutter/material.dart';
import 'package:web_sayt/constants/colors.dart';
import 'package:web_sayt/presentation/widgets/aap_bar.dart';
import 'package:web_sayt/presentation/widgets/button_aapbar.dart';
import 'package:web_sayt/presentation/widgets/my_drawer.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const MyAppBar(),
      endDrawer: width < 1000 ? const MyDrawer() : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                  "https://www.yielders.co.uk/bundles/app/img/y-benefits.jpg",
                ),
                fit: BoxFit.cover,
              )),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "About Us",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              height: 320,
              width: MediaQuery.of(context).size.width,
              color: Appcolor.bgColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .8,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Our Team",
                            style: TextStyle(
                                fontSize: 45, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 30),
                          Wrap(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Adnan Malik",
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "CEO & Managing Director",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(width: 40),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Abid Karim",
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Co-Founder & Chairman",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: 50),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/blurred-9.jpg",
                  ),
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "How To Work",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
              color: Appcolor.bgColor,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Wrap(
                    spacing: 34,
                    children: [
                      SizedBox(
                        child: Text(
                          textAlign: TextAlign.start,
                          "How does\ncrowdinvesting work?",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 500,
                        height: 400,
                        child: Text(
                          textAlign: TextAlign.start,
                          "Yielders is a crowdinvesting property platform that gives you easy access to the UK property market and allows you to earn competitive returns. With our ethical investment model, there is no mortgage, interest, debt or hidden fees, which means you can grow your wealth without compromising on your values. Yielders is for everyone; whether you’re saving for retirement, your first home or your children’s education. We do the hard work for you. All you need to do is sign up and start investing.",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(20)),
                    child: Wrap(
                      children: [
                        Container(
                          width: 400,
                          padding: const EdgeInsets.all(20),
                          child: const Column(
                            children: [
                              Text(
                                textAlign: TextAlign.start,
                                "Invest",
                                style: TextStyle(
                                    color: Colors.lightGreen,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                "Invest in carefully vetted assets based in London and across the South East. Our team of experts identifies assets offering strong yields across the asset lifespan. We target above market yields.",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 400,
                          padding: const EdgeInsets.all(20),
                          child: const Column(
                            children: [
                              Text(
                                textAlign: TextAlign.start,
                                "Invest",
                                style: TextStyle(
                                    color: Colors.lightGreen,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                "Invest in carefully vetted assets based in London and across the South East. Our team of experts identifies assets offering strong yields across the asset lifespan. We target above market yields.",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 400,
                          padding: const EdgeInsets.all(20),
                          child: const Column(
                            children: [
                              Text(
                                textAlign: TextAlign.start,
                                "Invest",
                                style: TextStyle(
                                    color: Colors.lightGreen,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                "Invest in carefully vetted assets based in London and across the South East. Our team of experts identifies assets offering strong yields across the asset lifespan. We target above market yields.",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 120, horizontal: 20),
              width: MediaQuery.of(context).size.width,
              color: Appcolor.iconColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    // textAlign: TextAlign.start,
                    "Sign up and start investing in less than 3 minutes",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 50),
                  Wrap(
                    children: [
                      Container(
                        width: 300,
                        padding: const EdgeInsets.all(20),
                        child: const Column(
                          children: [
                            Icon(
                              Icons.home,
                              size: 70,
                              color: Colors.white,
                            ),
                            SizedBox(height: 20),
                            Text(
                              textAlign: TextAlign.start,
                              "Invest",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 20),
                            Text(
                              textAlign: TextAlign.center,
                              "Invest in carefully vetted assets based in London and across the South East. Our team of experts identifies assets offering strong yields across the asset lifespan. We target above market yields.",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 300,
                        padding: const EdgeInsets.all(20),
                        child: const Column(
                          children: [
                            Icon(
                              Icons.home,
                              size: 70,
                              color: Colors.white,
                            ),
                            SizedBox(height: 20),
                            Text(
                              textAlign: TextAlign.start,
                              "Invest",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 20),
                            Text(
                              textAlign: TextAlign.center,
                              "Invest in carefully vetted assets based in London and across the South East. Our team of experts identifies assets offering strong yields across the asset lifespan. We target above market yields.",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 300,
                        padding: const EdgeInsets.all(20),
                        child: const Column(
                          children: [
                            Icon(
                              Icons.home,
                              size: 70,
                              color: Colors.white,
                            ),
                            SizedBox(height: 20),
                            Text(
                              textAlign: TextAlign.start,
                              "Invest",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 20),
                            Text(
                              textAlign: TextAlign.center,
                              "Invest in carefully vetted assets based in London and across the South East. Our team of experts identifies assets offering strong yields across the asset lifespan. We target above market yields.",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 300,
                        padding: const EdgeInsets.all(20),
                        child: const Column(
                          children: [
                            Icon(
                              Icons.home,
                              size: 70,
                              color: Colors.white,
                            ),
                            SizedBox(height: 20),
                            Text(
                              textAlign: TextAlign.start,
                              "Invest",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 20),
                            Text(
                              textAlign: TextAlign.center,
                              "Invest in carefully vetted assets based in London and across the South East. Our team of experts identifies assets offering strong yields across the asset lifespan. We target above market yields.",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
            const MyBottomAppBar()
          ],
        ),
      ),
    );
  }
}
