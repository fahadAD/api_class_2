String clientId="07cbbea2bd24459d888cf47d4f2519b6";
String clientSecred="2e87015628884df7bcaf0a2e055c0c4e";
String states="hghhkjkh";
String code="";

String extractCodeFromUrl({required String redirectUrl}) {
  RegExp regExp = RegExp(r'code=([^&]+)');
  Match match = regExp.firstMatch(redirectUrl) as Match;
  String? code = match.group(1);
  return code ?? '';
}
