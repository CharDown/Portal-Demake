draw_set_halign(fa_right)

for (i = 0; i < array_length(global.text); i++){
	text = global.text[i]
	draw_text(190,100+(i*30),text)
	textseen+=1
	if textseen = 100 {
		array_shift(global.text)	
		textseen = 0
	}
}
