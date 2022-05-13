import 'package:flutter/material.dart';
import 'package:provider_rest_api/services/data_service.dart';

import '../models/data_model.dart';

class DataProvider with ChangeNotifier {
  late DataModel data;

  bool loading = false;
  Services services = Services();

  getData(context) async {
    loading = true;
    data = await services.getData(context);
    loading = false;
    notifyListeners();
  }
}
