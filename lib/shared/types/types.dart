import 'package:flutter/material.dart';

class Phones {
  String imgSrc;
  String desc;
  double price;
  String phoneName;
  Phones(
      {required this.imgSrc,
      required this.phoneName,
      required this.price,
      this.desc = "Дефолтное описание для элементов у которых нету описания."});
}

final List<Phones> phones = [
  Phones(
      price: 199.99,
      imgSrc:
          "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bW9iaWxlJTIwcGhvbmV8ZW58MHx8MHx8fDA%3D",
      phoneName: "Iphone"),
  Phones(
      price: 123.99,
      imgSrc:
          "data:image/jpeg;base64,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",
      phoneName: "Samsung"),
  Phones(
      price: 1234.99,
      imgSrc:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1510HzIuw0c1V42llf5pfjX-hNd0P2jymGw&usqp=CAU",
      phoneName: "Poco"),
  Phones(
      price: 139.99,
      imgSrc:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEBoEOCPjsM3osK6X9PPquZJHCBfSxpyteeQ&usqp=CAU",
      phoneName: "Tas"),
  Phones(
      price: 99.99,
      imgSrc:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsZjtSjFW8zRMYdojRfGh2mg_mf3qnJe6x9Q&usqp=CAU",
      phoneName: "Ori"),
  Phones(
      price: 100.99,
      imgSrc:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROHUihy-XBIwDqos0dnfrxp8BHu57mhZKmrA&usqp=CAU",
      phoneName: "Apon"),
  Phones(
      price: 123.99,
      imgSrc:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBr7KpcRiwDeO_8KMQeYiFhlR1ut9QCCwsHQ&usqp=CAU",
      phoneName: "Oko"),
  Phones(
      price: 10.99,
      imgSrc:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBr7KpcRiwDeO_8KMQeYiFhlR1ut9QCCwsHQ&usqp=CAU",
      phoneName: "Riba"),
  Phones(
      price: 312.99,
      imgSrc:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBr7KpcRiwDeO_8KMQeYiFhlR1ut9QCCwsHQ&usqp=CAU",
      phoneName: "Shiva"),
  Phones(
      price: 200.99,
      imgSrc:
          "data:image/jpeg;base64,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",
      phoneName: "Test phone"),
  Phones(
      price: 312.99,
      imgSrc:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBr7KpcRiwDeO_8KMQeYiFhlR1ut9QCCwsHQ&usqp=CAU",
      phoneName: "Xphone"),
  Phones(
      price: 999.99,
      imgSrc:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBr7KpcRiwDeO_8KMQeYiFhlR1ut9QCCwsHQ&usqp=CAU",
      phoneName: "Random phone"),
  Phones(
      price: 199.9,
      imgSrc:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBr7KpcRiwDeO_8KMQeYiFhlR1ut9QCCwsHQ&usqp=CAU",
      phoneName: "Old phone"),
  Phones(
      price: 200.00,
      imgSrc:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEBoEOCPjsM3osK6X9PPquZJHCBfSxpyteeQ&usqp=CAU",
      phoneName: "What"),
  Phones(
      price: 123.23,
      imgSrc:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBr7KpcRiwDeO_8KMQeYiFhlR1ut9QCCwsHQ&usqp=CAU",
      phoneName: "Telephone"),
];

class MarketItemType {
  String imgSrc;
  String desc;
  double price;
  double discaunt;
  List<String> imgSrcSet;
  MarketItemType(
      {required this.imgSrc,
      required this.desc,
      required this.price,
      required this.discaunt,
      required this.imgSrcSet});
}

