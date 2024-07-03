
import 'package:appcuaca/model/cuaca_model.dart';
import 'package:appcuaca/service/cuaca_service.dart';
import 'package:flutter/material.dart';

class CuacaProvider extends ChangeNotifier {
  TextEditingController cityNameText = TextEditingController();

  CuacaService cuacaService = CuacaService();
  CuacaModel cuacaModel = CuacaModel();

  showWeatherData() async {
    cuacaModel = await cuacaService.getCurrentWeather(cityNameText.text);
    print(cuacaModel.weather?.first.main);
    notifyListeners();
  }
}
