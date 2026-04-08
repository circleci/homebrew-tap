cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.30250-b8b14d0"
  sha256 arm: "215bbcefb2034c4ea74bc6e4690214f4539ddf0f5a22bc400cfb500a18c34707",
         intel: "979c76dd49bcb19a98122508961337d0d62470dd7aea21f5dd5973ff466bbd6d"

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
