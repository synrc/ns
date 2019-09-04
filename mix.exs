defmodule NS.Mixfile do
  use Mix.Project

  def project() do
    [
      app: :ns,
      version: "0.9.0",
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
    [mod: {:ns, []}]
  end

  def deps() do
    [
      {:dnssec, "~> 0.1.0"},
      {:ex_doc, "~> 0.11", only: :dev}
    ]
  end
end
