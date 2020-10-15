symbolic versions
dev: spec 
	<version: 'dev'>

	spec for: #'common' do: [ 
		spec
			baseline: 'BitmapCharacterSet' with: [ 
				spec 
					className: 'BaselineOfBitmapCharacterSet';
					repository: 'github://pharo-contributions/BitmapCharacterSet:master/src' ]]