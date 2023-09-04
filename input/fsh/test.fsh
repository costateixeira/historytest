Logical: MyLogicalModel
Title: "MyLogicalModel"
Description: "MyLogicalModel"

* identifier 0..* Identifier "Identifier"
* nothing 0..0 string "Nothing"

ValueSet: MyValueSet
Title: "ValueSet"
Description: "ValueSet"

Profile: MyPatient
Parent: Patient
Title: "MyPatient"
Description: "My Patient profile"

Instance:   MyValueSet-initial-history
InstanceOf: Provenance
Title: "Initial creation of MyValueSet and MyPatient"
Usage: #definition
* target[+] = Reference(StructureDefinition/MyPatient)
* target[+] = Reference(StructureDefinition/MyLogicalModel)
* target[+] = Reference(ValueSet/MyValueSet)
//* target[+].identifier.value = "definition.page.page.nameUrl.index"
* recorded = "2023-01-30T13:00:00.0000Z"
* occurredDateTime = "2023-07-01"
* reason = http://terminology.hl7.org/CodeSystem/v3-ActReason#METAMGT
* reason.text = "Create ValueSet"
* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE
* activity = #CREATE
//* agent[+].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author
* agent[+].type = #author
* agent[=].who.display = "Me"

