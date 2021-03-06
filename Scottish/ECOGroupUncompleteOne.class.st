"
I represent an uncomplete card group. My strength is 0

I'm composed one ECOCard.

I collaborate with ECOStone, ECOCard and ECOBoard.
"
Class {
	#name : #ECOGroupUncompleteOne,
	#superclass : #ECOGroup,
	#category : #Scottish
}

{ #category : #'instance creation' }
ECOGroupUncompleteOne class >> uncompleteA1 [
	<sampleInstance>
	
	| g c1 |
	c1 := ECOCard new.
	c1 value: 1.
	c1 color: 'A'.
	g := ECOGroupEmpty new.	
	^ g with: c1


]

{ #category : #testing }
ECOGroupUncompleteOne >> initialize [

	super initialize.
	2 timesRepeat: [cards add: ECONullCard new]
]

{ #category : #testing }
ECOGroupUncompleteOne >> isUncomplete [

	^ true
]

{ #category : #accessing }
ECOGroupUncompleteOne >> strength [
	^ 0
]

{ #category : #adding }
ECOGroupUncompleteOne >> with: anECOCard [
	
	| g |
	g := ECOGroupUncompleteTwo new.
	g add: cards first.
	g add: anECOCard.
	^ g

]
