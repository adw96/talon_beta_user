# formerly from keys.talon
go <user.arrows>: key(arrows)
# <user.number>: key(number) # messes with repple
number <user.number>: key(number)
<user.letter>: key(letter)
ship <user.letters> [(lowercase | sunk)]:
    user.keys_uppercase_letters(letters)
<user.symbol>: key(symbol)
<user.special>: key(special)
<user.key>: key(key)

# full list in formatters.py
<user.format_text> [over]: insert(format_text)
phrase <dgndictation> [over]: dictate.lower(dgndictation)
(say | speak) <dgndictation> [over]: dictate.lower(dgndictation)
say <user.text>: insert(text)


# improve recognition -- keys only
wipe: key(backspace)
dalee | delee: key(backspace)
dot space: ". "
dot pie: ".py"
seessvee: "csv"
delete delete:
	key(backspace)
	key(backspace)

# basic grammars
pausa: " -- "
swipe: ", "
args:
	insert("()")
	key(left)
brax:
	insert("[]")
	key(left)
kirk:
	insert("{}")
	key(left)

# obvious actions
zoom in: edit.zoom_in()
zoom out: edit.zoom_out()
snatch: edit.cut()
stoosh: edit.copy()
spark: edit.paste()
dizzle: edit.undo()
rizzle: edit.redo()
save this: edit.save()
findy: edit.find()

# obvious shortcuts
quit application: key(cmd-q)
minimize this: key(cmd-m)
spotlight: key(cmd-space)

# Selecting
select all: edit.select_all()
shreepway: edit.extend_file_start()
shroomway: key(cmd-shift-down)
shreep: edit.extend_up()
shroom | shrom | shrep | sharoom: edit.extend_down()
lecksy: key(cmd-shift-left)
ricksy: edit.extend_line_end()
scram: key(alt-shift-left)
scrish: key(alt-shift-right)

# Moving around
fame: edit.word_left()
fish: edit.word_right()
ricky: edit.line_end()
lefty: edit.line_start()
(doomway | doom way): edit.file_end()
(jeepway | jeep way): edit.file_start()
jeep: edit.up()
(doom | dom): edit.down()
chris: edit.right()
crimp: edit.left()
