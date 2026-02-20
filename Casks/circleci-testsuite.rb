cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.22092-a0e9bc8"
  sha256 arm: "b19eeb6e8e65fddff9bf4eab282498bbb5afe6118057da766c54e1e547246aab",
         intel: "51a805eae0afaa2db1b7bcca9ea7fd4c9b18a13dc8f8495b096f15b0c258e59d"

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
