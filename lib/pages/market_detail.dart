import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../app/app_theme.dart';

class MarketDetail extends StatelessWidget {
  final String desc;
  final double price;
  final double finalPrice;
  final List<String> srcImgList;
  const MarketDetail(
      {Key? key,
      required this.srcImgList,
      required this.desc,
      required this.finalPrice,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: AppTheme.containerPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 400,
                child: CarouselSlider.builder(
                  itemCount: srcImgList.length,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      Image.network(srcImgList[itemIndex]),
                  options: CarouselOptions(),
                ),
              ),
              Row(
                children: [
                  Text(
                    '$finalPrice ₽',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.titleLarge,
                  ),
                  Text(
                    '$price ₽',
                    style: TextStyle(decoration: TextDecoration.lineThrough),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      desc,
                      style: TextStyles.headlineSmall,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
