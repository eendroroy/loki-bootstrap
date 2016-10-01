#!/usr/bin/env bash
declare -a ppas=(\
  "philip.scott/elementary-tweaks" \
  "snwh/pulp" \
  "noobslab/apps" \
  "webupd8team/java" \
  "webupd8team/sublime-text-3" \
  "nomacs/daily" \
  "synapse-core/testing" \
  "webupd8team/tor-browser" \
  "ubuntu-mozilla-security/ppa" \
  "stefansundin/truecrypt" \
  "nilarimogard/webupd8" \
  "fixnix/netspeed" \
  "gezakovacs/ppa" \
  "videolan/master-daily" \
  "webupd8team/atom" \
  "mercurial-ppa/releases" \
  "git-core/ppa" \
)


declare -a packages=(\
  elementary-tweaks \
  paper-gtk-theme paper-cursor-theme paper-icon-theme \
  indicator-synapse \
  oracle-java6-installer oracle-java7-installer oracle-java8-installer oracle-java9-installer \
  oracle-java8-set-default \
  sublime-text-installer \
  nomacs \
  synapse \
  tor-browser firefox \
  truecrypt dmsetup \
  indicator-netspeed-unity \
  unetbootin \
  vlc \
  atom \
  git gtik mercurial \
)
