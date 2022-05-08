import 'package:get_it/get_it.dart';
import 'package:sawayo_assignment/configuration.dart';
import 'package:sawayo_assignment/phraseapp.dart';
import 'package:sawayo_assignment/screens/homescreen/model/user_details_model.dart';
import 'package:sawayo_assignment/screens/homescreen/repository/users_repository.dart';
import 'package:sawayo_assignment/screens/homescreen/services/user_services.dart';
import 'package:sawayo_assignment/screens/homescreen/viewmodel/user_view_model.dart';

final locator = GetIt.instance;

void setup(){
  locator.registerLazySingleton(() => UserServices());
  locator.registerLazySingleton(() => UserDetails());
  locator.registerLazySingleton(() => UsersRepository());
  locator.registerLazySingleton(() => UsersViewModel());
  locator.registerLazySingleton(() => Configuration());
  locator.registerLazySingleton(() => PhraseApp());
}