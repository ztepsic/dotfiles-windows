@echo off
setlocal enabledelayedexpansion

:: cmd:> mklink [[/D] | [/H] | [J]] Link Target
:: /D - Creates a directory symbolic link. Default is a file symoblic link. Soft link
:: /H - Creates a hard link instead of a symbolic link. A hard link to a file
:: /J Creates a Directory Junction. A hard link to a directory.
:: Link - Specifies the new symbolic link name
:: Target - Specifies thepath (relative or absolte) then the new link refers to

:: Hard Link - A hard link directly points to the file, and acts to the operating system as if it is the file itself. You’ll want to use this option the majority of the time if you are trying to fake an application’s directory.
:: Soft Link - A soft link is essentially a shortcut to a file or folder – if you are using Windows explorer, you’ll be redirected to the directory if you double-click on a shortcut, it won’t pretend its part of the filesystem. You can still directly reference or open a file with the symlinked path, and it mostly works.

SET current_path=%~dp0"sublime_text\"
for /d %%x in ("%APPDATA%\Sublime Text *") do (

	SET link_path="%%x\Packages\User\"

	SET filename="Default (Windows).sublime-keymap"
	if exist %link_path%!filename! ren %link_path%!filename! !filename!".bak"
	mklink %link_path%!filename! %current_path%!filename!

	SET filename="Package Control.sublime-settings"
	if exist %link_path%!filename! ren %link_path%!filename! !filename!".bak"
	mklink %link_path%!filename! %current_path%!filename!

	SET filename="Preferences.sublime-settings"
	if exist %link_path%!filename! ren %link_path%!filename! !filename!".bak"
	mklink %link_path%!filename! %current_path%!filename!

)