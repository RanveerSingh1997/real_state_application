// To parse this JSON data, do
//
//     final property = propertyFromJson(jsonString);

import 'dart:convert';

Property propertyFromJson(String str) => Property.fromJson(json.decode(str));

String propertyToJson(Property data) => json.encode(data.toJson());

class Property {
  Property({
    this.id,
    this.pName,
    this.purpose,
    this.description,
    this.city,
    this.pLatitude,
    this.pLongitude,
    this.roomsNumber,
    this.bathroomNumber,
    this.balcony,
    this.maintCharges,
    this.plotArea,
    this.builtUpArea,
    this.carpetArea,
    this.isPoojaRoom,
    this.isStudyRoom,
    this.isServantRoom,
    this.parking,
    this.totalFloor,
    this.ownershipType,
    this.priceExpectation,
    this.waterSource,
    this.propertyFacing,
    this.facingRoadWidth,
    this.flooringType,
    this.powerBackup,
    this.nearestRailway,
    this.nearestBustand,
    this.nearestHospitals,
    this.nearestSchools,
    this.contactMedium,
    this.preferredContactSlot,
    this.propertyAge,
    this.brokerId,
    this.isBrokerageCharged,
    this.brokerageAmount,
    this.address,
    this.addedby,
    this.amenties,
    this.propertyType,
    this.constStatus,
    this.furnishingStatus,
    this.furnishing,
    this.isActive,
    this.isFeatured,
  });

  int id;
  String pName;
  String purpose;
  String description;
  String city;
  String pLatitude;
  String pLongitude;
  int roomsNumber;
  int bathroomNumber;
  int balcony;
  int maintCharges;
  double plotArea;
  int builtUpArea;
  int carpetArea;
  bool isPoojaRoom;
  bool isStudyRoom;
  bool isServantRoom;
  String parking;
  int totalFloor;
  String ownershipType;
  int priceExpectation;
  String waterSource;
  String propertyFacing;
  String facingRoadWidth;
  String flooringType;
  String powerBackup;
  String nearestRailway;
  String nearestBustand;
  String nearestHospitals;
  String nearestSchools;
  String contactMedium;
  String preferredContactSlot;
  int propertyAge;
  int brokerId;
  bool isBrokerageCharged;
  int brokerageAmount;
  String address;
  int addedby;
  String amenties;
  String propertyType;
  String constStatus;
  String furnishingStatus;
  String furnishing;
  bool isActive;
  bool isFeatured;

  factory Property.fromJson(Map<String, dynamic> json) => Property(
    id: json["id"],
    pName: json["PName"],
    purpose: json["Purpose"],
    description: json["Description"],
    city: json["City"],
    pLatitude: json["PLatitude"],
    pLongitude: json["PLongitude"],
    roomsNumber: json["RoomsNumber"],
    bathroomNumber: json["BathroomNumber"],
    balcony: json["Balcony"],
    maintCharges: json["MaintCharges"].toInt()??0,
    plotArea: json["PlotArea"].toDouble(),
    builtUpArea: json["BuiltUpArea"].toInt(),
    carpetArea: json["CarpetArea"].toInt(),
    isPoojaRoom: json["IsPoojaRoom"],
    isStudyRoom: json["IsStudyRoom"],
    isServantRoom: json["IsServantRoom"],
    parking: json["Parking"],
    totalFloor: json["TotalFloor"].toInt(),
    ownershipType: json["OwnershipType"],
    priceExpectation: json["PriceExpectation"].toInt(),
    waterSource: json["WaterSource"],
    propertyFacing: json["PropertyFacing"],
    facingRoadWidth: json["FacingRoadWidth"],
    flooringType: json["FlooringType"],
    powerBackup: json["PowerBackup"],
    nearestRailway: json["NearestRailway"],
    nearestBustand: json["NearestBustand"],
    nearestHospitals: json["NearestHospitals"],
    nearestSchools: json["NearestSchools"],
    contactMedium: json["ContactMedium"],
    preferredContactSlot: json["PreferredContactSlot"],
    propertyAge: json["PropertyAge"].toInt(),
    brokerId: json["BrokerId"],
    isBrokerageCharged: json["IsBrokerageCharged"],
    brokerageAmount: json["BrokerageAmount"].toInt(),
    address: json["address"],
    addedby: json["addedby"],
    amenties: json["Amenties"],
    propertyType: json["PropertyType"],
    constStatus: json["ConstStatus"],
    furnishingStatus: json["FurnishingStatus"],
    furnishing: json["Furnishing"],
    isActive: json["isActive"],
    isFeatured: json["isFeatured"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "PName": pName,
    "Purpose": purpose,
    "Description": description,
    "City": city,
    "PLatitude": pLatitude,
    "PLongitude": pLongitude,
    "RoomsNumber": roomsNumber,
    "BathroomNumber": bathroomNumber,
    "Balcony": balcony,
    "MaintCharges": maintCharges,
    "PlotArea": plotArea,
    "BuiltUpArea": builtUpArea,
    "CarpetArea": carpetArea,
    "IsPoojaRoom": isPoojaRoom,
    "IsStudyRoom": isStudyRoom,
    "IsServantRoom": isServantRoom,
    "Parking": parking,
    "TotalFloor": totalFloor,
    "OwnershipType": ownershipType,
    "PriceExpectation": priceExpectation,
    "WaterSource": waterSource,
    "PropertyFacing": propertyFacing,
    "FacingRoadWidth": facingRoadWidth,
    "FlooringType": flooringType,
    "PowerBackup": powerBackup,
    "NearestRailway": nearestRailway,
    "NearestBustand": nearestBustand,
    "NearestHospitals": nearestHospitals,
    "NearestSchools": nearestSchools,
    "ContactMedium": contactMedium,
    "PreferredContactSlot": preferredContactSlot,
    "PropertyAge": propertyAge,
    "BrokerId": brokerId,
    "IsBrokerageCharged": isBrokerageCharged,
    "BrokerageAmount": brokerageAmount,
    "address": address,
    "addedby": addedby,
    "Amenties": amenties,
    "PropertyType": propertyType,
    "ConstStatus": constStatus,
    "FurnishingStatus": furnishingStatus,
    "Furnishing": furnishing,
    "isActive": isActive,
    "isFeatured": isFeatured,
  };
}
