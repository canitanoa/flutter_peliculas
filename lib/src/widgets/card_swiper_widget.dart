import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CardSwiper extends StatelessWidget {

  final List<dynamic> peliculas;

  CardSwiper({ @required this.peliculas });


  @override
  Widget build(BuildContext context) {

    //Obtiene informacion de la pantalla para adaptar el diseño a los distintos tamaños
    final _screenSize = MediaQuery.of(context).size;



    return Container(
      padding: EdgeInsets.only(top: 10.0),
      
      height: _screenSize.height * 0.5,
      width: _screenSize.width * 1, //el ancho al 70%
      child: Swiper(

          itemBuilder: (BuildContext context,int index){
            return ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: new Image.network("http://via.placeholder.com/350x150",fit: BoxFit.cover,)
            
            );
            
            
          },
          itemCount: 3,
          //pagination: new SwiperPagination(),
          //control: new SwiperControl()
          viewportFraction: 0.8,
          scale: 0.9,

      ),
    );
  }
}