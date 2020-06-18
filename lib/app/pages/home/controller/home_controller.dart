import 'package:covid_get/app/pages/home/model/home_model.dart';
import 'package:covid_get/app/pages/home/repositories/home_repositories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetController {

  static Controller get to => Get.find();

  HomeModel data;

  void fetchDataFromApi() async {
    Api api = Api();
    final response = await api.fetchData();
    if(response == null){
      Get.snackbar(
        'Erro', 
        'Não foi possivel conectar ao servidor',
       backgroundColor: Colors.red,
      );
    } else {
      data = response;
    }
    update();
  }
}