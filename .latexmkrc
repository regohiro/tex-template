#!/usr/bin/env perl

$lualatex = 'lualatex -shell-escape -halt-on-error -file-line-error -synctex=1';
$lualatex_silent = $lualatex . '-interaction=batchmode';
$max_repeat = 5;
$pdf_mode = 4; # lualatexは4
