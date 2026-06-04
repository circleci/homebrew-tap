cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.39585-ed5b565"
  sha256 arm: "93d8a9f1eb5c16a42340cbc128ce4fa22ea989f3db73884069848b742cd5c674",
         intel: "50d7d42a6beef3645a61498f254516b9c0d95ec94c14cd263937c6dfe261f909"

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
