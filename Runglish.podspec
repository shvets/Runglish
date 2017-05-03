Pod::Spec.new do |s|
  s.name         = "Runglish"
  s.version      = "1.0.0"
  s.summary      = "Transliterates strings between Russian and English languages "
  s.description  = "Transliterates strings between Russian and English languages "

  s.homepage     = "https://github.com/shvets/Runglish"
  s.license      = "MIT"

  s.authors = { "Alexander Shvets" => "alexander.shvets@gmail.com" }
  s.source = { :git => "https://github.com/shvets/Runglish.git", :tag => s.version }

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.10"
  s.tvos.deployment_target = "9.0"
  s.watchos.deployment_target = "2.0"

  s.source_files = "Source/*.swift"
end
