defmodule NS.Mixfile do
  use Mix.Project

  def project() do
    [
      app: :erldns,
      version: "0.10.0",
      elixir: "~> 1.7",
      description: "NS Name Server",
      package: package(),
      deps: deps()
    ]
  end

  def package do
    [
      files: ~w(include priv src mix.exs LICENSE),
      licenses: ["ISC"],
      maintainers: ["Namdak Tonpa"],
      name: :ns,
      links: %{"GitHub" => "https://github.com/synrc/ns"}
    ]
  end

  def application() do
    [
      start_phases: [{:post_start, []}],
      mod: {:erldns_app, []},
      applications: [:kernel,:stdlib,:inets,:syntax_tools,:compiler,:goldrush,:base32,:xmerl,
                     :ssl,:jsx,:crypto,:folsom,:mnesia,:dnssec,:lager,:bear,:opentelemetry_api,:nodefinder],
      erl_opts: [parse_transform: 'lager_transform']
    ]
  end

  def deps() do
    [
      {:ex_doc, "~> 0.11", only: :dev},
      {:dnssec, "~> 0.1.2"},
      {:lager, "~> 3.9.2"},
      {:recon, "~> 2.5.3"},
      {:folsom, "~> 1.0.0"},
      {:jsx, "~> 3.0.0"},
      {:nodefinder, "~> 2.0.0"},
      {:opentelemetry_api, "~> 0.6.0"},
      {:meck, "~> 0.9.2"}
    ]
  end
end
