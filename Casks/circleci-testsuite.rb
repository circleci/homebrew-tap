cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.15883-349d9f5"
  sha256 arm: "56b2570722a7e8b7f98d9512d943a0a717c87baeb06d6b0ec14a2555aaf24418",
         intel: "eabc667a1b1677e4ba3d2f919c328a0cb944c558acb610bf4d1a7705a185df10"

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
