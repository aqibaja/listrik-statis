import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class MuatanListrik extends StatefulWidget {
  const MuatanListrik({Key? key}) : super(key: key);

  @override
  State<MuatanListrik> createState() => _MuatanListrikState();
}

const htmlData = r"""
<html><head><meta content="text/html; charset=UTF-8" http-equiv="content-type"><style type="text/css">ol{margin:0;padding:0}table td,table th{padding:0}.c6{color:#000000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:12pt;font-family:"Times New Roman";font-style:normal}.c8{margin-left:54pt;padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c0{color:#000000;font-weight:400;text-decoration:none;vertical-align:baseline;font-size:12pt;font-family:"Times New Roman";font-style:normal}.c5{padding-top:0pt;padding-bottom:0pt;line-height:1.15;orphans:2;widows:2;text-align:left;height:11pt}.c4{margin-left:18pt;padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c9{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:left}.c2{font-size:12pt;font-family:"Times New Roman";font-weight:400}.c3{background-color:#ffffff;max-width:451.4pt;padding:72pt 72pt 72pt 72pt}.c1{font-size:7pt;font-family:"Times New Roman";font-weight:400}.c7{height:11pt}.title{padding-top:0pt;color:#000000;font-size:26pt;padding-bottom:3pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:0pt;color:#666666;font-size:15pt;padding-bottom:16pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:"Arial"}p{margin:0;color:#000000;font-size:11pt;font-family:"Arial"}h1{padding-top:20pt;color:#000000;font-size:20pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-size:16pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:16pt;color:#434343;font-size:14pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:14pt;color:#666666;font-size:12pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}</style></head><body class="c3"><p class="c9"><span class="c6">Muatan Listrik</span></p><p class="c4"><span class="c0">Atom adalah bagian terkecil dari suatu zat yang tidak bisa dibagi-bagi lagi dengan reaksi kimia biasa. Atom tersusun atas partikel subatom yaitu proton (bermuatan positif), neutron (tidak bermuatan), dan electron (bermuatan negatif). Neutron dan proton memebentuk inti atom sedangkan elektron bergerak di sekitar inti atom. Jadi, dapat disimpulkan bahwa muatan listrik adalah muatan dasar yang dibawa partikel dasar sehingga menyebabkan partikel dasar mengalami gaya Tarik-menarik dan Tolak-menolak.</span></p><p class="c4"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 536.63px; height: 387.32px;"><img alt="" class="aligncenter size-full wp-image-1414041" height="300" src="asset:assets/doc/images/image1.png" width="2500" /></span></p><p class="c4 c7"><span class="c0"></span></p><p class="c4 c7"><span class="c0"></span></p><p class="c4"><span class="c0">Contoh :</span></p><p class="c8"><span class="c2">a)</span><span class="c1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="c0">Batang kaca dapat bermuatan listrik positif, bila digosok dengan kain sutera, sebab elektron akan berpindah dari batang kaca ke kain sutera.</span></p><p class="c8"><span class="c2">b)</span><span class="c1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="c0">Batang plastik dapat bermuatan listrik negatif bila digosokan pada kain wol, sebab elektron akan berpindah dari kai wol ke plastik.</span></p><p class="c5"><span class="c0"></span></p></body></html>
""";

class _MuatanListrikState extends State<MuatanListrik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Muatan Listrik'),
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
        )));
  }
}
