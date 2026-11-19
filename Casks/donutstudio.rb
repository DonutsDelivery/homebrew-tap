cask "donutstudio" do
  version "1.0.0"
  sha256 "8431c533b91a832b34edf151494b194dcd49e3276adfdc663193f923f983a3ca"

  url "https://donutsdelivery.online/download-donutstudio/releases/#{version}/DonutStudio-macos.dmg"
  name "DonutStudio"
  desc "A free DAW for music and video"
  homepage "https://donutsdelivery.online/donutstudio"

  livecheck do
    url "https://donutsdelivery.online/download-donutstudio/releases.json"
    strategy :json do |json|
      json["currentVersion"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "DonutStudio.app"
  app "DonutStudio Updater.app"
end
