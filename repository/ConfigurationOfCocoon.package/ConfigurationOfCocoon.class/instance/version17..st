versions
version17: spec
	<version: '1.7' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.7'.
		spec author: 'CyrilFerlicot'.
		spec timestamp: '4/1/2015 17:54'.
		spec project: 'Ston' with: '0.10'.
		spec 
			package: 'Cocoon-Core' with: 'Cocoon-Core-CyrilFerlicot.8';
			package: #'Cocoon-Tests-Core' with: 'Cocoon-Tests-Core-CyrilFerlicot.8'. ].