package swagger

//go:generate rm -rf server
//go:generate mkdir -p server
//go:generate $HOME/go/bin/swagger generate server --quiet --target server --name help
