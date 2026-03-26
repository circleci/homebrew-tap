cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.28438-6ddf304"
  sha256 arm: "b7a392f2b5eb787cb7f004a25254d72444fe7f93f65177409b1d8d64b0a414c2",
         intel: "ea2d50ec3535a542f45d12c762d0b34484fc029a4d24d90f4348eae98bd74cee"

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
