// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainAttachment _$MainAttachmentFromJson(Map<String, dynamic> json) =>
    MainAttachment(
      $enumDecode(_$AttachmentTypeEnumMap, json['attachType']),
    );

Map<String, dynamic> _$MainAttachmentToJson(MainAttachment instance) =>
    <String, dynamic>{
      'attachType': _$AttachmentTypeEnumMap[instance.attachType]!,
    };

const _$AttachmentTypeEnumMap = {
  AttachmentType.photo: 'photo',
  AttachmentType.video: 'video',
  AttachmentType.audio: 'audio',
  AttachmentType.doc: 'doc',
  AttachmentType.link: 'link',
  AttachmentType.market: 'market',
  AttachmentType.market_album: 'market_album',
  AttachmentType.wall: 'wall',
  AttachmentType.wall_reply: 'wall_reply',
  AttachmentType.sticker: 'sticker',
  AttachmentType.gift: 'gift',
};

Attachment _$AttachmentFromJson(Map<String, dynamic> json) => Attachment(
      $enumDecode(_$AttachmentTypeEnumMap, json['attachType']),
      id: json['id'] as int,
      owner_id: json['owner_id'] as int,
      access_key: json['access_key'] as String?,
    );

Map<String, dynamic> _$AttachmentToJson(Attachment instance) =>
    <String, dynamic>{
      'attachType': _$AttachmentTypeEnumMap[instance.attachType]!,
      'id': instance.id,
      'owner_id': instance.owner_id,
      'access_key': instance.access_key,
    };

MinorAttachment _$MinorAttachmentFromJson(Map<String, dynamic> json) =>
    MinorAttachment(
      $enumDecode(_$AttachmentTypeEnumMap, json['attachType']),
    );

Map<String, dynamic> _$MinorAttachmentToJson(MinorAttachment instance) =>
    <String, dynamic>{
      'attachType': _$AttachmentTypeEnumMap[instance.attachType]!,
    };

