cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.27541-3d127af"
  sha256 arm: "3a6d117e3a0f6dc204cb889903a212dc762620a2899dbf89a4d0d79c9b8b61ae",
         intel: "24163cc417b0d206c67e4b6b0114aa1e487eebfcea579fa4ea7608d9c509e042"

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
