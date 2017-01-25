versions
version128: spec
	<version: '1.28' imports: #('0.4-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.28'.
		spec author: 'DamienCassou'.
		spec timestamp: '8/28/2015 13:26'.
		spec 
			project: 'Ston' with: '0.14';
			project: 'Magritte3' with: '3.5.0'.
		spec 
			package: 'Cocoon-Core' with: 'Cocoon-Core-DamienCassou.49';
			package: #'Cocoon-Tests-Core' with: 'Cocoon-Tests-Core-DamienCassou.34'. ].