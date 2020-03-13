from talon import Context, speech_system, actions
from talon_plugins import speech

ctx = Context()

def set_enabled(value):
    ctx.exclusive = not value
    actions.speech.toggle(value)

ctx.commands = {
    '(talon sleep) | (go to sleep)': lambda m: set_enabled(False),
    '(talon wake) | (wake up)': lambda m: set_enabled(True),
}
