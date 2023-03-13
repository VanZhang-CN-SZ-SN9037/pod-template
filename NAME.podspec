#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#


Pod::Spec.new do |spec|
  # ――― Spec Metadata ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name               = '${POD_NAME}'
  spec.version            = "0.0.1"
  spec.summary            = 'A short description of ${POD_NAME}.'
  spec.description        = <<-DESC
                          DESC

  spec.homepage           = "https://github.com/${USER_NAME}/${POD_NAME}"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See https://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #       
  
  spec.license            = { :type => "MIT", :file => "LICENSE" }

  # ――― Author Metadata ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  spec.author             = { "Van Zhang" => "toBeABetterManZxh91@gmail.com" }
  # Or just: spec.author    = "Van Zhang"
  # spec.author           = { '${USER_NAME}' => '${USER_EMAIL}' }
  spec.social_media_url   = "https://juejin.cn/user/1574156381196600"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  # 
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  spec.platform           = :ios, "14.0"
  spec.swift_version      = "5.4"

  #  When using multiple platforms
  spec.ios.deployment_target = "14.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  # 
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  spec.source              = { :git => 'https://github.com/${USER_NAME}/${POD_NAME}.git', :tag => spec.version.to_s }

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  spec.source_files        = "Classes", "Classes/*.{c,h,m,mm,swift}"
  spec.exclude_files       = "Classes/Exclude"
  spec.public_header_files = "Classes/**/*.h"

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  #spec.resources = "Assets/*"
  spec.resource_bundles    = {
    '${POD_NAME}' => ['Sources/Classes/Resources/*']
  }

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  #spec.frameworks = ['CoreTelephony','CoreFoundation','AdSupport','AppTrackingTransparency']
  #spec.libraries = ['c++', 'resolv.9']

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  spec.static_framework    = true
  spec.vendored_frameworks = 'Classes/Vendor/*.{xcframework,framework}'
  spec.vendored_library    = 'Classes/Vendor/*.a'

  #spec.dependency "Alamofire", "~>5"

  # ――― Sub Spec Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  # If your library is so heavy and need to split with so many subspecs , you can do it by following the example:
  # 
  # spec.subspec 'Network' do |n|
  #   n.source_files = 'Classes/Network/**/*'
  #   n.dependency 'Alamofire'
  #   n.dependency 'SDWebImage'
  # end
  #


end