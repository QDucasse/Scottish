Class {
	#name : #ECOGroupUncompleteTwo,
	#superclass : #ECOGroup,
	#category : #Scottish
}

{ #category : #example }
ECOGroupUncompleteTwo class >> uncompleteA1B2 [
	<sampleInstance>
	
	| g c1 c2 |
	c1 := ECOCard new.
	c1 value: 1.
	c1 color: 'A'.
	c2 := ECOCard new.
	c2 value: 2.
	c2 color: 'B'.
	g := ECOGroupEmpty new.	
	^ (g with: c1) with: c2.
	

]

{ #category : #accessing }
ECOGroupUncompleteTwo >> isUncomplete [

	^ true
]

{ #category : #accessing }
ECOGroupUncompleteTwo >> strength [
	^ 0
	
]

{ #category : #accessing }
ECOGroupUncompleteTwo >> with: anECOCard [
	

]
