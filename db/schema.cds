namespace real.estate;

using { cuid, managed } from '@sap/cds/common';

entity Buildings {
    key ID       : String;
    name         : String;
    location     : String;
    xMin         : Decimal(5, 2);  // Minimum X coordinate (percentage)
    xMax         : Decimal(5, 2);  // Maximum X coordinate (percentage)
    yMin         : Decimal(5, 2);  // Minimum Y coordinate (percentage)
    yMax         : Decimal(5, 2);  // Maximum Y coordinate (percentage)
    units        : Association to many Units on units.building = $self;
}

entity Units {
    key ID       : String;
    building     : Association to Buildings;
    name         : String;
    status       : String;
}
// entity Building {
//   key ID: UUID;
//   name: String;
//   location: String;
//   units: Composition of many Unit on units.building = $self;
// }

// entity Unit {
//   key ID: UUID;
//   name: String;
//   status: String; // "available" or "reserved"
//  // price:Decimal;
//   building: Association to Building;
// }
