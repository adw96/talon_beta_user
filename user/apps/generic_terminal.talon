os: mac
app: Terminal
app: iTerm2
-

# commands
cd: "cd "
ls: "ls "
search for:
  insert("grep -r '' .")
  key(left)
  key(left)
  key(left)

# vim
open vim:
    key(ctrl-c)
    delete("vi")
    key(enter)
quit vim:
    key(escape)
    insert(":q!")
    key(enter)
vim save qui:
    key(escape)
    insert(":wq")
    key(enter)

# git
run git status:
  insert("git status")
  key(enter)
run git pull:
  insert("git pull")
  key(enter)
run git add: insert("git add ")
run git commit:
  insert("git commit -a -m ''")
  key(left)
run git push: insert("git push ")
run git branch: insert("git branch ")

action(app.tab_open):
  key(cmd-t)
action(app.tab_close):
  key(cmd-w)
action(app.tab_next):
  key(ctrl-tab)
action(app.tab_previous):
  key(ctrl-shift-tab)
action(app.window_open):
  key(cmd-n)
run last:
    key(up)
    key(enter)
kill all:
    key(ctrl-c)
