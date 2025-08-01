# This file was generated by GoReleaser. DO NOT EDIT.
cask "hello-cli" do
  desc "Hello CLI"
  homepage "https://github.com/mrjefflarry/hello-cli"
  version "0.0.55"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "hello-cli"

  on_macos do
    on_intel do
      url "https://github.com/MrJeffLarry/hello-cli/releases/download/v0.0.55/hello-cli_0.0.55_darwin_amd64.tar.gz"
      sha256 "63a7d0a0137b0bea15572d3f730d5eb7570558bd076dbc37e68fa08b767af8ee"
    end
    on_arm do
      url "https://github.com/MrJeffLarry/hello-cli/releases/download/v0.0.55/hello-cli_0.0.55_darwin_arm64.tar.gz"
      sha256 "68d66e024b7a11af2a12dfb0ae6779019b94614f4df1921fbe7e3d1d4ec5eb45"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MrJeffLarry/hello-cli/releases/download/v0.0.55/hello-cli_0.0.55_linux_amd64.tar.gz"
      sha256 "df80f88200f60228b3370e9d22085c25fd8937cd8ee8b69b580275a7616a6a84"
    end
    on_arm do
      url "https://github.com/MrJeffLarry/hello-cli/releases/download/v0.0.55/hello-cli_0.0.55_linux_arm64.tar.gz"
      sha256 "dbb9ff7cc09e8ecf8de9acde610820d9621a44b1ac5a2a8e6e7233b6169e52a6"
    end
  end

  postflight do
    if system_command("/usr/bin/xattr", args: ["-h"]).exit_status == 0
      # replace 'hello-cli' with the actual binary name
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/hello-cli"]
    end
  end

  # No zap stanza required
end
