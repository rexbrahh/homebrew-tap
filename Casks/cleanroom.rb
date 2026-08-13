cask "cleanroom" do
  version "3.2.4,12"
  sha256 "45922973982b2a97524ce53ffa3f82813273f10eb10c02f0bb361bd280c1f1e3"

  url "https://github.com/rexbrahh/cleanroom/releases/download/v#{version.csv.first}/Cleanroom.zip"
  name "Cleanroom"
  desc "Restore desktop and input state around competitive Roblox sessions"
  homepage "https://github.com/rexbrahh/cleanroom"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Cleanroom.app"
  binary "#{appdir}/Cleanroom.app/Contents/Resources/cleanroomctl"

  zap trash: [
    "~/Library/Application Support/Cleanroom",
    "~/Library/Preferences/com.rex.cleanroom.plist",
  ]
end
