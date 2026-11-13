cask "donutstudio" do
  version "0.9.1"
  sha256 "3e2e1c6c8d92d70a88705a48d696f9d22457158af14bea1c69c3f45d34a6e80d"

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
