cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.45841-398bd7f"
  sha256 arm: "ddefae0de87378ce6cb953518b98aa0cec356decaf8d9c4908dedae720897eb7",
         intel: "ed83274261a017f399a8ca7a0a7c56ed8fab355a6f3d4159f73e2b3dfa242ede"

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
