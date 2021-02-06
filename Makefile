.PHONY: install run

BIN = docker run \
			--interactive \
			--rm \
			-v "/code" \
			--name reversi-python-running \
			reversi-python

# Initialization ===============================================================

install:
	docker build --tag=reversi-python .

# Run ===============================================================

run:
	 $(BIN) ./src/reversi.py
