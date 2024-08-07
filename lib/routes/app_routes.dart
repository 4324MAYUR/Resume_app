import 'package:flutter/material.dart';
import 'package:resume_app/views/Home_page/Home_Page.dart';
import 'package:resume_app/views/build_option_page/All_Option/Achievements_Page.dart';
import 'package:resume_app/views/build_option_page/All_Option/Declaration_Page.dart';
import 'package:resume_app/views/build_option_page/All_Option/Hobbies_Page.dart';
import 'package:resume_app/views/build_option_page/All_Option/Projects_Page.dart';
import 'package:resume_app/views/build_option_page/All_Option/Technical_Skills_Page.dart';
import 'package:resume_app/views/build_option_page/Build_Option_Page.dart';
import 'package:resume_app/views/Splash/Splash_Screen.dart';
import 'package:resume_app/views/build_option_page/All_Option/Contact_Info_Page.dart';
import 'package:resume_app/views/build_option_page/All_Option/Carrier_Objective_Page.dart';
import 'package:resume_app/views/build_option_page/All_Option/Eduction_Page.dart';
import 'package:resume_app/views/build_option_page/All_Option/Experiences_Page.dart';
import 'package:resume_app/views/build_option_page/All_Option/Personal_Details_Page.dart';
import 'package:resume_app/views/build_option_page/All_Option/References_Page.dart';
class Allroutes
{
  static String homepage = "/";
  static String build_option_page = "Build_option_page";
  static String screen_page = "screen_page";

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
    screen_page : (context) =>  const Splash_Page(),
    AllOption[0]['route']: (context) => const Contact_Info_Page(),
    AllOption[1]['route']: (context) => const Carrier_Objective_Page(),
    AllOption[2]['route']: (context) => const Personal_Details_Page(),
    AllOption[3]['route']: (context) => const Eduction_Page(),
    AllOption[4]['route']: (context) => const Experiences_Page(),
    AllOption[5]['route']: (context) => const Technical_Skills_Page(),
    AllOption[6]['route']: (context) => const Hobbies_Page(),
    AllOption[7]['route']: (context) => const Projects_Page(),
    AllOption[8]['route']: (context) => const Achievements_Page(),
    AllOption[9]['route']: (context) => const References_Page(),
    AllOption[10]['route']: (context) => const Declaration_Page(),
  };
}

