USING: io.directories.search io.files io.files.unique
io.pathnames kernel namespaces sequences sorting tools.test ;
IN: io.directories.search.tests

[ t ] [
    [
        10 [ "io.paths.test" "gogogo" make-unique-file* ] replicate
        current-directory get t [ ] find-all-files
    ] with-unique-directory
    [ natural-sort ] bi@ =
] unit-test
