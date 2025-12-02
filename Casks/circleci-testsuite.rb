cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.15108-d839eb2"
  sha256 arm: "04f37e47a12b4677cda35b804357b10c5891ef42081f1674fe74d82f56baf3cb",
         intel: "8c933b3358d8659ea7cc228b2fbd83b4e605c472c0b60355b3b0f97d0952852b"

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
