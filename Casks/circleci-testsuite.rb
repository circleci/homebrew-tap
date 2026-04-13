cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.30806-a95a7f4"
  sha256 arm: "c7ea72a8576ada99668d24f447c54cf83e60850c59cd302545e16409d747beed",
         intel: "b475e7c99a1e8a6bb9ac60cff90b3c0816f154eeb8d4136aa10794a24981fc2a"

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
