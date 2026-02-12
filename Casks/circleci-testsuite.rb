cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.21400-f25f166"
  sha256 arm: "8752657432c53260b28293e90db29b6ad52afc1fc762a037022662ea061b389c",
         intel: "ef64fdc04d5e306f65799885f8780d265f45846771bf9a6542e4c6472c55dc56"

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
