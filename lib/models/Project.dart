
import 'package:flutter_profile/constants.dart';

class Project {
  final String? title, description,formore;
  
  
  Project({this.title, this.description,this.formore});
}

// ignore: non_constant_identifier_names
List<Project> demo_projects = [
  Project(
    title: "Simple BankApp For My School Project",
    description:
        "*I made with .NET Framework\n*Usabel Log in & Sign in Screen\n*I used MsSql Database\n*I used extra packages Livechart,Reportviewer ",
    formore:donemodev,
  ),
  Project(
    title: "Mobile App With Using Flutter",
    description:
        "*I made with Flutter\n*Simple UI\n*I used sqflite Database.",
    formore: tesbihat
  ),
  Project(
    title: "Windows Pc Shut downer",
    description:
        "*Simple UI\n*Pc Shut downer for Windows PCs .",
    formore: pcshutdowner
  ),
  

];


