cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.37253-3392223"
  sha256 arm: "c513890c4327dfbb6010a1ffe3b44d83de7e4f2710ae14aa3aa192d81ef20a03",
         intel: "f0c45162c1c7fcb8acb92384e1b261d56a8f9b9a13fc1a5bdcf18957ae2f938b"

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
