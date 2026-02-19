cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.22034-457d74f"
  sha256 arm: "d1cd33ec10a45ad3f4b9c488266548d001286b8d326b24fece930a0bd3ae626b",
         intel: "5309c8e24f27e6c8217c25bd4b4a2db5c9d26ce51f222fba1f4e5036dc3d01b2"

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
