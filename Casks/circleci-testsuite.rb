cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.45103-0bcb3ef"
  sha256 arm: "6974789337ff224cba53792eefceed81712dcbb351b467372f22ed319d59fe91",
         intel: "1bfeecede981bd5cdad4ba7f5473a2b4e64c6f547a7f2787dded20c594cf9b80"

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
