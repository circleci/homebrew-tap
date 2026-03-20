cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.26998-d9c873a"
  sha256 arm: "04f0ff45ff9e032222cfb09a29d1458fd9389f4a0f50a149b919c47d9451976f",
         intel: "1a44bff24660fdf554f3ea0bed37f89401efccd93d135cfd58b1b853dc930ff3"

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
