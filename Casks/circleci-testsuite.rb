cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.17864-26b4625"
  sha256 arm: "f10f21da88612efdf0234fa45e02d77a702fb9df6615814b4e6cdfc7fff2f62c",
         intel: "d3b6328fd642e1d287a3cd74e4a7bf726d951163ff652f4e8f750e5e193538dd"

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
