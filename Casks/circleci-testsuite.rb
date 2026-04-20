cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.32119-177fa95"
  sha256 arm: "eb1018fdb516dbc12c6993f3658a7956e64177a46943113ff18bddd80d5989d2",
         intel: "8879ee562b22e7ebd08a56eb651157275d363ef4894dfb702c2f48785398b9df"

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
