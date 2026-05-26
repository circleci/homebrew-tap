cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.37912-da619e5"
  sha256 arm: "e891bbfa4daadd3ca0914b5b1ec699ed6a4d623848249a2bfc3c0641b8b842e2",
         intel: "48b99d0787929fe277fd892a49ffb812b6f01f476467a4fa5cd97674db805658"

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
