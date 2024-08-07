"
A generic Bootstrap tag
"
Class {
	#name : 'SBSGenericTag',
	#superclass : 'WATagBrush',
	#category : 'Bootstrap5-Core-Base',
	#package : 'Bootstrap5-Core',
	#tag : 'Base'
}

{ #category : 'defaults' }
SBSGenericTag >> defaultStyleClass [

	^ self subclassResponsibility
]

{ #category : 'private - initialization' }
SBSGenericTag >> initStyleClass [

	self class: self defaultStyleClass
]

{ #category : 'initialization' }
SBSGenericTag >> initialize [

	super initialize.
	self initStyleClass
]

{ #category : 'accessing' }
SBSGenericTag >> tag [

	^ 'div'
]
