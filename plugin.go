package example

import (
	"github.com/jmfrank63/kubo/plugin"

	greeter "github.com/jmfrank63/go-handshake-plugin/greeter"
)

// Plugins is an exported list of plugins that will be loaded by Kubo.
var Plugins = []plugin.Plugin{
	&greeter.GreeterPlugin{},
}
