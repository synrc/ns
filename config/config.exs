import Config

config :ns,
  servers: [[{:name, :inet_localhost_1}, {:address, ~c"0.0.0.0"}, {:port, 8053}, {:family, :inet}, {:processes, 2}],
            [{:name, :inet6_localhost_1}, {:address, ~c"::1"}, {:port, 8053}, {:family, :inet6}]],
  dnssec: [{:enabled, true}],
  use_root_hints: false,
  catch_exceptions: false,
  zones: ~c"priv/synrc.zone.json",
  pools: [{:tcp_worker_pool, :erldns_worker, [{:size, 10},{:max_overflow, 20}]}],
  logger_level: :info,
  logger: [{:handler, :default, :logger_std_h,
            %{level: :info,
              id: :synrc,
              max_size: 2000,
              module: :logger_std_h,
              config: %{type: :file, file: ~c"ns.log"},
              formatter: {:logger_formatter,
                          %{template: [:time,~c" ",:pid,~c" ",:module,~c" ",:msg,~c"\n"],
                            single_line: true,}}}}]


config :lager,
  log_root: ~c"log",
  handlers: [
    lager_console_backend: [{:level, :info}],
    lager_file_backend: [file: "error.log", level: :error],
    lager_file_backend: [file: "console.log", level: :info]
  ]
