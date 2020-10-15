versions
version123: spec 
        <version: '1.2.3' imports: #('1.0-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'Collections-BitmapCharacterSet' with: 'Collections-BitmapCharacterSet-monty.20'.
			spec package: 'Collections-Tests-BitmapCharacterSet' with: 'Collections-Tests-BitmapCharacterSet-monty.12'
                ].