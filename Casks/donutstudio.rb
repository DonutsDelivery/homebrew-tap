cask "donutstudio" do
  version "0.9.1"
  sha256 "0f0f688305305ac9b041838bf32885b3192986e93a5ba3354602346447731254"

  url "https://donutsdelivery.online/download-donutstudio/releases/#{version}/DonutStudio-macos.zip"
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
