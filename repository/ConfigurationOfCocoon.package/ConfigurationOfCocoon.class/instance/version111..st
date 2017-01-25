versions
version111: spec
	<version: '1.11' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.11'.
		spec author: 'CyrilFerlicot'.
		spec timestamp: '4/16/2015 13:14'.
		spec project: 'Ston' with: '0.12'.
		spec 
			package: 'Cocoon-Core' with: 'Cocoon-Core-CyrilFerlicot.11';
			package: #'Cocoon-Tests-Core' with: 'Cocoon-Tests-Core-CyrilFerlicot.12'. ].