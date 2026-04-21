cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.32298-c1064a8"
  sha256 arm: "ad45c028421f7cad41798e4ac5b524349a06f1c79b4444211a06bc5cf4210c83",
         intel: "85cc069b7683fa7901ffa48d75e04f82322d528fef56e0bf8f293cd7b6fec5ab"

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
