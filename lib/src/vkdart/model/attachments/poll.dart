part of 'attachment.dart';

/// Model Poll
///
/// See https://dev.vk.com/ru/reference/objects/poll
class PollAttachmentModel extends CustomAttachmentModel {
  // ignore: public_member_api_docs
  PollAttachmentModel(super.payload);

  /// Date of creation in Unixtime format.
  int? get createdAt => attachmentObject['created'];

  /// Question text.
  String? get question => attachmentObject['question'];

  /// The number of votes.
  int? get votesCount => attachmentObject['votes'];

  /// An array of objects that contain information about answer options.
  List<PollAttachmentAnswerModel>? get answers => (attachmentObject['answers']
          as List?)
      ?.map(
          (e) => PollAttachmentAnswerModel((e as Map).cast<String, dynamic>()))
      .toList();

  /// Whether the survey is anonymous.
  bool? get isAnonymous => attachmentObject['anonymous'];

  /// Does the survey allow for multiple answer options.
  bool? get isMultiple => attachmentObject['multiple'];

  /// IDs of the answer options selected by the current user.
  List<int>? get answerIds =>
      (attachmentObject['answer_ids'] as List?)?.cast<int>();

  /// The date when the survey was completed in Unixtime. 0 if the survey is open-ended.
  int? get endDate => attachmentObject['end_date'];

  /// Whether the survey is completed.
  bool? get isClosed => attachmentObject['closed'];

  /// Whether the survey is attached to the discussion.
  bool? get isBoard => attachmentObject['is_board'];

  /// Is it possible to edit the survey?
  bool? get isCanEdit => attachmentObject['can_edit'];

  /// Is it possible to vote in the poll.
  bool? get isCanVote => attachmentObject['can_vote'];

  /// Is it possible to complain about the survey.
  bool? get isCanReport => attachmentObject['can_report'];

  /// Is it possible to share the survey?
  bool? get isCanShare => attachmentObject['can_share'];

  /// The ID of the survey author.
  int? get authorId => attachmentObject['author_id'];

  /// The photo is the background of the survey snippet.
  PhotoAttachmentModel? get photo => attachmentObject['photo'] != null
      ? PhotoAttachmentModel(attachmentObject['photo'])
      : null;

  Map<String, dynamic>? get _background => attachmentObject['background'];

  /// background ID.
  int? get backgroundId => _background?['id'];

  /// the type of background. Possible values: `gradient`, `tile`.
  String? get backgroundType => _background?['type'];

  /// (for type = gradient) the angle of the gradient along the X-axis.
  int? get backgroundAngle => _background?['angle'];

  /// The HEX code of the replacement color (without #).
  String? get backgroundColor => _background?['color'];

  /// (for type = tile) the width of the pattern tile.
  int? get backgroundWidth => _background?['width'];

  /// (for type = tile) the height of the pattern tile.
  int? get backgroundHeight => _background?['height'];

  /// (for type = tile) the image of the pattern tile.
  List<Map<String, dynamic>>? get backgroundImages =>
      (_background?['images'] as List?)?.cast<Map<String, dynamic>>();

  /// (for type = gradient) gradient points.
  List<(int position, String color)>? get backgroundPoints =>
      (_background?['points'] as List?)
          ?.map((e) => ((e as Map)['position'] as int, e['color'] as String))
          .toList();

  /// The IDs of the 3 friends who voted in the poll.
  List<int>? get friends => (attachmentObject['friends'] as List?)?.cast<int>();
}

/// Model Poll Answer
///
/// See https://dev.vk.com/ru/reference/objects/poll#answers
final class PollAttachmentAnswerModel {
  // ignore: public_member_api_docs
  PollAttachmentAnswerModel(this.answerObject);

  /// Payload.
  final Map<String, dynamic> answerObject;

  /// Id answer.
  int get id => answerObject['id'];

  /// Text answer.
  String get text => answerObject['text'];

  /// Number of people who voted for this answer.
  int get votes => answerObject['votes'];

  /// Answer rating.
  int? get rate => answerObject['rate'];
}
