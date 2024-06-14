class CompanyListModel {
  List<Data>? data;
  Meta? meta;

  CompanyListModel({this.data, this.meta});

  CompanyListModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? code;
  String? category;
  String? email;
  String? domain;
  String? logo;
  String? phone;
  String? logoUrl;
  String? status;
  bool? acceptHazardiousWaste;
  dynamic statusRemarks;
  dynamic details;
  Address? address;
  dynamic companyAddress;
  String? description;
  dynamic verifiedAt;
  dynamic createdBy;
  List<Services>? services;
  List<Users>? users;
  List<AddedVendors>? addedVendors;
  List<ServiceResources>? serviceResources;

  Data(
      {this.id,
        this.name,
        this.code,
        this.category,
        this.email,
        this.domain,
        this.logo,
        this.phone,
        this.logoUrl,
        this.status,
        this.acceptHazardiousWaste,
        this.statusRemarks,
        this.details,
        this.address,
        this.companyAddress,
        this.description,
        this.verifiedAt,
        this.createdBy,
        this.services,
        this.users,
        this.addedVendors,
        this.serviceResources});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    code = json['code'];
    category = json['category'];
    email = json['email'];
    domain = json['domain'];
    logo = json['logo'];
    phone = json['phone'];
    logoUrl = json['logo_url'];
    status = json['status'];
    acceptHazardiousWaste = json['accept_hazardious_waste'];
    statusRemarks = json['status_remarks'];
    details = json['details'];
    address =
    json['address'] != null ? new Address.fromJson(json['address']) : null;
    companyAddress = json['company_address'];
    description = json['description'];
    verifiedAt = json['verified_at'];
    createdBy = json['created_by'];
    if (json['services'] != null) {
      services = <Services>[];
      json['services'].forEach((v) {
        services!.add(new Services.fromJson(v));
      });
    }
    if (json['users'] != null) {
      users = <Users>[];
      json['users'].forEach((v) {
        users!.add(new Users.fromJson(v));
      });
    }
    if (json['added_vendors'] != null) {
      addedVendors = <AddedVendors>[];
      json['added_vendors'].forEach((v) {
        addedVendors!.add(new AddedVendors.fromJson(v));
      });
    }
    if (json['service_resources'] != null) {
      serviceResources = <ServiceResources>[];
      json['service_resources'].forEach((v) {
        serviceResources!.add(new ServiceResources.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['code'] = this.code;
    data['category'] = this.category;
    data['email'] = this.email;
    data['domain'] = this.domain;
    data['logo'] = this.logo;
    data['phone'] = this.phone;
    data['logo_url'] = this.logoUrl;
    data['status'] = this.status;
    data['accept_hazardious_waste'] = this.acceptHazardiousWaste;
    data['status_remarks'] = this.statusRemarks;
    data['details'] = this.details;
    if (this.address != null) {
      data['address'] = this.address!.toJson();
    }
    data['company_address'] = this.companyAddress;
    data['description'] = this.description;
    data['verified_at'] = this.verifiedAt;
    data['created_by'] = this.createdBy;
    if (this.services != null) {
      data['services'] = this.services!.map((v) => v.toJson()).toList();
    }
    if (this.users != null) {
      data['users'] = this.users!.map((v) => v.toJson()).toList();
    }
    if (this.addedVendors != null) {
      data['added_vendors'] =
          this.addedVendors!.map((v) => v.toJson()).toList();
    }
    if (this.serviceResources != null) {
      data['service_resources'] =
          this.serviceResources!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Address {
  String? name;
  String? address;
  String? country;
  String? city;
  String? state;
  Coords? coords;
  String? postalCode;

  Address(
      {this.name,
        this.address,
        this.country,
        this.city,
        this.state,
        this.coords,
        this.postalCode});

  Address.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address = json['address'];
    country = json['country'];
    city = json['city'];
    state = json['state'];
    coords =
    json['coords'] != null ? new Coords.fromJson(json['coords']) : null;
    postalCode = json['postalCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['address'] = this.address;
    data['country'] = this.country;
    data['city'] = this.city;
    data['state'] = this.state;
    if (this.coords != null) {
      data['coords'] = this.coords!.toJson();
    }
    data['postalCode'] = this.postalCode;
    return data;
  }
}

class Coords {
  double? lat;
  double? lng;

  Coords({this.lat, this.lng});

  Coords.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lng = json['lng'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    return data;
  }
}

class Services {
  int? id;
  String? name;
  String? slug;
  String? host;
  String? statsApi;
  String? description;
  String? status;
  String? statusRemarks;
  String? createdAt;
  String? updatedAt;
  int? companyServiceId;

  Services(
      {this.id,
        this.name,
        this.slug,
        this.host,
        this.statsApi,
        this.description,
        this.status,
        this.statusRemarks,
        this.createdAt,
        this.updatedAt,
        this.companyServiceId});

  Services.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    host = json['host'];
    statsApi = json['stats_api'];
    description = json['description'];
    status = json['status'];
    statusRemarks = json['status_remarks'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    companyServiceId = json['company_service_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['host'] = this.host;
    data['stats_api'] = this.statsApi;
    data['description'] = this.description;
    data['status'] = this.status;
    data['status_remarks'] = this.statusRemarks;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['company_service_id'] = this.companyServiceId;
    return data;
  }
}

class Users {
  int? id;
  String? code;
  String? name;
  String? email;
  dynamic secondPassword;
  dynamic rememberToken;
  String? phone;
  String? status;
  dynamic statusRemarks;
  dynamic profileImage;
  String? verifiedAt;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  int? companyId;
  dynamic fcmToken;
  String? firstName;
  String? lastName;
  bool? canLogin;
  bool? isEmployee;
  bool? sendAttendanceEmail;
  dynamic currentRoleId;

  Users(
      {this.id,
        this.code,
        this.name,
        this.email,
        this.secondPassword,
        this.rememberToken,
        this.phone,
        this.status,
        this.statusRemarks,
        this.profileImage,
        this.verifiedAt,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.companyId,
        this.fcmToken,
        this.firstName,
        this.lastName,
        this.canLogin,
        this.isEmployee,
        this.sendAttendanceEmail,
        this.currentRoleId});

  Users.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    name = json['name'];
    email = json['email'];
    secondPassword = json['second_password'];
    rememberToken = json['remember_token'];
    phone = json['phone'];
    status = json['status'];
    statusRemarks = json['status_remarks'];
    profileImage = json['profile_image'];
    verifiedAt = json['verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    companyId = json['company_id'];
    fcmToken = json['fcm_token'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    canLogin = json['can_login'];
    isEmployee = json['is_employee'];
    sendAttendanceEmail = json['send_attendance_email'];
    currentRoleId = json['current_role_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['code'] = this.code;
    data['name'] = this.name;
    data['email'] = this.email;
    data['second_password'] = this.secondPassword;
    data['remember_token'] = this.rememberToken;
    data['phone'] = this.phone;
    data['status'] = this.status;
    data['status_remarks'] = this.statusRemarks;
    data['profile_image'] = this.profileImage;
    data['verified_at'] = this.verifiedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    data['company_id'] = this.companyId;
    data['fcm_token'] = this.fcmToken;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['can_login'] = this.canLogin;
    data['is_employee'] = this.isEmployee;
    data['send_attendance_email'] = this.sendAttendanceEmail;
    data['current_role_id'] = this.currentRoleId;
    return data;
  }
}

class AddedVendors {
  int? id;
  int? vendorId;
  int? addedBy;
  String? createdAt;
  String? updatedAt;

  AddedVendors(
      {this.id, this.vendorId, this.addedBy, this.createdAt, this.updatedAt});

  AddedVendors.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    vendorId = json['vendor_id'];
    addedBy = json['added_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['vendor_id'] = this.vendorId;
    data['added_by'] = this.addedBy;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class ServiceResources {
  int? id;
  int? companyId;
  int? serviceId;
  int? resourceClassId;
  Service? service;
  ResourceClass? resourceClass;

  ServiceResources(
      {this.id,
        this.companyId,
        this.serviceId,
        this.resourceClassId,
        this.service,
        this.resourceClass});

  ServiceResources.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    companyId = json['company_id'];
    serviceId = json['service_id'];
    resourceClassId = json['resource_class_id'];
    service =
    json['service'] != null ? new Service.fromJson(json['service']) : null;
    resourceClass = json['resource_class'] != null
        ? new ResourceClass.fromJson(json['resource_class'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['company_id'] = this.companyId;
    data['service_id'] = this.serviceId;
    data['resource_class_id'] = this.resourceClassId;
    if (this.service != null) {
      data['service'] = this.service!.toJson();
    }
    if (this.resourceClass != null) {
      data['resource_class'] = this.resourceClass!.toJson();
    }
    return data;
  }
}

class Service {
  int? id;
  String? name;
  String? slug;
  String? host;
  String? statsApi;
  String? description;
  String? status;
  String? statusRemarks;
  String? createdAt;
  String? updatedAt;

  Service(
      {this.id,
        this.name,
        this.slug,
        this.host,
        this.statsApi,
        this.description,
        this.status,
        this.statusRemarks,
        this.createdAt,
        this.updatedAt});

  Service.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    host = json['host'];
    statsApi = json['stats_api'];
    description = json['description'];
    status = json['status'];
    statusRemarks = json['status_remarks'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['host'] = this.host;
    data['stats_api'] = this.statsApi;
    data['description'] = this.description;
    data['status'] = this.status;
    data['status_remarks'] = this.statusRemarks;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class ResourceClass {
  int? id;
  String? title;
  String? type;
  String? status;
  String? createdAt;
  String? updatedAt;
  int? resourceClassCategoryId;

  ResourceClass(
      {this.id,
        this.title,
        this.type,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.resourceClassCategoryId});

  ResourceClass.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    type = json['type'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    resourceClassCategoryId = json['resource_class_category_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['type'] = this.type;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['resource_class_category_id'] = this.resourceClassCategoryId;
    return data;
  }
}

class Meta {
  int? total;
  int? count;
  int? currentPage;
  int? lastPage;
  dynamic previousPage;
  int? nextPage;

  Meta(
      {this.total,
        this.count,
        this.currentPage,
        this.lastPage,
        this.previousPage,
        this.nextPage});

  Meta.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    count = json['count'];
    currentPage = json['current_page'];
    lastPage = json['last_page'];
    previousPage = json['previous_page'];
    nextPage = json['next_page'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    data['count'] = this.count;
    data['current_page'] = this.currentPage;
    data['last_page'] = this.lastPage;
    data['previous_page'] = this.previousPage;
    data['next_page'] = this.nextPage;
    return data;
  }
}