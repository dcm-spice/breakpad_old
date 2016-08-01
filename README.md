It will pod package of google breakpad.

* [https://chromium.googlesource.com/breakpad/breakpad/](https://chromium.googlesource.com/breakpad/breakpad/)

In order to use the cocos2d, describes the deference from the original.

Copying Android.mk to root along with the pod package.

```
cp /breakpad/android/google_breakpad/Android.mk .
```

change point
```
LOCAL_PATH := $(call my-dir)/../.. -> LOCAL_PATH := $(call my-dir)/breakpad
```

Avoiding suffer symbol of the cocos2d as follows:

```
ConvertUTF32toUTF16 -> GBP_ConvertUTF32toUTF16
ConvertUTF16toUTF32 -> GBP_ConvertUTF16toUTF32
ConvertUTF16toUTF8 -> GBP_ConvertUTF16toUTF8
isLegalUTF8Sequence -> GBP_isLegalUTF8Sequence
ConvertUTF8toUTF16 -> GBP_ConvertUTF8toUTF16
ConvertUTF32toUTF8 -> GBP_ConvertUTF32toUTF8
ConvertUTF8toUTF32 -> GBP_ConvertUTF8toUTF32
```
