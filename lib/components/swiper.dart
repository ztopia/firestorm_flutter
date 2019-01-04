import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';

class ExampleHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return Image.network(
          "http://via.placeholder.com/200x100",
          fit: BoxFit.fill,
        );
      },
      itemCount: 3,
      pagination: SwiperPagination(),
      autoplay: true,
      // control: SwiperControl(),
    );
  }
}
