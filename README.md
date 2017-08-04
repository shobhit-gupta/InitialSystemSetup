<!-- MarkdownTOC depth=0 -->

- Initial System Setup
	- Purpose
	- Installation
		- Pre-setup
		- Fonts
		- Brew & NPM Installs
		- Safari Extensions
		- Apps
		- Sublime Text 3
			- Package Control
			- Environment & Interface
			- Coding
	- Customization
		- iTerm
		- zsh
		- Git
		- Sublime Text 3
			- Icon
			- User Settings
			- User Key Bindings
			- Theme Scheduler Settings
			- View In Browser Settings
			- Table of comments Settings
			- LineEndings Settings \(deprecated\)
			- Syntax Specific Settings: HTML & CSS

<!-- /MarkdownTOC -->

<!--============================================
=            > Initial System Setup            =
=============================================-->
# Initial System Setup

<!--================================
=            >> Purpose            =
=================================-->
## Purpose
The purpose of this project is to setup a freshly formatted OS X system to my personal preference.

<!--=====================================
=            >> Installation            =
======================================-->
## Installation

<!--====
	>>> Pre-setup
====-->
### Pre-setup
Perform the following in order:

1. Install Xcode and Xcode command line tools.
2. Agree to Xcode license.
3. Install Homebrew. (Should be automatically done in `initialSystemSetupScript.sh`)

<!--====
	>>> Fonts
====-->
### Fonts
Install the following fonts:

* Source Code Pro
* Operator Mono (Located in **Fonts** directory.)

<!--====
	>>> Brew & NPM Installs
====-->
### Brew & NPM Installs
> Run `initialSystemSetupScript.sh` to do **majority** of the install work. Check the script for better understanding.

<!--====
	>>> Safari Extensions
====-->
### Safari Extensions
1. Streak
2. uBlock

<!--====
	>>> Apps
====-->
### Apps
1. f.lux

<!--====
	>>> Sublime Text 3
====-->
### Sublime Text 3
<!--
	>>>> Package Control
-->
#### Package Control
1. Install Package Control, a package manager for Sublime.
2. Look for it on google. Copy paste the installer script in the console.
3. Open Command Palette by pressing Super+Shift+P. (Super is cmd key on mac)
4. Check installation by searching for Package Control in the command palette.

<!--
	>>>> Environment & Interface
-->
#### Environment & Interface
Install the following sublime packages using the package control.

| Theme | Helper | Keyboard |
|:-----|:----|:-----|
| Material Theme | SideBarEnhancements | FindKeyConflicts |
| ThemeTweaker | AutomaticFullscreen | Keymaps |
| ThemeScheduler | ReadmePlease | |
| Themes Menu Switcher | MarkAndMove | |

<!--
	>>>> Coding
-->
#### Coding
Install the following sublime packages using the package control.

| Helper | Commenting & Documentation | Web | Markdown |
|:----|:----|:----|:----|
| All Autocomplete | Comment-Snippets | Emmet | Markdown Preview |
| SublimeCodeIntel | Center Comment | View In Browser | MarkdownTOC |
| BracketHighlighter | Fold Comments | HTML5 | |
| HyperlinkHelper | Table of comments | HTML-CSS-JS Prettify | |
| Line Endings Unify | Readme-Helper | | |
| Surround | | | |

* Surround: Trial removal. Newer versions seems to take care of this functionality.

<!--====  End of Installation  ====-->


<!--======================================
=            >> Customization            =
=======================================-->
## Customization

<!--====
	>>> iTerm
====-->
### iTerm
1. Import & load color presets from Material Color Scheme.
2. Set the text font to 13pt Operator Mono Light.
3. Set vertical character spacing to 1.3 and horizontal character spacing to roughly the 6th tick.
4. Change the Tab theme from Appearance section to Dark.
5. Change the Closing settings from the General tab
	1. Uncheck 'Confirm closing multiple sessions'.
	2. Uncheck 'Confirm "Quit iTerm2...'
6. Fullscreen mode by default
	1. Switch to fullscreen mode.
	2. Window > Save Window Arrangement
		1. Name it "Fullscreen"
	3. Preference > Arrangements > Select Fullscreen > Set Default
	4. Preference > General > Startup > Open Default Window Arrangement

<!--====
	>>> ZSH
