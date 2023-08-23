!classDefinition: #BonoPorCategoría category: 'Ejercicio 3'!
DenotativeObject subclass: #BonoPorCategoría
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio 3'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'BonoPorCategoría class' category: 'Ejercicio 3'!
BonoPorCategoría class
	instanceVariableNames: ''!

!BonoPorCategoría class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 14:29:27'!
bono: categoría
	^(categoría bonoSimple) + (categoría bonoPorcentual).! !


!classDefinition: #BonoPorPresentismo category: 'Ejercicio 3'!
DenotativeObject subclass: #BonoPorPresentismo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio 3'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'BonoPorPresentismo class' category: 'Ejercicio 3'!
BonoPorPresentismo class
	instanceVariableNames: ''!

!BonoPorPresentismo class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 14:18:42'!
bono: categoría vecesQueFaltó: vecesQueFaltó
	^((2000 * peso) - (vecesQueFaltó * (100 * peso))) max: 0.! !


!classDefinition: #BonoPorResultados category: 'Ejercicio 3'!
DenotativeObject subclass: #BonoPorResultados
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio 3'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'BonoPorResultados class' category: 'Ejercicio 3'!
BonoPorResultados class
	instanceVariableNames: ''!

!BonoPorResultados class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 14:11:04'!
bono: categoría
	^(3000 * peso) + ((categoría sueldoBásico) * 0,1)! !


!classDefinition: #CategoríaCadete category: 'Ejercicio 3'!
DenotativeObject subclass: #CategoríaCadete
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio 3'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CategoríaCadete class' category: 'Ejercicio 3'!
CategoríaCadete class
	instanceVariableNames: ''!

!CategoríaCadete class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 14:22:51'!
bonoPorcentual
	^(self sueldoBásico) * 0,05.! !

!CategoríaCadete class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 14:38:14'!
bonoSimple
	^5000 * peso.! !

!CategoríaCadete class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 14:07:59'!
sueldoBásico
	^75000 * peso.! !


!classDefinition: #CategoríaGerente category: 'Ejercicio 3'!
DenotativeObject subclass: #CategoríaGerente
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio 3'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CategoríaGerente class' category: 'Ejercicio 3'!
CategoríaGerente class
	instanceVariableNames: ''!

!CategoríaGerente class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 14:22:06'!
bonoPorcentual
	^(self sueldoBásico) * 0,2.! !

!CategoríaGerente class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 14:38:33'!
bonoSimple
	^(5000 + 2000) * peso.! !

!CategoríaGerente class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 14:08:25'!
sueldoBásico
	^100000 * peso.! !


!classDefinition: #DescuentosPorAportesYContribuciones category: 'Ejercicio 3'!
DenotativeObject subclass: #DescuentosPorAportesYContribuciones
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio 3'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'DescuentosPorAportesYContribuciones class' category: 'Ejercicio 3'!
DescuentosPorAportesYContribuciones class
	instanceVariableNames: ''!

!DescuentosPorAportesYContribuciones class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 14:35:08'!
porcentajeDeDescuentoTotal
	| jubilación ley19032 obraSocial |
	jubilación := 0,11.
	ley19032 := 0,03.
	obraSocial := 0,03.
	^jubilación + ley19032 + obraSocial.! !


!classDefinition: #Pepe category: 'Ejercicio 3'!
DenotativeObject subclass: #Pepe
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio 3'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Pepe class' category: 'Ejercicio 3'!
Pepe class
	instanceVariableNames: 'categoría vecesQueFaltó'!

!Pepe class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 14:41:11'!
faltar
	vecesQueFaltó := vecesQueFaltó + 1.! !

!Pepe class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 14:40:34'!
nacer: cat
	categoría := cat.
	vecesQueFaltó := 0.
	! !

!Pepe class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 13:49:32'!
recategorizar: nuevaCategoria 
	categoria := nuevaCategoria.! !

!Pepe class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 14:23:59'!
sueldoBásico
	^(self categoría) sueldoBásico.! !

!Pepe class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 14:35:52'!
sueldoBruto
	^(self sueldoBásico) + (self totalPorBonos).! !

!Pepe class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 14:37:00'!
sueldoNeto
	^(self sueldoBruto) - (self sueldoBruto) * (DescuentosPorAportesYContribuciones porcentajeDeDescuentoTotal).! !

!Pepe class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 14:32:27'!
totalPorBonos
	^(BonoPorCategoría bono: (self categoría)) + (BonoPorPresentismo bono: (self categoría) vecesQueFaltó: (self vecesQueFaltó)) + (BonoPorResultados bono: (self categoría)).! !

!Pepe class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 14:31:07'!
vecesQueFaltó
	^vecesQueFaltó.! !


!Pepe class methodsFor: '--** private fileout/in **--' stamp: 'MD 8/23/2023 14:48:52'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	categoría := nil.
	vecesQueFaltó := nil.! !

Pepe initializeAfterFileIn!