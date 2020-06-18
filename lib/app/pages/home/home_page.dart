import 'package:covid_get/app/pages/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Corona Vírus App'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: GetBuilder<Controller>(
          init: Controller(),
          initState: (_){
            Controller.to.fetchDataFromApi();
          },
          builder: (_) {
            if(_.data == null){
              return CircularProgressIndicator();
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Total de casos',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                Text(
                  '${_.data.global.totalConfirmed}',                  
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 28,
                  ),
                ),
                Text(
                  'Total de Mortes',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                Text(
                  '${_.data.global.totalDeaths}',                  
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 28,
                  ),
                ),
              ],
            );
            
          }
        ),
      ),
    );
  }
}