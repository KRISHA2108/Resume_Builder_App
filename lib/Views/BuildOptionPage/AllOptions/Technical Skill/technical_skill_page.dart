import 'package:resume_builder_app/headers.dart';
import 'dart:developer';

class TechnicalSkillPage extends StatefulWidget {
  const TechnicalSkillPage({super.key});

  @override
  State<TechnicalSkillPage> createState() => _TechnicalSkillPageState();
}

class _TechnicalSkillPageState extends State<TechnicalSkillPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Technical Skill"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xff003152),
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              child: Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Enter Your Technical Skill",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      20.h,
                      SingleChildScrollView(
                        child: Expanded(
                          child: Column(children: [
                            ...List.generate(
                              TechnicalSkillGlobal.skill.length,
                              (index) => Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      style:
                                          const TextStyle(color: Colors.white),
                                      controller: TechnicalSkillGlobal
                                          .controller[index],
                                      onChanged: (val) {
                                        TechnicalSkillGlobal.skill[index] = val;
                                      },
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      if (TechnicalSkillGlobal.skill.length >
                                          2) {
                                        TechnicalSkillGlobal.controller
                                            .removeAt(index);
                                        TechnicalSkillGlobal.skill
                                            .removeAt(index);
                                      }
                                      setState(() {});
                                    },
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ),
                      20.h,
                      ElevatedButton(
                        style: ButtonStyle(
                          foregroundColor: WidgetStateProperty.all(
                            const Color(0xFF0277BD),
                          ),
                        ),
                        onPressed: () {
                          TechnicalSkillGlobal.skill.add("");
                          TechnicalSkillGlobal.controller.add(
                            TextEditingController(),
                          );
                          setState(() {});
                        },
                        child: const Text(
                          "Add Skill",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                setState(() {
                  TechnicalSkillGlobal.controller.add(TextEditingController());
                  log("${TechnicalSkillGlobal.skill}");
                });
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

/*
*
*
*  Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text("Skills"),
                                ...List.generate(
                                  TechnicalSkillGlobal.skill.length,
                                  (index) => Row(
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          controller: TechnicalSkillGlobal
                                              .controller[index],
                                          onChanged: (val) {
                                            TechnicalSkillGlobal.skill[index] =
                                                val;
                                          },
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          if (TechnicalSkillGlobal
                                                  .skill.length >
                                              2) {
                                            TechnicalSkillGlobal.controller
                                                .removeAt(index);
                                            TechnicalSkillGlobal.skill
                                                .removeAt(index);
                                          }
                                          setState(() {});
                                        },
                                        icon: const Icon(Icons.delete),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: TextButton(
                                    style: ButtonStyle(
                                      foregroundColor: WidgetStateProperty.all(
                                        const Color(0xFF0277BD),
                                      ),
                                    ),
                                    onPressed: () {
                                      TechnicalSkillGlobal.skill.add("");
                                      TechnicalSkillGlobal.controller.add(
                                        TextEditingController(),
                                      );
                                      setState(() {});
                                    },
                                    child: const Text(
                                      "Add Skill",
                                    ),
                                  ),
                                ),

                              ],
                            ),*/
