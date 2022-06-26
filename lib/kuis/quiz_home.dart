// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:listrik_statis/kuis/quiz_view.dart';
import 'package:page_indicator/page_indicator.dart';

class QuizHome extends StatefulWidget {
  QuizHome({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _QuizHomeState createState() => _QuizHomeState();
}

class _QuizHomeState extends State<QuizHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? "Kuis"),
        backgroundColor: const Color.fromARGB(255, 57, 142, 153),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width, child: Carousel()),
    );
  }
}

class Carousel extends StatefulWidget {
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel>
    with SingleTickerProviderStateMixin {
  final PageController _controller = PageController();

  @override
  void initState() {
    super.initState();
  }

  void _animateSlider(int length) {
    int nextPage = _controller.page!.round() + 1;

    if (nextPage == length) {
      nextPage = 0;
    }

    _controller.animateToPage(nextPage,
        duration: Duration(seconds: 1), curve: Curves.linear);
  }

  final htmlData1 = r"""
<html><head><meta content="text/html; charset=UTF-8" http-equiv="content-type"><style type="text/css">ol{margin:0;padding:0}table td,table th{padding:0}.c6{margin-left:21pt;padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:justify;height:11pt}.c4{padding-top:0pt;padding-bottom:0pt;line-height:1.15;orphans:2;widows:2;text-align:left;height:11pt}.c2{color:#000000;font-weight:400;text-decoration:none;vertical-align:baseline;font-size:16pt;font-family:"Times New Roman";font-style:normal}.c5{margin-left:43pt;padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c1{color:#000000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:16pt;font-family:"Times New Roman";font-style:normal}.c3{margin-left:43pt;padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c0{background-color:#ffffff;max-width:451.4pt;padding:72pt 72pt 72pt 72pt}.title{padding-top:0pt;color:#000000;font-size:26pt;padding-bottom:3pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:0pt;color:#666666;font-size:15pt;padding-bottom:16pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:"Arial"}p{margin:0;color:#000000;font-size:11pt;font-family:"Arial"}h1{padding-top:20pt;color:#000000;font-size:20pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-size:16pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:16pt;color:#434343;font-size:14pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:14pt;color:#666666;font-size:12pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}</style></head><body class="c0"><p class="c3"><span class="c1">Pembahasan </span></p><p class="c5"><span class="c2">Listrik Statis adalah suatu kumpulan muatan listrik dalam jumlah tertentu yang tidak mengalir atau tetap (statis)..</span></p><p class="c6"><span class="c1"></span></p><p class="c4"><span class="c1"></span></p></body></html>
""";
  final htmlData2 = r"""
<html><head><meta content="text/html; charset=UTF-8" http-equiv="content-type"><style type="text/css">ol{margin:0;padding:0}table td,table th{padding:0}.c0{color:#000000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:16pt;font-family:"Times New Roman";font-style:normal}.c3{margin-left:43pt;padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c4{margin-left:43pt;padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c1{font-size:16pt;font-family:"Times New Roman";font-weight:400}.c2{background-color:#ffffff;max-width:451.4pt;padding:72pt 72pt 72pt 72pt}.title{padding-top:0pt;color:#000000;font-size:26pt;padding-bottom:3pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:0pt;color:#666666;font-size:15pt;padding-bottom:16pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:"Arial"}p{margin:0;color:#000000;font-size:11pt;font-family:"Arial"}h1{padding-top:20pt;color:#000000;font-size:20pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-size:16pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:16pt;color:#434343;font-size:14pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:14pt;color:#666666;font-size:12pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}</style></head><body class="c2"><p class="c4"><span class="c0">Pembahasan </span></p><p class="c3"><span class="c1">Debu yang menempel pada lemari tidak termasuk kedalam gejala kelistrikan dalam kehidupan sehari-hari.</span></p></body></html>
""";

  final htmlData3 = r"""
<html><head><meta content="text/html; charset=UTF-8" http-equiv="content-type"><style type="text/css">ol{margin:0;padding:0}table td,table th{padding:0}.c0{background-color:#ffffff;color:#000000;font-weight:400;text-decoration:none;vertical-align:baseline;font-size:14pt;font-family:"Times New Roman";font-style:normal}.c2{margin-left:43pt;padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:justify;height:11pt}.c6{margin-left:43pt;padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c1{color:#000000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:14pt;font-family:"Times New Roman";font-style:normal}.c5{margin-left:43pt;padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c7{padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify;height:11pt}.c4{max-width:451.4pt;padding:72pt 72pt 72pt 72pt}.c3{background-color:#ffffff}.title{padding-top:0pt;color:#000000;font-size:26pt;padding-bottom:3pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:0pt;color:#666666;font-size:15pt;padding-bottom:16pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:"Arial"}p{margin:0;color:#000000;font-size:11pt;font-family:"Arial"}h1{padding-top:20pt;color:#000000;font-size:20pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-size:16pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:16pt;color:#434343;font-size:14pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:14pt;color:#666666;font-size:12pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}</style></head><body class="c3 c4"><p class="c6"><span class="c1 c3">Pembahasan </span></p><p class="c5"><span class="c0">Atom tersusun atas partikel subatom yaitu proton (bermuatan positif), neutron (tidak bermuatan), dan electron (bermuatan negatif).</span></p><p class="c2"><span class="c1 c3"></span></p><p class="c7"><span class="c1"></span></p></body></html>
""";
  final htmlData4 = r"""
<html><head><meta content="text/html; charset=UTF-8" http-equiv="content-type"><style type="text/css">ol{margin:0;padding:0}table td,table th{padding:0}.c3{background-color:#ffffff;color:#000000;font-weight:400;text-decoration:none;vertical-align:baseline;font-size:15pt;font-family:"Times New Roman";font-style:normal}.c5{background-color:#ffffff;color:#000000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:15pt;font-family:"Times New Roman";font-style:normal}.c2{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:justify;height:11pt}.c0{padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify;height:11pt}.c4{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c1{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c6{background-color:#ffffff;max-width:451.4pt;padding:72pt 72pt 72pt 72pt}.title{padding-top:0pt;color:#000000;font-size:26pt;padding-bottom:3pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:0pt;color:#666666;font-size:15pt;padding-bottom:16pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:"Arial"}p{margin:0;color:#000000;font-size:11pt;font-family:"Arial"}h1{padding-top:20pt;color:#000000;font-size:20pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-size:16pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:16pt;color:#434343;font-size:14pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:14pt;color:#666666;font-size:12pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}</style></head><body class="c6"><p class="c1"><span class="c5">Pembahasan</span></p><p class="c4"><span class="c3">Benjamin Franklin (1706-1790) merupakan orang yang pertama kali menyatakan bahwa petir terjadi akibat adanya gejala listrik.</span></p><p class="c2"><span class="c3"></span></p><p class="c0"><span class="c3"></span></p></body></html>
""";

  final htmlData5 = 'assets/image/penjelasanSoal5.png';
  final htmlData6 = 'assets/image/penjelasanSoal6.png';
  final htmlData7 = r"""
<html><head><meta content="text/html; charset=UTF-8" http-equiv="content-type"><style type="text/css">ol{margin:0;padding:0}table td,table th{padding:0}.c3{background-color:#ffffff;color:#000000;font-weight:400;text-decoration:none;vertical-align:baseline;font-size:15pt;font-family:"Times New Roman";font-style:normal}.c5{background-color:#ffffff;color:#000000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:15pt;font-family:"Times New Roman";font-style:normal}.c2{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:justify;height:11pt}.c0{padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify;height:11pt}.c4{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c1{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c6{background-color:#ffffff;max-width:451.4pt;padding:72pt 72pt 72pt 72pt}.title{padding-top:0pt;color:#000000;font-size:26pt;padding-bottom:3pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:0pt;color:#666666;font-size:15pt;padding-bottom:16pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:"Arial"}p{margin:0;color:#000000;font-size:11pt;font-family:"Arial"}h1{padding-top:20pt;color:#000000;font-size:20pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-size:16pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:16pt;color:#434343;font-size:14pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:14pt;color:#666666;font-size:12pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}</style></head><body class="c6"><p class="c1"><span class="c5">Pembahasan</span></p><img alt="" class="aligncenter size-full wp-image-1414041" height="300" src="asset:assets/image/penjelasan7.png"/></span></p><p class="c2"><span class="c3"></span></p><p class="c0"><span class="c3"></span></p></body></html>
""";
  final htmlData8 = 'assets/image/penjelasanSoal8.png';
  final htmlData9 = r"""
<html><head><meta content="text/html; charset=UTF-8" http-equiv="content-type"><style type="text/css">ol{margin:0;padding:0}table td,table th{padding:0}.c0{background-color:#ffffff;color:#000000;font-weight:400;text-decoration:none;vertical-align:baseline;font-size:15pt;font-family:"Times New Roman";font-style:normal}.c6{background-color:#ffffff;color:#000000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:15pt;font-family:"Times New Roman";font-style:normal}.c5{margin-left:43pt;padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c2{padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify;height:11pt}.c3{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:justify;height:11pt}.c4{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c1{background-color:#ffffff;max-width:451.4pt;padding:72pt 72pt 72pt 72pt}.title{padding-top:0pt;color:#000000;font-size:26pt;padding-bottom:3pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:0pt;color:#666666;font-size:15pt;padding-bottom:16pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:"Arial"}p{margin:0;color:#000000;font-size:11pt;font-family:"Arial"}h1{padding-top:20pt;color:#000000;font-size:20pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-size:16pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:16pt;color:#434343;font-size:14pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:14pt;color:#666666;font-size:12pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}</style></head><body class="c1"><p class="c4"><span class="c6">Pembahasan</span></p><p class="c5"><span class="c0">Neuron &nbsp;merupakan &nbsp;bagian &nbsp;atau &nbsp;unit &nbsp;struktur &nbsp;dari &nbsp;system &nbsp;saraf.</span></p><p class="c3"><span class="c0"></span></p><p class="c3"><span class="c0"></span></p><p class="c2"><span class="c0"></span></p></body></html>
""";
  final htmlData10 = r"""
<html><head><meta content="text/html; charset=UTF-8" http-equiv="content-type"><style type="text/css">ol{margin:0;padding:0}table td,table th{padding:0}.c3{margin-left:71pt;padding-top:0pt;text-indent:-14pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c4{margin-left:43pt;padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c8{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:justify;height:11pt}.c7{padding-top:0pt;padding-bottom:0pt;line-height:1.5;orphans:2;widows:2;text-align:justify;height:11pt}.c9{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c0{background-color:#ffffff;font-size:15pt;font-family:"Times New Roman";font-weight:400}.c1{background-color:#ffffff;font-size:7pt;font-family:"Times New Roman";font-weight:400}.c2{color:#000000;text-decoration:none;vertical-align:baseline;font-style:normal}.c5{background-color:#ffffff;font-weight:700;font-size:15pt;font-family:"Times New Roman"}.c6{background-color:#ffffff;max-width:451.4pt;padding:72pt 72pt 72pt 72pt}.title{padding-top:0pt;color:#000000;font-size:26pt;padding-bottom:3pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:0pt;color:#666666;font-size:15pt;padding-bottom:16pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:"Arial"}p{margin:0;color:#000000;font-size:11pt;font-family:"Arial"}h1{padding-top:20pt;color:#000000;font-size:20pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-size:16pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:16pt;color:#434343;font-size:14pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:14pt;color:#666666;font-size:12pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}</style></head><body class="c6"><p class="c9"><span class="c2 c5">Pembahasan</span></p><p class="c4"><span class="c0 c2">Berikut ini beberapa hewan dalam kehidupan sehari-hari yang menghasilkan listrik, adalah sebagai berikut :</span></p><p class="c3"><span class="c0">1)</span><span class="c1">&nbsp; &nbsp;</span><span class="c0 c2">Ikan belalai gajah</span></p><p class="c3"><span class="c0">2)</span><span class="c1">&nbsp; &nbsp;</span><span class="c0 c2">Ikan Pari Listrik</span></p><p class="c3"><span class="c0">3)</span><span class="c1">&nbsp; &nbsp;</span><span class="c0 c2">Hiu Kepala Reptil</span></p><p class="c3"><span class="c0">4)</span><span class="c1">&nbsp; &nbsp;</span><span class="c0 c2">Echidna</span></p><p class="c3"><span class="c0">5)</span><span class="c1">&nbsp; &nbsp;</span><span class="c0 c2">Belut Listrik</span></p><p class="c3"><span class="c0">6)</span><span class="c1">&nbsp; &nbsp;</span><span class="c0 c2">Lele air tawar (listrik)</span></p><p class="c3"><span class="c0">7)</span><span class="c1">&nbsp; &nbsp;</span><span class="c0 c2">Ikan skate Listrik</span></p><p class="c8"><span class="c0 c2"></span></p><p class="c7"><span class="c0 c2"></span></p></body></html>
""";

  @override
  Widget build(BuildContext context) {
    width:
    MediaQuery.of(context).size.width;

    final List<Widget> _list = [
      SliderBox(
          child: QuizView(
        showCorrect: true,
        tagColor: Colors.black,
        questionTag: "Soal: 1",
        answerColor: Color.fromARGB(255, 20, 20, 20),
        answerBackgroundColor: Color.fromARGB(255, 138, 186, 228),
        questionColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 48, 118, 138),
        width: 300,
        height: 600,
        question:
            "Suatu kumpulan muatan listrik dalam jumlah tertentu yang tidak mengalir atau tetap (statis) disebut…",
        rightAnswer: "Listrik Statis",
        wrongAnswers: ["Listrik Dinamis", "Listrik Magnet", "Medan Listrik"],
        onRightAnswer: () => print("Right"),
        onWrongAnswer: () => print("Wrong"),
        nexTap: () {
          int nextPage = _controller.page!.round() + 1;

          _controller.animateToPage(nextPage,
              duration: Duration(seconds: 1), curve: Curves.linear);
        },
        dataJawaban: htmlData1,
        backTap: () {},
        kembali: false,
      )),
      SliderBox(
        child: QuizView(
          showCorrect: true,
          tagColor: Colors.black,
          questionTag: "Soal: 2",
          answerColor: Color.fromARGB(255, 20, 20, 20),
          answerBackgroundColor: Color.fromARGB(255, 138, 186, 228),
          questionColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 48, 118, 138),
          width: 300,
          height: 600,
          question:
              "Berikut ini adalah contoh listrik statis dalam kehidupan sehari-hari antara lain, kecuali…",
          rightAnswer: "Debu yang menempel pada lemari",
          wrongAnswers: [
            "Menggosokkan balon dengan tangan",
            "Saat menyisir rambut terkadang rambut akan terbawa berdiri beriringan dengan gerakan sisir, karena ada interaksi muatan antara sisir dan rambut.",
            "Penggaris di gosok-gosokkan ke rambut kemudian bisa mengangkat potongan kertas kecil."
          ],
          onRightAnswer: () => print("Right"),
          onWrongAnswer: () => print("Wrong"),
          nexTap: () {
            int nextPage = _controller.page!.round() + 1;

            _controller.animateToPage(nextPage,
                duration: Duration(seconds: 1), curve: Curves.linear);
          },
          dataJawaban: htmlData2,
          backTap: () {
            int nextPage = _controller.page!.round() - 1;

            _controller.animateToPage(nextPage,
                duration: Duration(seconds: 1), curve: Curves.linear);
          },
        ),
      ),
      SliderBox(
          child: QuizView(
              showCorrect: true,
              tagColor: Colors.black,
              questionTag: "Soal: 3",
              answerColor: Color.fromARGB(255, 20, 20, 20),
              answerBackgroundColor: Color.fromARGB(255, 138, 186, 228),
              questionColor: Colors.white,
              backgroundColor: Color.fromARGB(255, 48, 118, 138),
              width: 300,
              height: 600,
              question:
                  "Berikut ini yang merupakan pernyataan yang salah adalah…",
              rightAnswer: "Elektron (tidak bermuatan)",
              wrongAnswers: [
                "Proton (bermuatan positif)",
                "Neutron (tidak bermuatan)",
                "Elektron (bermuatan negatif)"
              ],
              onRightAnswer: () => print("Right"),
              onWrongAnswer: () => print("Wrong"),
              nexTap: () {
                int nextPage = _controller.page!.round() + 1;

                _controller.animateToPage(nextPage,
                    duration: Duration(seconds: 1), curve: Curves.linear);
              },
              backTap: () {
                int nextPage = _controller.page!.round() - 1;

                _controller.animateToPage(nextPage,
                    duration: Duration(seconds: 1), curve: Curves.linear);
              },
              dataJawaban: htmlData3)),
      SliderBox(
          child: QuizView(
              showCorrect: true,
              tagColor: Colors.black,
              questionTag: "Soal: 4",
              answerColor: Color.fromARGB(255, 20, 20, 20),
              answerBackgroundColor: Color.fromARGB(255, 138, 186, 228),
              questionColor: Colors.white,
              backgroundColor: Color.fromARGB(255, 48, 118, 138),
              width: 300,
              height: 600,
              question:
                  "Jika batang kaca digosokkan dengan kain sutera, maka benda tersebut …",
              rightAnswer: "Batang kaca bermuatan Positif",
              wrongAnswers: [
                "Batang kaca bermuatan Negatif",
                "Kain sutera bermuatan Positif",
                "Kain sutera bermuatan Netral"
              ],
              onRightAnswer: () => print("Right"),
              onWrongAnswer: () => print("Wrong"),
              nexTap: () {
                int nextPage = _controller.page!.round() + 1;

                _controller.animateToPage(nextPage,
                    duration: Duration(seconds: 1), curve: Curves.linear);
              },
              backTap: () {
                int nextPage = _controller.page!.round() - 1;

                _controller.animateToPage(nextPage,
                    duration: Duration(seconds: 1), curve: Curves.linear);
              },
              dataJawaban: htmlData4)),
      SliderBox(
          child: QuizView(
        image: Container(
          child: Image.asset(
            "assets/image/soal5.png",
          ),
        ),
        showCorrect: true,
        tagColor: Colors.black,
        questionTag: "Soal: 5",
        answerColor: Color.fromARGB(255, 20, 20, 20),
        answerBackgroundColor: Color.fromARGB(255, 138, 186, 228),
        questionColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 48, 118, 138),
        width: 300,
        height: 600,
        question: "",
        rightAnswer: "36 N",
        wrongAnswers: ["12 N", "24 N", "36 N"],
        onRightAnswer: () => print("Right"),
        onWrongAnswer: () => print("Wrong"),
        nexTap: () {
          int nextPage = _controller.page!.round() + 1;

          _controller.animateToPage(nextPage,
              duration: Duration(seconds: 1), curve: Curves.linear);
        },
        backTap: () {
          int nextPage = _controller.page!.round() - 1;

          _controller.animateToPage(nextPage,
              duration: Duration(seconds: 1), curve: Curves.linear);
        },
        dataJawaban: htmlData5,
        jawabanImage: true,
      )),
      SliderBox(
          child: QuizView(
        image: Container(
          child: Image.asset(
            "assets/image/soal6.png",
            fit: BoxFit.fill,
          ),
        ),
        showCorrect: true,
        tagColor: Colors.black,
        questionTag: "Soal: 6",
        answerColor: Color.fromARGB(255, 20, 20, 20),
        answerBackgroundColor: Color.fromARGB(255, 138, 186, 228),
        questionColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 48, 118, 138),
        width: 300,
        height: 600,
        question: "",
        rightAnswer: "10^8 N/C",
        wrongAnswers: ["10^7 N/C", "10^6 N/C", "10^5 N/C"],
        onRightAnswer: () => print("Right"),
        onWrongAnswer: () => print("Wrong"),
        nexTap: () {
          int nextPage = _controller.page!.round() + 1;

          _controller.animateToPage(nextPage,
              duration: Duration(seconds: 1), curve: Curves.linear);
        },
        backTap: () {
          int nextPage = _controller.page!.round() - 1;

          _controller.animateToPage(nextPage,
              duration: Duration(seconds: 1), curve: Curves.linear);
        },
        dataJawaban: htmlData6,
        jawabanImage: true,
      )),
      SliderBox(
          child: QuizView(
              showCorrect: true,
              tagColor: Colors.black,
              questionTag: "Soal: 7",
              answerColor: Color.fromARGB(255, 20, 20, 20),
              answerBackgroundColor: Color.fromARGB(255, 138, 186, 228),
              questionColor: Colors.white,
              backgroundColor: Color.fromARGB(255, 48, 118, 138),
              width: 300,
              height: 600,
              question:
                  "Kuat medan listrik yang ditimbulkan oleh muatan listrik pada sebuah titik bergantung pada : a)	Besarnya muatan, b)	Jaraknya dari muatan, c)	Jenis muatan, d)	Jenis medium antara muatan dan titik, Maka pernyataan yang bernar adalah…",
              rightAnswer: "a), b), c) dan d)",
              wrongAnswers: ["a), b), dan c)", "a) dan b)", "d)"],
              onRightAnswer: () => print("Right"),
              onWrongAnswer: () => print("Wrong"),
              nexTap: () {
                int nextPage = _controller.page!.round() + 1;

                _controller.animateToPage(nextPage,
                    duration: Duration(seconds: 1), curve: Curves.linear);
              },
              backTap: () {
                int nextPage = _controller.page!.round() - 1;

                _controller.animateToPage(nextPage,
                    duration: Duration(seconds: 1), curve: Curves.linear);
              },
              dataJawaban: htmlData7)),
      SliderBox(
          child: QuizView(
        showCorrect: true,
        tagColor: Colors.black,
        questionTag: "Soal: 8",
        answerColor: Color.fromARGB(255, 20, 20, 20),
        answerBackgroundColor: Color.fromARGB(255, 138, 186, 228),
        questionColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 48, 118, 138),
        width: 300,
        height: 600,
        question:
            "Berapakah beda potensial kutub-kutub baterai sebuah rangkaian jika baterai tersebut membutuhkan energi sebesar 60 J untuk memindahkan muatan sebesar 20 C ?",
        rightAnswer: "3 V",
        wrongAnswers: ["2 V", "4 V", "5 V"],
        onRightAnswer: () => print("Right"),
        onWrongAnswer: () => print("Wrong"),
        nexTap: () {
          int nextPage = _controller.page!.round() + 1;

          _controller.animateToPage(nextPage,
              duration: Duration(seconds: 1), curve: Curves.linear);
        },
        backTap: () {
          int nextPage = _controller.page!.round() - 1;

          _controller.animateToPage(nextPage,
              duration: Duration(seconds: 1), curve: Curves.linear);
        },
        dataJawaban: htmlData8,
        jawabanImage: true,
      )),
      SliderBox(
          child: QuizView(
              showCorrect: true,
              tagColor: Colors.black,
              questionTag: "Soal: 9",
              answerColor: Color.fromARGB(255, 20, 20, 20),
              answerBackgroundColor: Color.fromARGB(255, 138, 186, 228),
              questionColor: Colors.white,
              backgroundColor: Color.fromARGB(255, 48, 118, 138),
              width: 300,
              height: 600,
              question:
                  "Bagian  atau  unit  struktur  dari   sistem saraf disebut….",
              rightAnswer: "Neuron",
              wrongAnswers: ["Dendrit", "neuroﬁbril", "Badan Sel"],
              onRightAnswer: () => print("Right"),
              onWrongAnswer: () => print("Wrong"),
              nexTap: () {
                int nextPage = _controller.page!.round() + 1;

                _controller.animateToPage(nextPage,
                    duration: Duration(seconds: 1), curve: Curves.linear);
              },
              backTap: () {
                int nextPage = _controller.page!.round() - 1;

                _controller.animateToPage(nextPage,
                    duration: Duration(seconds: 1), curve: Curves.linear);
              },
              dataJawaban: htmlData9)),
      SliderBox(
          child: QuizView(
              showCorrect: true,
              tagColor: Colors.black,
              questionTag: "Soal: 10",
              answerColor: Color.fromARGB(255, 20, 20, 20),
              answerBackgroundColor: Color.fromARGB(255, 138, 186, 228),
              questionColor: Colors.white,
              backgroundColor: Color.fromARGB(255, 48, 118, 138),
              width: 300,
              height: 600,
              question:
                  "Perhatikan dibawah ini : a)	Ikan belalai gajah dan ikan hiu b)	Echidna dan Belut Listrik c)	Hiu kepala Martil dan Ikan Pari Listrik d)	Ikan Sate dan Ikan Lele. Berikut ini yang merupakan hewan penghasil listrik adalah…",
              rightAnswer: "b) dan c)",
              wrongAnswers: ["a) dan b)", "c) dan d)", "Semua benar"],
              onRightAnswer: () => print("Right"),
              onWrongAnswer: () => print("Wrong"),
              nexTap: () {
                int nextPage = _controller.page!.round() + 1;

                _controller.animateToPage(nextPage,
                    duration: Duration(seconds: 1), curve: Curves.linear);
              },
              backTap: () {
                int nextPage = _controller.page!.round() - 1;

                _controller.animateToPage(nextPage,
                    duration: Duration(seconds: 1), curve: Curves.linear);
              },
              dataJawaban: htmlData10,
              next: false)),
    ];

    PageIndicatorContainer container = new PageIndicatorContainer(
      child: PageView(
        children: _list,
        controller: _controller,
      ),
      length: _list.length,
      indicatorSpace: 10,
      indicatorColor: Colors.grey.shade300,
      indicatorSelectorColor: Colors.grey,
    );

    return Stack(
      children: <Widget>[
        Container(color: Colors.grey[100], height: double.infinity),
        Container(
          color: Colors.white,
          child: container,
        ),
      ],
    );
  }
}

class SliderBox extends StatelessWidget {
  final Widget? child;
  final Color? colors;
  const SliderBox({Key? key, this.child, this.colors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: child);
  }
}
