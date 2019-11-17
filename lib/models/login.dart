class Login {
  int apiStatus;
  String apiMessage;
  String apiAuthorization;
  Data data;

  Login({this.apiStatus, this.apiMessage, this.apiAuthorization, this.data});

  Login.fromJson(Map<String, dynamic> json) {
    apiStatus = json['api_status'];
    apiMessage = json['api_message'];
    apiAuthorization = json['api_authorization'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_status'] = this.apiStatus;
    data['api_message'] = this.apiMessage;
    data['api_authorization'] = this.apiAuthorization;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  String id;
  String username;
  String email;
  String uniquePassword;
  String nama;
  String jurusan;
  String token;
  Null urlFoto;
  String provinsiId;
  String kotaId;
  String kecamatanId;
  String alamat;

  Data(
      {this.id,
      this.username,
      this.email,
      this.uniquePassword,
      this.nama,
      this.jurusan,
      this.token,
      this.urlFoto,
      this.provinsiId,
      this.kotaId,
      this.kecamatanId,
      this.alamat});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    uniquePassword = json['unique_password'];
    nama = json['nama'];
    jurusan = json['jurusan'];
    token = json['token'];
    urlFoto = json['url_foto'];
    provinsiId = json['provinsi_id'];
    kotaId = json['kota_id'];
    kecamatanId = json['kecamatan_id'];
    alamat = json['alamat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['email'] = this.email;
    data['unique_password'] = this.uniquePassword;
    data['nama'] = this.nama;
    data['jurusan'] = this.jurusan;
    data['token'] = this.token;
    data['url_foto'] = this.urlFoto;
    data['provinsi_id'] = this.provinsiId;
    data['kota_id'] = this.kotaId;
    data['kecamatan_id'] = this.kecamatanId;
    data['alamat'] = this.alamat;
    return data;
  }
}