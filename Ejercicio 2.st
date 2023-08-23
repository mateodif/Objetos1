!classDefinition: #BuenosAires category: 'Ejercicio 2'!
DenotativeObject subclass: #BuenosAires
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio 2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'BuenosAires class' category: 'Ejercicio 2'!
BuenosAires class
	instanceVariableNames: ''!

!BuenosAires class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 13:39:05'!
ubicacionEnKm
	^0 * kilometer.! !


!classDefinition: #Córdoba category: 'Ejercicio 2'!
DenotativeObject subclass: #Córdoba
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio 2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Córdoba class' category: 'Ejercicio 2'!
Córdoba class
	instanceVariableNames: ''!

!Córdoba class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 13:34:24'!
ubicacionEnKm
	^800 * kilometer.! !


!classDefinition: #PepitaMensajera category: 'Ejercicio 2'!
DenotativeObject subclass: #PepitaMensajera
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio 2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PepitaMensajera class' category: 'Ejercicio 2'!
PepitaMensajera class
	instanceVariableNames: 'ubicacion energia'!

!PepitaMensajera class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 13:39:00'!
comer: comidaEnGramos
	energia := energia + ((4 * (comidaEnGramos amount)) * joule).! !

!PepitaMensajera class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 13:35:43'!
nacer
	energia := 45 * joule.
	ubicacion := BuenosAires.! !

!PepitaMensajera class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 13:40:35'!
puedeIrA: lugar
	^energia > ((10 + (lugar ubicacionEnKm) amount) * joule).! !

!PepitaMensajera class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 13:38:55'!
ubicacionActual
	^ubicacion.! !

!PepitaMensajera class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 13:38:51'!
volar: lugar
	energia := energia - ((10 + (lugar ubicacionEnKm) amount) * joule).
	ubicacion := lugar.
	
	! !


!PepitaMensajera class methodsFor: '--** private fileout/in **--' stamp: 'MD 8/23/2023 14:49:11'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	ubicacion := BuenosAires.
	energia := (SimpleMeasure basicNew instVarAt: 1 put: 35; instVarAt: 2 put: (DividedUnit basicNew instVarAt: 1 put: (MultipliedUnit basicNew instVarAt: 1 put: ((OrderedCollection new) add: (BaseUnit basicNew instVarAt: 1 put: 'meter'; instVarAt: 2 put: 'meters'; instVarAt: 3 put: 'm'; yourself); add: (BaseUnit basicNew instVarAt: 1 put: 'meter'; instVarAt: 2 put: 'meters'; instVarAt: 3 put: 'm'; yourself); add: (ProportionalDerivedUnit basicNew instVarAt: 1 put: 'kilogram'; instVarAt: 2 put: 'kilograms'; instVarAt: 3 put: 'kg'; instVarAt: 4 put: (BaseUnit basicNew instVarAt: 1 put: 'gram'; instVarAt: 2 put: 'grams'; instVarAt: 3 put: 'g'; yourself); instVarAt: 5 put: 1000; yourself); yourself); yourself); instVarAt: 2 put: (MultipliedUnit basicNew instVarAt: 1 put: ((OrderedCollection new) add: (BaseUnit basicNew instVarAt: 1 put: 'second'; instVarAt: 2 put: 'seconds'; instVarAt: 3 put: 'NO SIGN'; yourself); add: (BaseUnit basicNew instVarAt: 1 put: 'second'; instVarAt: 2 put: 'seconds'; instVarAt: 3 put: 'NO SIGN'; yourself); yourself); yourself); yourself); yourself).! !


!classDefinition: #Rosario category: 'Ejercicio 2'!
DenotativeObject subclass: #Rosario
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio 2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Rosario class' category: 'Ejercicio 2'!
Rosario class
	instanceVariableNames: ''!

!Rosario class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 13:39:09'!
ubicacionEnKm
	^300 * kilometer.! !

PepitaMensajera initializeAfterFileIn!