import 'package:flutter/material.dart';
import 'package:sonede/constants.dart';
import 'package:sonede/widgets/data/user.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text(
            "profile",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) => Divider(),
          itemCount: users.length,
          itemBuilder: (context, index) {
            User user = users[index];
            return Card(
              color: Colors.blue[900],
              child: ListTile(
                title: Text(
                  "Client: ${user.nomEtPrenom}",
                  style: kBodyText,
                ),
                subtitle: Text(
                  "CIN: ${user.cin.toString()}\nAdresse: ${user.adresse}\nTel: ${user.tel}",
                  style: kBodyText,
                ),
                isThreeLine: true,
                trailing: Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                onTap: () {
                  Navigator.of(context).pushNamed("/history",
                      arguments: {'Adresse': user.adresse});
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
