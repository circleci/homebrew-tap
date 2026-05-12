cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.36052-3c6304b"
  sha256 arm: "1bedd5385c9ec43f6b95eee3483191d92778e9f7c5278b5d4d97e60683a4e793",
         intel: "f3bb45bbf26b3592637910784ee40e94eabaf6b0b10d704333694e6ff5bbae2b"

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
