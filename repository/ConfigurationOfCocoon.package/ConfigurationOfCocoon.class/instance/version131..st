versions
version131: spec
	<version: '1.31' imports: #('0.4-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.31'.
		spec author: 'ThibaultArloing'.
		spec timestamp: '4/20/2016 16:55'.
		spec 
			project: 'Ston' with: '0.18';
			project: 'Magritte3' with: '3.5.0'.
		spec 
			package: 'Cocoon-Core' with: 'Cocoon-Core-DamienCassou.55';
			package: #'Cocoon-Tests-Core' with: 'Cocoon-Tests-Core-CyrilFerlicot.36'. ].