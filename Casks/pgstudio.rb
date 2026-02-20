cask "pgstudio" do
  version "0.1.0"

  on_arm do
    sha256 "91e50e0d206146146fd625dd6621bcfdd9c0d4d7997c1cdc5cb53219dde5aad7"
    url "https://github.com/marcogbarcellos/pgstudio/releases/download/v#{version}/PgStudio_v#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "fb862d7f39a3aceca96e82e0cf3db6d7327e6c3516287e5e08012647fb5a10cc"
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
