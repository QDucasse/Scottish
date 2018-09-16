"
I represent a card whose value is null and color is X.

I'm used by the board to represent an empty space.


"
Class {
	#name : #ECONullCard,
	#superclass : #ECOCard,
	#category : #Scottish
}

{ #category : #constant }
ECONullCard class >> null [

	^ 'X'
]

{ #category : #initialize }
ECONullCard >> defaultColor [

	^ self class null
]

{ #category : #initialize }
ECONullCard >> defaultValue [

	^ 0
]

{ #category : #testing }
ECONullCard >> isColorCorrect [

	^ color = self class null
]

{ #category : #testing }
ECONullCard >> isValueCorrect [

	^ value = 0
]

{ #category : #printing }
ECONullCard >> printOn: aStream [

	aStream 
		nextPutAll: '  '

]
