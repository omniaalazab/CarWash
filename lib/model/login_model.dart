class LoginModel {
  String? message;
  String? token;
  bool? success;

  LoginModel({
    required this.message,
    required this.token,
    required this.success,
  });

  factory LoginModel.fromjson(Map<String, dynamic> json) {
    return LoginModel(
      message: json['message'],
      token: json['token'],
      success: json['success'],
    );
  }
}
