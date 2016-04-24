<!-- MarkdownTOC depth=0 -->

- Initial System Setup
	- Purpose
	- Installation
		- Pre-setup
		- Fonts
		- Brew & NPM Installs
		- Sublime Text 3
			- Package Control
			- Environment & Interface
			- Coding
	- Customization
		- iTerm
		- zsh
		- Sublime Text 3
			- Icon
			- User Settings
			- User Key Bindings
			- Theme Scheduler Settings
			- View In Browser Settings
			- Table of comments Settings
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
|Material Theme | SideBarEnhancements | FindKeyConflicts |
|ThemeTweaker | AutomaticFullscreen | Keymaps |
|ThemeScheduler | ReadmePlease | |
|Themes Menu Switcher | | |

<!--
	>>>> Coding
-->
#### Coding
Install the following sublime packages using the package control.

| Helper | Commenting & Documentation | Web | Markdown |
|:----|:----|:----|:----|
|All Autocomplete | Comment-Snippets | Emmet | Markdown Preview |
|SublimeCodeIntel | Center Comment | View In Browser | MarkdownTOC |
|BracketHighlighter | Fold Comments | HTML5 | |
| | Table of comments | HTML-CSS-JS Prettify | |
| | Readme-Helper | | |

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

<!--====
	>>> ZSH
====-->
### zsh
1. Add the custom aliases in oh-my-zsh custom directory `~/.oh-my-zsh/custom`

	``` shell
	# Example (~/.oh-my-zsh/custom/customize.zsh):
	alias chrome="osascript -e 'activate application \"Google Chrome\"' && /opt/homebrew-cask/Caskroom/google-chrome/latest/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
	alias safari="open -a Safari"
	alias cd_udacity="cd /Volumes/SeagateSlimC/Projects/Udacity/"
	alias vlc="open -a vlc"
	```

2. You might want to add a newline before each prompt. Add the following in `~/.zshrc` at the end

	``` shell
	# For robbyrussell theme, insert a newline before each prompt
	export PROMPT=$'\n'$PROMPT
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
	"color_scheme": "Packages/User/ThemeTweaker/Material-Theme-Lighter.tmTheme",
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
	{ "keys": ["super+shift+f"], "command": "toggle_fold_comments" },
	{ "keys": ["super+shift+c"], "command": "center_comment" },
	{ "keys": ["f1"], "command": "table_of_comments" },
	{ "keys": ["alt+up"],   "command": "table_of_comments", "args":{ "move":"up" } },
	{ "keys": ["alt+down"], "command": "table_of_comments", "args":{ "move":"down" }}
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
    		"theme": "Packages/Material Theme/schemes/Material-Theme-OceanicNext.tmTheme",
    		"ui_theme": "Material-Theme.sublime-theme",
    		"time": "17:00"
    	},
        {
            "theme": "Packages/Material Theme/schemes/Material-Theme-OceanicNext.tmTheme",
            "ui_theme": "Material-Theme.sublime-theme",
            "filters": "brightness(1.1)@fg",
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
``` javascript
{
	"posix": {
		"linux": {
			"firefox": "firefox -new-tab",
			"chrome": "google-chrome",
			"chrome64": "google-chrome",
			"chromium": "chromium"
		},
		"linux2": {
			"firefox": "firefox -new-tab",
			"chrome": "google-chrome",
			"chrome64": "google-chrome",
			"chromium": "chromium"
		},
		"darwin": {
			"firefox": "open -a \"/Applications/Firefox.app\"",
			"safari": "open -a \"/Applications/Safari.app\"",
			"chrome": "open -a \"/opt/homebrew-cask/Caskroom/google-chrome/latest/Google Chrome.app\"",
			"chrome64": "open -a \"/opt/homebrew-cask/Caskroom/google-chrome/latest/Google Chrome.app\"",
			"yandex": "open -a \"/Applications/Yandex.app\""
		}
	},
	"nt": {
		"win32": {
			"firefox": "C:\\Program Files (x86)\\Mozilla Firefox\\firefox.exe -new-tab",
			"iexplore": "C:\\Program Files\\Internet Explorer\\iexplore.exe",
			"chrome": "%Local AppData%\\Google\\Chrome\\Application\\chrome.exe",
			"chrome64": "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe",
			"yandex": "%Local AppData%\\Yandex\\YandexBrowser\\browser.exe"
		}
	},

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
	>>>> Syntax Specific Settings: HTML & CSS
-->
#### Syntax Specific Settings: HTML & CSS
``` javascript
{
	"save_on_focus_lost": true
}
```

<!--====  End of Customization  ====-->

