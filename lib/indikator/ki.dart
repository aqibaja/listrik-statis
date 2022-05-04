import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Ki extends StatefulWidget {
  const Ki({Key? key}) : super(key: key);

  @override
  State<Ki> createState() => _kiState();
}

const htmlData = r"""
<html><head><meta content="text/html; charset=UTF-8" http-equiv="content-type"><style type="text/css">ol{margin:0;padding:0}table td,table th{padding:0}.c9{margin-left:36pt;padding-top:0pt;text-indent:-36pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c3{margin-left:42.5pt;padding-top:0pt;text-indent:-42.5pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c2{margin-left:42.5pt;padding-top:0pt;text-indent:-42.5pt;padding-bottom:6pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c1{background-color:#ffffff;color:#000000;font-weight:400;text-decoration:none;vertical-align:baseline;font-size:16pt;font-family:"Times New Roman";font-style:normal}.c7{padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify;height:11pt}.c6{color:#000000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:14pt;font-family:"Times New Roman";font-style:normal}.c5{padding-top:12pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c4{padding-top:12pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c0{background-color:#ffffff;max-width:451.4pt;padding:72pt 72pt 72pt 72pt}.c8{background-color:#ffffff}.title{padding-top:0pt;color:#000000;font-size:26pt;padding-bottom:3pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:0pt;color:#666666;font-size:15pt;padding-bottom:16pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:"Arial"}p{margin:0;color:#000000;font-size:11pt;font-family:"Arial"}h1{padding-top:20pt;color:#000000;font-size:20pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-size:16pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:16pt;color:#434343;font-size:14pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:14pt;color:#666666;font-size:12pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}</style></head><body class="c0"><p class="c4"><span class="c6 c8">KOMPETENSI INTI</span></p><p class="c5"><span class="c1">KI1 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:Menghargai dan menghayati ajaran agama yang dianutnya.</span></p><p class="c9"><span class="c1">KI2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:Menghargai dan menghayati perilaku jujur, disiplin, tanggungjawab, peduli (toleransi, gotong royong), santun, percaya diri dalam berinteraksi secara efektif dengan lingkungan sosial dan alam dalam jangkauan pergaulan dan keberadaannya.</span></p><p class="c3"><span class="c1">K13 :Memahami dan menerapkan pengetahuan (faktual, konseptual, dan prosedural) berdasarkan rasa ingin tahunya tentang ilmu pengetahuan, teknologi, seni, budaya terkait fenomena dan kejadian tampak mata.</span></p><p class="c2"><span class="c1">KI4 :Mengolah, menyaji, dan menalar dalam ranah konkret (menggunakan, mengurai,merangkai, memodifikasi, dan membuat) dan ranah abstrak (menulis, membaca,menghitung, menggambar, dan mengarang) sesuai dengan yang dipelajari di sekolah dan sumber lain yang sama dalam sudut pandang/teori.</span></p><p class="c7"><span class="c6"></span></p></body></html>
""";

class _kiState extends State<Ki> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("KOMPETENSI INTI"),
          backgroundColor: const Color.fromARGB(255, 57, 142, 153),
        ),
        body: SingleChildScrollView(
            child: Html(
          data: htmlData,
          tagsList: Html.tags..addAll(["bird", "flutter"]),
          style: {
            "body": Style(padding: EdgeInsets.all(10)),
            "tr": Style(
              border: Border(bottom: BorderSide(color: Colors.grey)),
            ),
            "th": Style(
              backgroundColor: Colors.grey,
            ),
            "td": Style(
              alignment: Alignment.topLeft,
            ),
            'h5': Style(
              maxLines: 2,
              textOverflow: TextOverflow.ellipsis,
            ),
          },
        )));
  }
}
