import 'package:flutter/material.dart';
import 'package:resume_builder_app/screens/buider_options_pages/achievements/achievements_page.dart';
import 'package:resume_builder_app/screens/buider_options_pages/carrier_objective/carrier_objective_page.dart';
import 'package:resume_builder_app/screens/buider_options_pages/contact_info/contact_info_page.dart';
import 'package:resume_builder_app/screens/buider_options_pages/declaration/declaration_page.dart';
import 'package:resume_builder_app/screens/buider_options_pages/education/education_page.dart';
import 'package:resume_builder_app/screens/buider_options_pages/experiences/experiences_page.dart';
import 'package:resume_builder_app/screens/buider_options_pages/interest/interest_page.dart';
import 'package:resume_builder_app/screens/buider_options_pages/personal_detail/personal_detail_page.dart';
import 'package:resume_builder_app/screens/buider_options_pages/projects/project_page.dart';
import 'package:resume_builder_app/screens/buider_options_pages/references/references_page.dart';
import 'package:resume_builder_app/screens/buider_options_pages/technical_skills/technical_skill_page.dart';
import 'package:resume_builder_app/screens/splashscreen.dart';
import '../screens/homepage.dart';

class AppRoutes {
  static String iconPath = "lib/assets/icons/";
  static String splashscreen = "/";
  static String homePage = "home_page";
  static List<Map<String, dynamic>> allOptions = [
    {
      'icon': "${iconPath}contact_detail-removebg-preview (1).png",
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
    allOptions[0]['route']: (context) => const ContactInfoPage(),
    allOptions[1]['route']: (context) => const CarrierObjectivePage(),
    allOptions[2]['route']: (context) => const PersonalDetailPage(),
    allOptions[3]['route']: (context) => const EducationPage(),
    allOptions[4]['route']: (context) => const ExperiencesPage(),
    allOptions[5]['route']: (context) => const TechnicalSkillPage(),
    allOptions[6]['route']: (context) => const InterestsPage(),
    allOptions[7]['route']: (context) => const ProjectPage(),
    allOptions[8]['route']: (context) => const AchievementsPage(),
    allOptions[9]['route']: (context) => const ReferencesPage(),
    allOptions[10]['route']: (context) => const DeclarationPage(),
  };
}
