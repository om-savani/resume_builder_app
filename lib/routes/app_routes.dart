import 'package:flutter/material.dart';
import 'package:resume_builder_app/screens/splashscreen.dart';
import '../screens/homepage.dart';

class AppRoutes {
  static String iconPath = "lib/assets/icons/";
  static String splashscreen = "/";
  static String homePage = "home_page";
  static List<Map<String, dynamic>> allOptions = [
    {
      'icon': "${iconPath}iconPath}contact_detail-removebg-preview (1)",
      'title': "Contact Info",
      'route': "contact_info_page",
    },
    {
      'icon': "${iconPath}briefcase.png",
      'title': "Carrier Objective",
      'route': "personal_details_page",
    },
    {
      'icon': "${iconPath}account.png",
      'title': "Personal Details",
      'route': "education_page",
    },
    {
      'icon': "${iconPath}graduation-cap.png",
      'title': "Eduction",
      'route': "page",
    },
    {
      'icon': "${iconPath}logical-thinking.png",
      'title': "Experiences",
      'route': "experience_page",
    },
    {
      'icon': "${iconPath}certificate.png",
      'title': "Technical Skills",
      'route': "technical_skills_page",
    },
    {
      'icon': "${iconPath}open-book.png",
      'title': "Interest/Hobbies",
      'route': "interest_hobbies_page",
    },
    {
      'icon': "${iconPath}project-management.png",
      'title': "Projects",
      'route': "projects_page",
    },
    {
      'icon': "${iconPath}experience.png",
      'title': "Achievements",
      'route': "achievements_page",
    },
    {
      'icon': "${iconPath}handshake.png",
      'title': "References",
      'route': "references_page",
    },
    {
      'icon': "${iconPath}declaration.png",
      'title': "Declaration",
      'route': "declaration_page",
    },
  ];
  static Map<String, Widget Function(BuildContext)> routes = {
    splashscreen: (context) => SplashScreen(),
    homePage: (context) => const HomePage(),
  };
}
