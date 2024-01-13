/// Библиотека для использования технологии Longpoll API, Callback API.
library vkdart.events;

import 'dart:async';
import 'dart:io';

import 'package:dia/dia.dart';
import 'package:dia_body/dia_body.dart';

part 'src/vkdart/event/event.dart';
part 'src/vkdart/fetch/abstract_update_fetcher.dart';
part 'src/vkdart/fetch/callback.dart';
part 'src/vkdart/model/update.dart';