PhotoAttachment _$PhotoAttachmentFromJson(Map<String, dynamic> json) =>
    PhotoAttachment(
      id: json['id'] as int,
      owner_id: json['owner_id'] as int,
      access_key: json['access_key'] as String?,
      album_id: json['album_id'] as int?,
      user_id: json['user_id'] as int?,
      text: json['text'] as String?,
      date: json['date'] as int?,
      sizes: (json['sizes'] as List<dynamic>?)
          ?.map((e) => PhotoSizes.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PhotoAttachmentToJson(PhotoAttachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner_id': instance.owner_id,
      'access_key': instance.access_key,
      'album_id': instance.album_id,
      'user_id': instance.user_id,
      'text': instance.text,
      'date': instance.date,
      'sizes': instance.sizes?.map((e) => e.toJson()).toList(),
    };

PhotoSizes _$PhotoSizesFromJson(Map<String, dynamic> json) => PhotoSizes(
      type: json['type'] as String?,
      url: json['url'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$PhotoSizesToJson(PhotoSizes instance) =>
    <String, dynamic>{
      'type': instance.type,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };

AudioAttachment _$AudioAttachmentFromJson(Map<String, dynamic> json) =>
    AudioAttachment(
      id: json['id'] as int,
      owner_id: json['owner_id'] as int,
      access_key: json['access_key'] as String?,
      artist: json['artist'] as String?,
      title: json['title'] as String?,
      duration: json['duration'] as int?,
      url: json['url'] as String?,
      lyrics_id: json['lyrics_id'] as int?,
      album_id: json['album_id'] as int?,
      genre_id: json['genre_id'] as int?,
      date: json['date'] as int?,
      no_search: json['no_search'] as int?,
      is_hq: json['is_hq'] as int?,
    );

Map<String, dynamic> _$AudioAttachmentToJson(AudioAttachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner_id': instance.owner_id,
      'access_key': instance.access_key,
      'artist': instance.artist,
      'title': instance.title,
      'duration': instance.duration,
      'url': instance.url,
      'lyrics_id': instance.lyrics_id,
      'album_id': instance.album_id,
      'genre_id': instance.genre_id,
      'date': instance.date,
      'no_search': instance.no_search,
      'is_hq': instance.is_hq,
    };

DocAttachment _$DocAttachmentFromJson(Map<String, dynamic> json) =>
    DocAttachment(
      id: json['id'] as int,
      owner_id: json['owner_id'] as int,
      access_key: json['access_key'] as String?,
      title: json['title'] as String?,
      size: json['size'] as int?,
      ext: json['ext'] as String?,
      url: json['url'] as String?,
      date: json['date'] as int?,
      type: json['type'] as int?,
      preview: json['preview'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$DocAttachmentToJson(DocAttachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner_id': instance.owner_id,
      'access_key': instance.access_key,
      'title': instance.title,
      'size': instance.size,
      'ext': instance.ext,
      'url': instance.url,
      'date': instance.date,
      'type': instance.type,
      'preview': instance.preview,
    };

GiftAttachment _$GiftAttachmentFromJson(Map<String, dynamic> json) =>
    GiftAttachment(
      id: json['id'] as int?,
      thumb_256: json['thumb_256'] as String?,
      thumb_96: json['thumb_96'] as String?,
      thumb_48: json['thumb_48'] as String?,
    );

Map<String, dynamic> _$GiftAttachmentToJson(GiftAttachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'thumb_256': instance.thumb_256,
      'thumb_96': instance.thumb_96,
      'thumb_48': instance.thumb_48,
    };

LinkAttachment _$LinkAttachmentFromJson(Map<String, dynamic> json) =>
    LinkAttachment(
      url: json['url'] as String?,
      title: json['title'] as String?,
      caption: json['caption'] as String?,
      description: json['description'] as String?,
      photo: json['photo'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$LinkAttachmentToJson(LinkAttachment instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
      'caption': instance.caption,
      'description': instance.description,
      'photo': instance.photo,
    };

MarketAlbumAttachment _$MarketAlbumAttachmentFromJson(
        Map<String, dynamic> json) =>
    MarketAlbumAttachment(
      id: json['id'] as int,
      owner_id: json['owner_id'] as int,
      access_key: json['access_key'] as String?,
      title: json['title'] as String?,
      is_main: json['is_main'] as bool?,
      is_hidden: json['is_hidden'] as bool?,
      photo: json['photo'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$MarketAlbumAttachmentToJson(
        MarketAlbumAttachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner_id': instance.owner_id,
      'access_key': instance.access_key,
      'title': instance.title,
      'is_main': instance.is_main,
      'is_hidden': instance.is_hidden,
      'photo': instance.photo,
    };

MarketAttachment _$MarketAttachmentFromJson(Map<String, dynamic> json) =>
    MarketAttachment(
      id: json['id'] as int,
      owner_id: json['owner_id'] as int,
      access_key: json['access_key'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      price: json['price'] as Map<String, dynamic>?,
      dimensions: json['dimensions'] as Map<String, dynamic>?,
      weight: json['weight'] as int?,
      category: json['category'] as Map<String, dynamic>?,
      thumb_photo: json['thumb_photo'] as String?,
      date: json['date'] as int?,
      availability: json['availability'] as int?,
      is_favorite: json['is_favorite'] as bool?,
      sku: json['sku'] as String?,
      reject_info: json['reject_info'] as Map<String, dynamic>?,
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      can_comment: json['can_comment'] as int?,
      can_repost: json['can_repost'] as int?,
      likes: json['likes'] as Map<String, dynamic>?,
      url: json['url'] as String?,
      button_title: json['button_title'] as String?,
    );

Map<String, dynamic> _$MarketAttachmentToJson(MarketAttachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner_id': instance.owner_id,
      'access_key': instance.access_key,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'dimensions': instance.dimensions,
      'weight': instance.weight,
      'category': instance.category,
      'thumb_photo': instance.thumb_photo,
      'date': instance.date,
      'availability': instance.availability,
      'is_favorite': instance.is_favorite,
      'sku': instance.sku,
      'reject_info': instance.reject_info,
      'photos': instance.photos,
      'can_comment': instance.can_comment,
      'can_repost': instance.can_repost,
      'likes': instance.likes,
      'url': instance.url,
      'button_title': instance.button_title,
    };

VideoAttachment _$VideoAttachmentFromJson(Map<String, dynamic> json) =>
    VideoAttachment(
      id: json['id'] as int,
      owner_id: json['owner_id'] as int,
      access_key: json['access_key'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      duration: json['duration'] as int?,
      image: (json['image'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      first_frame: (json['first_frame'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      date: json['date'] as int?,
      adding_date: json['adding_date'] as int?,
      views: json['views'] as int?,
      local_views: json['local_views'] as int?,
      comments: json['comments'] as int?,
      player: json['player'] as String?,
      platform: json['platform'] as String?,
      can_add: json['can_add'] as int?,
      is_private: json['is_private'] as int?,
      processing: json['processing'] as int?,
      is_favorite: json['is_favorite'] as bool?,
      can_comment: json['can_comment'] as int?,
      can_edit: json['can_edit'] as int?,
      can_like: json['can_like'] as int?,
      can_repost: json['can_repost'] as int?,
      can_subscribe: json['can_subscribe'] as int?,
      can_add_to_faves: json['can_add_to_faves'] as int?,
      can_attach_link: json['can_attach_link'] as int?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      user_id: json['user_id'] as int?,
      converting: json['converting'] as int?,
      added: json['added'] as int?,
      is_subscribed: json['is_subscribed'] as int?,
      repeat: json['repeat'] as int?,
      type: json['type'] as String?,
      balance: json['balance'] as int?,
      live_status: json['live_status'] as String?,
      live: json['live'] as int?,
      upcoming: json['upcoming'] as int?,
      spectators: json['spectators'] as int?,
      likes: json['likes'] as Map<String, dynamic>?,
      reposts: json['reposts'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$VideoAttachmentToJson(VideoAttachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner_id': instance.owner_id,
      'access_key': instance.access_key,
      'title': instance.title,
      'description': instance.description,
      'duration': instance.duration,
      'image': instance.image,
      'first_frame': instance.first_frame,
      'date': instance.date,
      'adding_date': instance.adding_date,
      'views': instance.views,
      'local_views': instance.local_views,
      'comments': instance.comments,
      'player': instance.player,
      'platform': instance.platform,
      'can_add': instance.can_add,
      'is_private': instance.is_private,
      'processing': instance.processing,
      'is_favorite': instance.is_favorite,
      'can_comment': instance.can_comment,
      'can_edit': instance.can_edit,
      'can_like': instance.can_like,
      'can_repost': instance.can_repost,
      'can_subscribe': instance.can_subscribe,
      'can_add_to_faves': instance.can_add_to_faves,
      'can_attach_link': instance.can_attach_link,
      'width': instance.width,
      'height': instance.height,
      'user_id': instance.user_id,
      'converting': instance.converting,
      'added': instance.added,
      'is_subscribed': instance.is_subscribed,
      'repeat': instance.repeat,
      'type': instance.type,
      'balance': instance.balance,
      'live_status': instance.live_status,
      'live': instance.live,
      'upcoming': instance.upcoming,
      'spectators': instance.spectators,
      'likes': instance.likes,
      'reposts': instance.reposts,
    };

StickerAttachment _$StickerAttachmentFromJson(Map<String, dynamic> json) =>
    StickerAttachment(
      product_id: json['product_id'] as int?,
      sticker_id: json['sticker_id'] as int?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      images_with_background: (json['images_with_background'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      animation_url: json['animation_url'] as String?,
      is_allowed: json['is_allowed'] as bool?,
    );

Map<String, dynamic> _$StickerAttachmentToJson(StickerAttachment instance) =>
    <String, dynamic>{
      'product_id': instance.product_id,
      'sticker_id': instance.sticker_id,
      'images': instance.images,
      'images_with_background': instance.images_with_background,
      'animation_url': instance.animation_url,
      'is_allowed': instance.is_allowed,
    };

WallReplyAttachment _$WallReplyAttachmentFromJson(Map<String, dynamic> json) =>
    WallReplyAttachment(
      id: json['id'] as int?,
      from_id: json['from_id'] as int?,
      date: json['date'] as int?,
      text: json['text'] as String?,
      donut: json['donut'] as Map<String, dynamic>?,
      reply_to_user: json['reply_to_user'] as int?,
      reply_to_comment: json['reply_to_comment'] as int?,
      attachments: json['attachments'] as Map<String, dynamic>?,
      parents_stack: (json['parents_stack'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      thread: json['thread'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$WallReplyAttachmentToJson(
        WallReplyAttachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from_id': instance.from_id,
      'date': instance.date,
      'text': instance.text,
      'donut': instance.donut,
      'reply_to_user': instance.reply_to_user,
      'reply_to_comment': instance.reply_to_comment,
      'attachments': instance.attachments,
      'parents_stack': instance.parents_stack,
      'thread': instance.thread,
    };

WallAttachment _$WallAttachmentFromJson(Map<String, dynamic> json) =>
    WallAttachment(
      id: json['id'] as int,
      owner_id: json['owner_id'] as int,
      from_id: json['from_id'] as int?,
      created_by: json['created_by'] as int?,
      date: json['date'] as int?,
      text: json['text'] as String?,
      reply_owner_id: json['reply_owner_id'] as int?,
      reply_post_id: json['reply_post_id'] as int?,
      friends_only: json['friends_only'] as int?,
      comments: json['comments'] as Map<String, dynamic>?,
      copyright: json['copyright'] as Map<String, dynamic>?,
      likes: json['likes'] as Map<String, dynamic>?,
      reposts: json['reposts'] as Map<String, dynamic>?,
      views: json['views'] as Map<String, dynamic>?,
      post_type: json['post_type'] as String?,
      post_source: json['post_source'] as Map<String, dynamic>?,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      geo: json['geo'] as Map<String, dynamic>?,
      signer_id: json['signer_id'] as int?,
      copy_history: json['copy_history'] as Map<String, dynamic>?,
      can_pin: json['can_pin'] as int?,
      can_delete: json['can_delete'] as int?,
      can_edit: json['can_edit'] as int?,
      is_pinned: json['is_pinned'] as int?,
      marked_as_ads: json['marked_as_ads'] as int?,
      is_favorite: json['is_favorite'] as bool?,
      donut: json['donut'] as Map<String, dynamic>?,
      postponed_id: json['postponed_id'] as int?,
    );

Map<String, dynamic> _$WallAttachmentToJson(WallAttachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner_id': instance.owner_id,
      'from_id': instance.from_id,
      'created_by': instance.created_by,
      'date': instance.date,
      'text': instance.text,
      'reply_owner_id': instance.reply_owner_id,
      'reply_post_id': instance.reply_post_id,
      'friends_only': instance.friends_only,
      'comments': instance.comments,
      'copyright': instance.copyright,
      'likes': instance.likes,
      'reposts': instance.reposts,
      'views': instance.views,
      'post_type': instance.post_type,
      'post_source': instance.post_source,
      'attachments': instance.attachments,
      'geo': instance.geo,
      'signer_id': instance.signer_id,
      'copy_history': instance.copy_history,
      'can_pin': instance.can_pin,
      'can_delete': instance.can_delete,
      'can_edit': instance.can_edit,
      'is_pinned': instance.is_pinned,
      'marked_as_ads': instance.marked_as_ads,
      'is_favorite': instance.is_favorite,
      'donut': instance.donut,
      'postponed_id': instance.postponed_id,
    };
