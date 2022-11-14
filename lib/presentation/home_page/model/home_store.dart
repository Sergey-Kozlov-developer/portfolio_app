import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:equatable/equatable.dart';

part 'home_store.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class HomeStoreList {
  List<HomeStore> homeStore;
  HomeStoreList({required this.homeStore});

  factory HomeStoreList.fromJson(final Map<String, dynamic> json) =>
      _$HomeStoreListFromJson(json);

  Map<String, dynamic> toJson() => _$HomeStoreListToJson(this);

}


@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class HomeStore extends Equatable {
  final int id;
  final bool? isNew;
  final String title;
  final String subtitle;
  final String picture;
  final bool isBuy;

  HomeStore({
    required this.id,
    required this.isNew,
    required this.title,
    required this.subtitle,
    required this.picture,
    required this.isBuy,
  });

  factory HomeStore.fromJson(final Map<String, dynamic> json) =>
      _$HomeStoreFromJson(json);

  Map<String, dynamic> toJson() => _$HomeStoreToJson(this);

  @override

  List<Object?> get props => [id,isNew,title,subtitle,picture,isBuy];
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

