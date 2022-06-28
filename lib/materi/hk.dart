import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Hk extends StatefulWidget {
  const Hk({Key? key}) : super(key: key);

  @override
  State<Hk> createState() => _HkState();
}

const htmlData = r"""
<html><head><meta content="text/html; 
<html><head><meta content="text/html; charset=UTF-8" http-equiv="content-type"><style type="text/css">ol{margin:0;padding:0}table td,table th{padding:0}.c3{margin-left:18pt;padding-top:6pt;text-indent:32pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify;margin-right:2pt;height:11pt}.c4{margin-left:18pt;padding-top:6pt;text-indent:32pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify;margin-right:2pt}.c10{margin-left:18pt;padding-top:6pt;text-indent:32pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:center;margin-right:2pt}.c8{margin-left:21pt;padding-top:6pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify;margin-right:2pt}.c2{margin-left:21pt;padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify;margin-right:2pt}.c9{margin-left:54pt;padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify;height:11pt}.c5{color:#000000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:12pt;font-family:"Times New Roman";font-style:normal}.c1{padding-top:0pt;padding-bottom:0pt;line-height:1.15;orphans:2;widows:2;text-align:left;height:11pt}.c0{color:#000000;font-weight:400;text-decoration:none;vertical-align:baseline;font-size:12pt;font-family:"Times New Roman";font-style:normal}.c6{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c7{background-color:#ffffff;max-width:451.4pt;padding:72pt 72pt 72pt 72pt}.title{padding-top:0pt;color:#000000;font-size:26pt;padding-bottom:3pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:0pt;color:#666666;font-size:15pt;padding-bottom:16pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:"Arial"}p{margin:0;color:#000000;font-size:11pt;font-family:"Arial"}h1{padding-top:20pt;color:#000000;font-size:20pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-size:16pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:16pt;color:#434343;font-size:14pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:14pt;color:#666666;font-size:12pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}</style></head><body class="c7"><p class="c6"><span class="c5">Hukum Coulomb</span></p><p class="c4"><span class="c0">Hasil penelitian seorang &#64257;sikawan Perancis bernama Charles Agustin Coulomb menunjukkan bahwa besarnya gaya tarik-menarik atau tolak menolak antara dua benda bermuatan listrik, sebanding dengan hasil perkalian kedua muatan dan berbanding terbalik dengan kuadrat jarak antara kedua muatan tersebut. Pernyataan ini dikenal dengan bunyi hukum Coulomb.</span></p><p class="c3"><span class="c0"></span></p><p class="c4"><span class="c5">Secara matematis ditulis sebagai berikut :</span></p><p class="c3"><span class="c0"></span></p><img src="asset:assets/doc/images/image2.png" alt="" class="aligncenter size-full wp-image-1414041" height="70" width="350" /></span>


</p><p class="c8"><span class="c0">Keterangan :</span></p><p class="c2"><span class="c0">F &nbsp;= gaya tolak-menolak atau gaya tarik menarik (N)</span></p><p class="c2"><span class="c0">r &nbsp;= jarak antara kedua muatan (m)</span></p><p class="c2"><span class="c0">Q1 = muatan benda pertama (C)</span></p><p class="c2"><span class="c0">Q2 = muatan benda kedua</span></p><p class="c2"><span class="c0">K = konstanta dielektrik (9x109Nm2/C-2)</span></p><p class="c9"><span class="c5"></span></p><p class="c1"><span class="c0"></span></p></body></html>
""";

class _HkState extends State<Hk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hukum Coulumb'),
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
          'h5': Style(maxLines: 2, textOverflow: TextOverflow.ellipsis),
        },
      )),
    );
  }
}
