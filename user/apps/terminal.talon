os: mac
app: Terminal
app: iTerm2
-
cd: "cd "
ls: "ls "
run git add: insert("git add ")
run git checkout: insert("git checkout ")
run git push:
  insert("git push")
run git pull:
  insert("git pull")
  key(enter)
run git commit:
  insert("git commit")
  key(enter)
run git status:
  insert("git status")
  key(enter)
search for:
    insert("grep -r ")
#     dictate.lower(dgndictation)
#     insert(" .")

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
action(edit.page_down):
  key(command-pagedown)
action(edit.page_up):
  key(command-pageup)
