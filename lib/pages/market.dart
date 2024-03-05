import 'package:flutter/material.dart';
import '../app/app_theme.dart';
import '../shared/types/types.dart';
import '../features/grid_list/gird_item/grid_item.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({super.key});

  @override
  State<MarketPage> createState() => _MarketPageState();
}

//Создаем стейт фулл страницу
class _MarketPageState extends State<MarketPage> {
  //Начальное колличество
  int _columnCount = 3;
  //Метод для смены количества в grid
  void _changeCountOfColumns() {
    //Меняем стейт
    setState(() {
      if (_columnCount <= 1) {
        _columnCount++;
      } else {
        _columnCount -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //Стили
        color: AppTheme.backgroundColor,
        padding: AppTheme.containerPadding,
        //Вставляем сюда наш виджет передаем в поле columnCount приватное поле _columnCount
        child: MarketGridList(columnCount: _columnCount),
      ),
      //Добавляем кнопку, тк, она имеет общие поля и методы класса вызываем метод добавления колонки
      floatingActionButton: FloatingActionButton(
        onPressed: _changeCountOfColumns,
        child: Icon(Icons.grid_view),
      ),
    );
  }
}

//Создаем виджет для grid
class MarketGridList extends StatelessWidget {
  //Объявляем поле которое запрашиваем
  final int columnCount;
  //Запрашиваем поле
  MarketGridList({super.key, required this.columnCount});

  @override
  //рендер
  Widget build(BuildContext context) {
    return GridView.builder(
        //Подставляем переменную которую получили в нашем виджете из  _MarketPageState поле которое передали сюда   int _columnCount = 3; и подставляем поле которое запрашивали то есть columnCount
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: columnCount,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10),
        itemCount: marketItems.length,
        itemBuilder: (BuildContext context, int index) {
          if (marketItems.isEmpty) {
            return const Center(
              child: Text('Тавары не найдены'),
            );
          } else {
            return GridItem(
              imgList: marketItems[index].imgSrcSet,
              imgSrc: marketItems[index].imgSrc,
              desc: marketItems[index].desc,
              price: marketItems[index].price,
              discaunt: marketItems[index].discaunt,
            );
          }
        });
  }
}
