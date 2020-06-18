import 'package:covid_get/app/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'SARS COVID-2',
      initialRoute: '/',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      namedRoutes: {
        '/': GetRoute(page: HomePage()),
      },
    )
  );
}
