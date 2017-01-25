versions
version115: spec
	<version: '1.15' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.15'.
		spec author: 'CyrilFerlicot'.
		spec timestamp: '4/27/2015 10:46'.
		spec project: 'Ston' with: '0.12'.
		spec 
			package: 'Cocoon-Core' with: 'Cocoon-Core-CyrilFerlicot.17';
			package: #'Cocoon-Tests-Core' with: 'Cocoon-Tests-Core-CyrilFerlicot.17'. ].