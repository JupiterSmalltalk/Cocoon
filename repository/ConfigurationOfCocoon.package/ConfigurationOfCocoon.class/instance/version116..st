versions
version116: spec
	<version: '1.16' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.16'.
		spec author: 'CyrilFerlicot'.
		spec timestamp: '5/2/2015 01:31'.
		spec project: 'Ston' with: '0.13'.
		spec 
			package: 'Cocoon-Core' with: 'Cocoon-Core-CyrilFerlicot.17';
			package: #'Cocoon-Tests-Core' with: 'Cocoon-Tests-Core-CyrilFerlicot.17'. ].