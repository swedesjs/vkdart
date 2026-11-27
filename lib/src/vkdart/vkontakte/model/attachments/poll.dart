import 'package:vkdart/vkontakte.dart';

/// Модель опроса
///
/// См. https://dev.vk.com/ru/reference/objects/poll
class PollAttachmentModel extends CustomAttachmentModel {
  // ignore: public_member_api_docs
  PollAttachmentModel(super.payload) : super(attachType: 'poll');

  /// Дата создания в формате Unix.
  int? get createdAt => payload['created'];

  /// Текст вопроса.
  String? get question => payload['question'];

  /// Количество голосов.
  int? get votesCount => payload['votes'];

  /// Массив объектов с информацией о вариантах ответа.
  List<PollAttachmentAnswerModel>? get answers => (payload['answers'] as List?)
      ?.map(
          (e) => PollAttachmentAnswerModel((e as Map).cast<String, dynamic>()))
      .toList();

  /// Является ли опрос анонимным.
  bool? get isAnonymous => payload['anonymous'];

  /// Допускает ли опрос выбор нескольких вариантов ответа.
  bool? get isMultiple => payload['multiple'];

  /// ID вариантов ответа, выбранных текущим пользователем.
  List<int>? get answerIds => (payload['answer_ids'] as List?)?.cast<int>();

  /// Дата завершения опроса в формате Unix. Значение 0 означает, что срок не ограничен.
  int? get endDate => payload['end_date'];

  /// Завершён ли опрос.
  bool? get isClosed => payload['closed'];

  /// Прикреплён ли опрос к обсуждению.
  bool? get isBoard => payload['is_board'];

  /// Можно ли редактировать опрос?
  bool? get isCanEdit => payload['can_edit'];

  /// Можно ли голосовать в опросе.
  bool? get isCanVote => payload['can_vote'];

  /// Можно ли пожаловаться на опрос.
  bool? get isCanReport => payload['can_report'];

  /// Можно ли поделиться опросом?
  bool? get isCanShare => payload['can_share'];

  /// ID автора опроса.
  int? get authorId => payload['author_id'];

  /// Фотография используется в качестве фона карточки опроса.
  PhotoAttachmentModel? get photo =>
      payload['photo'] != null ? PhotoAttachmentModel(payload['photo']) : null;

  Map<String, dynamic>? get _background => payload['background'];

  /// ID фона.
  int? get backgroundId => _background?['id'];

  /// тип фона. Возможные значения: `gradient`, `tile`.
  String? get backgroundType => _background?['type'];

  /// (для type = gradient) угол градиента вдоль оси X.
  int? get backgroundAngle => _background?['angle'];

  /// HEX-код цвета заливки (без #).
  String? get backgroundColor => _background?['color'];

  /// (для type = tile) ширина элемента узора.
  int? get backgroundWidth => _background?['width'];

  /// (для type = tile) высота элемента узора.
  int? get backgroundHeight => _background?['height'];

  /// (для type = tile) изображение элемента узора.
  List<Map<String, dynamic>>? get backgroundImages =>
      (_background?['images'] as List?)?.cast<Map<String, dynamic>>();

  /// (для type = gradient) точки градиента.
  List<(int position, String color)>? get backgroundPoints =>
      (_background?['points'] as List?)
          ?.map((e) => ((e as Map)['position'] as int, e['color'] as String))
          .toList();

  /// ID трёх друзей, проголосовавших в опросе.
  List<int>? get friends => (payload['friends'] as List?)?.cast<int>();
}

/// Модель ответа опроса
///
/// См. https://dev.vk.com/ru/reference/objects/poll#answers
final class PollAttachmentAnswerModel {
  // ignore: public_member_api_docs
  PollAttachmentAnswerModel(this.answerObject);

  /// Данные.
  final Map<String, dynamic> answerObject;

  /// ID ответа.
  int get id => answerObject['id'];

  /// Текст ответа.
  String get text => answerObject['text'];

  /// Количество пользователей, выбравших этот ответ.
  int get votes => answerObject['votes'];

  /// Рейтинг ответа.
  int? get rate => answerObject['rate'];
}
