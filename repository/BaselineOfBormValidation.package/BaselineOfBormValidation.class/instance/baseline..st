accessing
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: 'BormModel' with: [
				spec
					repository: 'github://dynacase/borm-model/repository' ].
		spec 
			package: 'Borm-Validation' with: [
				spec requires: #('BormModel'). ].
		spec group: 'default' with: #('Borm-Validation' ). ]
