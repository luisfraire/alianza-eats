import 'package:flutter/material.dart';
import 'package:prueba1/src/colors/colors.dart';
import 'package:prueba1/widgets/swiper_categorias.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(slivers: [
      SliverList(delegate: SliverChildListDelegate([_topBar(context)]))
    ]));
  }
}

Widget _topBar(BuildContext context) {
  return Row(children: [
    Container(
        width: 300,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(234, 236, 239, 1.0)),
            borderRadius: BorderRadius.circular(20.0)),
        child: Row(
          children: [
            Icon(
              Icons.search,
              size: 20.0,
              color: gris,
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              child: Text(
                'Serch',
                style: TextStyle(color: gris, fontSize: 17.0),
              ),
            )
          ],
        )),
    Container(
        width: 40.0,
        height: 40.0,
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            color: Color.fromRGBO(209, 209, 214, 1.0),
            borderRadius: BorderRadius.circular(30)),
        child: IconButton(
            icon: Icon(Icons.filter_list, size: 25, color: Colors.white),
            onPressed: () {}))
  ]);
}
