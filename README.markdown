
# Aquamacs Emacs Starter Kit

Forked from [Evangineer's aquamacs-emacs-starter-kit](https://github.com/evangineer/aquamacs-emacs-starter-kit) which was forked from [Walter McGinnis's aquamacs-emacs-starter-kit](http://github.com/walter/aquamacs-emacs-starter-kit), which in turn was inspired by [Phil Hagelberg's emacs-starter-kit](http://github.com/technomancy/emacs-starter-kit/tree/master) and fork customizations by [Geoffrey Grosenbach (topfunky)](http://github.com/topfunky/emacs-starter-kit/tree/master), but slimmed down for use with the already heavily customized Aquamacs Mac OS X version of emacs.

Since this starter kit is aimed at Aquamacs it has a very different project layout than Phil Hagelberg's emacs-starter-kit and has also since diverged from Walter McGinnis's work. The Aquamacs Emacs Starter Kit suits the philosophy of Aquamacs to be more Mac like in directory structure. It also slims down the starter kit a lot since Aquamacs already includes many of the same concepts.  This is a new related project, not a fork, and thus code conventions may not be interchangable.

## Guiding concepts in order of precedence

* where possible use configuration (customization.el and Preferences.el) of Aquamacs to achieve desired result.
* use [Dimitri Fontaines' el-get](https://github.com/dimitri/el-get) to get ELPA packages and other  third party extensions to emacs
* use site-lisp directory for third party code that is available via other means
* use ~/Library/Preferences/Aquamacs Emacs/aquamacs-emacs-starter-kit/ for Aquamacs Emacs Starter Kit specific code
* this starter kit is aimed at mostly at web developers and an system
  administrators
* new windows (frames) should be used sparingly ala traditional emacs, in contrast to Aquamacs defaults

I've never been a Textmate user (like both Walter and Evangineer), so I don't include textmate mode or other the textmate keybindings that may smooth the transition for those that are coming form Textmate. Check out topfunky's for lots of that stuff. Feel free to fork and add them to your fork.

However, I do occasionally include useful features (snippets, etc.) that originated from Textmate. Again, fork and add if you have some.

## Install

* cd ~/Library/Preferences/Aquamacs Emacs/
* git clone git://github.com/evangineer/aquamacs-emacs-starter-kit.git
* cd aquamacs-emacs-starter-kit
* git submodule init
* git clone --depth 1 git://repo.or.cz/org-mode.git site-lisp/org-mode
  (don't need the huge history)
* git submodule update
* cd site-lisp/org-mode
* make all
* add the following to ~/Library/Preferences/Aquamacs Emacs/Preferences.el

<pre>
<code>
;; Aquamacs Emacs Starter Kit
;; http://github.com/evangineer/aquamacs-emacs-starter-kit
;; set the dotfiles-dir variable to this directory
(setq kitfiles-dir (concat (file-name-directory
                    (or (buffer-file-name) load-file-name)) "/aquamacs-emacs-starter-kit"))

;; set up our various directories to load
(add-to-list 'load-path kitfiles-dir)
(require 'init)
</code>
</pre>

* optionally set a theme by altering appearance.el to specify either an Aquamacs bundled theme or one included in this kit
* restart Aquamacs -- Note: you may have to do this more than once to get all the ELPA packages downloaded and compiled

* optional -- use included customizations.el.walter as guide to settings that you can access via Aquamacs menu > Preferences OR (be careful hand editing this, can break things) you can merge them into your ~/Library/Preferences/Aquamacs Emacs/customizations.el file by merging in settings from customizations.el.walter by hand. If merging by hand, make sure to replace the ERC "your..." setting with actual values instead of the included placeholders.
* restart

## Getting the most out of Org-Mode

One of the best reasons to use or switch to Emacs is [Org-Mode](http://orgmode.org/).  So I've included the latest and greatest Org-Mode straight from the project's Git repository, as the one that ships with Aquamacs is ancient!  Here are some recommendations for getting the most out of Org-Mode:

* Read [David O'Toole's orgtutorial](http://dto.github.com/notebook/orgtutorial.html) if you are new to Org.
* Setup your own org-agenda-files as described in the tutorial
* Put (org-agenda-list) in your Preferences.el file after the Starter Kit setup code.
* Use the handy shortcuts defined in org-mode-stuff.el for accessing Org features quickly and efficiently
* You can use Org to keep a journal, see org-mod-stuff.el for more details
* If you use a task management web service like Remember The Milk or ReQall, check out [Org's RSS feed capability](http://orgmode.org/manual/RSS-Feeds.html#RSS-Feeds)
* Read [the Org Manual](http://orgmode.org/manual/index.html#Top) at your leisure

## TODO and Scratch:
       rinari config
       tags for projects
       add more extensions to site-lisp
       add more elpa packages
       standardize names for kitfiles

