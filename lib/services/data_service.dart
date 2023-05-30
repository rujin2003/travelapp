import 'dart:convert';

import 'package:http/http.dart' as http ;
import 'package:travel/model/datamodel.dart';


class DataServices{

  String url = "http://127.0.0.1:5000";

  getInfo()async{
    http.Response res =await  http.get(Uri.parse(url));
    print(res.body);
    var list = json.decode(res.body);
    return list.map((e)=>DataModel.fromJson(e)).toList();
  }
}

