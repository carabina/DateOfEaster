Pod::Spec.new do |s|

  s.name        = "DateOfEaster"
  s.version     = "0.1"
  s.summary     = "Date class extension for calcutation of Easter dates"
  s.description = <<-DESC
                  **DateOfEaster** is an extension for the _Date_ class, used for calcutation of Easter date,
                   both western _(used by Roman Catholic Church and many protestant and evangelical churches)_
                   and eastern _(used by most of Eastern Orthodox Churches and Ancient Churches of the East)_.
                   DESC
  s.homepage    = "https://github.com/Loyolny/DateOfEaster"
  s.license     = { :type => "MIT", :file => "LICENSE" }
  s.author      = { "Michał Nierebiński" => "michal@1983.media" }
  s.social_media_url  = "https://twitter.com/loyolny"
  s.ios.deployment_target  = "9.0"
  s.source      = { :git => "https://github.com/Loyolny/DateOfEaster.git", :tag => s.version }
  s.source_files= "DateOfEaster/DateOfEaster/**/*.swift"
end
