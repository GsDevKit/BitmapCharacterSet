versions
version120: spec 
        <version: '1.2.0' imports: #('1.0-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'Collections-BitmapCharacterSet' with: 'Collections-BitmapCharacterSet-monty.17'.
			spec package: 'Collections-Tests-BitmapCharacterSet' with: 'Collections-Tests-BitmapCharacterSet-monty.10'
                ].