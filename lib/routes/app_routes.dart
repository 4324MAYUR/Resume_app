import 'package:flutter/material.dart';
import 'package:resume_app/views/Home_page/Home_Page.dart';
import 'package:resume_app/views/build_option_page/Build_Option_Page.dart';
import 'package:resume_app/views/screen/screen-page.dart';
class Allroutes
{
  static String homepage = "/";
  static String build_option_page = "Build_option_page";
  static String Screen_Page = "screen_page";

  static String iconpath = "lib/assets/icons/";

  static List<Map<String,dynamic>> AllOption = [
    {
      'icon' : "${iconpath}contact_detail-removebg-preview (1).png",
      'title': "Contact info",
      'route': "contact_info_page",
    } ,
    {
      'icon' : "${iconpath}briefcase.png",
      'title': "Carrier Objective",
      'route': "carrier_objective_page",
    },
    {
      'icon' : "${iconpath}account.png",
      'title': "Personal Details",
      'route': "personal_details_page",
    },
    {
      'icon' : "${iconpath}graduation-cap.png",
      'title': "Eduction",
      'route': "eduction_page",
    },
    {
      'icon' : "${iconpath}logical-thinking.png",
      'title': "Experiences",
      'route': "experiences_page",
    },
    {
      'icon' : "${iconpath}certificate.png",
      'title': "Technical Skills",
      'route': "technical_skills_page",
    },
    {
      'icon' : "${iconpath}open-book.png",
      'title': "Interest/Hobbies",
      'route': "interest/hobbies_page",
    },
    {
      'icon' : "${iconpath}project-management.png",
      'title': "Projects",
      'route': "projects_page",
    },
    {
      'icon' : "${iconpath}experience.png",
      'title': "Achievements",
      'route': "achievements_page",
    },
    {
      'icon' : "${iconpath}handshake.png",
      'title': "References",
      'route': "references_page",
    },
    {
      'icon' : "${iconpath}declaration.png",
      'title': "Declaration",
      'route': "declaration_page",
    },

  ];

  static Map<String,Widget Function (BuildContext)> routes =
  {
    homepage : (context) => const Home_Page(),
    build_option_page : (context) => const Build_option_page(),
    Screen_Page : (context) =>  const screen_page(),

  };
}

