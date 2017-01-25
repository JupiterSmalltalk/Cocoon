versions
version114: spec
	<version: '1.14' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.14'.
		spec author: 'CyrilFerlicot'.
		spec timestamp: '4/22/2015 13:44'.
		spec project: 'Ston' with: '0.12'.
		spec 
			package: 'Cocoon-Core' with: 'Cocoon-Core-CyrilFerlicot.13';
			package: #'Cocoon-Tests-Core' with: 'Cocoon-Tests-Core-CyrilFerlicot.15'. ].