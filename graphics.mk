graphics: graphics/big_pokeball.4bpp graphics/mini_pokeball.4bpp graphics/big_pokeball.gbapal

graphics/big_pokeball.4bpp: graphics/big_pokeball.png
	$(GFX) $< $@

graphics/mini_pokeball.4bpp: graphics/mini_pokeball.png
	$(GFX) $< $@

graphics/big_pokeball.gbapal: graphics/big_pokeball.png
	$(GFX) $< $@