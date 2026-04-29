package com.showspot

import android.app.Application
import com.facebook.react.ReactApplication
import com.facebook.react.ReactNativeHost
import com.facebook.react.ReactHost
import com.facebook.soloader.SoLoader

class MainApplication : Application(), ReactApplication {

  override val reactNativeHost: ReactNativeHost =
    object : ReactNativeHost(this) {
      override fun getPackages() = emptyList<com.facebook.react.ReactPackage>()

      override fun getJSMainModuleName() = "index"

      override fun getUseDeveloperSupport() = false
    }

  override val reactHost: ReactHost?
    get() = null

  override fun onCreate() {
    super.onCreate()
    SoLoader.init(this, false)
  }
}
