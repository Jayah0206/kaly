import 'package:flutter/material.dart';

List categories = [
  {
    "name" : "Flavoured RUM",
  },
  {
    "name" : "Pur jus de canne",
  },
  {
    "name" : "Exotic RUM",
  },
];

List populars = [

  {
    "image": "https://scontent.ftnr5-1.fna.fbcdn.net/v/t39.30808-6/277169149_3162551240656419_1012256552984131747_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=102&ccb=1-7&_nc_sid=9e2e56&efg=eyJpIjoidCJ9&_nc_eui2=AeGCaDZRfr_sKh8-qL1raKZHEMuY8jfIn-UQy5jyN8if5RmgLciHStPz_jLTGiEnGfY9PyLCTUzcinrLfnAoTvJD&_nc_ohc=U34xuF-2VDAAX95w2d9&_nc_ht=scontent.ftnr5-1.fna&oh=00_AT8duiE_sIgz8bOs0Za5gcj1bSXuBapUqFmzIRek26syjw&oe=6300E74A",
    "is_favorited": true,
    "price": "Ar 25000",
    "name": "Combava flavoured Rum",
  },
  {
    "image":"https://scontent.ftnr5-1.fna.fbcdn.net/v/t39.30808-6/276061221_3156043391307204_5835771747088672755_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=101&ccb=1-7&_nc_sid=9e2e56&efg=eyJpIjoidCJ9&_nc_eui2=AeFSJ6IqpkNyoCdIZkmaMjRYQFslLwXVeOdAWyUvBdV45w1ec7NesvFy8i9bB8jTm-YjVF6tdCz69tj4FYgJAKED&_nc_ohc=MVEsm6Z3hy4AX9bJU0z&_nc_ht=scontent.ftnr5-1.fna&oh=00_AT9Bs69qImA6WJFuOIE8pfhAszzGFcFaqtYqzPtUugQHRA&oe=63022C3A",
    "is_favorited": false,
    "name": "Vanilla Endemique",
    "price" : "Ar 50000",
  },
  {
    "image": "https://scontent.ftnr5-1.fna.fbcdn.net/v/t39.30808-6/253693110_3062379954006882_5114606571690218224_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=109&ccb=1-7&_nc_sid=9e2e56&efg=eyJpIjoidCJ9&_nc_eui2=AeGx7XCXJ-Fd0uvKeNV-GaAxgNF6pqtxOx6A0Xqmq3E7Hvyuue61CKeI1fJMa47E3lrAFQCgK95MGCSOQ5SYXFGX&_nc_ohc=DuzXSkE08AcAX_Oq_n-&_nc_ht=scontent.ftnr5-1.fna&oh=00_AT8PPXRz0HKRSEWsB3oC01EKfb5m3UJtAvFnWcIyjAx-pg&oe=630238A9",
    "is_favorited": false,
    "price": "Ar 15000",
    "name": "Pur jus de canne",
  },
  {
    "image": "https://scontent.ftnr5-1.fna.fbcdn.net/v/t39.30808-6/290637027_3236574093254133_8077261277375354362_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=110&ccb=1-7&_nc_sid=9e2e56&efg=eyJpIjoidCJ9&_nc_eui2=AeHqVB8ug72VhilxfrdHV2hi6OaIiT1OCXfo5oiJPU4JdwHeXbVui-qlTF1xiDBPtejw8BK-FVanLu9kGPyoxooN&_nc_ohc=t6mMBhueOSEAX-LTpJo&_nc_ht=scontent.ftnr5-1.fna&oh=00_AT_AT11_AQ6u69oBZFVp5HdLldEc4HdViSyaWbGdHrc08Q&oe=63018277",
    "is_favorited": false,
    "price": "Ar 20000",
    "name": "Sakamalao Punch",
  },

];

