versions
version10: spec
	<version: '1.0' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.0'.
		spec author: 'StephaneDucasse'.
		spec timestamp: '3/31/2015 10:31'.
		spec project: 'Ston' with: '0.10'.
		spec package: 'Cocoon-Core' with: 'Cocoon-Core-StephaneDucasse.2'. ].