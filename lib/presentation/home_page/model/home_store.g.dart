// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeStoreList _$HomeStoreListFromJson(Map<String, dynamic> json) =>
    HomeStoreList(
      homeStore: (json['home_store'] as List<dynamic>)
          .map((e) => HomeStore.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeStoreListToJson(HomeStoreList instance) =>
    <String, dynamic>{
      'home_store': instance.homeStore,
    };

HomeStore _$HomeStoreFromJson(Map<String, dynamic> json) => HomeStore(
      id: json['id'] as int,
      isNew: json['is_new'] as bool?,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      picture: json['picture'] as String,
      isBuy: json['is_buy'] as bool,
    );

Map<String, dynamic> _$HomeStoreToJson(HomeStore instance) => <String, dynamic>{
      'id': instance.id,
      'is_new': instance.isNew,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'picture': instance.picture,
      'is_buy': instance.isBuy,
    };
