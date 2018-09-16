"
Le joueur qui est finalement représenté par sa main consistant de 6 cartes. Il utilise les méthodes placer et piocher pour jouer des cartes. Son affichage consiste en la suite de cartes qui le composent.
"
Class {
	#name : #Joueur,
	#superclass : #Object,
	#type : #variable,
	#instVars : [
		'taille',
		'no',
		'partie',
		'main'
	],
	#category : #Scottish
}

{ #category : #initialization }
Joueur >> initialize [
	
	| c a |
	c := Carte new.
	self taille: 6.
	self no: 1.
	a := Array new: self taille withAll: c.
	self main: a
]

{ #category : #accessing }
Joueur >> main [
	
	^ self main
]

{ #category : #accessing }
Joueur >> main: anArray [
	
	no := anArray 
]

{ #category : #accessing }
Joueur >> no [
	
	^ self no
]

{ #category : #accessing }
Joueur >> no: anInteger [
	
	no := anInteger
]

{ #category : #accessing }
Joueur >> taille [
	
	^ self taille
]

{ #category : #accessing }
Joueur >> taille: anInteger [
	
	taille := anInteger 
]
