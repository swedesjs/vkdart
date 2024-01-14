/// This is a library that has many possibilities for interacting with the VK API
/// and has a number of auxiliary functions
library vkdart;

import 'dart:async';
import 'dart:io';

import 'package:dia/dia.dart';
import 'package:dia_body/dia_body.dart';
import 'package:dio/dio.dart';
import 'package:vkdart/methods.dart' show Api, ApiResponse, LangApi;

part 'src/vkdart/event/event.dart';
part 'src/vkdart/fetch/abstract_update_fetcher.dart';
part 'src/vkdart/fetch/callback.dart';
part 'src/vkdart/fetch/longpoll.dart';
part 'src/vkdart/model/update.dart';
part 'src/vkdart/vkdart.dart';
