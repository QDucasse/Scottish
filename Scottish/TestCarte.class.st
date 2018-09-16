Class {
	#name : #TestCarte,
	#superclass : #TestCase,
	#category : #Scottish
}

{ #category : #tests }
TestCarte >> testCouleurAccesseur [
	"Vérifie que la valeur de la carte existe"

	| c |
	c := Carte new.
	c couleur: 'R'.
	self assert: (c couleur) equals: 'R'.
	
	
]

{ #category : #tests }
TestCarte >> testInitialize [
	"Vérifie que la valeur de la carte existe"

	| c |
	c := Carte new.
	self assert: c couleur = 'Indéfini'.
	self assert: c valeur = 0.
	self assert: (c couleurCorrecte) not.
	self assert: (c valeurCorrecte) not.
	
	
	
]

{ #category : #tests }
TestCarte >> testValeurAccesseur [
	"Vérifie que la valeur de la carte existe"

	| c |
	c := Carte new.
	c valeur: 8.
	self assert: (c valeur) equals: 8.
	
	
]

{ #category : #tests }
TestCarte >> testValeurEstCorrecteCasFaux [
	"Vérifie que la valeur de la carte existe"

	| c |
	c := Carte new.
	c valeur: 15.
	self assert: (c valeurCorrecte) not
	
	
]

{ #category : #tests }
TestCarte >> testValeurEstCorrecteCasVrai [
	"Vérifie que la valeur de la carte existe"

	| c |
	c := Carte new.
	c valeur: 4.
	self assert: c valeurCorrecte
	
	
]
