package main

import (
	"github.com/coredns/coredns/core/dnsserver"
	_ "github.com/coredns/coredns/core/plugin"
	"github.com/coredns/coredns/coremain"
	_ "github.com/shynome/coredns-pdsql"
)

func init() {
	dnsserver.Directives = append(dnsserver.Directives, "pdsql")
}

func main() {
	coremain.Run()
}
