import 'package:flutter/material.dart';
import 'package:my_project/pages/signUp.dart';

import 'login.dart';

class profList{
  String? comp;
  Widget goTo;
  profList({this.comp,required this.goTo});
}
List list = [
  profList(comp:"Orders",goTo:login()),
  profList(comp:"Settings",goTo:login()),
  profList(comp:"Login",goTo:login()),
  profList(comp:"Sign Up",goTo:signUp()),
  profList(comp:"Log Out",goTo:login()),


];