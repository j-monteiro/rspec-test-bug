# README

Dummy Rails API to reproduce problem rspec bug when making a POST request to an endpoint with a hash that has a key that includes an array of hashes, which in turn contains a hash with the same key the values get merged. Example:

### input

```json
{
	"sample_array": [
		{
			"object": ["patient"],
			...
		},
		{
			"object": ["patient"],
			...
		}
	]
}
```

### rails params object

```json
{
	"sample_array": [
		{
			"object": ["patient", "patient"],
			...
		}
	]
}
```
