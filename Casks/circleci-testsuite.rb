cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.45118-ac6b726"
  sha256 arm: "7c45708ba884e0134e1a54f68e827eda0b9cb1acc3c11ec1f85909626754c314",
         intel: "7a11d897cecd6c148c5fd77fb9f016fb88087d25d961736548e6cbb6247eeb06"

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
