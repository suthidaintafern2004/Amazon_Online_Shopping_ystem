import 'package:constants.dart'; // เปลี่ยนเส้นทางเป็นที่ตั้ง

class ShipmentLog {
  final String shipmentNumber;
  final ShipmentStatus status;
  final DateTime creationDate;

  ShipmentLog(this.shipmentNumber, {this.status = ShipmentStatus.PENDING})
      : creationDate = DateTime.now();
}

class Shipment {
  final String shipmentNumber;
  final DateTime shipmentDate;
  final DateTime estimatedArrival;
  final String shipmentMethod;
  final List<ShipmentLog> shipmentLogs;

  Shipment(this.shipmentNumber, this.shipmentMethod)
      : shipmentDate = DateTime.now(),
        estimatedArrival = DateTime.now(),
        shipmentLogs = [];

  void addShipmentLog(ShipmentLog shipmentLog) {
    shipmentLogs.add(shipmentLog);
  }
}

abstract class Notification {
  final String notificationId;
  final DateTime createdOn;
  final String content;

  Notification(this.notificationId, this.content) : createdOn = DateTime.now();

  void sendNotification(Account account);
}

// ต้องเพิ่มคลาส Account และ ShipmentStatus ที่ดาวน์โหลดมาจากไลบรารี่ของคุณเอง
