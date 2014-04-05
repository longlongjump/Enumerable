Pod::Spec.new do |s|
  s.name         = "Enumerable"
  s.version      = "0.0.1"
  s.summary      = "Enumerable objc collections"

  s.description  = <<-DESC
                    Simple and usefull collection enumeration methods for objc collections

                   * Ruby-like collection enumeration
                   DESC

  s.homepage     = "https://github.com/longlongjump/Enumerable"
  s.license      = "MIT"
  s.author             = { "Eugene Ovchynnykov" => "nerohellier@gmail.com" }
  s.source       = { :git => "https://github.com/longlongjump/Enumerable.git", :tag => "0.0.1" }
  s.source_files  = "Enumerable/*.{h,m}"
end

