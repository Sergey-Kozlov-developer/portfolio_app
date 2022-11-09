import 'package:json_annotation/json_annotation.dart';

part 'home_store.g.dart';

@JsonSerializable()
class HomeStoreList {
  List<HomeStore> homeStore;
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
