versions
version110: spec 
	<version: '1.1' imports: #('1.0-baseline') >
	
	spec for: #common do: [ 
		spec blessing: #release.
		spec description: 'Speed Improvement from Monty and adding tests'.
		
		spec package: 'Collections-BitmapCharacterSet' with: 'Collections-BitmapCharacterSet-Anonymous.6'.
		spec package: 'Collections-Tests-BitmapCharacterSet' with: 'Collections-Tests-BitmapCharacterSet-Anonymous.6'
		]
	

