import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Kd extends StatefulWidget {
  const Kd({Key? key}) : super(key: key);

  @override
  State<Kd> createState() => _kdState();
}

const htmlData = r"""
<html><head><meta content="text/html; charset=UTF-8" http-equiv="content-type"><style type="text/css">ol{margin:0;padding:0}table td,table th{padding:0}.c0{margin-left:75pt;padding-top:0pt;text-indent:-35pt;padding-bottom:0pt;line-height:2.0;orphans:2;widows:2;text-align:justify}.c7{margin-left:76pt;padding-top:0pt;text-indent:-36pt;padding-bottom:0pt;line-height:2.0;orphans:2;widows:2;text-align:justify}.c3{padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify;height:11pt}.c5{margin-left:46pt;padding-top:0pt;padding-bottom:0pt;line-height:2.0;orphans:2;widows:2;text-align:justify}.c2{color:#000000;font-weight:400;text-decoration:none;vertical-align:baseline;font-size:14pt;font-family:"Times New Roman";font-style:normal}.c1{color:#000000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:12pt;font-family:"Times New Roman";font-style:normal}.c9{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c4{padding-top:12pt;padding-bottom:12pt;line-height:2.0;orphans:2;widows:2;text-align:justify}.c6{background-color:#ffffff;max-width:451.4pt;padding:72pt 72pt 72pt 72pt}.c8{background-color:#ffffff}.title{padding-top:0pt;color:#000000;font-size:26pt;padding-bottom:3pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:0pt;color:#666666;font-size:15pt;padding-bottom:16pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:"Arial"}p{margin:0;color:#000000;font-size:11pt;font-family:"Arial"}h1{padding-top:20pt;color:#000000;font-size:20pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-size:16pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:16pt;color:#434343;font-size:14pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:14pt;color:#666666;font-size:12pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}</style></head><body class="c6"><p class="c9"><span class="c1">KOMPETENSI DASAR</span></p><p class="c5"><span class="c2">3.4 &nbsp;Menjelaskan konsep listrik statis dan gejalanya dalam kehidupan sehari-hari, termasuk kelistrikan pada system saraf dan hewan yang mengandung listrik.</span></p><p class="c5"><span class="c2">4.4 &nbsp;Menyajikan hasil pengamatan tentang gejala listrik statis dalam kehidupan sehari-hari.</span></p><p class="c4"><span class="c1">Indikator Pencapaian Kompetensi</span></p><p class="c0"><span class="c2">3.4.1 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mengidentifikasi jenis-jenis muatan listrik.</span></p><p class="c0"><span class="c2">3.4.2 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Menjelaskan interaksi antara muatan listrik.</span></p><p class="c0"><span class="c2">3.4.3 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Memahami konsep Hukum Coulomb</span></p><p class="c0"><span class="c2">3.4.4 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Memahami konsep medan listrik.</span></p><p class="c0"><span class="c2">3.4.5 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Memahami konsep beda potensial dan energi listrik</span></p><p class="c0"><span class="c2">3.4.6 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Menjelaskan kelistrikan pada system saraf.</span></p><p class="c0"><span class="c2">3.4.7 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Memaparkan hewan yang mengandung listrik.</span></p><p class="c7"><span class="c2">4.4.1 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Menyajikan hasil percobaan untuk menyelidiki muatan &nbsp; listrik statis dan interaksinya.</span></p><p class="c3"><span class="c1 c8"></span></p></body></html>
""";

class _kdState extends State<Kd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("KOMPETENSI DASAR"),
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
