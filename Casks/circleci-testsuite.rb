cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.30897-7e89bcb"
  sha256 arm: "829f6ba72573df32162bb12d319f2cc9721a784d732da0577d95fe43435d049d",
         intel: "b5cedf3cfa12e8d3d9c72ae5593d074545304397a503b57eeb82659154342155"

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
