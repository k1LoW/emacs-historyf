#!/bin/sh
if [ -z "$EMACS" ] ; then
    EMACS=emacs
fi
OUTPUT=/tmp/.ert-expectations
cask exec $EMACS -q --no-site-file --batch  -L . -l el-expectations -l historyf -f batch-expectations $OUTPUT ./historyf.el
ret=$?
cat $OUTPUT
rm $OUTPUT
exit $ret
