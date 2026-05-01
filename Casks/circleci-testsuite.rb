cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.34548-2742cea"
  sha256 arm: "43d37bc2faa49ef8f56b15301698a1fceabdf4af454df14ee5e148332be77341",
         intel: "2b12bd19e5afbb6551dc8c30e8566157fcdefdf41b4023e699441878349b5058"

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