const List featured = [
  {
    "image": "https://scontent.ftnr5-1.fna.fbcdn.net/v/t39.30808-6/277169149_3162551240656419_1012256552984131747_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=102&ccb=1-7&_nc_sid=9e2e56&efg=eyJpIjoidCJ9&_nc_eui2=AeGCaDZRfr_sKh8-qL1raKZHEMuY8jfIn-UQy5jyN8if5RmgLciHStPz_jLTGiEnGfY9PyLCTUzcinrLfnAoTvJD&_nc_ohc=U34xuF-2VDAAX95w2d9&_nc_ht=scontent.ftnr5-1.fna&oh=00_AT8duiE_sIgz8bOs0Za5gcj1bSXuBapUqFmzIRek26syjw&oe=6300E74A",
    "is_favorited": true,
    "price": "Ar 25000",
    "name": "Combava flavoured Rum",
    "description": "303Rum - Combava - Madagascar",
    "sources": "Combava - 303",
    "frais_livraison": "Ar 3000  Livraison",
    "rate": "4.3",
    "rate_number": "273"
  },
  {
    "image":"https://scontent.ftnr5-1.fna.fbcdn.net/v/t39.30808-6/276061221_3156043391307204_5835771747088672755_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=101&ccb=1-7&_nc_sid=9e2e56&efg=eyJpIjoidCJ9&_nc_eui2=AeFSJ6IqpkNyoCdIZkmaMjRYQFslLwXVeOdAWyUvBdV45w1ec7NesvFy8i9bB8jTm-YjVF6tdCz69tj4FYgJAKED&_nc_ohc=MVEsm6Z3hy4AX9bJU0z&_nc_ht=scontent.ftnr5-1.fna&oh=00_AT9Bs69qImA6WJFuOIE8pfhAszzGFcFaqtYqzPtUugQHRA&oe=63022C3A",
    "is_favorited": false,
    "price": "Ar 50000",
    "name": "Vanilla Endemique",
    "description": "303Rum - Vanilla - Madagascar",
    "sources": "vanilla - 303",
    "frais_livraison": "Ar 3000  Frais de livraison",
    "rate": "4.3",
    "rate_number": "273"
  },
  {
    "image": "https://scontent.ftnr5-1.fna.fbcdn.net/v/t39.30808-6/253693110_3062379954006882_5114606571690218224_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=109&ccb=1-7&_nc_sid=9e2e56&efg=eyJpIjoidCJ9&_nc_eui2=AeGx7XCXJ-Fd0uvKeNV-GaAxgNF6pqtxOx6A0Xqmq3E7Hvyuue61CKeI1fJMa47E3lrAFQCgK95MGCSOQ5SYXFGX&_nc_ohc=DuzXSkE08AcAX_Oq_n-&_nc_ht=scontent.ftnr5-1.fna&oh=00_AT8PPXRz0HKRSEWsB3oC01EKfb5m3UJtAvFnWcIyjAx-pg&oe=630238A9",
    "is_favorited": true,
    "price": "Ar 15000",
    "name": "Pur jus de canne",
    "description": "55%/ALC - Madagascar",
    "sources": "Canne à sucre - 303",
    "frais_livraison": "Ar 3000  Frais de livraison",
    "rate": "4.3",
    "rate_number": "273"
  },
  {
    "image": "https://scontent.ftnr5-1.fna.fbcdn.net/v/t39.30808-6/290637027_3236574093254133_8077261277375354362_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=110&ccb=1-7&_nc_sid=9e2e56&efg=eyJpIjoidCJ9&_nc_eui2=AeHqVB8ug72VhilxfrdHV2hi6OaIiT1OCXfo5oiJPU4JdwHeXbVui-qlTF1xiDBPtejw8BK-FVanLu9kGPyoxooN&_nc_ohc=t6mMBhueOSEAX-LTpJo&_nc_ht=scontent.ftnr5-1.fna&oh=00_AT_AT11_AQ6u69oBZFVp5HdLldEc4HdViSyaWbGdHrc08Q&oe=63018277",
    "is_favorited": true,
    "price": "Ar 20000",
    "name": "Sakamalao Ginger Punch",
    "description": "303Rum - Punch - Madagascar",
    "sources": "Sakamalao - 303",
    "frais_livraison": "Ar 3000  Livraison",
    "rate": "4.3",
    "rate_number": "273"
  },
];

