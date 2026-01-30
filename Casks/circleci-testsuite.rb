cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.20254-b3b5a12"
  sha256 arm: "bfe0664ea2ec2529e8192eb5e28c40bd6ab5f25d240534ff96cc2bf6a2b8d49b",
         intel: "e5869712196827123466c96a4921c64c2cb3150e3e01097e2fa4de7edfeabe36"

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
