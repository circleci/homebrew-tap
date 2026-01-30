cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.20417-1524401"
  sha256 arm: "73a1920ed53d323d59ca8554248e3dafe1052ca8c0cebfe38c6bc34216491b29",
         intel: "6683637514883dc949c303fab47adbf53636dd0e94ff091960a7e51a86a2efb8"

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
