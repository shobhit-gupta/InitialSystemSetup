#!/bin/bash

# 1. Install Xcode and Xcode command line tools.
# 2. Agree to Xcode license.

# Install homebrew.
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# set up some taps and update brew
brew tap homebrew/versions
brew tap homebrew/dupes	# These formulae duplicate software provided by OS X, though may provide more recent or bugfix versions.
brew tap homebrew/science # a lot of cool formulae for scientific tools
brew tap homebrew/python # numpy, scipy, matplotlib, ...
brew update && brew upgrade

# Check brew install.
brew doctor

# Diffutils is a package of several programs related to finding differences between files.
brew install diffutils

# Ed is a line-oriented text editor.
# brew install ed --with-default-names

# Find Utilities are the basic directory searching utilities
# brew install findutils --with-default-names

# awk utility interprets a special-purpose programming language that makes it possible to handle simple data-reformatting jobs with just a few lines of code.
# brew install gawk

# The indent program can be used to make code easier to read.
# brew install gnu-indent --with-default-names

# sed (stream editor) isn't an interactive text editor. Instead, it is used to filter text, i.e., it takes text input, performs some operation (or set of operations) on it, and outputs the modified text. sed is typically used for extracting part of a file using pattern matching or substituting multiple occurrences of a string within a file.
# brew install gnu-sed --with-default-names

# Tar provides the ability to create tar archives, as well as various other kinds of manipulation.
# brew install gnu-tar --with-default-names

# which - is a utility that is used to find which executable (or alias or shell function) is executed when entered on the shell prompt.
brew install gnu-which --with-default-names

# GnuTLS is a secure communications library implementing the SSL, TLS and DTLS protocols and technologies around them.
# brew install gnutls --with-default-names

# grep prints lines that contain a match for a pattern.
brew install grep --with-default-names

# gzip (GNU zip) is a compression utility
# brew install gzip

# Screen is a full-screen window manager that multiplexes a physical terminal between several processes, typically interactive shells.
# brew install screen

# runs the specified command repeatedly and displays the results on standard output so you can watch it change over time.
# brew install watch

# front end to diff for comparing files on a word per word basis.
# brew install wdiff --with-gettext

# for retrieving files using HTTP, HTTPS and FTP, the most widely-used Internet protocols.
brew install wget
brew install aria2

####################################################################################
# Some command line tools already exist on OS X, but you may wanna a newer version #
####################################################################################

# Shell
brew install bash

# extensible, customizable text editor
brew install emacs

# Debugger
# brew install gdb  # gdb requires further actions to make it work. See `brew info gdb`.

# Patch takes a patch file containing a difference listing produced by the diff program and applies those differences to one or more original files, producing patched versions
# brew install gpatch

# M4 is a macro processor in the sense that it copies its input to the output expanding macros as it goes.
# brew install m4

# tool which controls the generation of executables and other non-source files of a program from the program's source files.
brew install make
# brew install cmake

# nano is a small and friendly text editor
# brew install nano

###############################################################################################################################################################
# As a complementary set of packages, the following ones are not from GNU, but you can install and use a newer version instead of the version shipped by OS X #
###############################################################################################################################################################
# brew install file-formula

# version control system for software development.
brew install git

# less is a program similar to more, but which allows backward movement in the file as well as forward movement. Also, less does not have to read the entire input file before starting, so with large input files it starts up faster than text editors like vi.
brew install less

# OpenSSH is a free version of the SSH connectivity tools that technical users of the Internet rely on.
# brew install openssh --with-brewed-openssl

# Perl
# brew install perl   # must run "brew tap homebrew/versions" first!

# rsync is a widely-used utility to keep copies of a file on two computer systems the same.
# brew install rsync

# software versioning and revision control system
# brew install svn

brew install unzip
# brew install vim --override-system-vi
# brew install macvim --override-system-vim --custom-system-iconsaa

# Useful software or scripts
brew install youtube-dl
brew install --HEAD ffmpeg	# Agree to Xcode license first
brew install unrar

