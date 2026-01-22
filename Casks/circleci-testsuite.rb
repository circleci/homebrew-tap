cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.19664-8ce8cac"
  sha256 arm: "51af388aa685019db6ad7e5d05ae9dbdfed85c001019a3d37d1cb6f473e9f1c3",
         intel: "3cb428e50a2ebeb681604bed2b5a306e37668a2254c49e5e39231c3778460c61"

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
