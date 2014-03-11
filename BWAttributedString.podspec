Pod::Spec.new do |s|
  s.name         = "BWAttributedString"
  s.version      = "0.1.0"
  s.summary      = "Generating NSAttributedString with properties"
  s.homepage     = "https://github.com/brunow/BWAttributedString"
  s.license      = 'Apache License 2.0'
  s.author       = { "Bruno Wernimont" => "hello@brunowernimont.be" }
  s.source       = { :git => "https://github.com/brunow/BWAttributedString", :tag => "0.1.0" }
  s.platform     = :ios, '6.0'
  s.source_files = 'BWAttributedString/*.{h,m}'
  s.requires_arc = true
end