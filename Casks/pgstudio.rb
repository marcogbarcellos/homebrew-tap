cask "pgstudio" do
  version "0.2.0"

  on_arm do
    sha256 "a0aecd80fcb03480f09bc02d222a0ca30d0dd0789e54f443df06a55d8e4c88c4"
    url "https://github.com/marcogbarcellos/pgstudio/releases/download/v#{version}/PgStudio_v#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "da72e83d0d0d9ec1d5da5d021933d1dffc06fa2369dceda4853e193cacba43c5"
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
