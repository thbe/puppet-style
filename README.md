# style

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with style](#setup)
    * [What style affects](#what-style-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with style](#beginning-with-style)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

Style does one simple thing, it make the Linux box look like I think it should look
like.

## Module Description

This module implement the basic settings I would like to find on every Linux box
after a minimal install. So, this module install some basic packages and add some
aliases I use often.

## Setup

### What style affects

* Install dmidecode, dstat, iftop, iotop, htop, ncftp, nmap,
          redhat-lsb, rsync, screen, strace, tree, unzip,
          vim-enhanced, wget, xorg-x11-xauth
* Install /etc/profile.de/custom.sh

### Beginning with style

Simply include the class and you are done.

## Usage

```puppet
include '::style'
```

## Reference

## Limitations

This module has been built on and tested against Puppet 3.7 and higher.

The module has been tested on:

* RedHat Enterprise Linux 6
* Scientific Linux 6
* CentOS Linux 6

Testing on other platforms has been light and cannot be guaranteed.

##Development

If you like to add or improve this module, feel free to fork the module and send
me a merge request with the modification.
