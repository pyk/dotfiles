gocover () {
    t=$(tempfile)
    go test -coverprofile=$t $@ && go tool cover -func=$t && unlink $t
    # go test $COVERFLAGS -coverprofile=$t $@ && go tool cover -html=$t && unlink $t
}