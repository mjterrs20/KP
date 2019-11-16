class Kecamatan {
  int apiStatus;
  String apiMessage;
  String apiAuthorization;
  List<Data> data;

  Kecamatan(
      {this.apiStatus, this.apiMessage, this.apiAuthorization, this.data});

  Kecamatan.fromJson(Map<String, dynamic> json) {
    apiStatus = json['api_status'];
    apiMessage = json['api_message'];
    apiAuthorization = json['api_authorization'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_status'] = this.apiStatus;
    data['api_message'] = this.apiMessage;
    data['api_authorization'] = this.apiAuthorization;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String id;
  String regencyId;
  String name;

  Data({this.id, this.regencyId, this.name});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    regencyId = json['regency_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['regency_id'] = this.regencyId;
    data['name'] = this.name;
    return data;
  }
}