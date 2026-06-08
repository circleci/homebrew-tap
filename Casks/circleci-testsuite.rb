cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.39951-bc854d7"
  sha256 arm: "a02dc3fbfd886bb43a4bac606382adb049114daafe5dd74bca63610d0dec03a0",
         intel: "e58eec518b20d1985daa0da1aa19f588719ec2959c03f18fda471ae973bce277"

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
