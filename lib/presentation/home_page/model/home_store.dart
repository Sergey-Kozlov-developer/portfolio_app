import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:http/http.dart' as http;

part 'home_store.g.dart';

@JsonSerializable()
class HomeStoreList {
  List<HomeStore?> homeStore;
  HomeStoreList({required this.homeStore});

  factory HomeStoreList.fromJson(final Map<String, dynamic> json) =>
      _$HomeStoreListFromJson(json);

  Map<String, dynamic> toJson() => _$HomeStoreListToJson(this);

}


@JsonSerializable()
class HomeStore {
  final int? id;
  final bool? isNew;
  final String? title;
  final String? subTitle;
  final String? picture;
  final bool? isBuy;

  HomeStore({
    this.id,
    this.isNew,
    this.title,
    this.subTitle,
    this.picture,
    this.isBuy,
  });

  factory HomeStore.fromJson(final Map<String, dynamic> json) =>
      _$HomeStoreFromJson(json);

  Map<String, dynamic> toJson() => _$HomeStoreToJson(this);
}

Future<HomeStoreList> getHomeStoreList() async {
  const url = 'https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175';
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    print(response.body);
    return HomeStoreList.fromJson(json.decode(response.body));
  } else {
    throw Exception('Error: ${response.reasonPhrase}');
  }
}