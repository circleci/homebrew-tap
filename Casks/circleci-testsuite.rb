cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.32373-d9063b8"
  sha256 arm: "accfe24b18c98cb570f481f7683c175541a82bf52ac13007ffd697c95dcd9abd",
         intel: "56ab786d48b5951a01381a0795c95030cc4ce796c1d2e494ec92e31d167849ec"

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
