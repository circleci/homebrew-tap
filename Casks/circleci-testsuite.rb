cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.28984-18bfbc2"
  sha256 arm: "285709e5a89468c3e2808036c309e46e46e141b944fbbc2b8b92f5e0c8aeca4b",
         intel: "6202eadaeba55677bf917ac5792d5bd6c5be80f3485ced73232ca761aee97b0b"

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
