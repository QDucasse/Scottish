"
I represent a CardGroup of strength 1.

I'm composed of three cards with no apparent link between them.

I collaborate with ECOStone, ECOCard and ECOBoard.
"
Class {
	#name : #ECOGroupComplete,
	#superclass : #ECOGroup,
	#category : #Scottish
}

{ #category : #accessing }
ECOGroupComplete >> strength [

	^1
]

{ #category : #accessing }
ECOGroupComplete >> with: anECOCard [
	" It should never happen ! Either the player should not be able to click on the stone emplacement, either it should send an error"

	^ self
]
