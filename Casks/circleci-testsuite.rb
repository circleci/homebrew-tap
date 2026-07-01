cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.44829-2914580"
  sha256 arm: "a5471e52723ff8363042cba6060df85af46363270c90399e670da42addf165cf",
         intel: "e901e5351c46411a1623429ee56b924af07546fd376d55098af48c034a5ed86c"

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
