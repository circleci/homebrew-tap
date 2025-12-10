cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "{{ .Version }}"
  sha256 arm: "{{ .ArmSha256 }}",
         intel: "{{ .IntelSha256 }}"

  url "https://circleci-binary-releases.s3.amazonaws.com/circleci-cli-plugins/circleci-testsuite/#{version}/darwin/#{arch}/circleci-testsuite.gz"
  name "CircleCI TestSuite Plugin"
  desc "Plugin for circleci-cli that runs adaptive-testing test suites"
  homepage "https://circleci.com"

  livecheck do
    url :url
    regex({{ .VersionRegexp }})
  end

  container type: :gzip

  binary "circleci-testsuite"

  # No zap stanza required
end
