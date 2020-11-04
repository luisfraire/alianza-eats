import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

class sliderCategorias extends StatelessWidget {
  final controller = PageController(initialPage: 1, viewportFraction: 0.3);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return PageView(
            controller: controller,
            children: <Widget>[
              _imagenCategori(),
              _imagenCategori1(),
              _imagenCategori(),
              _imagenCategori()
            ],
          );
        },
        itemCount: 3,
        layout: SwiperLayout.DEFAULT,
      ),
    );
  }
}

Widget _imagenCategori() {
  return GestureDetector(
      onTap: () {
        print('Voy a una categoria');
      },
      child: Container(
          child: Image(
        image: AssetImage('images/perron.jpg'),
      )));
}

Widget _imagenCategori1() {
  return GestureDetector(
      onTap: () {
        print('Voy a una categoria');
      },
      child: Container(
          child: Image(
        fit: BoxFit.contain,
        image: AssetImage('images/ham.jpg'),
      )));
}
