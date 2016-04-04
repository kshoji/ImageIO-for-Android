ImageIO-for-Android
===================

ImageIO porting for Android platform

**Under the development. Not working yet.**

Current status(Known issues)
----

* The `libgl.so` library compilation is still failing. 
    * PngDecoder, GifDecoder, and Surface (including BufferedImage) instance can't be created. (`UnsatisfiedLinkError` will be thrown.)
* Android can't use the custom package starts with `javax.*`.
    * The whole package name must be changed, like `jp.kshoji.javax.*`.
