import 'package:flutter/material.dart';
import '../../../app/app_theme.dart';
import '../../../pages/market_detail.dart';

class GridItem extends StatelessWidget {
  final String imgSrc;
  final String desc;
  final double price;
  final double discaunt;
  final double finalPrice;
  final List<String> imgList;
  const GridItem(
      {super.key,
      required this.imgSrc,
      required this.desc,
      required this.discaunt,
      required this.price,
      required this.imgList})
      : finalPrice = price - (price * (discaunt / 100));

  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MarketDetail(
                        desc: desc,
                        srcImgList: imgList,
                        price: price,
                        finalPrice: finalPrice,
                      )));
        },
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppTheme.sceletonBackground,
                  ),
                  child: Image.network(imgSrc, fit: BoxFit.cover),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: <Widget>[
                    Text(
                      '$finalPrice ₽',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.titleLarge,
                    ),
                    Text(
                      '$price ₽',
                      style: TextStyle(decoration: TextDecoration.lineThrough),
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        desc,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyles.body,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
