versions
version12: spec
	<version: '1.2' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.2'.
		spec author: 'CyrilFerlicot'.
		spec timestamp: '3/31/2015 16:52'.
		spec project: 'Ston' with: '0.10'.
		spec 
			package: 'Cocoon-Core' with: 'Cocoon-Core-CyrilFerlicot.5';
			package: #'Cocoon-Test-Core' with: 'Cocoon-Test-Core-CyrilFerlicot.1'. ].