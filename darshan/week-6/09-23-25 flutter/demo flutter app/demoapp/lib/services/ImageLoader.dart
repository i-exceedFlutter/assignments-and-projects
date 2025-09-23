import 'package:flutter/widgets.dart';

class ImageLoader {

  static getImage({BoxFit fit = BoxFit.cover}){
      return Image.network('https://www.i-exceed.com/wp-content/uploads/2022/08/i-exceed-Hi-Res-copy-1.webp');
  }

}