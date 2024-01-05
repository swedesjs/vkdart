/// Библиотека для использования технологии Longpoll API, Callback API.
library vkdart.events;

import 'dart:async';
import 'dart:io';

import 'package:dia/dia.dart';
import 'package:dia_body/dia_body.dart';
import 'package:dio/dio.dart';
import 'package:vkdart/src/types/methods.dart';
import 'package:vkdart/vkdart.dart';

part 'src/events/callback.dart';
part 'src/events/polling.dart';
