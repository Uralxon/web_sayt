import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';
import '../widgets/aap_bar.dart';
import '../widgets/button_aapbar.dart';
import '../widgets/my_drawer.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const MyAppBar(),
      endDrawer: width < 1000 ? const MyDrawer() : null,
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
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
                    "Contact Us",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              color: Appcolor.bgColor,
              
              width: MediaQuery.of(context).size.width,
              child: Wrap(alignment: WrapAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: 400,
                    height: 250,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Phone nomer",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        const Text("Leave us a Phone nomer"),
                        const SizedBox(height: 20),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(200, 40),
                                backgroundColor: Appcolor.iconColor),
                            onPressed: () {},
                            child: const Text("+998950656565",
                                style: TextStyle(color: Colors.black)))
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: 400,
                    height: 250,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Telegram Link",
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold)),
                        const Text("Send an Telegram Link to"),
                        const SizedBox(height: 20),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(200, 40),
                                backgroundColor: Appcolor.iconColor),
                            onPressed: () {},
                            child: const Text(
                              "tme://jsdhfgjdsgfh",
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                    ),
                  )
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
