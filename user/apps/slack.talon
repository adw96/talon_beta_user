os: mac
app: Slack
-
# Workspace
'lab workspace': Key("cmd-1")
'anvio workspace': Key("cmd-2")
'talon workspace': Key("cmd-3")
'Hutch workspace': Key("cmd-4")
workspace <number>: user.keys_modifier_key("cmd", number)

# Channel
channel: key(cmd-k)
channel <dgndictation>:
    key(cmd-k)
    dictate.lower(dgndictation)
channel up: key(alt-up)
channel down: key(alt-down)
insert code:
    insert("``````")
    key(left left left)
    key(shift-enter)
    key(shift-enter)
    key(up)

dot pie: '.py'
