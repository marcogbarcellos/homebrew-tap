cask "pgstudio" do
  version "0.2.2"

  on_arm do
    sha256 "048f3a7ea1a715241a4d821c4eb30f7376e07aba63d3953c257ccc278b2207e0"
    url "https://github.com/marcogbarcellos/pgstudio/releases/download/v#{version}/PgStudio_v#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "6ad80abd09e0e02ff48590812c4db38950cb8c0ac2cd5006260a06b6a2e64eba"
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
