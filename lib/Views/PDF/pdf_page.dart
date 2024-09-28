import 'package:pdf/pdf.dart';
import 'package:pdf/pdf.dart';
import 'package:resume_builder_app/headers.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class PdfPage extends StatefulWidget {
  const PdfPage({super.key});

  @override
  State<PdfPage> createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  pw.TextStyle textStyle = const pw.TextStyle(
    fontSize: 21,
  );

  Future<Uint8List> getpdf() async {
    pw.Document pdf = pw.Document();

    pw.TextStyle style = pw.TextStyle(
      fontSize: 22,
      fontWeight: pw.FontWeight.bold,
    );

    var network = await networkImage(
      "https://i0.wp.com/www.dc-hauswartungen.ch/wp-content/uploads/2018/01/dummy_profile.png?ssl=1",
    );

    pdf.addPage(pw.Page(
      build: (pw.Context context) => pw.Column(children: [
        //image
        pw.Row(
          children: [
            pw.Container(
              height: 200,
              width: 200,
              decoration: pw.BoxDecoration(
                color: PdfColors.grey,
                border: pw.Border.all(),
                borderRadius: pw.BorderRadius.circular(10),
                image: pw.DecorationImage(
                  image: (Globals.image != null)
                      ? pw.MemoryImage(
                          Globals.image!.readAsBytesSync(),
                        )
                      : network,
                  fit: pw.BoxFit.cover,
                ),
              ),
            ),
            pw.SizedBox(
              width: 60,
            ),
            pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text(
                  "${Globals.Fname} ${Globals.Lname}",
                  style: pw.TextStyle(
                    fontSize: 32,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.Text(
                  Globals.currentPosition,
                  style: const pw.TextStyle(
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ],
        ),
        pw.Row(
          children: [
            pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.SizedBox(
                  height: 20,
                ),
                pw.Text(
                  "Contact",
                  style: pw.TextStyle(
                    fontSize: 24,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.SizedBox(
                  width: 200,
                  child: pw.Divider(
                    thickness: 2,
                  ),
                ),
                pw.SizedBox(
                  height: 5,
                ),
                pw.Text(
                  Globals.phone,
                  style: const pw.TextStyle(
                    fontSize: 20,
                  ),
                ),
                pw.SizedBox(
                  height: 5,
                ),
                pw.Text(
                  Globals.email,
                  style: const pw.TextStyle(
                    fontSize: 20,
                  ),
                ),
                pw.SizedBox(
                  height: 5,
                ),
                pw.Text(
                  Globals.address,
                  style: const pw.TextStyle(
                    fontSize: 20,
                  ),
                ),
                pw.SizedBox(
                  height: 40,
                ),
                pw.Text(
                  "Skill",
                  style: pw.TextStyle(
                    fontSize: 24,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.SizedBox(
                  width: 200,
                  child: pw.Divider(
                    thickness: 2,
                  ),
                ),
                pw.SizedBox(
                  height: 5,
                ),
                ...List.generate(
                  TechnicalSkillGlobal.skill.length,
                  (index) => pw.Text(" ${TechnicalSkillGlobal.skill[index]}",
                      style: const pw.TextStyle(fontSize: 20)),
                ),
              ],
            ),
            pw.SizedBox(
              width: 50,
            ),
            pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text(
                  "Education",
                  style: pw.TextStyle(
                    fontSize: 24,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.SizedBox(
                  width: 200,
                  child: pw.Divider(
                    thickness: 2,
                  ),
                ),
                pw.SizedBox(
                  height: 5,
                ),
                pw.Text(
                  Globals.course,
                  style: const pw.TextStyle(
                    fontSize: 20,
                  ),
                ),
                pw.SizedBox(
                  height: 5,
                ),
                pw.Text(
                  Globals.institute,
                  style: const pw.TextStyle(
                    fontSize: 20,
                  ),
                ),
                pw.SizedBox(
                  height: 5,
                ),
                pw.Text(
                  Globals.passingYear,
                  style: const pw.TextStyle(
                    fontSize: 20,
                  ),
                ),
                pw.SizedBox(
                  height: 5,
                ),
                pw.Text(
                  Globals.result,
                  style: const pw.TextStyle(
                    fontSize: 20,
                  ),
                ),
                pw.SizedBox(
                  height: 40,
                ),
                pw.Text(
                  "Project",
                  style: pw.TextStyle(
                    fontSize: 24,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.SizedBox(
                  width: 200,
                  child: pw.Divider(
                    thickness: 2,
                  ),
                ),
                pw.SizedBox(
                  height: 5,
                ),
                ...List.generate(
                  ProjectGlobal.skill.length,
                  (index) => pw.Text(" ${ProjectGlobal.skill[index]}",
                      style: const pw.TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ],
        ),
      ]),
    ));
    return pdf.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text("Pdf Page"),
        actions: const [
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: PdfPreview(
        build: (format) => getpdf(),
      ),
    );
  }
}
