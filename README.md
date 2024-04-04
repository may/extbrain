<!---
Created: 2020-05-30
Revised: 2024-02-24

## todo minimilist? or minimal? or some better word
--->
## calmwater: a fast, command-line, GTD tool that holds you to account
 
## Requirements:

* [Ruby](https://www.ruby-lang.org/) 2.6.3 or greater.
* `gem install reline`

## Recommended, but entirely optional:

* tput (if you don't have this, then set `$color_only` to `false` in `config.rb`)
  * `apt install libncurses5` on debian/ubuntu, otherwise see: [tput](https://command-not-found.com/tput)

## Install

1. [Download](https://github.com/may/calmwater/archive/refs/tags/2.0.zip).
2. Open a terminal and unzip calmwater-trunk.zip, presumably in your Downloads folder.
3. Install tput (see above) or set $color_only to false in config.rb file.
4. ```ruby Downloads/calmwater-trunk/main.rb```
   
## Using:

* ```ruby calmwater-trunk/main.rb```
* Arrow keys and Emacs keybindings available for editing command line items; if 
you're on MacOS and option-f produces a fancy f symbol, fix it by:
  * If Terminal.app: Preferences -> Profiles -> Keyboard -> check 'Use Option as Meta key'
  * If [Kitty](https://sw.kovidgoyal.net/kitty/): config file: `macos_option_as_alt yes`
  * Then restart the terminal.

## design principles

* Never lose data. 
* Never lock you in; your data is yours and human-readable.
* Fast; capture your thoughts, update your status, etc. -- quickly.
* Stays out of your way, but keeps your data at you fingerprints.
* Pure Getting Things Done; no tweaks or additions like priorities. No cruft.
* Everything you need, nothing you don't.
Minimalist: see below. 

## features?

  * Fast
  * Reliable
  * Open (your data is yours)
  * Supports you; helps you do your weekly review right and not skip any items, while also preventing overwhelm as best it can
  * Supports you; alerts you if you're experiencing project creep (coming someday)
  
## non-features; everything you need, nothing you don't.

calmwater is *minimal* and *opinionated* so we left out several common features out, by design:

* No priorities; either it's important enough to be on your current projects & action lists, or it isn't. If you aren't sure, err on putting it on your someday/maybe list.
<!-- ** No tags? -->
* No due dates; use your calendar or your phone's reminder function. Otherwise you'll just clutter yourself up with a lot of 'should dos' and watch them pass by, undone. 
<!-- * the exception to this is the 'remind me randomly of things that are important to me' function, eg, 'I really can write that book' or 'Call your friends'.???? -->
* No habits; use a habit tracker app.
* No tracking of average length of time between weekly reviews; the app already yells at you if you're delinquent, knowing that you're *regularly* delinquent isn't a useful feature; it will only inspire guilt and it also will become pretty obvious if you are regularly delinquent.

## how to run tests

`cd calmwater`
`rake test`

## TODO the rest of this README

      

# won't work under windows
- color coding of output
- opening a second instance of calmwater on the same machine (eg server) will just exit, instead of gracefully shutting down the first process

# todo some documentation


# PROJECTS
* p keyword string - creates project with keyword and title of string
* pt keyword action_context string - creates a task within project specified by keyword with specified title of string with action context of action_context

# TASKS
* t - lists tasks
* t work - list tasks in work action context
* t work call bob re: proposal - create task in work action context with the contents of 'call bob re: proposal'
* when creating tasks, can use abbreviations for action contexts such as 'c' for computer, 'w' for waiting, and 's' or 's/m' or 'm' etc. for someday/maybe


* use 't action_context' to list tasks in a given action context, like 't computer' or 't job'
* shortcuts available: lc and lj 

# GENERAL

* in general hitting ENTER on a prompt will do nothing and allow you to exit out of that prompt, such as when selecting tasks

* in general, the undo command is available for some actions such as completion, deletion and other serious actions


# ADVANCED
* w what you are waiting on
* w  (no arguments, works like lw)
* w <one word search> - eg 'w bob' - show everything I'm waiting on Bob to do.


# Testing
* rake test
* test coverage for some underlying data structures, but not for middleware



# TODO VET THIS STUFF LATER


alias calmwater='rlwrap ruby ~/calmwater/main.rb' 


# COMMAND STRUCTURE

## OTHER
* s search_keyword - look for keyword, else search all titles for search_keyword, across projects and tasks

* IGNORE THIS
** #f - add a note that followed up with person we're waiting on
** ##aw - swap a task from action to waiting or vice versa?

## TASKS AND PROJECTS
* c search_keyword - complete task matching search keyword/list tasks 
* d search_keyword - complete task matching search keyword/list tasks 
* n - nottaking TODO FLESHOUT. # not sure this is implemented
* r search_keyword - rename/retitle task or project specified

# TODO VERIFY THIS

```

## TASKS
When a search_keyword is used, the action will be taken on the single
task matching that search, or -- if there are multiple matches --
present a list of options matching that search and have the user choose
using numbers - or running a more refined search again from the prompt.
##d 5 - delete the 5th item just displayed? if only.

w - display waiting task list
a - display agenda list
a name - display agenda list for name
a name content - create agenda item for name [note: task w/ action context fo a person]
t - list all tasks
t action_context - list all tasks in a given action context, otherwise use this shorthand
 tc - list all tasks computer action context
 th - " " home
 tw - " " work
 tj - aliaso for tw, j for job

#TODO tasks.filter once ruby = 2.6.3 or just live with select nomeclatre
t = @tasks.select { |t| p.action_context == action_context  
t.each { |t| puts t }
printing some kind of short uid instead of a custom numbered menu might be easier.. less state to manage..



## PROJECTS
p or lp - list projects 
p keyword - view project with keyword
p keyword title - create project with keyword and title 
tag keyword - add tags to project?
pt keyword action_context task - add a task to project with keyword in action_context with a title of task #pt stands for project task

---

If your delete key does not work, try this:

.inputrc
  "\e[3~": delete-char


----

notes:
 review projects and tasks every 5-7 days
 review areas of focus/resp every 30 days.


```
