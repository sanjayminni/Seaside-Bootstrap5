"
Input group for Bootstrap
"
Class {
	#name : 'SBSInputGroupTag',
	#superclass : 'SBSGenericTag',
	#traits : 'SBSTSizeStyled',
	#classTraits : 'SBSTSizeStyled classTrait',
	#category : 'Bootstrap5-Core-Base',
	#package : 'Bootstrap5-Core',
	#tag : 'Base'
}

{ #category : 'defaults' }
SBSInputGroupTag >> defaultStyleClass [

	^'input-group'
]

{ #category : 'initialization' }
SBSInputGroupTag >> initialize [
	super initialize.
	self sizeStyle: self defaultStyleClass
]
