show phones: user.homophones_show_selection()
phones: user.homophones_show_selection()
force phones: user.homophones_force_show_selection()
hide phones: user.homophones_hide()
pick <user.homophones_selection>:
    insert(homophones_selection)
    user.homophones_hide()
