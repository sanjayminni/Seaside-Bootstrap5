"
A boostrap form group
"
Class {
	#name : 'SBSFormGroupTag',
	#superclass : 'SBSGenericTag',
	#category : 'Bootstrap5-Core-Base',
	#package : 'Bootstrap5-Core',
	#tag : 'Base'
}

{ #category : 'defaults' }
SBSFormGroupTag >> defaultStyleClass [

	^'form-group'
]

{ #category : 'options' }
SBSFormGroupTag >> formCheck [

	self class: 'form-check'
]
