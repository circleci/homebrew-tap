cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.22946-f26df6a"
  sha256 arm: "728e1177e2149aea3089e0d4ce5a9ff2f2139f42be7d968e63d842400410deaa",
         intel: "dbefac3a2d8495469be7bf0a614757b28c9385a8b933711ef2158c316d9e21f7"

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
