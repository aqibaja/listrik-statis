import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:listrik_statis/materi/muatan_listrik.dart';

class Hewan extends StatefulWidget {
  const Hewan({Key? key}) : super(key: key);

  @override
  State<Hewan> createState() => _HewanState();
}

const htmlData = r"""
<html><head><meta content="text/html; charset=UTF-8" http-equiv="content-type"><style type="text/css">ol{margin:0;padding:0}table td,table th{padding:0}.c6{margin-left:21pt;padding-top:0pt;text-indent:35pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify;height:11pt}.c8{padding-top:4pt;text-indent:36pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify;margin-right:2pt}.c14{margin-left:21pt;padding-top:0pt;text-indent:35pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c7{padding-top:0pt;padding-bottom:0pt;line-height:1.15;orphans:2;widows:2;text-align:left;height:11pt}.c18{margin-left:28pt;padding-top:4pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c10{margin-left:21pt;padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c1{color:#000000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:12pt;font-family:"Times New Roman";font-style:normal}.c15{margin-left:21pt;padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:left}.c5{padding-top:0pt;text-indent:36pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:left}.c3{color:#000000;font-weight:400;text-decoration:none;vertical-align:baseline;font-size:12pt;font-family:"Times New Roman";font-style:normal}.c11{margin-left:28pt;padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c19{margin-left:28pt;padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c0{padding-top:0pt;text-indent:36pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c17{padding-top:4pt;text-indent:36pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c9{padding-top:0pt;text-indent:36pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c20{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:left}.c4{font-size:12pt;font-family:"Times New Roman";font-weight:400}.c2{font-size:12pt;font-family:"Times New Roman";font-weight:700}.c16{background-color:#ffffff;max-width:451.4pt;padding:72pt 72pt 72pt 72pt}.c12{height:11pt}.c13{margin-right:2pt}.title{padding-top:0pt;color:#000000;font-size:26pt;padding-bottom:3pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:0pt;color:#666666;font-size:15pt;padding-bottom:16pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:"Arial"}p{margin:0;color:#000000;font-size:11pt;font-family:"Arial"}h1{padding-top:20pt;color:#000000;font-size:20pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-size:16pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:16pt;color:#434343;font-size:14pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:14pt;color:#666666;font-size:12pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}</style></head><body class="c16"><p class="c20"><span class="c1">Hewan-hewan Penghasil Listrik</span></p><p class="c14"><span class="c3">Berikut ini beberapa hewan dalam kehidupan sehari-hari yang menghasilkan listrik, adalah sebagai berikut :</span></p><p class="c6"><span class="c3"></span></p><p class="c0"><span class="c2">1. Belut Listrik</span><span class="c3">&nbsp;</span></p><p class="c9"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 280.00px; height: 239.00px;"><img alt="" class="aligncenter size-full wp-image-1414041" height="300" src="asset:assets/doc/images/image9.png" width="2500" /></span>


</p><p class="c7"><span class="c3"></span></p><p class="c11"><span class="c3">Belut ini ditemukan di Amerika selatan dengan bentuknya unik yakni hamper 7/8 bagian tubuhnya berupa ekor. dibagian ekor inilah terdapat lebih dari 5000 baterai berupa lempengan horizontal maupun vertikal, yang dapat menimbulkan arus listrik sebesar 1 ampere.</span></p><p class="c11 c12"><span class="c3"></span></p><p class="c0"><span class="c2">2.</span><span class="c4">&nbsp;</span><span class="c1">Echidna</span></p><p class="c9"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 280.00px; height: 210.00px;"><img alt="" class="aligncenter size-full wp-image-1414041" height="300" src="asset:assets/doc/images/image10.png" width="2500" /></span>


</p><p class="c13 c18"><span class="c3">Hewan ini termasuk anggota dari ordo monotreme, memiliki duri, moncong memanjang yang berfungsi sebagai mulut dan hidung. Fungsi dari moncong ini anatara lain dapat mengirim sinyal-sinyal listrik untuk membentuk dan menemukan makanan yang akan dimakan.</span></p><p class="c18 c12 c13"><span class="c3"></span></p><p class="c8"><span class="c2">3.</span><span class="c4">&nbsp;</span><span class="c1">Lele Air Tawar</span></p><p class="c13 c17"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 280.00px; height: 172.00px;"><img alt="" class="aligncenter size-full wp-image-1414041" height="300" src="asset:assets/doc/images/image11.png" width="2500" /></span>


</p><p class="c15"><span class="c3">Berasal dari perairan tropis Afrika mampu menghasilkan tegangan listrik sampai 350 volt jumlah &nbsp;tegangan seperti ini dapat menghidupkan komputer selama &frac34; jam. Organ listrik ikan ini membentuk lapisan agar-agar dibawah &nbsp; kulit.</span></p><p class="c0 c13"><span class="c2">4. Hiu Kepala Martil</span><span class="c3">&nbsp;</span></p><p class="c19"><span class="c4">&nbsp;</span><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 280.00px; height: 211.00px;"><img alt="" class="aligncenter size-full wp-image-1414041" height="300" src="asset:assets/doc/images/image12.png" width="2500" />


</p><p class="c7"><span class="c3"></span></p><p class="c11"><span class="c3">Organ yang menghasilkan listrik terletak dikedua sisi kepala dan bersama&ndash;sama menghasilkan listrik sebesar 220 volt, digunakan untuk mendeteksi keberadaan hewan lain dan memudahkannya mencari mangsa.</span></p><p class="c11"><span class="c3">&nbsp;</span></p><p class="c5"><span class="c2">5.</span><span class="c4">&nbsp;</span><span class="c1">Ikan Skate Listrik</span></p><p class="c9"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 280.00px; height: 176.00px;"><img alt="" class="aligncenter size-full wp-image-1414041" height="300" src="asset:assets/doc/images/image13.png" width="2500" /></span>


<p class="c11"><span class="c3">Listrik yang dihasilkan selain digunakan untuk melawan predator, juga dipakai sebagai cara untuk mengenali dan berkomunikasi antara satu dengan yang lainnya.</span></p><p class="c11 c12"><span class="c3"></span></p><p class="c0"><span class="c2">6.</span><span class="c4">&nbsp;</span><span class="c1">Ikan Belalai Gajah</span></p><p class="c9"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 280.00px; height: 203.00px;"><img alt="" class="aligncenter size-full wp-image-1414041" height="300" src="asset:assets/doc/images/image14.png" width="2500" /></span>


</p><p class="c11"><span class="c3">Hewan ini terdapat di Afrika Barat dan Afrika Tengah. Organ tubuh yang menghasilkan listrik terdapat diekor, yang terdiri dari ribuan kotak/elektropax.</span></p><p class="c11"><span class="c1">&nbsp;</span></p><p class="c0"><span class="c2">7.</span><span class="c4">&nbsp;</span><span class="c1">Ikan Pari Listrik</span></p><p class="c9"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 280.00px; height: 161.00px;"><img alt="" class="aligncenter size-full wp-image-1414041" height="300" src="asset:assets/doc/images/image15.png" width="2500" /></span>


</p><p class="c10"><span class="c3">Memiliki kemampuan electrosense untuk mengambil medan listrik yang dikeluarkan oleh udang, siput, dan kerang. Mulutnya terletak dibagian bawah sehingga memudahkan mereka untuk mencari makanan.</span></p><p class="c7"><span class="c1"></span></p></body></html>
""";

class _HewanState extends State<Hewan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hewan-hewan Penghasil Listrik'),
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
