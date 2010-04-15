#!/bin/sh
EMACS=emacs
OUTPUT=/tmp/.el-expectations
$EMACS -q --no-site-file --batch  -L . -L t/extlib/  -l el-expectations -l historyf -f batch-expectations $OUTPUT ./historyf.el
ret=$?
cat $OUTPUT
rm $OUTPUT
exit $ret
