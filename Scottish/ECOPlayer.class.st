"
Le joueur qui est finalement représenté par sa main consistant de 6 cartes. Il utilise les méthodes placer et piocher pour jouer des cartes. Son affichage consiste en la suite de cartes qui le composent.
"
Class {
	#name : #ECOPlayer,
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
ECOPlayer >> initialize [
	
	| c a |
	c := ECOCard new.
	self taille: 6.
	self no: 1.
	a := Array new: self taille withAll: c.
	self main: a
]

{ #category : #accessing }
ECOPlayer >> main [
	^ main
]

{ #category : #accessing }
ECOPlayer >> main: anArray [
	
	no := anArray 
]

{ #category : #accessing }
ECOPlayer >> no [
	^ no
]

{ #category : #accessing }
ECOPlayer >> no: anInteger [
	
	no := anInteger
]

{ #category : #accessing }
ECOPlayer >> taille [
	
	^ taille
]

{ #category : #accessing }
ECOPlayer >> taille: anInteger [
	
	taille := anInteger 
]
