import 'dart:io';
import 'package:resume_builder_app/headers.dart';

class Globals {
  static String Fname = '';
  static String Lname = '';
  static String phone = '';
  static String email = '';
  static String password = '';
  static String address = '';
  static bool hide = false;
  static String course = '';
  static String institute = '';
  static String result = '';
  static String passingYear = '';
  static String description = '';
  static String currentPosition = '';
  static File? image;
  static double total = 0;
  static GlobalKey<FormState> personalInfoKey = GlobalKey<FormState>();
  static GlobalKey<FormState> educationInfoKey = GlobalKey<FormState>();
  static GlobalKey<FormState> experienceInfoKey = GlobalKey<FormState>();
  static GlobalKey<FormState> projectInfoKey = GlobalKey<FormState>();
  static GlobalKey<FormState> contactInfoKey = GlobalKey<FormState>();
  static GlobalKey<FormState> referenceInfoKey = GlobalKey<FormState>();
  static GlobalKey<FormState> declarationInfoKey = GlobalKey<FormState>();
  static GlobalKey<FormState> careerObjectiveInfoKey = GlobalKey<FormState>();
  static GlobalKey<FormState> hobbyInfoKey = GlobalKey<FormState>();
  static GlobalKey<FormState> technicalSkillInfoKey = GlobalKey<FormState>();
  static GlobalKey<FormState> achivementInfoKey = GlobalKey<FormState>();
  static List<String> achivements = [];
  static List<String> technicalSkills = [];
  static List<String> experience = [];
  static List<String> education = [];
  static List<String> projects = [];
  static List<String> hobbies = [];
  static List<String> references = [];
}

class TechnicalSkillGlobal {
  static List<String> skill = ["", ""];
  static List<String> skillLevel = ["", ""];
  static List<TextEditingController> controller = [
    TextEditingController(),
    TextEditingController(),
  ];
}

class AchivementGlobal {
  static List<String> skill = ["", ""];
  static List<String> skillLevel = ["", ""];
  static List<TextEditingController> controller = [
    TextEditingController(),
    TextEditingController(),
  ];
}

class ProjectGlobal {
  static List<String> skill = ["", ""];
  static List<String> skillLevel = ["", ""];
  static List<TextEditingController> controller = [
    TextEditingController(),
    TextEditingController(),
  ];
}
