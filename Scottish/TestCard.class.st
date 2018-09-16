Class {
	#name : #TestCard,
	#superclass : #TestCase,
	#category : #Scottish
}

{ #category : #tests }
TestCard >> cardClass [
	^ ECOCard
]

{ #category : #tests }
TestCard >> testCouleurAccesseur [
	"Vérifie que la valeur de la carte existe"

	| c |
	c := self cardClass new.
	c couleur: 'R'.
	self assert: c couleur equals: 'R'
]

{ #category : #tests }
TestCard >> testDisplayString [ 

	self assert: self cardClass new displayString equals: 'A1'
]

{ #category : #tests }
TestCard >> testInitialize [
	"Vérifie que la valeur de la carte existe"

	| c |
	c := self cardClass new.
	self assert: c couleur equals: self cardClass A.
	self assert: c valeur equals:  1.
	self assert: c isColorCorrect.
	self assert: c valeurCorrecte
]

{ #category : #tests }
TestCard >> testValeurAccesseur [
	"Vérifie que la valeur de la carte existe"

	| c |
	c := self cardClass new.
	c valeur: 8.
	self assert: c valeur equals: 8
]

{ #category : #tests }
TestCard >> testValeurEstCorrecteCasFaux [
	"Vérifie que la valeur de la carte existe"

	| c |
	c := self cardClass new.
	c valeur: 15.
	self assert: c valeurCorrecte not
]

{ #category : #tests }
TestCard >> testValeurEstCorrecteCasVrai [
	"Vérifie que la valeur de la carte existe"

	| c |
	c := self cardClass new.
	c valeur: 4.
	self assert: c valeurCorrecte
]
