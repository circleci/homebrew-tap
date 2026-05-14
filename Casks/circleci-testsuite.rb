cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.36421-a6b5657"
  sha256 arm: "684ec81831720daf135ef546ab93ccedccc6c6999e3ce3ba57837120bbba3d57",
         intel: "de7cba9f7f1cad4e72c5b8a3d75a97ad87cd1a08e01b7746ab286b689abb3fdb"

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
