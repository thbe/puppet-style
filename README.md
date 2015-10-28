# style

[![Build Status](https://travis-ci.org/thbe/puppet-style.png?branch=master)](https://travis-ci.org/thbe/puppet-style)
[![Puppet Forge](https://img.shields.io/puppetforge/v/thbe/style.svg)](https://forge.puppetlabs.com/thbe/style)
[![Coverage Status](https://coveralls.io/repos/thbe/puppet-style/badge.svg?branch=master&service=github)](https://coveralls.io/github/thbe/puppet-style?branch=master)

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

### Setup requirements

You need to activate the EPEL repository before you can setup the SSMTP instance.
If you use a rpm based system from the RedHat family you can use my yum module (thbe-yum):

```puppet
class { "::yum": repo_epel => true }
```

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

* RedHat Enterprise Linux 5/6/7
* Scientific Linux 5/6/7
* CentOS Linux 5/6/7
* Ubuntu 14.04 LTS

Testing on other platforms has been light and cannot be guaranteed.

##Development

If you like to add or improve this module, feel free to fork the module and send
me a merge request with the modification.
