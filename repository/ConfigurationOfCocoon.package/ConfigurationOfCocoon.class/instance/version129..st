versions
version129: spec
	<version: '1.29' imports: #('0.4-baseline' )>
	"Dependencies fix"
	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.29'.
		spec author: 'StephanEggermont'.
		spec timestamp: '1/18/2016 16:00'.
		spec 
			project: 'Ston' with: #stable;
			project: 'Magritte3' with: #'release3.1'.
		spec 
			package: 'Cocoon-Core' with: 'Cocoon-Core-DamienCassou.49';
			package: #'Cocoon-Tests-Core' with: 'Cocoon-Tests-Core-DamienCassou.34'. ].