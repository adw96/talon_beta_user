launch <user.running_applications>: user.switcher_focus(running_applications)
launch chrome: user.switcher_focus("Google Chrome")

# launch calendar: user.switcher_launch("/Applications/Keynote.app") # works
launch calendar: user.switcher_launch("/Applications/Calendar.app") # doesn't works
# launch calendar: user.switcher_launch("Calendar")
# launch calendar: ui.launch(bundle='com.apple.iCal')
