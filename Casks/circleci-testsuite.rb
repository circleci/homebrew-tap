cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.20164-0d08a7a"
  sha256 arm: "922cf184ada369a49f5d64d592662841bc3f290491548b69cd1be649e840f32a",
         intel: "5d161e6f9e1e8ae78c3d2fd170d21b28d840b46e50a7a490878598322e7f8620"

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
