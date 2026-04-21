cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.32342-02cb757"
  sha256 arm: "93948088d690cd454c08f59ee0c1cc7ecc985287818fed4d724462b51ef04eed",
         intel: "db49004d97d8a2b991e1fb50c4b154f77ea09f406283a72272363c358e7a7709"

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
