cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.25233-8f17d50"
  sha256 arm: "dab8020178b6262a24000e559b668759d41969bdd47071bb8608cc6939bb5263",
         intel: "f85f7fc68f736d507d1194220f95b8f5e3550226344bba94ec32614656e62d71"

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
