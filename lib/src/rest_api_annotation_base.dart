import 'dart:async';

import 'package:dio/dio.dart';

class RestApi {
  const RestApi();
}

typedef OnSuccessfulResponse<ReturnType> = FutureOr<ReturnType> Function(
  Response response,
);

typedef OnFailedResponse<ReturnType> = FutureOr<ReturnType> Function(
  Response response,
);

class Request {
  const Request({
    required this.method,
    required this.path,
    this.baseUrl,
    this.onFailedResponse,
    this.onSuccessfulResponse,
    this.headers = const <String, dynamic>{},
  });

  final String method;
  final String path;
  final String? baseUrl;
  final Map<String, dynamic> headers;
  final OnSuccessfulResponse? onSuccessfulResponse;
  final OnFailedResponse? onFailedResponse;
}

class Path {
  const Path();
}

class QueryParameter {
  const QueryParameter(this.key);

  final String key;
}

class QueryParametersGroup {
  const QueryParametersGroup();
}

class Field {
  const Field(this.key);

  final String key;
}

class Body {
  const Body();
}

class Header {
  const Header(this.key);

  final String key;
}
