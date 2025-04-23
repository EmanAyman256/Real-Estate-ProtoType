namespace real.estate;

using { cuid, managed } from '@sap/cds/common';

entity Building {
  key ID: UUID;
  name: String;
  location: String;
  units: Composition of many Unit on units.building = $self;
}

entity Unit {
  key ID: UUID;
  name: String;
  status: String; // "available" or "reserved"
 // price:Decimal;
  building: Association to Building;
}
