cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.14861-46d09ab"
  sha256 arm: "6b5925f30209d32776dfdf8954444fb3d9895bd11c0d1bf227009dc8511214eb",
         intel: "235f82a0cff3227ac3467e02fc6d74dae8279274a553c36ff5ec2f9ddc2c808a"

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
