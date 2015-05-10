accessing
baseline: spec
		<baseline>
	spec
		for: #common
		do: [ 
			spec package: 'Borm-Validation'.
			spec group: 'default' with: #('Borm-Validation') ]
