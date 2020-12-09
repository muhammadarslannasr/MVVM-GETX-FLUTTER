import 'dart:ui';

import 'package:get/get.dart';
import 'package:getx_code_structure/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class CountryView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.linearToSrgbGamma(),
              image: NetworkImage(
                  "https://images.pexels.com/photos/3902882/pexels-photo-3902882.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"))),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text("Corona By Country"),
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
            ),
            body: Center(
              child: ListView.builder(
                  itemCount: controller.state.countries.length,
                  itemBuilder: (context, index) {
                    final country = controller.state.countries[index];
                    return ListTile(
                      onTap: () {
                        Get.toNamed('/home/country/details',
                            arguments: country);
                      },
                      trailing: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://flagpedia.net/data/flags/normal/${country.countryCode.toLowerCase()}.png"),
                      ),
                      title: Text(country.country),
                      subtitle:
                          Text("Total infecteds: ${country.totalConfirmed}"),
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
