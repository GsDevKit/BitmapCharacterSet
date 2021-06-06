# BitmapCharacterSet [![Build Status](https://github.com/GsDevKit/BitmapCharacterSet/actions/workflows/ci.yml/badge.svg?branch=gemstone)](https://github.com/GsDevKit/BitmapCharacterSet/actions/workflows/ci.yml)

BitmapCharacterSet is a set for characters that uses a bitmap for storing wide characters and an array of truth values for byte characters. Used by XMLParser.

## Installation

### Metacello
```smalltalk
Metacello new
	baseline: 'BitmapCharacterSet';
	repository: 'github://GsDevKit/BitmapCharacterSet:gemstone/filetree';
	load.
```

### tODE command line
```
project install --url=http://gsdevkit.github.io/GsDevKit_home/BitmapCharacterSet.ston
project load BitmapCharacterSet
```

## History
This project was migrated from [http://smalltalkhub.com/#!/~PharoExtras/BitmapCharacterSet](http://smalltalkhub.com/#!/~PharoExtras/BitmapCharacterSet)
