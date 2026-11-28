cask "subclip" do
  version "1.0.52"
  sha256 "191464e0294985ba21dd902c6a67671e3ca1aebb2cbb70bdbac79c61483281ba"

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
