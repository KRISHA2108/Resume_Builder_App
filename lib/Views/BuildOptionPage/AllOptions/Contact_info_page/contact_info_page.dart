import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder_app/headers.dart';

class ContactInfoPage extends StatefulWidget {
  const ContactInfoPage({super.key});

  @override
  State<ContactInfoPage> createState() => _ContactInfoPageState();
}

bool hide = false;

String pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
    r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
    r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
    r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
    r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
    r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
    r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
RegExp regExp = RegExp(pattern);

class _ContactInfoPageState extends State<ContactInfoPage> {
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
        title: const Text('Contact Info Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: Globals.contactInfoKey,
          child: Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        maxRadius: 80,
                        backgroundColor: const Color(0xff003152),
                        foregroundImage: (Globals.image != null)
                            ? FileImage(Globals.image!)
                            : null,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 100,
                        child: FloatingActionButton(
                          onPressed: () async {
                            final ImagePicker _picker = ImagePicker();
                            final XFile? image = await _picker.pickImage(
                                source: ImageSource.gallery);
                            Globals.image = File(image!.path);
                            setState(() {});
                          },
                          backgroundColor: Colors.white,
                          child: const Icon(
                            Icons.camera_alt,
                            weight: 20,
                            color: Color(0xff003152),
                          ),
                        ),
                      ),
                    ],
                  ),
                  40.h,
                  TextFormField(
                    onSaved: (value) {
                      Globals.Fname = value!;
                    },
                    validator: (value) =>
                        value!.isEmpty ? "Please Enter Your Name" : null,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      labelText: "Enter First Name",
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Color(0xff003152),
                      ),
                      hintText: "Enter Your First Name",
                      hoverColor: Colors.blueGrey,
                    ),
                    textInputAction: TextInputAction.next,
                  ),
                  20.h,
                  TextFormField(
                    onSaved: (value) {
                      Globals.Lname = value!;
                    },
                    validator: (value) =>
                        value!.isEmpty ? "Please Enter Your Name" : null,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      labelText: "Enter Last Name",
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Color(0xff003152),
                      ),
                      hintText: "Enter Your Last Name",
                      hoverColor: Colors.blueGrey,
                    ),
                    textInputAction: TextInputAction.next,
                  ),
                  20.h,
                  TextFormField(
                    maxLength: 10,
                    keyboardType: TextInputType.number,
                    onSaved: (value) {
                      Globals.phone = value!;
                    },
                    validator: (value) =>
                        value!.isEmpty ? "Please Enter Your Number" : null,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      labelText: "Enter Contact",
                      prefixIcon: const Icon(
                        Icons.phone_in_talk,
                        color: Color(0xff003152),
                      ),
                      hintText: "Enter Your Contact",
                      hoverColor: Colors.blueGrey,
                    ),
                    textInputAction: TextInputAction.next,
                  ),
                  20.h,
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (value) {
                      Globals.email = value!;
                    },
                    validator: (val) => (val!.isEmpty)
                        ? "Enter Your Email Address"
                        : (!regExp.hasMatch(val))
                            ? "Enter valid email"
                            : null,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      labelText: "Enter Email",
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Color(0xff003152),
                      ),
                      hintText: "Enter Your Email",
                      hoverColor: Colors.blueGrey,
                    ),
                    textInputAction: TextInputAction.next,
                  ),
                  20.h,
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    onSaved: (value) {
                      Globals.password = value!;
                    },
                    validator: (value) =>
                        value!.isEmpty ? "Please Enter Your Password" : null,
                    obscureText: hide,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      labelText: "Enter Password",
                      prefixIcon: const Icon(
                        Icons.password,
                        color: Color(0xff003152),
                      ),
                      hintText: "Enter Your Password",
                      hoverColor: Colors.blueGrey,
                      suffixIcon: IconButton(
                        onPressed: () {
                          hide = !hide;
                          setState(() {});
                        },
                        icon: Icon(
                          hide ? Icons.visibility : Icons.visibility_off,
                        ),
                      ),
                    ),
                    textInputAction: TextInputAction.next,
                  ),
                  20.h,
                  TextFormField(
                    keyboardType: TextInputType.streetAddress,
                    onSaved: (value) {
                      Globals.address = value!;
                    },
                    validator: (value) =>
                        value!.isEmpty ? "Please Enter Your Address" : null,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      labelText: "Enter Address",
                      prefixIcon: const Icon(
                        Icons.location_on,
                        color: Color(0xff003152),
                      ),
                      hintText: "Enter Your Address",
                      hoverColor: Colors.blueGrey,
                    ),
                  ),
                  30.h,
                  GestureDetector(
                    onTap: () {
                      if (Globals.contactInfoKey.currentState!.validate()) {
                        Globals.contactInfoKey.currentState!.save();
                        setState(() {});
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
          ),
        ),
      ),
    );
  }
}
