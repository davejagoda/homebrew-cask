cask 'axure-rp' do
  version '8.0.0.3338'
  sha256 '0a24538b3f0e1e96e668d6be6b9d74d7aa5bb51e50216542031b63f131ba0b5a'

  # axure.cachefly.net was verified as official when first introduced to the cask
  url 'https://axure.cachefly.net/AxureRP-Setup.dmg'
  appcast 'https://www.axure.com/release-history',
          checkpoint: '9a72278db21f7a6611f3c4198d5d6c9b09974f26f316a6c1e3eeb828a18396f7'
  name 'Axure RP'
  homepage 'https://www.axure.com/'

  app "Axure RP #{version.major}.app"

  zap delete: [
                "~/Library/Preferences/com.axure.AxureRP#{version.major}.plist",
                "~/Library/Saved Application State/com.axure.AxureRP#{version.major}.savedState",
                "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.axure.axurerp#{version.major}.sfl",
              ]
end
