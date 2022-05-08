import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sawayo_assignment/locator.dart';
import 'package:sawayo_assignment/phraseapp.dart';
import 'package:sawayo_assignment/screens/homescreen/model/user_details_model.dart';
import 'package:sawayo_assignment/screens/homescreen/viewmodel/user_view_model.dart';
import 'package:sawayo_assignment/screens/homescreen/widgets/user_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<UsersViewModel>(context, listen: false);
    var appBarTitle = locator.get<PhraseApp>().appBarTitle;
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: FutureBuilder(
        future: provider.getUsers(),
        builder:
            (BuildContext context, AsyncSnapshot<List<UserDetails>> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const Center(
                child: CircularProgressIndicator(),
              );
            default:
              if (snapshot.hasError) {
                return Center(
                  child: Text('Error: ${snapshot.error}'),
                );
              } else {
                return Center(
                  child: UserList(
                    users: snapshot.data,
                  ),
                );
              }
          }
        },
      ),
    );
  }
}
