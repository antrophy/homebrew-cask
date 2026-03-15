cask "namespace" do
  version "1.1"
  sha256 "09b625811bbeb580e102089150c8be463ef5a3c96789ab106adff416c492c7eb"

  url "https://github.com/AduroIdea/NameSpace/releases/download/v#{version}/NameSpace-#{version}.dmg"
  name "NameSpace"
  desc "Name your desktops and switch between them from the menu bar"
  homepage "https://github.com/AduroIdea/NameSpace"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "NameSpace.app"

  zap trash: "~/Library/Preferences/com.ivanhofer.NameSpace.plist"
end