final List<MarketItemType> marketItems = [
  MarketItemType(
      imgSrc: "https://ir.ozone.ru/s3/multimedia-q/wc1000/6870604670.jpg",
      desc:
          "Грипсы для мышки универсальные Logitech G102 LIGHTSYNC, G304 LIGHTSPEED, Противоскользящие накладки для мыши, черный",
      price: 640.0,
      discaunt: 5.0,
      imgSrcSet: [
        "https://ir.ozone.ru/s3/multimedia-q/wc1000/6870604670.jpg",
        "https://ir.ozone.ru/s3/multimedia-s/wc1000/6870604672.jpg",
        "https://ir.ozone.ru/s3/multimedia-t/wc1000/6870604673.jpg",
        "https://ir.ozone.ru/s3/multimedia-p/wc1000/6870604669.jpg"
      ]),
  MarketItemType(
      imgSrc: "https://ir.ozone.ru/s3/multimedia-4/wc1000/6856969816.jpg",
      desc: "Infinix Смартфон HOT 40i 4/128 ГБ, черный",
      price: 9595.0,
      discaunt: 70.0,
      imgSrcSet: [
        "https://ir.ozone.ru/s3/multimedia-4/wc1000/6856969816.jpg",
        "https://ir.ozone.ru/s3/multimedia-1/wc1000/6856969993.jpg",
        "https://ir.ozone.ru/s3/multimedia-4/wc1000/6856969996.jpg",
        "https://ir.ozone.ru/s3/multimedia-7/wc1000/6856969999.jpg"
      ]),
  MarketItemType(
      imgSrc: "https://ir.ozone.ru/s3/multimedia-j/wc1000/6833625967.jpg",
      desc:
          "Смарт часы мужские, умные часы наручные, Smart Watch X9 Ultra, электроные",
      price: 2154.0,
      discaunt: 14.0,
      imgSrcSet: [
        "https://ir.ozone.ru/s3/multimedia-j/wc1000/6833625967.jpg",
        "https://ir.ozone.ru/s3/multimedia-6/wc1000/6833625990.jpg",
        "https://ir.ozone.ru/s3/multimedia-l/wc1000/6833625933.jpg"
      ]),
  MarketItemType(
      imgSrc: "https://ir.ozone.ru/s3/multimedia-9/wc1000/6731349921.jpg",
      desc: "Умная колонка с голосовым помощником Салют SberBoom Mini",
      price: 2505.0,
      discaunt: 12.0,
      imgSrcSet: [
        "https://ir.ozone.ru/s3/multimedia-9/wc1000/6731349921.jpg",
        "https://ir.ozone.ru/s3/multimedia-b/wc1000/6537347783.jpg",
        "https://ir.ozone.ru/s3/multimedia-c/wc1000/6537347784.jpg",
        "https://ir.ozone.ru/s3/multimedia-k/wc1000/6537347792.jpg"
      ]),
  MarketItemType(
      imgSrc: "https://ir.ozone.ru/s3/multimedia-1-5/wc1000/6912551381.jpg",
      desc:
          "Наушники беспроводные большие накладные с микрофоном Hoco W35 Max New",
      price: 1204.0,
      discaunt: 50.0,
      imgSrcSet: [
        "https://ir.ozone.ru/s3/multimedia-1-1/wc1000/6922199053.jpg",
        "https://ir.ozone.ru/s3/multimedia-1-4/wc1000/6912551380.jpg",
        "https://ir.ozone.ru/s3/multimedia-1-0/wc1000/6922199052.jpg",
        "https://ir.ozone.ru/s3/multimedia-1-1/wc1000/6912551377.jpg"
      ]),
  MarketItemType(
      imgSrc: "https://ir.ozone.ru/s3/multimedia-r/wc1000/6903570123.jpg",
      desc: "Амбушюры для AirPods Pro / AirPods Pro 2 насадки 3 шт. XS/S/L",
      price: 600.0,
      discaunt: 10.0,
      imgSrcSet: [
        "https://ir.ozone.ru/s3/multimedia-6/wc1000/6101346486.jpg",
        "https://ir.ozone.ru/s3/multimedia-r/wc1000/6903570123.jpg"
      ]),
  MarketItemType(
      imgSrc: "https://ir.ozone.ru/s3/multimedia-1-3/wc1000/6912509403.jpg",
      desc: "Товар 7",
      price: 700.0,
      discaunt: 3.0,
      imgSrcSet: [
        "https://ir.ozone.ru/s3/multimedia-1-3/wc1000/6912509403.jpg",
        "https://ir.ozone.ru/s3/multimedia-1-z/wc1000/6912509399.jpg",
        "https://ir.ozone.ru/s3/multimedia-1-v/wc1000/6912509395.jpg"
      ]),
  MarketItemType(
      imgSrc: "https://ir.ozone.ru/s3/multimedia-w/wc1000/6731346380.jpg",
      desc: "Умная колонка с голосовым помощником Салют SberBoom",
      price: 5000.0,
      discaunt: 10.0,
      imgSrcSet: [
        "https://ir.ozone.ru/s3/multimedia-n/wc1000/6680611463.jpg",
        "https://ir.ozone.ru/s3/multimedia-t/wc1000/6680611469.jpg",
        "https://ir.ozone.ru/s3/multimedia-i/wc1000/6680611422.jpg"
      ]),
  MarketItemType(
      imgSrc: "https://ir.ozone.ru/s3/multimedia-3/wc1000/6561892935.jpg",
      desc: "HStorie Умные часы Smart Watch X8 PRO, 45mm, Черный",
      price: 2020.0,
      discaunt: 23.0,
      imgSrcSet: [
        "https://ir.ozone.ru/s3/multimedia-3/wc1000/6561892935.jpg",
        "https://ir.ozone.ru/s3/multimedia-7/wc1000/6561892939.jpg",
        "https://ir.ozone.ru/s3/multimedia-0/wc1000/6561892932.jpg"
      ]),
  MarketItemType(
      imgSrc: "https://ir.ozone.ru/s3/multimedia-l/wc1000/6904608213.jpg",
      desc: "Умные смарт часы женские розовые",
      price: 1000.0,
      discaunt: 100.0,
      imgSrcSet: [
        "https://ir.ozone.ru/s3/multimedia-l/wc1000/6904608213.jpg",
        "https://ir.ozone.ru/s3/multimedia-3/wc1000/6904608195.jpg",
        "https://ir.ozone.ru/s3/multimedia-r/wc1000/6904608147.jpg"
      ]),
  MarketItemType(
      imgSrc: "https://ir-2.ozone.ru/s3/multimedia-5/wc300/6725257097.jpg",
      desc: "Наушники беспроводные / Bluetooth / 1-го поколения / Белый",
      price: 1300.0,
      discaunt: 12.0,
      imgSrcSet: [
        "https://ir.ozone.ru/s3/multimedia-r/wc1000/6904608147.jpg",
        "https://ir.ozone.ru/s3/multimedia-1-c/wc1000/6922452936.jpg",
        "https://ir.ozone.ru/s3/multimedia-1-e/wc1000/6922452938.jpg"
      ]),
  MarketItemType(
      imgSrc: "https://ir.ozone.ru/s3/multimedia-n/wc1000/6751446503.jpg",
      desc: "Кастомный спиральный провод для клавиатуры с переходником Авиатор",
      price: 1200.0,
      discaunt: 51.0,
      imgSrcSet: [
        "https://ir.ozone.ru/s3/multimedia-n/wc1000/6751446503.jpg",
        "https://ir.ozone.ru/s3/multimedia-4/wc1000/6751446484.jpg",
        "https://ir.ozone.ru/s3/multimedia-6/wc1000/6751446486.jpg"
      ]),
  MarketItemType(
      imgSrc: "https://ir-2.ozone.ru/s3/multimedia-q/wc300/6833258306.jpg",
      desc: "Товар 13",
      price: 1300.0,
      discaunt: 23.0,
      imgSrcSet: []),
  MarketItemType(
      imgSrc: "https://ir-2.ozone.ru/s3/multimedia-u/wc300/6785283414.jpg",
      desc: "Товар 14",
      price: 1400.0,
      discaunt: 34.0,
      imgSrcSet: []),
  MarketItemType(
      imgSrc: "https://ir-2.ozone.ru/s3/multimedia-v/wc300/6686932027.jpg",
      desc: "Товар 15",
      price: 1500.0,
      discaunt: 59.0,
      imgSrcSet: []),
];
