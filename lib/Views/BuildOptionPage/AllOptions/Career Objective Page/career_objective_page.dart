import 'package:resume_builder_app/headers.dart';

class CareerObjectivePage extends StatefulWidget {
  const CareerObjectivePage({super.key});

  @override
  State<CareerObjectivePage> createState() => _CareerObjectivePageState();
}

class _CareerObjectivePageState extends State<CareerObjectivePage> {
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
        title: const Text(
          ' Career Objective Page',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              height: 420,
              decoration: BoxDecoration(
                color: const Color(0xff003152),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Form(
                key: Globals.careerObjectiveInfoKey,
                child: Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Text(
                          "Career Objective",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        10.h,
                        TextFormField(
                          style: const TextStyle(color: Colors.white),
                          onSaved: (value) {
                            Globals.description = value!;
                          },
                          maxLines: 7,
                          decoration: InputDecoration(
                            hintText: "Description",
                            hintStyle:
                                TextStyle(color: Colors.white.withOpacity(0.3)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        20.h,
                        const Text(
                          "Current Designation",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        10.h,
                        TextFormField(
                          style: const TextStyle(color: Colors.white),
                          onSaved: (value) {
                            Globals.currentPosition = value!;
                          },
                          decoration: InputDecoration(
                            hintText: "Software and Technology",
                            focusColor: Colors.white,
                            hintStyle:
                                TextStyle(color: Colors.white.withOpacity(0.3)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                if (Globals.careerObjectiveInfoKey.currentState!.validate()) {
                  Globals.careerObjectiveInfoKey.currentState!.save();
                }
              },
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff003152),
                  borderRadius: BorderRadiusDirectional.circular(20),
                ),
                child: const Center(
                  child: Text(
                    "SAVE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
