package example

import (
	"github.com/ipfs/kubo/plugin"

	greeter "github.com/ipfs/go-handshake-plugin/greeter"
)

// Plugins is an exported list of plugins that will be loaded by Kubo.
var Plugins = []plugin.Plugin{
	&greeter.GreeterPlugin{},
}
