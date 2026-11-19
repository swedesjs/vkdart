import 'package:vkdart/vkontakte.dart';

/// Модель фотографии
///
/// См. https://dev.vk.com/ru/reference/objects/photo
class PhotoAttachmentModel extends CustomAttachmentModel {
  // ignore: public_member_api_docs
  PhotoAttachmentModel(super.payload) : super(attachType: 'photo');

  /// ID альбома, в котором находится фотография.
  int? get albumId => payload['album_id'];

  /// ID пользователя, загрузившего фотографию.
  int? get userId => payload['user_id'];

  /// Описание фотографии.
  String? get text => payload['text'];

  /// Дата добавления в формате Unix.
  int? get createdAt => payload['date'];

  /// Массив копий изображения разных размеров.
  List<PhotoCopyModel> get sizes => (payload['sizes'] as List)
      .map((e) => PhotoCopyModel((e as Map).cast<String, dynamic>()))
      .toList();

  /// Ширина оригинала фотографии в пикселях.
  int? get width => payload['width'];

  /// Высота оригинала фотографии в пикселях.
  int? get height => payload['height'];

  /// ID записи, в которую была загружена фотография.
  ///
  /// См. https://dev.vk.com/ru/reference/objects/attachments-wall#Фотография%20(type%20=%20photo)
  int? get postId => payload['post_id'];
}

/// Модель копии фотографии.
///
/// См. https://dev.vk.com/ru/reference/objects/photo-sizes
class PhotoCopyModel {
  // ignore: public_member_api_docs
  PhotoCopyModel(this.photoObject);

  /// Данные.
  final Map<String, dynamic> photoObject;

  /// Тип фотографии.
  String get type => photoObject['type'];

  /// URL фотографии.
  String get url => photoObject['url'];

  /// Ширина фотографии.
  int get width => photoObject['width'];

  /// Высота фотографии.
  int get height => photoObject['height'];
}
