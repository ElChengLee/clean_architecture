
abstract class Constants {
  static const baseUrl = String.fromEnvironment('DART_DEFINES_BASE_URL',
      defaultValue: "http://119.17.209.167:8068/smk/global/vn/smartkid");
  static const version = "/1.0";
  static const timeOut = 30 * 1000;
}

class RequestHeader {
  static const tokenKey = "AUTH_TOKEN";
  static const language = "Lang";
}

class RequestHeaderValue {
  static const String langVi = "vi";
  static const String langEn = "en";
}

class NetworkRequestValues {
  static const contentType = "application/json";
}