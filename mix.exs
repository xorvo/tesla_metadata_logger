defmodule TeslaMetadataLogger.MixProject do
  use Mix.Project

  def project do
    [
      app: :tesla_metadata_logger,
      version: "0.1.1-dev",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # hex
      description: "Tesla Middleware to log request and response into in metadata",
      package: package()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:tesla, "~> 1.0"},
      {:bypass, "~> 0.8", only: :test},
      {:ex_doc, "~> 0.19", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/chulkilee/tesla_metadata_logger",
        "Changelog" =>
          "https://github.com/chulkilee/tesla_metadata_logger/blob/master/CHANGELOG.md"
      },
      maintainers: ["Chulki Lee"]
    ]
  end
end
