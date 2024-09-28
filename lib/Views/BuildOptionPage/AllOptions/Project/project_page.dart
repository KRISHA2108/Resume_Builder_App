import 'package:resume_builder_app/headers.dart';
import 'dart:developer';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
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
        title: const Text("Project"),
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
                        "Enter Your Project",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      20.h,
                      Column(children: [
                        ...List.generate(
                          ProjectGlobal.skill.length,
                          (index) => Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Enter Your Project",
                                    hintStyle: TextStyle(
                                        color: Colors.white.withOpacity(0.2)),
                                  ),
                                  style: const TextStyle(color: Colors.white),
                                  controller: ProjectGlobal.controller[index],
                                  onChanged: (val) {
                                    ProjectGlobal.skill[index] = val;
                                  },
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  if (ProjectGlobal.skill.length > 2) {
                                    ProjectGlobal.controller.removeAt(index);
                                    ProjectGlobal.skill.removeAt(index);
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
                      20.h,
                      ElevatedButton(
                        style: ButtonStyle(
                          foregroundColor: WidgetStateProperty.all(
                            const Color(0xFF0277BD),
                          ),
                        ),
                        onPressed: () {
                          ProjectGlobal.skill.add("");
                          ProjectGlobal.controller.add(
                            TextEditingController(),
                          );
                          setState(() {});
                        },
                        child: const Text(
                          "Add Project",
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
                  ProjectGlobal.controller.add(TextEditingController());
                  log("${ProjectGlobal.skill}");
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
