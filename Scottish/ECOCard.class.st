"
Carte du jeu, représentée par leur couleur et leur valeur et s'affichant sous la forme 'Couleur Valeur'.
"
Class {
	#name : #ECOCard,
	#superclass : #Object,
	#instVars : [
		'couleur',
		'valeur'
	],
	#category : #Scottish
}

{ #category : #constant }
ECOCard class >> A [

	^ 'A'
]

{ #category : #constant }
ECOCard class >> B [

	^ 'B'
]

{ #category : #accessing }
ECOCard >> couleur [
	^ couleur
]

{ #category : #accessing }
ECOCard >> couleur: aString [
	couleur := aString
]

{ #category : #initialization }
ECOCard >> defaultColor [
	^ self class A
]

{ #category : #printing }
ECOCard >> displayString [
	 ^ self couleur, self valeur printString
]

{ #category : #initialization }
ECOCard >> initialize [
	super initialize.
	couleur := self defaultColor.
	valeur := 1
]

{ #category : #testing }
ECOCard >> isColorCorrect [
	"Vérifie que la couleur de la carte est comprise entre A et F"

	^ {ECOCard A . 'B' . 'C' . 'D' . 'E' .'F'} includes: couleur 
	
]

{ #category : #printing }
ECOCard >> printOn: aStream [

	aStream 
		nextPutAll: 'C:';
		nextPutAll: self couleur;
		print:  self valeur 
		
]

{ #category : #accessing }
ECOCard >> valeur [
	^ valeur
]

{ #category : #accessing }
ECOCard >> valeur: anInteger [
	valeur := anInteger
]

{ #category : #testing }
ECOCard >> valeurCorrecte [
	"Vérifie que la valeur de la carte est comprise entre 1 et 9"
	
	^ valeur between: 1 and: 9 
]
