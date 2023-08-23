!classDefinition: #PrimerPepita category: 'Ejercicio 1'!
DenotativeObject subclass: #PrimerPepita
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio 1'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PrimerPepita class' category: 'Ejercicio 1'!
PrimerPepita class
	instanceVariableNames: 'energia'!

!PrimerPepita class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 13:06:15'!
comer: comidaEnGramos
	energia := energia + ((4 * (comidaEnGramos amount)) * joule)! !

!PrimerPepita class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 13:07:55'!
energia
	^energia.! !

!PrimerPepita class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 12:53:28'!
nacer
	energia := 45 * joule.! !

!PrimerPepita class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 13:07:33'!
volar: kms
	energia := energia - ((10 + (kms amount)) * joule)! !


!PrimerPepita class methodsFor: '--** private fileout/in **--' stamp: 'MD 8/23/2023 14:49:13'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	energia := (SimpleMeasure basicNew instVarAt: 1 put: 105; instVarAt: 2 put: (DividedUnit basicNew instVarAt: 1 put: (MultipliedUnit basicNew instVarAt: 1 put: ((OrderedCollection new) add: (BaseUnit basicNew instVarAt: 1 put: 'meter'; instVarAt: 2 put: 'meters'; instVarAt: 3 put: 'm'; yourself); add: (BaseUnit basicNew instVarAt: 1 put: 'meter'; instVarAt: 2 put: 'meters'; instVarAt: 3 put: 'm'; yourself); add: (ProportionalDerivedUnit basicNew instVarAt: 1 put: 'kilogram'; instVarAt: 2 put: 'kilograms'; instVarAt: 3 put: 'kg'; instVarAt: 4 put: (BaseUnit basicNew instVarAt: 1 put: 'gram'; instVarAt: 2 put: 'grams'; instVarAt: 3 put: 'g'; yourself); instVarAt: 5 put: 1000; yourself); yourself); yourself); instVarAt: 2 put: (MultipliedUnit basicNew instVarAt: 1 put: ((OrderedCollection new) add: (BaseUnit basicNew instVarAt: 1 put: 'second'; instVarAt: 2 put: 'seconds'; instVarAt: 3 put: 'NO SIGN'; yourself); add: (BaseUnit basicNew instVarAt: 1 put: 'second'; instVarAt: 2 put: 'seconds'; instVarAt: 3 put: 'NO SIGN'; yourself); yourself); yourself); yourself); yourself).! !

PrimerPepita initializeAfterFileIn!