import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class MedanListrik extends StatefulWidget {
  const MedanListrik({Key? key}) : super(key: key);

  @override
  State<MedanListrik> createState() => _MedanListrikState();
}

const htmlData = r"""
<html><head><meta content="text/html; charset=UTF-8" http-equiv="content-type"><style type="text/css">ol{margin:0;padding:0}table td,table th{padding:0}.c10{margin-left:21pt;padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:center;height:11pt}.c3{margin-left:21pt;padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c6{margin-left:21pt;padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:left}.c5{margin-left:57pt;padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:left}.c16{margin-left:21pt;padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c15{color:#000000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:12pt;font-family:"Times New Roman";font-style:normal}.c1{padding-top:0pt;padding-bottom:0pt;line-height:1.15;orphans:2;widows:2;text-align:left;height:11pt}.c2{margin-left:21pt;padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:left}.c0{color:#000000;font-weight:400;text-decoration:none;vertical-align:baseline;font-size:12pt;font-family:"Times New Roman";font-style:normal}.c9{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:left}.c7{padding-top:12pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c13{padding-top:12pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c12{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c4{font-size:7pt;font-family:"Times New Roman";font-weight:400}.c8{font-size:12pt;font-family:"Times New Roman";font-weight:400}.c17{background-color:#ffffff;max-width:451.4pt;padding:72pt 72pt 72pt 72pt}.c11{margin-left:18pt;height:11pt}.c14{margin-left:18pt}.title{padding-top:0pt;color:#000000;font-size:26pt;padding-bottom:3pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:0pt;color:#666666;font-size:15pt;padding-bottom:16pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:"Arial"}p{margin:0;color:#000000;font-size:11pt;font-family:"Arial"}h1{padding-top:20pt;color:#000000;font-size:20pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-size:16pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:16pt;color:#434343;font-size:14pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:14pt;color:#666666;font-size:12pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}</style></head><body class="c17"><p class="c9"><span class="c15">Medan Listrik</span></p><p class="c9 c14"><span class="c0">Medan Listrik adalah daerah disekitar muatan yang dapat menimbulkan gaya listrik terhadap muatan lain.</span></p><img alt="" src="asset:assets/doc/images/image3.png" style="width: 601.70px; height: 182.67px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p><p class="c13"><span class="c0">Gambar Garis Medan Listrik Dua Muatan</span></p><p class="c2"><span class="c0">Gambar-gambar di atas menampilkan medan listrik berupa garis garis gaya magnet:</span></p><p class="c4"><span class="c8">a)</span><span class="c4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="c0">Muatan listrik negatif memiliki arah garis gaya magnet menuju ke pusat muatan</span></p><p class="c4"><span class="c0"></span></p><p class="c4"><span class="c8">b)</span><span class="c4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="c0">Muatan listrik positif memiliki arah garis gaya keluar dari pusat muatan listriknya.</span></p><p class="c4"><span class="c0"></span></p><p class="c4"><span class="c8">c)</span><span class="c4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="c0">Interaksi muatan positif dan muatan negatif</span></p><p class="c4"><span class="c0"></span></p><p class="c3"><span class="c0">Interaksi muatan dapat dilihat pada &nbsp;gambar diatas, yaitu muatan sejenis menghasilkan gaya tolak-menolak, dan muatan tak sejenis menghasilkan gaya tarik-menarik.</span></p><p class="c10"><span class="c0"></span></p><p class="c16"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 252.00px; height: 117.00px;"><img alt="" src="asset:assets/doc/images/image4.png" style="width: 252.00px; height: 117.00px; margin-left: 0.00px; margin-top: 0.00px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);" title=""></span></p><p class="c4"><span class="c0">&nbsp;</span></p><p class="c6"><span class="c0">Keterangan :</span></p><p class="c6"><span class="c0">E = Medan listrik (N/C)</span></p><p class="c6"><span class="c0">F = Gaya Coulomb (N)</span></p><p class="c6"><span class="c0">q = Muatan Listrik (C)</span></p><p class="c1"><span class="c15"></span></p></body></html>
""";

class _MedanListrikState extends State<MedanListrik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medan Listrik'),
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
