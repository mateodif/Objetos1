!classDefinition: #BonoPorCategoria category: 'Ejercicio 3'!
DenotativeObject subclass: #BonoPorCategoria
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio 3'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'BonoPorCategoria class' category: 'Ejercicio 3'!
BonoPorCategoria class
	instanceVariableNames: ''!

!BonoPorCategoria class methodsFor: 'as yet unclassified' stamp: 'MD 9/6/2023 16:48:12'!
bono: categoria
	^(categoria bonoSimple) + (categoria bonoPorcentual).! !


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

!BonoPorPresentismo class methodsFor: 'as yet unclassified' stamp: 'MD 9/6/2023 15:08:53'!
bono: categoria vecesQueFalto: vecesQueFalto
	^((2000 * peso) - (vecesQueFalto * (100 * peso))) max: 0.! !


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

!BonoPorResultados class methodsFor: 'as yet unclassified' stamp: 'MD 9/6/2023 16:48:24'!
bono: categoria
	^(3000 * peso) + ((categoria sueldoBasico) * 0.1)! !


!classDefinition: #CategoriaCadete category: 'Ejercicio 3'!
DenotativeObject subclass: #CategoriaCadete
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio 3'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CategoriaCadete class' category: 'Ejercicio 3'!
CategoriaCadete class
	instanceVariableNames: ''!

!CategoriaCadete class methodsFor: 'as yet unclassified' stamp: 'MD 9/6/2023 16:48:37'!
bonoPorcentual
	^(self sueldoBasico) * 0.05.! !

!CategoriaCadete class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 14:38:14'!
bonoSimple
	^5000 * peso.! !

!CategoriaCadete class methodsFor: 'as yet unclassified' stamp: 'MD 9/6/2023 15:06:50'!
sueldoBasico
	^75000 * peso.! !


!classDefinition: #CategoriaGerente category: 'Ejercicio 3'!
DenotativeObject subclass: #CategoriaGerente
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio 3'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CategoriaGerente class' category: 'Ejercicio 3'!
CategoriaGerente class
	instanceVariableNames: ''!

!CategoriaGerente class methodsFor: 'as yet unclassified' stamp: 'MD 9/6/2023 16:48:03'!
bonoPorcentual
	^(self sueldoBasico) * 0.2.! !

!CategoriaGerente class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 14:38:33'!
bonoSimple
	^(5000 + 2000) * peso.! !

!CategoriaGerente class methodsFor: 'as yet unclassified' stamp: 'MD 9/6/2023 15:06:50'!
sueldoBasico
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
	instanceVariableNames: 'vecesQueFalto categoriaSueldo categoriaBono'!

!Pepe class methodsFor: 'as yet unclassified' stamp: 'MD 9/6/2023 17:31:54'!
categoriaBono
	^categoriaBono.! !

!Pepe class methodsFor: 'as yet unclassified' stamp: 'MD 9/6/2023 17:31:43'!
categoriaSueldo
	^categoriaSueldo.! !

!Pepe class methodsFor: 'as yet unclassified' stamp: 'MD 9/6/2023 17:32:12'!
contratarComo: cat
	categoriaSueldo := cat.
	categoriaBono := cat.
	vecesQueFalto := 0.! !

!Pepe class methodsFor: 'as yet unclassified' stamp: 'MD 9/6/2023 15:09:34'!
faltar
	vecesQueFalto := vecesQueFalto + 1.! !

!Pepe class methodsFor: 'as yet unclassified' stamp: 'MD 9/6/2023 17:31:43'!
recategorizar: nuevaCategoria 
	categoriaSueldo := nuevaCategoria.! !

!Pepe class methodsFor: 'as yet unclassified' stamp: 'MD 9/6/2023 17:31:26'!
sueldoBasico
	^(self categoriaSueldo) sueldoBasico.! !

!Pepe class methodsFor: 'as yet unclassified' stamp: 'MD 9/6/2023 15:06:50'!
sueldoBruto
	^(self sueldoBasico) + (self totalPorBonos).! !

!Pepe class methodsFor: 'as yet unclassified' stamp: 'MD 8/23/2023 14:37:00'!
sueldoNeto
	^(self sueldoBruto) - (self sueldoBruto) * (DescuentosPorAportesYContribuciones porcentajeDeDescuentoTotal).! !

!Pepe class methodsFor: 'as yet unclassified' stamp: 'MD 9/6/2023 17:32:37'!
totalPorBonos
	^(BonoPorCategoria bono: (self categoriaBono)) + (BonoPorPresentismo bono: (self categoriaBono) vecesQueFalto: (self vecesQueFalto)) + (BonoPorResultados bono: (self categoriaBono)).! !

!Pepe class methodsFor: 'as yet unclassified' stamp: 'MD 9/6/2023 15:09:34'!
vecesQueFalto
	^vecesQueFalto.! !


!Pepe class methodsFor: '--** private fileout/in **--' stamp: 'MD 9/6/2023 17:33:31'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	vecesQueFalto := 0.
	categoriaSueldo := CategoriaCadete.
	categoriaBono := CategoriaGerente.! !


!classDefinition: #testsDeEjercicio3 category: 'Ejercicio 3'!
DenotativeObject subclass: #testsDeEjercicio3
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ejercicio 3'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'testsDeEjercicio3 class' category: 'Ejercicio 3'!
testsDeEjercicio3 class
	instanceVariableNames: ''!

!testsDeEjercicio3 class methodsFor: 'as yet unclassified' stamp: 'MD 9/6/2023 16:36:42'!
test_01_elBasicoDeGerenteEsCienMil
	Assert that: (CategoriaGerente sueldoBasico) isEqualTo: 100000 * peso. ! !

!testsDeEjercicio3 class methodsFor: 'as yet unclassified' stamp: 'MD 9/6/2023 16:36:32'!
test_02_elBasicoDeCadeteEsSetentaYCincoMil
	Assert that: (CategoriaCadete sueldoBasico) isEqualTo: 75000 * peso. ! !

!testsDeEjercicio3 class methodsFor: 'as yet unclassified' stamp: 'MD 9/6/2023 16:46:26'!
test_03_SiPepeEsRecategorizado_MantieneLosBonosComoEstabanAntes
	| bonosAntesDeRecategorizacion |
	Pepe contratarComo: CategoriaGerente.
	bonosAntesDeRecategorizacion := Pepe totalPorBonos.
	
	Pepe recategorizar: CategoriaCadete.
	
	Assert that: Pepe totalPorBonos isEqualTo: bonosAntesDeRecategorizacion.! !

Pepe initializeAfterFileIn!