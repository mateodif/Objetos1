!classDefinition: #fotorolax category: 'Ejercicio 4'!
DenotativeObject subclass: #fotorolax
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio 4'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'fotorolax class' category: 'Ejercicio 4'!
fotorolax class
	instanceVariableNames: 'bateria'!

!fotorolax class methodsFor: 'as yet unclassified' stamp: 'MD 8/31/2023 11:50:41'!
bateria
	^bateria.! !

!fotorolax class methodsFor: 'as yet unclassified' stamp: 'MD 8/31/2023 12:12:02'!
cargarBateria: minutos
	bateria := 5.0 min: (bateria + (0.1 * (minutos / minute))).! !

!fotorolax class methodsFor: 'as yet unclassified' stamp: 'MD 8/31/2023 11:51:02'!
llamar
	bateria := bateria - 0.2.! !

!fotorolax class methodsFor: 'as yet unclassified' stamp: 'MD 8/31/2023 12:09:09'!
prender
	bateria := 0.1.! !


!fotorolax class methodsFor: '--** private fileout/in **--' stamp: 'MD 8/31/2023 13:15:32'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	bateria := 4.8.! !


!classDefinition: #noPhone category: 'Ejercicio 4'!
DenotativeObject subclass: #noPhone
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio 4'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'noPhone class' category: 'Ejercicio 4'!
noPhone class
	instanceVariableNames: 'bateria'!

!noPhone class methodsFor: 'as yet unclassified' stamp: 'MD 8/31/2023 11:57:59'!
bateria
	^bateria.! !

!noPhone class methodsFor: 'as yet unclassified' stamp: 'MD 8/31/2023 12:12:11'!
cargarBateria: minutos
	bateria := 5.0 min: (bateria + (0.1 * (minutos / minute))).! !

!noPhone class methodsFor: 'as yet unclassified' stamp: 'MD 8/31/2023 11:58:48'!
llamar: duracionEnMinutos
	bateria := bateria - (0.1 * (duracionEnMinutos / minute)).! !

!noPhone class methodsFor: 'as yet unclassified' stamp: 'MD 8/31/2023 12:10:13'!
prender
	bateria := 0.1.! !


!noPhone class methodsFor: '--** private fileout/in **--' stamp: 'MD 8/31/2023 13:15:32'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	bateria := 4.0.! !


!classDefinition: #tests category: 'Ejercicio 4'!
DenotativeObject subclass: #tests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio 4'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'tests class' category: 'Ejercicio 4'!
tests class
	instanceVariableNames: ''!

!tests class methodsFor: 'as yet unclassified' stamp: 'MD 8/31/2023 12:10:39'!
test001_CuandoLlamoConFotorolax_BajaLaBateria
	| bateriaInicial |
	"setup"
	fotorolax cargarBateria: 100 * minute.
	bateriaInicial := fotorolax bateria.
	
	"execute"
	fotorolax llamar.
	
	"assert"
	Assert that: fotorolax bateria isEqualTo: bateriaInicial - 0.2.! !

!tests class methodsFor: 'as yet unclassified' stamp: 'MD 8/31/2023 12:10:51'!
test002_CuandoLlamoConNoPhone_BajaLaBateria
	| bateriaInicial duracionLlamada|
	"setup"
	noPhone cargarBateria: 100 * minute.
	bateriaInicial := noPhone bateria.
	duracionLlamada := 10 * minute.
	
	"execute"
	noPhone llamar: duracionLlamada.
	
	"assert"
	Assert that: noPhone bateria isEqualTo: bateriaInicial - (0.1 * (duracionLlamada / minute)).! !

!tests class methodsFor: 'as yet unclassified' stamp: 'MD 8/31/2023 12:10:55'!
test003_CuandoCargoBateriaConNoPhone_SubeLaBateria "jeje deberia mejorar este nombre"
	| bateriaInicial duracionLlamada|
	"setup"
	noPhone cargarBateria: 100 * minute.
	bateriaInicial := noPhone bateria.
	duracionLlamada := 10 * minute.
	
	"execute"
	noPhone llamar: duracionLlamada.
	
	"assert"
	Assert that: noPhone bateria isEqualTo: bateriaInicial - (0.1 * (duracionLlamada / minute)).! !

fotorolax initializeAfterFileIn!
noPhone initializeAfterFileIn!