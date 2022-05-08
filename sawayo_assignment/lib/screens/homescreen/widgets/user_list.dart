import 'package:flutter/material.dart';
import 'package:sawayo_assignment/locator.dart';
import 'package:sawayo_assignment/phraseapp.dart';
import 'package:sawayo_assignment/screens/homescreen/model/user_details_model.dart';

class _Constants {
  static const double circleContainerHeight = 40;
  static const double circleContainerWidth = 40;
}

// ignore: must_be_immutable
class UserList extends StatelessWidget {
  List<UserDetails>? users;
  UserList({Key? key, this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var usersLength = users?.length ?? 0;
    if (usersLength == 0) {
      return Center(
        child: Text(locator.get<PhraseApp>().noUsers),
      );
    }
    return ListView.builder(
      itemCount: users?.length ?? 0,
      itemBuilder: (context, index) {
        return Column(children: [
          ListTile(
            leading: Container(
              height: _Constants.circleContainerHeight,
              width: _Constants.circleContainerWidth,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              alignment: Alignment.center,
              child: Text(
                users?[index].name?[0] ?? '',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            title: Text(users?[index].name ?? ''),
            subtitle: Text((users?[index].address?.city ?? '') +
                ", " +
                (users?[index].address?.zipcode ?? '')),
          ),
          const Divider()
        ]);
      },
    );
  }
}
