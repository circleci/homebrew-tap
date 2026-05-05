cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.34963-bbedc9d"
  sha256 arm: "f7f3489e36ad00cf40885820237a1e0c9d22cf89e996def87338e621ae0d3918",
         intel: "0812172078c7dd60d2a9e794a525be6d9f5aae57d66ec74d99a7113455fdaf24"

  url "https://circleci-binary-releases.s3.amazonaws.com/circleci-cli-plugins/circleci-testsuite/#{version}/darwin/#{arch}/circleci-testsuite.gz"
  name "CircleCI TestSuite Plugin"
  desc "Plugin for circleci-cli that runs adaptive-testing test suites"
  homepage "https://circleci.com"

  livecheck do
    url :url
    regex(/^\d+(?:\.\d+)+-[0-9a-fA-F]$/i)
  end

  container type: :gzip

  binary "circleci-testsuite"

  # No zap stanza required
end
