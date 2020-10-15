versions
version113: spec 
        <version: '1.1.3' imports: #('1.0-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'Collections-BitmapCharacterSet' with: 'Collections-BitmapCharacterSet-monty.10'.
			spec package: 'Collections-Tests-BitmapCharacterSet' with: 'Collections-Tests-BitmapCharacterSet-Anonymous.6'
                ].