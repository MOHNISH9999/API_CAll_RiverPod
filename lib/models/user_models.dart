// To parse this JSON data, do
//
//     final userModels = userModelsFromJson(jsonString);

import 'dart:convert';

 UserModels userModelsFromJson(String str) => UserModels.fromJson(json.decode(str));
//
 String userModelsToJson(UserModels data) => json.encode(data.toJson());

class UserModels {
    String warehouseNumber;
    String warehouseTask;
    String warehouseTaskItem;
    String warehouseOrder;
    String deliveryNumber;
    String deliveryItem;
    String documentCategory;
    String product;
    String productText;
    String serialManaged;
    String batch;
    String packMaterial;
    String sourceHu;
    String destinationHu;
    String sourceBin;
    String destinationBin;
    String unit;
    String quantity;
    String sourceQuantity;
    String exceptionCode;
    String changeDestBin;
    String changeBatch;
    String serialNumberFrom;
    String serialNumberTo;
    String status;
    String statusText;
    String isSourceHuNested;

    UserModels({
        required this.warehouseNumber,
        required this.warehouseTask,
        required this.warehouseTaskItem,
        required this.warehouseOrder,
        required this.deliveryNumber,
        required this.deliveryItem,
        required this.documentCategory,
        required this.product,
        required this.productText,
        required this.serialManaged,
        required this.batch,
        required this.packMaterial,
        required this.sourceHu,
        required this.destinationHu,
        required this.sourceBin,
        required this.destinationBin,
        required this.unit,
        required this.quantity,
        required this.sourceQuantity,
        required this.exceptionCode,
        required this.changeDestBin,
        required this.changeBatch,
        required this.serialNumberFrom,
        required this.serialNumberTo,
        required this.status,
        required this.statusText,
        required this.isSourceHuNested,
    });

    factory UserModels.fromJson(Map<String, dynamic> json) {
      return UserModels(
        warehouseNumber: json['WarehouseNumber'] ,
        warehouseTask: json['WarehouseTask'] ,
        warehouseTaskItem: json['WarehouseTaskItem'] ,
        warehouseOrder: json['WarehouseOrder'] ,
        deliveryNumber: json['DeliveryNumber'] ,
        deliveryItem: json['DeliveryItem'] ,
        documentCategory: json['DocumentCategory'] ,
        product: json['Product'] ,
        productText: json['ProductText'] ,
        serialManaged: json['SerialManaged'] ,
        batch: json['Batch'] ,
        packMaterial: json['PackMaterial'] ,
        sourceHu: json['SourceHU'] ,
        destinationHu: json['DestinationHU'] ,
        sourceBin: json['SourceBin'] ,
        destinationBin: json['DestinationBin'] ,
        unit: json['Unit'] ,
        quantity: json['Quantity'] ,
        sourceQuantity: json['SourceQuantity'] ,
        exceptionCode: json['ExceptionCode'] ,
        changeDestBin: json['ChangeDestBin'] ,
        changeBatch: json['ChangeBatch'] ,
        serialNumberFrom: json['SerialNumberFrom'] ,
        serialNumberTo: json['SerialNumberTo'],
        status: json['Status'] ,
        statusText: json['StatusText'] ,
        isSourceHuNested: json['IsSourceHUNested'] ,
    );
    }

    Map<String, dynamic> toJson() => {
        "WarehouseNumber": warehouseNumber,
        "WarehouseTask": warehouseTask,
        "WarehouseTaskItem": warehouseTaskItem,
        "WarehouseOrder": warehouseOrder,
        "DeliveryNumber": deliveryNumber,
        "DeliveryItem": deliveryItem,
        "DocumentCategory": documentCategory,
        "Product": product,
        "ProductText": productText,
        "SerialManaged": serialManaged,
        "Batch": batch,
        "PackMaterial": packMaterial,
        "SourceHU": sourceHu,
        "DestinationHU": destinationHu,
        "SourceBin": sourceBin,
        "DestinationBin": destinationBin,
        "Unit": unit,
        "Quantity": quantity,
        "SourceQuantity": sourceQuantity,
        "ExceptionCode": exceptionCode,
        "ChangeDestBin": changeDestBin,
        "ChangeBatch": changeBatch,
        "SerialNumberFrom": serialNumberFrom,
        "SerialNumberTo": serialNumberTo,
        "Status": status,
        "StatusText": statusText,
        "IsSourceHUNested": isSourceHuNested,
    };
}
