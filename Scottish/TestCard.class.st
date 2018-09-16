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
TestCard >> testColor [
	"Vérifie que la valeur de la carte existe"

	| c |
	c := self cardClass new.
	c color: ECOCard A.
	self assert: c color equals: ECOCard A
]

{ #category : #tests }
TestCard >> testCorrectValueFalse [
	"Vérifie que la valeur de la carte existe"

	| c |
	c := self cardClass new.
	c value: 15.
	self assert: c isValueCorrect not
]

{ #category : #tests }
TestCard >> testCorrectValueTrue [
	"Vérifie que la valeur de la carte existe"

	| c |
	c := self cardClass new.
	c value: 4.
	self assert: c isValueCorrect
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
	self assert: c color equals: self cardClass A.
	self assert: c value equals:  1.
	self assert: c isColorCorrect.
	self assert: c isValueCorrect
]

{ #category : #tests }
TestCard >> testIsNullCard [

	|c|
	c := ECONullCard new.
	self assert: c value equals: 0.
	self assert: c isValueCorrect.
	self assert: c color equals: c class null.
	self assert: c isColorCorrect.
	
]

{ #category : #tests }
TestCard >> testValue [
	"Vérifie que la valeur de la carte existe"

	| c |
	c := self cardClass new.
	c value: 8.
	self assert: c value equals: 8
]
