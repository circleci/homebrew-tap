cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.15883-349d9f5"
  sha256 arm: "3c96741b63e1a56e3ae880ee5ac9b08b65d0533745a31b21700e59725198c661",
         intel: "72cfa87c169d9885eca0ecec2474fdf0affc53412397ec059a6b5c4a3d9c48ce"

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
