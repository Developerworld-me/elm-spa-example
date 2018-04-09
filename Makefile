
MAIN_FILE = src/Main.elm
OUTPUT_FILE = elm.js

.PHONY: dev production

production:
	elm make $(MAIN_FILE) --output=$(OUTPUT_FILE) --optimize && echo "Uglifying output..." && uglifyjs elm.js -mc 'pure_funcs="F2,F3,F4,F5,F6,F7,F8,F9,A2,A3,A4,A5,A6,A7,A8,A9",pure_getters=true,keep_fargs=false,unsafe_comps=true,unsafe=true,passes=3' --output=$(OUTPUT_FILE)

dev:
	elm live $(MAIN_FILE) --output=$(OUTPUT_FILE) --pushstate --debug
