import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class MedanListrik extends StatefulWidget {
  const MedanListrik({Key? key}) : super(key: key);

  @override
  State<MedanListrik> createState() => _MedanListrikState();
}

const htmlData = r"""
<html><head><meta content="text/html; charset=UTF-8" http-equiv="content-type"><style type="text/css">ol{margin:0;padding:0}table td,table th{padding:0}.c4{margin-left:28pt;padding-top:0pt;text-indent:-14pt;padding-bottom:6pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c7{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:left}.c5{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c10{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c1{padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c3{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c2{color:#000000;text-decoration:none;vertical-align:baseline;font-style:normal}.c0{background-color:#ffffff;font-size:12pt;font-family:"Times New Roman";font-weight:400}.c9{background-color:#ffffff;font-weight:700;font-size:12pt;font-family:"Times New Roman"}.c8{background-color:#ffffff;font-size:7pt;font-family:"Times New Roman";font-weight:400}.c6{background-color:#ffffff;max-width:451.4pt;padding:72pt 72pt 72pt 72pt}.title{padding-top:0pt;color:#000000;font-size:26pt;padding-bottom:3pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:0pt;color:#666666;font-size:15pt;padding-bottom:16pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:"Arial"}p{margin:0;color:#000000;font-size:11pt;font-family:"Arial"}h1{padding-top:20pt;color:#000000;font-size:20pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-size:16pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:16pt;color:#434343;font-size:14pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:14pt;color:#666666;font-size:12pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}</style></head><body class="c6"><p class="c3"></p><p class="c3"><span class="c2 c0">Medan Listrik adalah daerah disekitar muatan yang dapat menimbulkan gaya listrik terhadap muatan lain. Medan listrik digambarkan oleh serangkaian garis gaya listrik yang arahnya keluar atau masuk ke dalam muatan. Arah garis gaya listrik ke dalam digunakan untuk menunjukkan muatan negatif dan arah garis medan listrik ke luar digunakan untuk menunjukkan muatan positif.</span></p><img alt="" class="aligncenter size-full wp-image-1414041" height="100" width="1000" src="asset:assets/doc/images/image29.png"/>
<img alt="" class="aligncenter size-full wp-image-1414041" height="50" src="asset:assets/doc/images/image29a.png"/>
</span></p><p class="c10"><span class="c2 c0">Gambar-gambar di atas menampilkan medan listrik berupa garis garis gaya magnet:</span></p><p class="c4"><span class="c0">a.</span><span class="c8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="c2 c0">Muatan listrik negatif memiliki arah garis gaya magnet menuju ke pusat muatan</span></p><p class="c4"><span class="c0">b.</span><span class="c8">&nbsp; &nbsp;</span><span class="c2 c0">Muatan listrik positif memiliki arah garis gaya keluar dari pusat muatan listriknya.</span></p><p class="c4"><span class="c0">c.</span><span class="c8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="c2 c0">Interaksi muatan positif dan muatan negatif</span></p>
<img alt="" class="aligncenter size-full wp-image-1414041" height="100" width="1000" src="asset:assets/doc/images/image30.png"/>
<img alt="" class="aligncenter size-full wp-image-1414041" height="50" src="asset:assets/doc/images/image30a.png"/>
<img alt="" class="aligncenter size-full wp-image-1414041" height="200" src="asset:assets/doc/images/image31.png"/>
<img alt="" class="aligncenter size-full wp-image-1414041" height="150" width="1000" src="asset:assets/doc/images/image32.png"/>
<img alt="" class="aligncenter size-full wp-image-1414041" height="200" src="asset:assets/doc/images/image33.png"/>
<img alt="" class="aligncenter size-full wp-image-1414041" height="250" src="asset:assets/doc/images/image34.png"/>
</span></p><p class="c5"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 268.00px;"><img alt="" src="images/image8.png" style="width: 601.70px; height: 268.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p><p class="c5"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 393.33px;"><img alt="" src="images/image7.png" style="width: 601.70px; height: 393.33px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p></body></html>
""";

class _MedanListrikState extends State<MedanListrik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medan Listrik'),
        backgroundColor: const Color.fromARGB(255, 57, 142, 153),
      ),
      backgroundColor: Colors.white,
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
