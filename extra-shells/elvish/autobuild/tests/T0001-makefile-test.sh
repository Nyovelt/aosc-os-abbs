abtest(){
    if [[ "${CROSS:-$ARCH}" = "amd64" || \
        "${CROSS:-$ARCH}" = "arm64" || \
        "${CROSS:-$ARCH}" = "ppc64le" ]]; then
        abinfo "Enabling data race detector for supported architecture"
        _GOFLAGS="${GOFLAGS/-buildmod=pie/} -race"
    fi
    abinfo "Performing test: \`go test -v c./...\`"
    go test -v ./...
}
