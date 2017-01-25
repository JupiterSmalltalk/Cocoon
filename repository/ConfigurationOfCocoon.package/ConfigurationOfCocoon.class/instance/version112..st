versions
version112: spec
	<version: '1.12' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.12'.
		spec author: 'CyrilFerlicot'.
		spec timestamp: '4/21/2015 16:51'.
		spec project: 'Ston' with: '0.12'.
		spec 
			package: 'Cocoon-Core' with: 'Cocoon-Core-CyrilFerlicot.12';
			package: #'Cocoon-Tests-Core' with: 'Cocoon-Tests-Core-CyrilFerlicot.13'. ].