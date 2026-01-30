cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.20278-6088eb3"
  sha256 arm: "1353554beecde5fdd233a061d4048dfccd58797c17653b17b8773b643c3fc9d3",
         intel: "8837ae9df4505e4e86d00ccff5209e34078770c6f09ae846a8fdfc9379c543f7"

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
