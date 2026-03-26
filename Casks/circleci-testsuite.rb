cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.28682-38bfa7c"
  sha256 arm: "c2b92db6a40caec552419d27621e5737620220451a9a7ef0fda47b90aa5926e1",
         intel: "1e40c34923f296aad97a5072885b06aa8810a6a05f64bdd8a20c0951d7f7786b"

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
