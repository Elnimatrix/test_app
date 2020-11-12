import 'package:flutter/widgets.dart';

class DashboardModel {
  Image image;
  String title;
  String company;
  String location;
  List<String> tools;
  DashboardModel(
      {this.image, this.location, this.company, this.title, this.tools});

  List<DashboardModel> model = [
    DashboardModel(
        image: Image.asset('images/hp.png'),
        title: 'UX Product Designer',
        company: 'zoho corp',
        location: 'channai',
        tools: ['Photoshop', 'AdobeXD', 'Invision Studio']),
    DashboardModel(
        image: Image.asset('images/google.png'),
        title: 'Graphic Designer',
        company: 'Google',
        location: 'channai',
        tools: ['Photoshop', 'AdobeXD', 'Invision Studio']),
    DashboardModel(
        image: Image.asset('images/apple.png'),
        title: 'Creative Director',
        company: 'Samsung',
        location: 'channai',
        tools: ['Photoshop', 'AdobeXD', 'Invision Studio']),
    DashboardModel(
        image: Image.asset('images/microsoft.png'),
        title: 'UI/UX Designer',
        company: 'Microsoft',
        location: 'channai',
        tools: ['Photoshop', 'AdobeXD', 'Invision Studio'])
  ];
}
