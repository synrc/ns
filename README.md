# SYNRC 🔒 NS

[![Hex pm](http://img.shields.io/hexpm/v/ns.svg?style=flat)](https://hex.pm/packages/ns)

## Installation

```erlang
$ rebar3 get-deps
$ rebar3 shell
```

```elixir
$ mix deps.get
$ iex -S mix
```

## Client Invokation

```sh
$ dig -p 8053 @127.0.0.1 example.com a
$ dig -p 8053 @127.0.0.1 example.com cname
$ dig -p 8053 @127.0.0.1 example.com ns
$ dig -p 8053 @127.0.0.1 example.com mx
$ dig -p 8053 @127.0.0.1 example.com spf
$ dig -p 8053 @127.0.0.1 example.com txt
$ dig -p 8053 @127.0.0.1 example.com sshfp
$ dig -p 8053 @127.0.0.1 example.com soa
$ dig -p 8053 @127.0.0.1 example.com naptr
$ dig -p 8053 @127.0.0.1 -x 127.0.0.1 ptr
```


