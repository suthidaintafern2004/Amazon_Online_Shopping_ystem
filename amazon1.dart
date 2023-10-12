class Address {
  final String street;
  final String city;
  final String state;
  final String zipCode;
  final String country;

  Address(this.street, this.city, this.state, this.zipCode, this.country);
}

enum OrderStatus {
  UNSHIPPED,
  PENDING,
  SHIPPED,
  COMPLETED,
  CANCELED,
  REFUND_APPLIED
}

enum AccountStatus {
  ACTIVE,
  BLOCKED,
  BANNED,
  COMPROMISED,
  ARCHIVED,
  UNKNOWN
}

enum ShipmentStatus {
  PENDING,
  SHIPPED,
  DELIVERED,
  ON_HOLD
}

enum PaymentStatus {
  UNPAID,
  PENDING,
  COMPLETED,
  FILLED,
  DECLINED,
  CANCELLED,
  ABANDONED,
  SETTLING,
  SETTLED,
  REFUNDED
}


