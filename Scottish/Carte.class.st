"
Carte du jeu, représentée par leur couleur et leur valeur et s'affichant sous la forme 'Couleur Valeur'.
"
Class {
	#name : #Carte,
	#superclass : #Object,
	#instVars : [
		'couleur',
		'valeur'
	],
	#category : #Scottish
}

{ #category : #constant }
Carte class >> A [

	^ 'A'
]

{ #category : #constant }
Carte class >> B [

	^ 'B'
]

{ #category : #accessing }
Carte >> couleur [
	^ couleur
]

{ #category : #accessing }
Carte >> couleur: aString [
	couleur := aString
]

{ #category : #testing }
Carte >> couleurCorrecte [
	"Vérifie que la couleur de la carte est comprise entre A et F"
	| couleurs b|
	b := false.
	couleurs := #('A','B','C','D','E','F').
	couleurs do: [ :each | b & (self couleur = each) ].
	^ b
]

{ #category : #printing }
Carte >> displayString [
	 ^ self couleur, self valeur printString
]

{ #category : #initialization }
Carte >> initialize [

	super initialize.
	couleur := self class A.
	valeur := 0.
]

{ #category : #printing }
Carte >> printOn [
	"Affichage de la carte"
	^ self couleur, self valeur
]

{ #category : #accessing }
Carte >> valeur [
	^ valeur
]

{ #category : #accessing }
Carte >> valeur: anInteger [
	valeur := anInteger
]

{ #category : #testing }
Carte >> valeurCorrecte [
	"Vérifie que la valeur de la carte est comprise entre 1 et 9"
	| arg1 arg2|
	arg1 := self valeur < 10.
	arg2 := self valeur > 0.
	^ (arg1 & arg2)
]
