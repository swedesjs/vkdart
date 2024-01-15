/// The package contains convenient functionality for interacting with the
/// [Longpoll] API, [Callback] API, and the VK [Api] itself
library vkdart;

import 'dart:async';
import 'dart:io';

import 'package:dia/dia.dart';
import 'package:dia_body/dia_body.dart';
import 'package:dio/dio.dart';
import 'package:vkdart/methods.dart' show Api, ApiResponse, LangApi;
import 'package:vkdart/model.dart' show Update, UpdateType;

part 'src/vkdart/event/event.dart';
part 'src/vkdart/fetch/abstract_update_fetcher.dart';
part 'src/vkdart/fetch/callback.dart';
part 'src/vkdart/fetch/longpoll.dart';
part 'src/vkdart/vkdart.dart';
