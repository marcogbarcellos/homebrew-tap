cask "pgstudio" do
  version "0.2.4"

  on_arm do
    sha256 "062a5a82b1c8d281ec4a3281adb65275bcfb92edcaeac8bab134d15dd32e6b40"
    url "https://github.com/marcogbarcellos/pgstudio/releases/download/v#{version}/PgStudio_v#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "1b262727b1f015c0119b7f9671da48b1b912ee06f3cb15ea7e8083d5bc687f89"
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
