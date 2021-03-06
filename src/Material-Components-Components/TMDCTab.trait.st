Trait {
	#name : #TMDCTab,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Traits'
}

{ #category : #'instance creation' }
TMDCTab >> after [
	super after.
	"Tabs should always end with a tab ripple before closing tag."
	self canvas mdcTabRipple
]

{ #category : #options }
TMDCTab >> beActive [
	<mdcApi: 'Optional. Visually activates the indicator.' priority: 10>
	self mdcClass: 'tab--active'
]

{ #category : #options }
TMDCTab >> beActiveIf: aValuable [
	<mdcApi: 'Optional. Visually activates the indicator if the value of the parameter is true (can be a valuable).' priority: 20>
	aValuable value ifTrue: [ self beActive ]
]

{ #category : #initialization }
TMDCTab >> initialize [
	<mdcConstructor: #mdcTab description: 'Creates a tab to organize and allow navigation between groups of content that are related and at the same level of hierarchy. Each Tab governs the visibility of one group of content.'>
	<mdcConstructor: #mdcTab: description: 'Creates a tab to organize and allow navigation between groups of content that are related and at the same level of hierarchy with implicit content.'>
	<mdcConstructor: #mdcSimpleTabActive:customization:with: description: 'Creates a tab with a default indicator. Tab can be customized with a block and you can directly fill the content.'>
	super initialize.
	self
		mdcClass: 'tab';
		role: 'tab'.
		
	self resetType
]

{ #category : #options }
TMDCTab >> minWidth [
	<mdcApi: 'Optional. Indicates that the tab should shrink in size to be as narrow as possible without causing text to wrap.' priority: 40>
	self mdcClass: 'tab--min-width'
]

{ #category : #initialization }
TMDCTab >> resetType [
	self explicitRequirement
]

{ #category : #options }
TMDCTab >> stacked [
	<mdcApi: 'Optional. Indicates that the tab icon and label should flow vertically instead of horizontally.' priority: 30>
	self mdcClass: 'tab--stacked'
]
