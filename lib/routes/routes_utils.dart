import 'package:resume_builder_app/headers.dart';

class Routes {
  static String splashScreen = "/";
  static String homePage = 'home_page';
  static String buildOptionPage = 'build_option_page';
  static String pdfPage = 'pdf_page';
  static String iconPath = "lib/assets/image/";

  static List<Map<String, dynamic>> allOptions = [
    {
      'image': "${iconPath}Contect-info.png",
      'title': "Contact Info",
      'route': "contact_info_page",
    },
    {
      'image': "${iconPath}education.png",
      'title': "Education",
      'route': "education_info_page",
    },
    {
      'image': "${iconPath}Technical Skill.png",
      'title': "Technical Skill",
      'route': "technical_skill_page",
    },
    {
      'image': "${iconPath}Career Objective.png",
      'title': "Career Objective",
      'route': "career_objective_page",
    },
    {
      'image': "${iconPath}Achivement.png",
      'title': "Achivement",
      'route': "achivement_page",
    },
    {
      'image': "${iconPath}project.png",
      'title': "Project",
      'route': "project_page",
    },
    {
      'image': "${iconPath}personal details.png",
      'title': "Personal Details",
      'route': "personal_details_page",
    },
    {
      'image': "${iconPath}experience.png",
      'title': "Experience",
      'route': "experience_page",
    },
    {
      'image': "${iconPath}hobby.png",
      'title': "Hobbies",
      'route': "hobby_page",
    },
    {
      'image': "${iconPath}Reference.png",
      'title': "Reference",
      'route': "reference_page",
    },
    {
      'image': "${iconPath}Declaration.png",
      'title': "Declaration",
      'route': "declaration_page",
    },
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    splashScreen: (context) => const SplashScreen(),
    homePage: (context) => const HomePage(),
    pdfPage: (context) => const PdfPage(),
    buildOptionPage: (context) => const BuildOptionPage(),
    allOptions[0]['route']: (context) => const ContactInfoPage(),
    allOptions[1]['route']: (context) => const EducationPage(),
    allOptions[2]['route']: (context) => const TechnicalSkillPage(),
    allOptions[3]['route']: (context) => const CareerObjectivePage(),
    allOptions[4]['route']: (context) => const AchivementPage(),
    allOptions[5]['route']: (context) => const ProjectPage(),
    allOptions[6]['route']: (context) => const PersonalDetailPage(),
    allOptions[7]['route']: (context) => const ExperiencePage(),
    allOptions[8]['route']: (context) => const HobbyPage(),
    allOptions[9]['route']: (context) => const ReferencePage(),
    allOptions[10]['route']: (context) => const DeclarationPage(),
  };
}
