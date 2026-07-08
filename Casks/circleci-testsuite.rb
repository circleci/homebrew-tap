cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.45763-bd77499"
  sha256 arm: "f0d51aab5a7dab92c12b3d4795e25768ad51dc60644347db3bf861e2309ada06",
         intel: "4202f838c616226c341079792cfa707d05cca19bb83e40ca44eef14a1a292b2b"

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
