cask "subclip" do
  version "1.0.51"
  sha256 "31e3c923f8f4968008a02e8dfabdb9572b31dcee938842f484117974678eb8c9"

  url "https://subclipweb.subclip.app/desktop/ai-video-editor/releases/#{version}/AI-Video-Editor-by-Subclip-#{version}-arm64.dmg"
  name "AI Video Editor by Subclip"
  desc "AI video editor with a local MCP server for AI agents"
  homepage "https://www.subclip.app/"

  livecheck do
    url "https://subclipweb.subclip.app/desktop/ai-video-editor/stable/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "AI Video Editor by Subclip.app"
  binary "#{appdir}/AI Video Editor by Subclip.app/Contents/MacOS/AI Video Editor by Subclip", target: "subclip"

  zap trash: [
    "~/Library/Application Support/ai-video-editor",
    "~/Library/Caches/app.subclip.AI-Video-Editor",
    "~/Library/Caches/app.subclip.AI-Video-Editor.ShipIt",
    "~/Library/Preferences/app.subclip.AI-Video-Editor.plist",
    "~/Library/Saved Application State/app.subclip.AI-Video-Editor.savedState",
  ]
end
