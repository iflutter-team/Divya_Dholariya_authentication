import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:untitled/model/photos_Model.dart';
import 'package:untitled/model/post_model.dart';
import 'package:untitled/services/http_services.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/util/endpoint_res.dart';

class HomeScreenApi {
  // static Future getData() async {
  //   try {
  //     http.Response? response =
  //         await HttpServices.getApi(url: EndPointRes.photosEndPoint);
  //     if (response != null && response.statusCode == 200) {
  //       return imageModelFromJson(response.body);
  //     }
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     return null;
  //   }
  // }

  static Future addData() async {
    try {
      http.Response? response =
          await HttpServices.getApi(url: EndPointRes.productsEndPoint);
      if (response != null && response.statusCode == 200) {
        return productModelFromJson(response.body);
      }
    } catch (e) {
     // if (kDebugMode) {
        print(e);
     // }
      return null;
    }
  }

}
