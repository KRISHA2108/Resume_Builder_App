import 'package:resume_builder_app/headers.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Education "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            height: 570,
            decoration: BoxDecoration(
              color: const Color(0xff003152),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Form(
              key: Globals.educationInfoKey,
              child: Column(
                children: [
                  const Text(
                    'Course/Degree',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  10.h,
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    onSaved: (value) {
                      Globals.course = value.toString();
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Course/Degree",
                      hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.3)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  10.h,
                  const Text(
                    'Institute',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  10.h,
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    onSaved: (value) {
                      Globals.institute = value.toString();
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Institute",
                      hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.3)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  10.h,
                  const Text(
                    'Passing Year',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  10.h,
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.number,
                    onSaved: (value) {
                      Globals.passingYear = value.toString();
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Passing Year",
                      hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.3)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  10.h,
                  const Text(
                    'Result',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  10.h,
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.number,
                    onSaved: (value) {
                      Globals.result = value.toString();
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Result",
                      hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.3)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  50.h,
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    onPressed: () {
                      if (Globals.educationInfoKey.currentState!.validate()) {
                        Globals.educationInfoKey.currentState!.save();
                      }
                    },
                    child: const Text(
                      'SAVE',
                      style: TextStyle(color: Color(0xff003152)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
