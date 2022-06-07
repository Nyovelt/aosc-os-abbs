abtest(){
    if ! bool $NOLTO; then
        abinfo "Tests for rclone requires turning off LTO. Skipping..."
        return 126 # Requiring turning off LTO # Test is skipped
    fi
    PATH="$GOPATH/bin:$PATH" make TAG=v$PKGVER test
    return $?
}
