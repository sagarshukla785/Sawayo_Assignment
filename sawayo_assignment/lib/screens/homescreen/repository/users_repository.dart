import 'package:sawayo_assignment/configuration.dart';
import 'package:sawayo_assignment/locator.dart';
import 'package:sawayo_assignment/screens/homescreen/model/user_details_model.dart';
import 'package:sawayo_assignment/screens/homescreen/services/user_services.dart';

class UsersRepository {
  String host = locator.get<Configuration>().host;
  String endpoint = locator.get<Configuration>().userDetailsEndpoit;

  Future<List<UserDetails>> fetchUserDetails() async {
    String response = await locator.get<UserServices>().get(host, endpoint).then((value) {
      return value;
    });

    return UserDetailsFromJson(response);
  }
}