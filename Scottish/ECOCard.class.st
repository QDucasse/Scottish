"
Carte du jeu, représentée par leur couleur et leur valeur et s'affichant sous la forme 'Couleur Valeur'.
"
Class {
	#name : #ECOCard,
	#superclass : #Object,
	#instVars : [
		'color',
		'value'
	],
	#category : #Scottish
}

{ #category : #constant }
ECOCard class >> A [

	^ 'A'
]

{ #category : #example }
ECOCard class >> A1 [

	^self new
]

{ #category : #constant }
ECOCard class >> B [

	^ 'B'
]

{ #category : #constant }
ECOCard class >> C [

	^ 'C'
]

{ #category : #constant }
ECOCard class >> D [

	^ 'D'
]

{ #category : #constant }
ECOCard class >> E [

	^ 'E'
]

{ #category : #constant }
ECOCard class >> F [

	^ 'F'
]

{ #category : #example }
ECOCard class >> F2 [

	| c |
	c := ECOCard new.
	c value: 2.
	c color: 'F'.
	^ c
]

{ #category : #accessing }
ECOCard >> color [
	^ color
]

{ #category : #accessing }
ECOCard >> color: aString [
	color := aString
]

{ #category : #initialization }
ECOCard >> defaultColor [
	^ self class A
]

{ #category : #initialization }
ECOCard >> defaultValue [
	^ 1
]

{ #category : #initialization }
ECOCard >> initialize [
	super initialize.
	color := self defaultColor.
	value := self defaultValue 
]

{ #category : #testing }
ECOCard >> isColorCorrect [
	"Vérifie que la couleur de la carte est comprise entre A et F"

	^ {ECOCard A . ECOCard B . ECOCard C . ECOCard D . ECOCard E .ECOCard F} includes: color 
	
]

{ #category : #testing }
ECOCard >> isNull [
	"Vérifie que la valeur de la carte est comprise entre 1 et 9"
	
	^ false
]

{ #category : #testing }
ECOCard >> isValueCorrect [
	"Vérifie que la valeur de la carte est comprise entre 1 et 9"
	
	^ value between: 1 and: 9 
]

{ #category : #printing }
ECOCard >> printOn: aStream [

	aStream 
		nextPutAll: self color;
		print:  self value 
		
]

{ #category : #accessing }
ECOCard >> value [
	^ value
]

{ #category : #accessing }
ECOCard >> value: anInteger [
	value := anInteger
]
