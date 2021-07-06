class StatusResponse {
  String status;

  StatusResponse(this.status);

  factory StatusResponse.fromJson(Map<String, dynamic> json) =>
      StatusResponse(json['status']);

  Map<String, dynamic> toJson() => {'status': status};
}
