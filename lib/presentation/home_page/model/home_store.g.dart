// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeStoreList _$HomeStoreListFromJson(Map<String, dynamic> json) =>
    HomeStoreList(
      homeStore: (json['homeStore'] as List<dynamic>)
          .map((e) => HomeStore.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeStoreListToJson(HomeStoreList instance) =>
    <String, dynamic>{
      'homeStore': instance.homeStore,
    };

HomeStore _$HomeStoreFromJson(Map<String, dynamic> json) => HomeStore(
      id: json['id'] as int?,
      isNew: json['isNew'] as bool?,
      title: json['title'] as String?,
      subTitle: json['subTitle'] as String?,
      picture: json['picture'] as String?,
      isBuy: json['isBuy'] as bool?,
    );

Map<String, dynamic> _$HomeStoreToJson(HomeStore instance) => <String, dynamic>{
      'id': instance.id,
      'isNew': instance.isNew,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'picture': instance.picture,
      'isBuy': instance.isBuy,
    };
