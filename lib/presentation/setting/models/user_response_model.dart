import 'dart:convert';

class UserResponseModel {
    final String message;
    final DataUser data;

    UserResponseModel({
        required this.message,
        required this.data,
    });

    factory UserResponseModel.fromJson(String str) => UserResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory UserResponseModel.fromMap(Map<String, dynamic> json) => UserResponseModel(
        message: json["message"],
        data: json["data"] == null
            ? DataUser.empty()
            : DataUser.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "message": message,
        "data": data.toMap(),
    };
}

class DataUser {
    final User user;

    DataUser({
        required this.user,
    });

    factory DataUser.fromJson(String str) => DataUser.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory DataUser.empty() => DataUser(user: User.empty());

    factory DataUser.fromMap(Map<String, dynamic> json) => DataUser(
        user: json["user"] == null ? User.empty() : User.fromMap(json["user"]),
    );

    Map<String, dynamic> toMap() => {
        "user": user.toMap(),
    };
}

class User {
    final int currentPage;
    final List<SingleUser> data;
    final String firstPageUrl;
    final int from;
    final int lastPage;
    final String lastPageUrl;
    final List<Link> links;
    final dynamic nextPageUrl;
    final String path;
    final int perPage;
    final dynamic prevPageUrl;
    final int to;
    final int total;

    User({
        required this.currentPage,
        required this.data,
        required this.firstPageUrl,
        required this.from,
        required this.lastPage,
        required this.lastPageUrl,
        required this.links,
        required this.nextPageUrl,
        required this.path,
        required this.perPage,
        required this.prevPageUrl,
        required this.to,
        required this.total,
    });

    factory User.empty() => User(
      currentPage: 1,
      data: [],
      firstPageUrl: '',
      from: 0,
      lastPage: 1,
      lastPageUrl: '',
      links: [],
      nextPageUrl: null,
      path: '',
      perPage: 0,
      prevPageUrl: null,
      to: 0,
      total: 0,
    );

    factory User.fromJson(String str) => User.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory User.fromMap(Map<String, dynamic> json) => User(
        currentPage: json["current_page"] ?? 1,
        data: json["data"] == null
            ? []
            : List<SingleUser>.from(json["data"].map((x) => SingleUser.fromMap(x))),
        firstPageUrl: json["first_page_url"] ?? '',
        from: json["from"] ?? 0,
        lastPage: json["last_page"] ?? 1,
        lastPageUrl: json["last_page_url"] ?? '',
        links: json["links"] == null
            ? []
            : List<Link>.from(json["links"].map((x) => Link.fromMap(x))),
        nextPageUrl: json["next_page_url"],
        path: json["path"] ?? '',
        perPage: json["per_page"] ?? 0,
        prevPageUrl: json["prev_page_url"],
        to: json["to"] ?? 0,
        total: json["total"] ?? 0,
    );

    Map<String, dynamic> toMap() => {
        "current_page": currentPage,
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
        "first_page_url": firstPageUrl,
        "from": from,
        "last_page": lastPage,
        "last_page_url": lastPageUrl,
        "links": List<dynamic>.from(links.map((x) => x.toMap())),
        "next_page_url": nextPageUrl,
        "path": path,
        "per_page": perPage,
        "prev_page_url": prevPageUrl,
        "to": to,
        "total": total,
    };
}

class SingleUser {
    final int? idx;
    final int? idopr;
    final String? username;
    final String? password;
    final String? nama;
    final String? level;
    final String? status;
    final String? photo;
    final String? email;
    final String? telp;

    SingleUser({
        this.idx,
        this.idopr,
        this.username,
        this.password,
        this.nama,
        this.level,
        this.status,
        this.photo,
        this.email,
        this.telp,
    });

    factory SingleUser.fromMap(Map<String, dynamic> json) => SingleUser(
        idx: json["idx"],
        idopr: json["idopr"],
        username: json["username"],
        password: json["password"],
        nama: json["nama"],
        level: json["level"],
        status: json["status"],
        photo: json["photo"],
        email: json["email"],
        telp: json["telp"],  
    );

    Map<String, dynamic> toMap() => {
        "idx": idx,
        "idopr": idopr,
        "username": username,
        "password": password,
        "nama": nama,
        "level": level,
        "status": status,
        "photo": photo,
        "email": email,
        "telp": telp,
    };
}

class Link {
    final String? url;
    final String label;
    final int? page;
    final bool active;

    Link({
        required this.url,
        required this.label,
        required this.page,
        required this.active,
    });

    factory Link.fromJson(String str) => Link.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Link.fromMap(Map<String, dynamic> json) => Link(
        url: json["url"],
        label: json["label"],
        page: json["page"],
        active: json["active"],
    );

    Map<String, dynamic> toMap() => {
        "url": url,
        "label": label,
        "page": page,
        "active": active,
    };
}