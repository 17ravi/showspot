package com.showspot

import android.app.Application
import com.facebook.react.ReactApplication
import com.facebook.react.ReactHost
import com.facebook.react.ReactNativeHost
import com.facebook.react.ReactPackage
import com.facebook.soloader.SoLoader

class MainApplication : Application(), ReactApplication {

    override val reactNativeHost: ReactNativeHost =
        object : ReactNativeHost(this) {
            override fun getPackages(): List<ReactPackage> = emptyList()

            override fun getJSMainModuleName(): String = "index"

            override fun getUseDeveloperSupport(): Boolean = true
        }

    override val reactHost: ReactHost?
        get() = null

    override fun onCreate() {
        super.onCreate()
        SoLoader.init(this, false)
    }
}
