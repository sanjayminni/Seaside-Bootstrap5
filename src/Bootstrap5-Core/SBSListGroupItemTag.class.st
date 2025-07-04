"
List group items
"
Class {
	#name : 'SBSListGroupItemTag',
	#superclass : 'SBSListItemTag',
	#traits : 'SBSTContextualStyled + SBSTContentJustification',
	#classTraits : 'SBSTContextualStyled classTrait + SBSTContentJustification classTrait',
	#category : 'Bootstrap5-Core-Base',
	#package : 'Bootstrap5-Core',
	#tag : 'Base'
}

{ #category : 'defaults' }
SBSListGroupItemTag >> defaultStyleClass [

	^'list-group-item'
]

{ #category : 'options' }
SBSListGroupItemTag >> flexFill [

	self class: 'flex-fill'
]

{ #category : 'initialization' }
SBSListGroupItemTag >> initialize [
	super initialize.
	self contextStyle: self defaultStyleClass.
	self modifier: ''
]
