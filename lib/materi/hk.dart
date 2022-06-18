import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Hk extends StatefulWidget {
  const Hk({Key? key}) : super(key: key);

  @override
  State<Hk> createState() => _HkState();
}

const htmlData =
    r"""<html><head><meta content="text/html; charset=UTF-8" http-equiv="content-type"><style type="text/css">ol{margin:0;padding:0}table td,table th{padding:0}.c1{margin-left:28pt;padding-top:12pt;text-indent:-14pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c0{margin-left:28pt;padding-top:12pt;text-indent:-14pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c2{background-color:#ffffff;color:#000000;font-weight:400;text-decoration:none;vertical-align:baseline;font-size:12pt;font-family:"Times New Roman";font-style:normal}.c4{background-color:#ffffff;color:#000000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:12pt;font-family:"Times New Roman";font-style:normal}.c3{padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:center;height:11pt}.c10{padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c6{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c7{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c5{background-color:#ffffff;font-size:12pt;font-family:"Times New Roman";font-weight:400}.c11{background-color:#ffffff;font-size:7pt;font-family:"Times New Roman";font-weight:400}.c9{background-color:#ffffff;max-width:451.4pt;padding:72pt 72pt 72pt 72pt}.c8{height:11pt}.title{padding-top:0pt;color:#000000;font-size:26pt;padding-bottom:3pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:0pt;color:#666666;font-size:15pt;padding-bottom:16pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:"Arial"}p{margin:0;color:#000000;font-size:11pt;font-family:"Arial"}h1{padding-top:20pt;color:#000000;font-size:20pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-size:16pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:16pt;color:#434343;font-size:14pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:14pt;color:#666666;font-size:12pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}</style></head><body class="c9"><p class="c6"><span class="c4">HUKUM COULOMB</span></p><p class="c7"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 176.00px; height: 207.00px;"><img alt="" class="aligncenter size-full wp-image-1414041" height="300" src="asset:assets/doc/images/image24.png"/></span></p><p class="c6"><span class="c2">Hukum Coulomb memberikan salah satu ide dasar tentang listrik dalam fisika. Hukum ini melihat kekuatan yang diciptakan antara dua objek bermuatan. Dengan meningkatnya jarak, maka akibatnya ada penurunan kekuatan. Ilmuwan Prancis, Charles Augustin Coulomb (1736-1806), menyelidiki hubungan gaya tolak-menolak atau gaya tarik-menarik dua benda bermuatan listrik dan jaraknya menggunakan alat neraca puntir Coulomb.</span></p><p class="c6"><span class="c2">&nbsp;</span></p><p class="c6"><span class="c2">Berdasarkan hasil percobaan neraca puntir, coulomb menyimpulkan interaksi dua buah benda yang bermuatan sebagai berikut.</span></p><p class="c0"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 154.00px; height: 233.00px;"><img alt="" class="aligncenter size-full wp-image-1414041" height="300" src="asset:assets/doc/images/image25.png"/></span></p><p class="c1"><span class="c5">a.</span><span class="c11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="c2">Semakin besar jarak kedua benda yang bermuatan, semakin kecil gaya listrik antara benda tersebut dan semakin kecil jarak kedua benda yang bermuatan, semakin kecil gaya listrik antara benda tersebut.</span></p><p class="c1"><span class="c5">b.</span><span class="c11">&nbsp; &nbsp;</span><span class="c2">Semakin besar muatan kedua benda, semakin besar gaya listrik antara benda tersebut dan semakin kecil muatan kedua benda, semakin kecil besar gaya listrik antara benda tersebut.</span></p><p class="c0"><span class="c2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p><p class="c0"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 394.00px; height: 111.00px;"><img alt="" class="aligncenter size-full wp-image-1414041" height="300" src="asset:assets/doc/images/image26.png"/></span></p><p class="c0 c8"><span class="c2"></span></p><p class="c6"><span class="c2">Adapun bunyi hukum Coulomb adalah :</span></p><p class="c6"><span class="c2">&ldquo;Besar gaya tolak menolak atau gaya tarik-menarik antara dua benda bermuatan listrik, berbanding lurus dengan besar masing-masing muatan listrik dan berbanding terbalik dengan kuadrat jarak antara kedua benda bermuatan.&rdquo;</span></p><p class="c6"><span class="c2">Secara matematis, rumusan gaya Coulomb () dapat dituliskan sebagai berikut :</span></p><p class="c10"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 304.00px;"><img alt="" class="aligncenter size-full wp-image-1414041" height="300" src="asset:assets/doc/images/image27.png"/></span></p><p class="c3"><span class="c2"></span></p><p class="c10"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 443.00px; height: 428.00px;"><img alt="" class="aligncenter size-full wp-image-1414041" height="300" src="asset:assets/doc/images/image28.png"/></span></p><p class="c3"><span class="c2"></span></p></body></html>
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
