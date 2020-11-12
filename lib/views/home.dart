import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nimatrix/core/dashboardModel.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DashboardModel model = DashboardModel();
    return SafeArea(
      child: Scaffold(
          body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.back,
                          color: Colors.black,
                        ),
                        label: Text(
                          'Design',
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        )),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.redAccent,
                          radius: 20,
                          child: FaIcon(FontAwesomeIcons.infinity),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          child: Icon(Icons.person),
                        )
                      ],
                    ),
                  ]),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 100,
              color: Colors.grey,
              child: ListView(
                  children: model.model
                      .map((mode) => Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ListTile(
                                  leading: mode.image,
                                  title: Text(mode.title),
                                  subtitle: Text(mode.company),
                                ),
                                Container(
                                  height: 40,
                                )
                              ],
                            ),
                          ))
                      .toList()),
            )
          ]),
        ),
      )),
    );
  }
}
