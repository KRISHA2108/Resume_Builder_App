import 'package:resume_builder_app/headers.dart';

class HobbyPage extends StatefulWidget {
  const HobbyPage({super.key});

  @override
  State<HobbyPage> createState() => _HobbyPageState();
}

class _HobbyPageState extends State<HobbyPage> {
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
        title: const Text("Hobby"),
      ),
    );
  }
}
