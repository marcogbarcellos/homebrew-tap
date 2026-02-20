cask "pgstudio" do
  version "0.1.0"

  on_arm do
    sha256 "PLACEHOLDER_ARM_SHA256"
    url "https://github.com/marcogbarcellos/pgstudio/releases/download/v#{version}/PgStudio_v#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "PLACEHOLDER_X86_SHA256"
    url "https://github.com/marcogbarcellos/pgstudio/releases/download/v#{version}/PgStudio_v#{version}_x86_64.dmg"
  end

  name "PgStudio"
  desc "AI-native PostgreSQL desktop client"
  homepage "https://github.com/marcogbarcellos/pgstudio"

  app "PgStudio.app"

  zap trash: [
    "~/Library/Application Support/com.pgstudio.app",
    "~/Library/Caches/com.pgstudio.app",
    "~/Library/Preferences/com.pgstudio.app.plist",
  ]
end
