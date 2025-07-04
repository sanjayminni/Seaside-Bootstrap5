"
Common superclass for Bootstrap image tags
"
Class {
	#name : 'SBSImageTag',
	#superclass : 'WAImageTag',
	#category : 'Bootstrap5-Core-Base',
	#package : 'Bootstrap5-Core',
	#tag : 'Base'
}

{ #category : 'testing' }
SBSImageTag class >> isAbstract [

	^self name = #SBSImageTage
]

{ #category : 'defaults' }
SBSImageTag >> defaultStyleClass [

	^self subclassResponsibility
]

{ #category : 'initialization' }
SBSImageTag >> initialize [
	super initialize.
	self class: self defaultStyleClass
]
