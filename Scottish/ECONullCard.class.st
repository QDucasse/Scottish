"
I represent a card whose value is null and color is X. I am unique in the sense that creating two instances of me returns the same card object. I should never be modified by design. It means that a board should replace me and must not mutate me.

I'm used by the board to represent an empty space.


"
Class {
	#name : #ECONullCard,
	#superclass : #ECOCard,
	#classInstVars : [
		'uniqueInstance'
	],
	#category : #Scottish
}

{ #category : #constant }
ECONullCard class >> new [

	^ uniqueInstance ifNil: [ uniqueInstance := super new ].
]

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
ECONullCard >> isNull [

	^ true
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
