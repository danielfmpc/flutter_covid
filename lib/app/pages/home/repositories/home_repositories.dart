import 'package:covid_get/app/pages/home/model/home_model.dart';
import 'package:dio/dio.dart';

class Api{
  Future<HomeModel> fetchData() async {
    try {  
      final response = await Dio().get('https://api.covid19api.com/summary');
      return HomeModel.fromJson(response.data);
    } catch (e) {
      print(e.toString());
      //Get.snackbar('erro', 'Error ao obter dados do servidor');
      return null;
    }
  }
}