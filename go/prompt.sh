function go_version {
    version=$(go version)
    regex="(go[0-9].[0-9].[0-9])"
    if [[ $version =~ $regex ]]; then 
         echo ${BASH_REMATCH[1]}
    fi
}
