import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Kelistrikan extends StatefulWidget {
  const Kelistrikan({Key? key}) : super(key: key);

  @override
  State<Kelistrikan> createState() => _KelistrikanState();
}

const htmlData = r"""
<html><head><meta content="text/html; charset=UTF-8" http-equiv="content-type"><style type="text/css">ol{margin:0;padding:0}table td,table th{padding:0}.c6{margin-left:18pt;padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify;height:11pt}.c7{margin-left:18pt;padding-top:0pt;text-indent:39pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c5{color:#000000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:12pt;font-family:"Times New Roman";font-style:normal}.c4{margin-left:18pt;padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c9{padding-top:0pt;padding-bottom:0pt;line-height:1.15;orphans:2;widows:2;text-align:left;height:11pt}.c10{margin-left:18pt;padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c1{color:#000000;font-weight:400;text-decoration:none;vertical-align:baseline;font-size:12pt;font-family:"Times New Roman";font-style:normal}.c3{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:left}.c8{color:#000000;text-decoration:none;vertical-align:baseline;font-style:normal}.c0{font-size:7pt;font-family:"Times New Roman";font-weight:400}.c2{background-color:#ffffff;max-width:451.4pt;padding:72pt 72pt 72pt 72pt}.title{padding-top:0pt;color:#000000;font-size:26pt;padding-bottom:3pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:0pt;color:#666666;font-size:15pt;padding-bottom:16pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:"Arial"}p{margin:0;color:#000000;font-size:11pt;font-family:"Arial"}h1{padding-top:20pt;color:#000000;font-size:20pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-size:16pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:16pt;color:#434343;font-size:14pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:14pt;color:#666666;font-size:12pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}</style></head><body class="c2"><p class="c3"><span class="c0">&nbsp;</span><span class="c5">Kelistrikan Pada Sel Saraf</span></p><p class="c10"><span class="c1">Tubuh &nbsp;manusia mengandung ion positif dan ion negatif penyebab muatan negatif dalam tubuh manusia adalah Cl-, sedangkan penyebab muatan positif adalah Ca2+ dan Na+. Contohnya peristiwa &#64257;siologi yang menggunakan gejala kelistrikan dalam tubuh manusia &nbsp;misalnya impuls saraf.</span><p class="c5"><span class="c0"></span></p></p><p class="c5"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 523.00px; height: 444.00px;"><img alt="" class="aligncenter size-full wp-image-1414041" height="300" src="asset:assets/doc/images/image8.png" width="2500" /></span>


</p><p class="c7"><span class="c1">Neuron merupakan bagian atau unit struktur dari sistem saraf. &nbsp;Neuron tersusun dari badan sel, dan uluran uluran yang keluar dari badan sel dalam badan sel terdapat inti sel, mitokondria, badan golgi, dan neuro&#64257;bril yang membuat neuron dapat bermetabolisme sedangkan uluran neuron ada dua jenis yaitu yang berukuran pendek dan bercabang-cabang (dendrite), dan yang berukuran panjang disebut neurit atau akson. Dendrit menghantarkan impuls saraf menuju badan sel, sebaliknya neurit menghantarkan impuls saraf dari badan sel saraf menuju otot.</span></p><p class="c9"><span class="c0 c8"></span></p></body></html>
""";

class _KelistrikanState extends State<Kelistrikan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kelistrikan Pada Sel Saraf'),
        backgroundColor: const Color.fromARGB(255, 57, 142, 153),
      ),
      body: SingleChildScrollView(
          child: Html(
        data: htmlData,
        tagsList: Html.tags..addAll(["bird", "flutter"]),
        style: {
          "body": Style(padding: const EdgeInsets.all(10)),
          "tr": Style(
            border: const Border(bottom: BorderSide(color: Colors.grey)),
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
