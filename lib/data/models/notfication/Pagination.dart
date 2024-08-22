class Pagination {
  Pagination({
      this.currentPage,
      this.perPage,
      this.from,
      this.to,
      this.nextPage,
      this.total,
      });

  Pagination.fromJson(dynamic json) {
    currentPage = json['current_page'];
    perPage = json['per_page'];
    from = json['from'];
    to = json['to'];
    nextPage = json['next_page'];
    total = json['total'];
  }
  int? currentPage;
  int? perPage;
  int ?from;
  int? to;
  String ?nextPage;
  int? total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current_page'] = currentPage;
    map['per_page'] = perPage;
    map['from'] = from;
    map['to'] = to;
    map['next_page'] = nextPage;
    map['total'] = total;
    return map;
  }

}