====-->
### zsh
1. Add the custom aliases in oh-my-zsh custom directory `~/.oh-my-zsh/custom`

	``` shell
	# Example (~/.oh-my-zsh/custom/customize.zsh):
	# alias chrome="osascript -e 'activate application \"Google Chrome\"' && /opt/homebrew-cask/Caskroom/google-chrome/latest/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
	alias chrome="open -a Google\ Chrome"
	alias safari="open -a Safari"
	alias cd_projects="cd /Volumes/SeagateSlimC/Projects/"
	alias cd_coursera="cd /Volumes/SeagateSlimC/Projects/Coursera/"
	alias cd_tdev="cd /Volumes/SeagateSlimC/Projects/Topcoder/Develop/"
	alias cd_udacity="cd /Volumes/SeagateSlimC/Projects/Udacity/"
	alias cd_ios_apps="cd /Volumes/SeagateSlimC/Projects/Udacity/Nanodegrees/iOS/Apps"
	alias vlc="open -a vlc"

	# Make & simultaneously change directory path
	mcd ()
	{
	    mkdir -p -- "$1" &&
	      cd -P -- "$1"
	}
	```

2. You might want to add a newline before each prompt. Add the following in `~/.zshrc` at the end

	``` shell
	# For robbyrussell theme, insert a newline before each prompt
	export PROMPT=$'\n'$PROMPT
	```

<!--====
	>>> Git
====-->
### Git
1. Set sublime text as default text editor for git

	```shell
	git config --global core.editor "subl -n -w"
	```

2. Apply the color settings

	```shell
	git config --global color.ui auto
	```

3. Also add the following git config commands

	```shell
	git config --global push.default upstream
	git config --global merge.conflictstyle diff3
	```

4. User settings

	```shell
	git config --global user.email "YOUR_EMAIL_ADDRESS"
	```

5. Line endings

	```shell
	git config --global core.autocrlf input
	# Configure Git on OS X or Linux to properly handle line endings

	# git config --global core.autocrlf true
	# Configure Git on Windows to properly handle line endings
	```

6. SSH Login

	- Create ssh folder

	```shell
	mcd ~/.ssh/
	```

	- Generate Key pairs (private and public keys) for different ids with:

	```shell
	ssh-keygen -t rsa -b 4096 -C "YOUT_EMAIL_ADDRESS"
	```

	- Config file (~/.ssh/config). Code for reference:

	```shell
	# Reference:
	# https://help.github.com/articles/using-ssh-over-the-https-port/
	# https://about.gitlab.com/2016/02/18/gitlab-dot-com-now-supports-an-alternate-git-plus-ssh-port/
	# https://confluence.atlassian.com/bitbucket/configure-multiple-ssh-identities-for-gitbash-mac-osx-linux-271943168.html


	# Default GitHub user
	# ===================
	Host github.com
		# Uncomment following line if default ssh port is not blocked.
		# HostName github.com

		# Comment following 2 lines if default ssh port is not blocked.
		Hostname ssh.github.com
		Port 443

		PreferredAuthentications publickey
		IdentityFile ~/.ssh/id_rsa_compscience

	# Old GitHub user
	# ===============
	Host old.github.com
		# Uncomment following line if default ssh port is not blocked.
		# HostName github.com

		# Comment following 2 lines if default ssh port is not blocked.
		Hostname ssh.github.com
		Port 443

		PreferredAuthentications publickey
		IdentityFile ~/.ssh/id_rsa_phoenix

	# Default Gitlab user
	# ===================
	Host gitlab.com
		# Uncomment following line if default ssh port is not blocked.
		# HostName gitlab.com

		# Comment following 2 lines if default ssh port is not blocked.
		Hostname altssh.gitlab.com
		Port 443

		PreferredAuthentications publickey
		IdentityFile ~/.ssh/id_rsa_compscience

	# macOS Sierra 10.12.2 or later
	# =============================
	Host *
		AddKeysToAgent yes
		UseKeychain yes
		IdentityFile ~/.ssh/id_rsa_compscience
		IdentityFile ~/.ssh/id_rsa_phoenix


	# Support for Professional id (deprecated)
	# Default GitHub user
	# ===================
	Host Professional
		# Uncomment following line if default ssh port is not blocked.
		# HostName github.com

		# Comment following 2 lines if default ssh port is not blocked.
		Hostname ssh.github.com
		Port 443

		PreferredAuthentications publickey
		IdentityFile ~/.ssh/id_rsa_compscience
	```

	- Add each **public** key to their respective github or gitlab etc. accounts.

	```shell
	# Copy public key to clipboard
	pbcopy < PATH_TO_PUBLIC_KEY
	```

	- Ensure ssh-agent is running

	```shell
	eval "$(ssh-agent -s)"
	```

	- Add private keys in ssh-agent

	```shell
	# See all the keys already added to ssh-agent
	ssh-add -l

	# Delete (if needed) cached keys and list the keys again to double check
	ssh-add -D
	ssh-add -l

	# Add new keys and list the keys again to double check
	ssh-add ssh-add PATH_TO_PRIVATE_KEY
	ssh-add -l
	```

	- Test (Should get a successful authentication or welcome message.)

	```shell
	# Example Test
	ssh -T git@github.com
	```


