cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.28823-daec190"
  sha256 arm: "94ba21bc0b8df2e49d1f91b7bb8dee6cbce16f7b6dcdee057794c4f037fe88e0",
         intel: "f9e40648f9f72dd63686f759b686d3ca157caa5f572c773770b35a28b5c512f4"

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
