import 'package:get_it/get_it.dart';
import 'package:sawayo_assignment/configuration.dart';
import 'package:sawayo_assignment/screens/homescreen/services/user_services.dart';

final locator = GetIt.instance;

void setup(){
  locator.registerLazySingleton(() => UserServices());
  locator.registerLazySingleton(() => Configuration());
}