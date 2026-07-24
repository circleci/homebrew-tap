cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.47247-8697681"
  sha256 arm: "dab79a02856b900e28c255366fd0891af570097a5a779b35fbe94fa1e729338c",
         intel: "e2b944a6857e7500475fbf5ecad89db454f9090e9a6bc6c2fe0439e6e9c3d078"

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