<!--====
	>>> Sublime Text 3
====-->
### Sublime Text 3

<!--
	>>>> Icon
-->
#### Icon
Change the icon for Sublime Text using the instructions in Readme provided with the icons.

<!--
	>>>> User Settings
-->
#### User Settings
``` javascript
{
	"added_words":
	[
		"Xcode",
		"Homebrew",
		"Pre"
	],
	"auto_complete_commit_on_tab": true,
	"color_scheme": "Packages/Material Theme/schemes/Material-Theme-Lighter.tmTheme",
	"font_face": "Operator Mono",
	"font_size": 13,
	"ignored_packages":
	[
		"Vintage"
	],
	"ignored_words":
	[
		"depth=0"
	],
	"line_padding_bottom": 3,
	"line_padding_top": 3,
	"material_theme_small_statusbar": true,
	"material_theme_small_tab": true,
	"show_line_endings": true,
	"tab_size": 4,
	"theme": "Material-Theme-Lighter.sublime-theme",
	"trim_trailing_white_space_on_save": true
}
```

<!--
	>>>> User Key Bindings
-->
#### User Key Bindings
``` javascript
[
	{ "keys": ["super+v"], "command": "paste_and_indent" },
	{ "keys": ["super+shift+v"], "command": "paste" },
	{ "keys": ["super+shift+/"], "command": "toggle_fold_comments" },
	{ "keys": ["super+shift+m"], "command": "center_comment" },
	{ "keys": ["super+shift+c"], "command": "expand_selection_to_paragraph"},
	{ "keys": ["f1"], "command": "table_of_comments" },
	{ "keys": ["alt+up"],   "command": "table_of_comments", "args":{ "move":"up" } },
	{ "keys": ["alt+down"], "command": "table_of_comments", "args":{ "move":"down" }},
	{ "keys": ["alt+shift+t"], "command": "surround_selection"},
	{ "keys": ["alt+shift+c"], "command": "surround_change"},
	{ "keys": ["alt+shift+d"], "command": "surround_delete"},
	{ "keys": ["ctrl+alt+up"], "command": "select_lines", "args": {"forward": false} },
	{ "keys": ["ctrl+alt+down"], "command": "select_lines", "args": {"forward": true} },
	{ "keys": ["super+m"], "command": "mark_and_move_do_it_all"},
]
```

<!--
	>>>> Theme Scheduler Settings
-->
#### Theme Scheduler Settings
``` javascript
{
    "enabled": true,
    "themes": [
    	{
    		"theme": "Packages/Material Theme/schemes/Material-Theme-Lighter.tmTheme",
    		"ui_theme": "Material-Theme-Lighter.sublime-theme",
            "filters": "brightness(0.95)@fg",
    		"time": "6:00"
    	},
        {
            "theme": "Packages/Material Theme/schemes/Material-Theme-Lighter.tmTheme",
            "ui_theme": "Material-Theme-Lighter.sublime-theme",
            "filters": "brightness(0.90)@fg",
            "time": "9:00"
        },
    	{
    		"theme": "Packages/Material Theme/schemes/Material-Theme.tmTheme",
    		"ui_theme": "Material-Theme.sublime-theme",
    		"time": "17:00"
    	},
        {
            "theme": "Packages/Material Theme/schemes/Material-Theme.tmTheme",
            "ui_theme": "Material-Theme.sublime-theme",
            "filters": "brightness(1.15)@fg",
            "msg": "Prep for sleep now son... don't mess this up.",
            "time": "19:00"
        }
    ]
}
```

<!--
	>>>> View In Browser Settings
-->
#### View In Browser Settings
Depends upon the setup.
``` javascript
{
	"browser": "safari"
}
```

<!--
	>>>> Table of comments Settings
-->
#### Table of comments Settings
Access through the command palette.
``` javascript
{
	"toc_char"     : "\t",
	"toc_title": "- - Document Outline - -",         // Title to display (and look for) for table of contents creation
	"toc_line": "\t",           // Prefix of each line within table of contents
	"comment_chars": "/*#|=-"
}
```

<!--
	>>>> LineEndings Settings
-->
#### LineEndings Settings (deprecated)
``` javascript
{
	// show an alert when the line ending is on the list.
	"alert_when_line_ending_is" : ["Windows"],
	//example: "alert_when_line_ending_is":["Windows","Unix","CR"]

}
```

<!--
	>>>> Syntax Specific Settings: HTML & CSS
-->
#### Syntax Specific Settings: HTML & CSS
``` javascript
{
	"save_on_focus_lost": true
}
```

<!--====  End of Customization  ====-->

