cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.18331-601799c"
  sha256 arm: "5aa85d78cc2707cfed5cde4c9aa64bdc6874866e99b863a16d8c6169fc5c87e7",
         intel: "d8021c76f4014b3a5d67a787cbe85f95ce928e91391522174692f3051ea8228a"

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
