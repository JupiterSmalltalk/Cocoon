versions
version13: spec
	<version: '1.3' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.3'.
		spec author: 'CyrilFerlicot'.
		spec timestamp: '3/31/2015 17:59'.
		spec project: 'Ston' with: '0.10'.
		spec 
			package: 'Cocoon-Core' with: 'Cocoon-Core-CyrilFerlicot.5';
			package: #'Cocoon-Tests-Core' with: 'Cocoon-Tests-Core-CyrilFerlicot.2'. ].