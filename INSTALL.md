Make sure that `build-essential` and `git` are installed.

# Installation

To set up the repository:
```
	git clone https://github.com/Sangetsuki/buuj
	git clone https://github.com/pret/agbcc

	cd ./agbcc
	./build.sh
	./install.sh ../buuj

	cd ../buuj
```

To build:
```
	make tools
	make
```

To make sure the builded rom is matching:
```
	make compare
```
