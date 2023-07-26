# SYNRC 🔒 NS

[![Hex pm](http://img.shields.io/hexpm/v/ns.svg?style=flat)](https://hex.pm/packages/ns)

![NS](https://github.com/synrc/ns/assets/144776/6b35a3a8-3bf2-4059-9351-f449ff4d79b2)


## Installation

Erlang:

```elixir
$ rebar3 get-deps
$ rebar3 shell
```

Elixir:

```elixir
$ mix deps.get
$ iex -S mix
```

## Client Invocation

```sh
$ dig -p 8053 @127.0.0.1 synrc.com a
$ dig -p 8053 @127.0.0.1 synrc.com cname
$ dig -p 8053 @127.0.0.1 synrc.com ns
$ dig -p 8053 @127.0.0.1 synrc.com mx
$ dig -p 8053 @127.0.0.1 synrc.com spf
$ dig -p 8053 @127.0.0.1 synrc.com txt
$ dig -p 8053 @127.0.0.1 synrc.com sshfp
$ dig -p 8053 @127.0.0.1 synrc.com soa
$ dig -p 8053 @127.0.0.1 synrc.com naptr
```

## Application Dependencies

```Elixir
Interactive Elixir (1.14.5) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> :application.which_applications
[
  {:erldns, 'NS Name Server', '0.10.0'},
  {:nodefinder, 'nodefinder Application', '2.0.6'},
  {:opentelemetry_api, 'OpenTelemetry API', '0.6.0'},
  {:lager, 'Erlang logging framework', '3.9.2'},
  {:dnssec, 'DNSSEC Library', '0.1.2'},
  {:mnesia, 'MNESIA  CXC 138 12', '4.21.4'},
  {:folsom, 'Erlang based metrics system', '1.0.0'},
  {:bear, 'A set of statistics functions for erlang', '1.0.0'},
  {:jsx, 'a streaming, evented json parsing toolkit', '3.0.0'},
  {:xmerl, 'XML parser', '1.3.31'},
  {:base32, 'A base32 implementation in Erlang', '0.1.0'},
  {:goldrush, 'Erlang event stream processor', '0.1.9'},
  {:syntax_tools, 'Syntax tools', '3.0.1'},
  {:hex, 'hex', '1.0.1'},
  {:inets, 'INETS  CXC 138 49', '8.3.1'},
  {:ssl, 'Erlang/OTP SSL application', '10.9.1'},
  {:public_key, 'Public key infrastructure', '1.13.3'},
  {:asn1, 'The Erlang ASN1 compiler version 5.0.21', '5.0.21'},
  {:crypto, 'CRYPTO', '5.1.4'},
  {:mix, 'mix', '1.14.5'},
  {:iex, 'iex', '1.14.5'},
  {:elixir, 'elixir', '1.14.5'},
  {:compiler, 'ERTS  CXC 138 10', '8.2.6'},
  {:stdlib, 'ERTS  CXC 138 10', '4.3.1'},
  {:kernel, 'ERTS  CXC 138 10', '8.5.4'}
]
```