class  Cart {
  String name;
  double price;
  String image;
  String sources;

  Cart({
    required this.image,
    required this.name,
    required this.price,
    required this.sources
});
}

const List cart = [
  {
    "image": "https://scontent.ftnr5-1.fna.fbcdn.net/v/t39.30808-6/277169149_3162551240656419_1012256552984131747_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=102&ccb=1-7&_nc_sid=9e2e56&efg=eyJpIjoidCJ9&_nc_eui2=AeGCaDZRfr_sKh8-qL1raKZHEMuY8jfIn-UQy5jyN8if5RmgLciHStPz_jLTGiEnGfY9PyLCTUzcinrLfnAoTvJD&_nc_ohc=U34xuF-2VDAAX95w2d9&_nc_ht=scontent.ftnr5-1.fna&oh=00_AT8duiE_sIgz8bOs0Za5gcj1bSXuBapUqFmzIRek26syjw&oe=6300E74A",
    "price": "Ar 25000",
    "name": "Combava flavoured Rum",
    "sources": "Combava - 303",
  },
  {
    "image":"https://scontent.ftnr5-1.fna.fbcdn.net/v/t39.30808-6/276061221_3156043391307204_5835771747088672755_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=101&ccb=1-7&_nc_sid=9e2e56&efg=eyJpIjoidCJ9&_nc_eui2=AeFSJ6IqpkNyoCdIZkmaMjRYQFslLwXVeOdAWyUvBdV45w1ec7NesvFy8i9bB8jTm-YjVF6tdCz69tj4FYgJAKED&_nc_ohc=MVEsm6Z3hy4AX9bJU0z&_nc_ht=scontent.ftnr5-1.fna&oh=00_AT9Bs69qImA6WJFuOIE8pfhAszzGFcFaqtYqzPtUugQHRA&oe=63022C3A",
    "price": "Ar 50000",
    "name": "Vanilla Endemique",
    "sources": "vanilla - 303",
  },
  {
    "image": "https://scontent.ftnr5-1.fna.fbcdn.net/v/t39.30808-6/253693110_3062379954006882_5114606571690218224_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=109&ccb=1-7&_nc_sid=9e2e56&efg=eyJpIjoidCJ9&_nc_eui2=AeGx7XCXJ-Fd0uvKeNV-GaAxgNF6pqtxOx6A0Xqmq3E7Hvyuue61CKeI1fJMa47E3lrAFQCgK95MGCSOQ5SYXFGX&_nc_ohc=DuzXSkE08AcAX_Oq_n-&_nc_ht=scontent.ftnr5-1.fna&oh=00_AT8PPXRz0HKRSEWsB3oC01EKfb5m3UJtAvFnWcIyjAx-pg&oe=630238A9",
    "price": "Ar 15000",
    "name": "Pur jus de canne",
    "sources": "Canne à sucre - 303",

  },
  {
    "image": "https://scontent.ftnr5-1.fna.fbcdn.net/v/t39.30808-6/290637027_3236574093254133_8077261277375354362_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=110&ccb=1-7&_nc_sid=9e2e56&efg=eyJpIjoidCJ9&_nc_eui2=AeHqVB8ug72VhilxfrdHV2hi6OaIiT1OCXfo5oiJPU4JdwHeXbVui-qlTF1xiDBPtejw8BK-FVanLu9kGPyoxooN&_nc_ohc=t6mMBhueOSEAX-LTpJo&_nc_ht=scontent.ftnr5-1.fna&oh=00_AT_AT11_AQ6u69oBZFVp5HdLldEc4HdViSyaWbGdHrc08Q&oe=63018277",
    "price": "Ar 20000",
    "name": "Sakamalao Ginger Punch",
    "sources": "Sakamalao - 303",
  },
];




