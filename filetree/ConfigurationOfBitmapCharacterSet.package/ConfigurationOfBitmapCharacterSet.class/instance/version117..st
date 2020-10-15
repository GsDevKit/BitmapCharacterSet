versions
version117: spec 
        <version: '1.1.7' imports: #('1.0-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'Collections-BitmapCharacterSet' with: 'Collections-BitmapCharacterSet-monty.14'.
			spec package: 'Collections-Tests-BitmapCharacterSet' with: 'Collections-Tests-BitmapCharacterSet-monty.9'
                ].