import 'package:flutter/cupertino.dart';
import 'package:userapp/Models/address.dart';

class AppData extends ChangeNotifier {
  late Address pickUpLocation;

  void updatePickUpLocationAddress(pickUpAddress) {
    pickUpLocation = pickUpAddress;
    notifyListeners();
  }
}
