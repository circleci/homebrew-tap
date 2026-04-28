cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.33851-27509a3"
  sha256 arm: "39eb2b5b828549749602658950a4172814464f59ca572e440072345ab577eac9",
         intel: "b7511f15f985ec4d3492a9c5ad400ac4b75d56f3f3623285ff105bef94ed4f63"

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
