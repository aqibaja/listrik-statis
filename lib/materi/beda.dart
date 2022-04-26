// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Beda extends StatefulWidget {
  const Beda({Key? key}) : super(key: key);

  @override
  State<Beda> createState() => _BedaState();
}

const htmlData = r"""
<html><head><meta content="text/html; charset=UTF-8" http-equiv="content-type"><style type="text/css">ol{margin:0;padding:0}table td,table th{padding:0}.c7{color:#000000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:12pt;font-family:"Times New Roman";font-style:normal}.c6{margin-left:18pt;padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c0{color:#000000;font-weight:400;text-decoration:none;vertical-align:baseline;font-size:12pt;font-family:"Times New Roman";font-style:normal}.c4{margin-left:18pt;padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c3{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:left}.c1{padding-top:0pt;padding-bottom:0pt;line-height:1.15;orphans:2;widows:2;text-align:center}.c2{font-size:7pt;font-family:"Times New Roman";font-weight:400}.c8{background-color:#ffffff;max-width:451.4pt;padding:72pt 72pt 72pt 72pt}.c5{height:11pt}.title{padding-top:0pt;color:#000000;font-size:26pt;padding-bottom:3pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:0pt;color:#666666;font-size:15pt;padding-bottom:16pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:"Arial"}p{margin:0;color:#000000;font-size:11pt;font-family:"Arial"}h1{padding-top:20pt;color:#000000;font-size:20pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-size:16pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:16pt;color:#434343;font-size:14pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:14pt;color:#666666;font-size:12pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}</style></head><body class="c8"><p class="c3"><span class="c2">&nbsp;</span><span class="c7">Beda Potensial dan Energi Listrik</span></p><p class="c4"><span class="c0">Benjamin Franklin (1706-1790) merupakan orang yang pertama kali menyatakan bahwa petir terjadi akibat adanya gejala listrik. </span></p><p class="c4 c5"><span class="c0"></span></p><p class="c6"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 194.00px; height: 259.00px;"><img alt="" class="aligncenter size-full wp-image-1414041" height="300" src="asset:assets/doc/images/image5.png" width="2500" /></span>


</p><p class="c4"><span class="c0">Menurutnya, Petir adalah kilatan cahaya yang muncul akibat perpindahan muatan negative (elektron) antara awan dan awan atau antara awan dan bumi. &nbsp;Petir terjadi karena adanya beda potensial yang sabar besar antara dua awan yang berbeda atau antara awan dengan bumi. </span></p><p class="c4 c5"><span class="c0"></span></p><p class="c6"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 296.00px; height: 170.00px;"><img alt="" class="aligncenter size-full wp-image-1414041" height="300" src="asset:assets/doc/images/image6.png" width="2500" /></span>


<p class="c4"><span class="c0">Akibatnya akan terjadinya lompatan muatan listrik atau perpindahan electron secara besar-besaran dari awanatau dari awan ke bumi. Besarnya beda potensial listrik dapat dihitung dengan membandingkan besar energi listrik yang diperlukan dengan jumlah muatan listrik yang dipindahkan, yaitu :</span></p><p class="c1"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 601.70px; height: 0px;"><img alt="" class="aligncenter size-full wp-image-1414041" height="300" src="asset:assets/doc/images/image7.png" width="2500" /></span>


</p></body></html>
""";

class _BedaState extends State<Beda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beda Potensial dan Energi Listrik'),
        backgroundColor: const Color.fromARGB(255, 57, 142, 153),
      ),
      body: SingleChildScrollView(
          child: Html(
        data: htmlData,
        tagsList: Html.tags..addAll(["bird", "flutter"]),
        style: {
          "body": Style(padding: const EdgeInsets.all(10)),
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
