cask "donutstudio" do
  version "0.9.0"
  sha256 "6930eeab841ddb6403945a09c28d84db4b002f17f22c5fb23e53db8e56150dc1"

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
