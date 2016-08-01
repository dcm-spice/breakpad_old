Pod::Spec.new do |s|
  s.name         = "breakpad"
  s.version      = "0.0.1"
  s.summary      = "Breakpad is a set of client and server components which implement a crash-reporting system"
  s.homepage     = "https://chromium.googlesource.com/breakpad/breakpad/"
  s.license      = {:file => "breakpad/MIT-LICENSE.txt"}
  s.author       = {
    "google": "opensource@google.com"
  }
  s.source       = {
    :git => "ssh://git@git.drecom.jp:10022/hattori_yuri/breakpad.git",
    :tag => s.version
  }

  preserve_paths = %w(
    breakpad/src/**/*.cc
    breakpad/src/**/*.c
    breakpad/src/**/*.h
    breakpad/src/**/*.s
    breakpad/src/**/*.S
    Android.mk
  )
  s.source_files  = "dummy.c"
  s.preserve_paths = preserve_paths

end
