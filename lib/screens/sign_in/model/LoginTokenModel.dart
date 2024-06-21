/// token_type : "Bearer"
/// iat : 1701981061
/// expires_in : 1701984661
/// jwt_token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjE2LCJ1c2VybmFtZSI6InN1ZGd1cHRhODkwMDAiLCJlbWFpbCI6InN1ZGd1cHRhODkwMDBAZ21haWwuY29tIiwiaWF0IjoxNzAxOTgxMDYxLCJleHAiOjE3MDE5ODQ2NjF9.uGm9cS7JEXtputE2li9uJy6A0I8gywHQupBCa5oOjus"
/// code : 200

class LoginTokenModel {
  LoginTokenModel({
      String? tokenType, 
      num? iat, 
      num? expiresIn, 
      String? jwtToken, 
      num? code,}){
    _tokenType = tokenType;
    _iat = iat;
    _expiresIn = expiresIn;
    _jwtToken = jwtToken;
    _code = code;
}

  LoginTokenModel.fromJson(dynamic json) {
    _tokenType = json['token_type'];
    _iat = json['iat'];
    _expiresIn = json['expires_in'];
    _jwtToken = json['jwt_token'];
    _code = json['code'];
  }
  String? _tokenType;
  num? _iat;
  num? _expiresIn;
  String? _jwtToken;
  num? _code;
LoginTokenModel copyWith({  String? tokenType,
  num? iat,
  num? expiresIn,
  String? jwtToken,
  num? code,
}) => LoginTokenModel(  tokenType: tokenType ?? _tokenType,
  iat: iat ?? _iat,
  expiresIn: expiresIn ?? _expiresIn,
  jwtToken: jwtToken ?? _jwtToken,
  code: code ?? _code,
);
  String? get tokenType => _tokenType;
  num? get iat => _iat;
  num? get expiresIn => _expiresIn;
  String? get jwtToken => _jwtToken;
  num? get code => _code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token_type'] = _tokenType;
    map['iat'] = _iat;
    map['expires_in'] = _expiresIn;
    map['jwt_token'] = _jwtToken;
    map['code'] = _code;
    return map;
  }

}