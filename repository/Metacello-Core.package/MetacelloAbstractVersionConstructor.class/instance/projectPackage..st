api
projectPackage: aBlock

	| spec |
	(spec := self root projectPackage) == nil
		ifTrue: [ 
			spec := self project packageSpec.
			self root projectPackage: spec ].
	self with: spec during: aBlock