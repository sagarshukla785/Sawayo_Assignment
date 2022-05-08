import 'package:flutter/material.dart';
import 'package:sawayo_assignment/locator.dart';
import 'package:sawayo_assignment/screens/homescreen/model/user_details_model.dart';
import 'package:sawayo_assignment/screens/homescreen/repository/users_repository.dart';

class UsersViewModel extends ChangeNotifier {
  Future<List<UserDetails>> getUsers(){
    return locator.get<UsersRepository>().fetchUserDetails();
  }
}