#####################
# Scientific Python #
#####################

# brew install python --with-brewed-openssl

###############################################################################################################################################################
# A word about brewed python: this is what you want!
# It’s more up to date than the system python, it will come with pip and correctly install in the brew directories, working together well with brewed python
# libs that aren’t installable with plain pip. This also means that pip by default will work without sudo as all of homebrew, so if you ever run or have to
# run sudo pip ... because of missing permissions, then you’re doing it wrong! Also, don’t be afraid of multiple pythons on your system: you have them anyhow
# (python2 and python3) and it’s an advantage, as we’ll make sure that nothing poisons your system python and that you as a user & developer will use the
# brewed python
###############################################################################################################################################################
brew install python

which python
# should say /usr/local/bin/python

echo $PATH
# /usr/local/bin should appear in front of /usr/bin

# brew doctor
# No output is good.


# install PIL, imagemagick, graphviz and other
# image generating stuff
# brew install libtiff libjpeg webp little-cms2
# pip install Pillow
# brew install imagemagick --with-fftw --with-librsvg --with-x11
# brew install graphviz --with-librsvg --with-x11
# brew install cairo
# brew install py2cairo # this will ask you to download xquartz and install it
# brew install qt
# brew install pyqt

# install virtualenv, nose (unittests & doctests on steroids)
# pip install virtualenv
# pip install nose 	# Python testing framework

# install numpy and scipy
# there are two ways to install numpy and scipy now: via pip or via brew.
# PICK ONE, i prefer pip for proper virtualenv support and more up-to-date versions.
pip install numpy
pip install scipy
# OR:
# (if you want to run numpy and scipy with openblas also remove comments below:)
#brew install openblas
# brew install numpy # --with-openblas
# brew install scipy # --with-openblas

# test the numpy & scipy install
python -c 'import numpy ; numpy.test();'
python -c 'import scipy ; scipy.test();'

# Testing tools
pip install coverage

# some cool python libs (if you don't know them, look them up)
# matplotlib: generate plots
# pandas: time series stuff
# nltk: natural language toolkit
# sympy: symbolic maths in python
# q: fancy debugging output
# snakeviz: cool visualization of profiling output (aka what's taking so long?)
#brew install Caskroom/cask/mactex  # if you want to install matplotlib with tex support and don't have mactex installed already
# brew install matplotlib --with-cairo --with-tex  # cairo: png ps pdf svg filetypes, tex: tex fonts & formula in plots
# pip install pandas
# pip install nltk
# pip install sympy
# pip install q
# pip install snakeviz

# ipython with parallel and notebook support
# brew install zmq
# pip install ipython[all]

# html stuff (parsing)
# pip install html5lib cssselect pyquery lxml BeautifulSoup

# webapps / apis (choose what you like)
# pip install Flask Django tornado

# semantic web stuff: rdf & sparql
# pip install rdflib SPARQLWrapper

# graphs (graph metrics, social network analysis, layouting)
# pip install networkx
# brew install graph-tool

# maintenance: updating pip libs
# pip install pip-tools  # you'll then have a pip-review command, see Updating section below

#####################
# Updating pip etc. #
#####################

# Upgrades everything installed with brew.
# brew update && brew outdated && brew upgrade --all

# Afterwards for upgrading pip packages i recommend the pip-tools package
# pip install pip-tools

# pip-review  # -i for interactive mode, -a to upgrade all which is dangerous


####################
# Install GUI Apps #
####################

brew tap caskroom/cask
# brew install caskroom/cask/brew-cask
brew tap caskroom/versions

brew cask install iterm2
brew cask install google-chrome
brew cask install sublime-text
brew cask install vlc


#################################
# Install web development stuff #
#################################
brew install node
npm install -g grunt-cli
npm install -g bower

#######
# zsh #
#######
brew install zsh
sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh	# Use zsh

# Install oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# npm install -g pure-prompt