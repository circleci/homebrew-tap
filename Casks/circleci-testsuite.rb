cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.37689-a1b649e"
  sha256 arm: "99c029c4fa21536c35f59e6d38781d56a252168f06107ac4456a9a2fbc97be43",
         intel: "f49e413586245d90290faef931e6554f96a5f11a8c8dd53b964f3f83854000d2"

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
