$pdf_mode = 4;
$lualatex = 'lualatex %O %S';

# glossaries does not always teach latexmk how to build an xindy-backed
# glossary, so register the .glo -> .gls dependency explicitly.
add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
sub run_makeglossaries {
    return system "makeglossaries \"$_[0]\"";
}

