graphics: graphics/pokeballs.4bpp graphics/big_pokeball.gbapal

graphics/big_pokeball.gbapal: graphics/big_pokeball.png
	$(GFX) $< $@

graphics/pokeballs.4bpp: graphics/mini_pokeball.png graphics/big_pokeball.png
	$(GFX) graphics/big_pokeball.png graphics/big_pokeball.4bpp
	$(GFX) graphics/mini_pokeball.png graphics/mini_pokeball.4bpp
	cat graphics/big_pokeball.4bpp graphics/mini_pokeball.4bpp > graphics/pokeballs.4bpp
