from models import Configuration

def lookup(key, default):
	results = Configuration.query(Configuration.key == key)

	if not results.iter().has_next():
		return default

	key_value = results.iter().next().value

	return key_value

def create(key, value):
	config = Configuration(id=key, key=key, value=value)
	config.put()
	return config