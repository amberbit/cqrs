defmodule Cqrs.Mixfile do
  use Mix.Project

  @version "0.0.1"

  def project do
    [app: :cqrs,
     version: @version,
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
     description: description,
     package: package,
     consolidate_protocols: Mix.env != :test,
   ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:cqrs_commands, "~> 0.0.2"},
      {:cqrs_events, "~> 0.0.1"},
    ]
  end

  defp description do
      """
        This is not production ready yet but I want your feedback.
          """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md"],
      maintainers: ["Hubert Łępicki"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/amberbit/cqrs_commands",
        "Docs" => "http://hexdocs.pm/cqrs_commands/"}
    ]
  end
end

