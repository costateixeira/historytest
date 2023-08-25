ValueSet: MyValueSet
Title: "ValueSet"
Description: "ValueSet"

Profile: Mypatient
Parent: Patient
Title: "MyPatient"
Description: "My Patient profile"

Instance:   MyValueSet-initial-history
InstanceOf: Provenance
Title: "Initial creation of MyValueSet and MyPatient"
Usage: #definition
* target[+] = Reference(StructureDefinition/MyPatient)
* target[+] = Reference(ValueSet/MyValueSet)
* recorded = "2023-01-30T13:00:00.0000Z"
* occurredDateTime = "2023-07-01"
* reason = http://terminology.hl7.org/CodeSystem/v3-ActReason#METAMGT
* reason.text = "Create ValueSet"
* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE
* agent[+].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author
* agent[=].who.display = "Me"

