import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Ki extends StatefulWidget {
  const Ki({Key? key}) : super(key: key);

  @override
  State<Ki> createState() => _kiState();
}

const htmlData = r"""
<html><head><meta content="text/html; charset=UTF-8" http-equiv="content-type"><style type="text/css">ol{margin:0;padding:0}table td,table th{padding:0}.c9{margin-left:76pt;padding-top:0pt;text-indent:-36pt;padding-bottom:0pt;line-height:2.0;orphans:2;widows:2;text-align:left;height:11pt}.c10{margin-left:57pt;padding-top:0pt;text-indent:-21pt;padding-bottom:6pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c14{margin-left:64.3pt;padding-top:0pt;text-indent:-28.3pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c2{margin-left:75pt;padding-top:0pt;text-indent:-35pt;padding-bottom:0pt;line-height:2.0;orphans:2;widows:2;text-align:left}.c3{margin-left:46pt;padding-top:0pt;text-indent:-24.7pt;padding-bottom:0pt;line-height:2.0;orphans:2;widows:2;text-align:left}.c15{margin-left:76pt;padding-top:0pt;text-indent:-36pt;padding-bottom:0pt;line-height:2.0;orphans:2;widows:2;text-align:left}.c16{padding-top:0pt;padding-bottom:0pt;line-height:1.15;orphans:2;widows:2;text-align:left;height:11pt}.c5{color:#000000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:12pt;font-family:"Times New Roman";font-style:normal}.c7{padding-top:12pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c4{padding-top:12pt;padding-bottom:12pt;line-height:2.0;orphans:2;widows:2;text-align:left}.c6{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:left}.c17{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c8{color:#000000;text-decoration:none;vertical-align:baseline;font-style:normal}.c1{font-size:12pt;font-family:"Times New Roman";font-weight:400}.c0{font-size:7pt;font-family:"Times New Roman";font-weight:400}.c12{max-width:451.4pt;padding:72pt 72pt 72pt 72pt}.c11{background-color:#ffffff}.c13{margin-left:36pt}.title{padding-top:0pt;color:#000000;font-size:26pt;padding-bottom:3pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:0pt;color:#666666;font-size:15pt;padding-bottom:16pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:"Arial"}p{margin:0;color:#000000;font-size:11pt;font-family:"Arial"}h1{padding-top:20pt;color:#000000;font-size:20pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-size:16pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:16pt;color:#434343;font-size:14pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:14pt;color:#666666;font-size:12pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}</style></head><body class="c11 c12"><p class="c17"><span class="c5">KI/KD</span></p><p class="c7"><span class="c5 c11">KOMPETENSI INTI</span></p><p class="c7 c13"><span class="c8 c1 c11">KI1 : Menghargai dan menghayati ajaran agama yang dianutnya.</span></p><p class="c14"><span class="c8 c1 c11">KI2 : Menghargai dan menghayati perilaku jujur, disiplin, tanggungjawab, peduli (toleransi, gotong royong), santun, percaya diri dalam berinteraksi secara efektif dengan lingkungan sosial dan alam dalam jangkauan pergaulan dan keberadaannya.</span></p><p class="c14"><span class="c8 c1 c11">K13: Memahami dan menerapkan pengetahuan (faktual, konseptual, dan prosedural) berdasarkan rasa ingin tahunya tentang ilmu pengetahuan, teknologi, seni, budayaterkait fenomena dan kejadian tampak mata.</span></p><p class="c10"><span class="c8 c1 c11">KI4: Mengolah, menyaji, dan menalar dalam ranah konkret (menggunakan, mengurai,merangkai, memodifikasi, dan membuat) dan ranah abstrak (menulis, membaca,menghitung, menggambar, dan mengarang) sesuai dengan yang dipelajari di sekolah dan sumber lain yang sama dalam sudut pandang/teori.</span></p><p class="c6"><span class="c5">&nbsp;</span></p><p class="c6"><span class="c5">KOMPETENSI DASAR</span></p><p class="c3"><span class="c1">3.4</span><span class="c0">&nbsp; </span><span class="c8 c1">Menjelaskan konsep listrik statis dan gejalanya dalam kehidupan sehari-hari, termasuk kelistrikan pada system saraf dan hewan yang mengandung listrik.</span></p><p class="c3"><span class="c1">4.4</span><span class="c0">&nbsp; </span><span class="c8 c1">Menyajikan hasil pengamatan tentang gejala listrik statis dalam kehidupan sehari-hari.</span></p><p class="c4"><span class="c5">Indikator Pencapaian Kompetensi</span></p><p class="c2"><span class="c1">3.4.1</span><span class="c0">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="c8 c1">Mengidentifikasi jenis-jenis muatan listrik.</span></p><p class="c2"><span class="c1">3.4.2</span><span class="c0">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="c8 c1">Menjelaskan interaksi antara muatan listrik.</span></p><p class="c2"><span class="c1">3.4.3</span><span class="c0">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="c8 c1">Memahami konsep Hukum Coulomb</span></p><p class="c2"><span class="c1">3.4.4</span><span class="c0">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="c8 c1">Memahami konsep medan listrik.</span></p><p class="c2"><span class="c1">3.4.5</span><span class="c0">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="c8 c1">Memahami konsep beda potensial dan energi listrik</span></p><p class="c2"><span class="c1">3.4.6</span><span class="c0">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="c8 c1">Menjelaskan kelistrikan pada system saraf.</span></p><p class="c2"><span class="c1">3.4.7</span><span class="c0">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="c1 c8">Memaparkan hewan yang mengandung listrik.</span></p><p class="c15"><span class="c1">4.4.1</span><span class="c0">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="c8 c1">Menyajikan hasil percobaan untuk menyelidiki muatan listrik statis dan interaksinya.</span></p><p class="c9"><span class="c5"></span></p><p class="c16"><span class="c5"></span></p></body></html>
""";

class _kiState extends State<Ki> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('KI/KD'),
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
