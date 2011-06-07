.PHONY: clean

all: head min load

clean:
	rm -rf dist/*.js

# for debugging
head: src/core.js src/css3.js src/load.js
	# grep "console" $^
	cat $^ > dist/head.js

min: head
	closure --js dist/head.js > dist/head.min.js

load: src/load.js
	closure --js $^ > dist/head.load.min.js
