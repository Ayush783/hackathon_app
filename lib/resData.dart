

import 'dart:convert';

import 'package:http/http.dart';
const apikey1="ba4fa1af6358a8acb8783da428c5e77d";

class ResData{
  Future<void> resData() async{
    Response response= await get('https://developers.zomato.com/api/v2.1/location_details?entity_id=11882&entity_type=city',headers: {'content-type': 'application/json','user-key':apikey1,"access-control-allow-credentials": "true"});
    var data=jsonDecode(response.body)['best_rated_restaurant'][0]['restaurant']['name'];
    print(data);
  }
}