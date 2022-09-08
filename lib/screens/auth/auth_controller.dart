import 'package:flutter/cupertino.dart';
import 'package:genderhackapp/const/globals.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController ageCtrl = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Sexe sexe = Sexe.F;
  Orientations orientation = Orientations.Hetero;
}
