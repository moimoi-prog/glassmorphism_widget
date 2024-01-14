#include "include/glassmorphism_widget/glassmorphism_widget_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "glassmorphism_widget_plugin.h"

void GlassmorphismWidgetPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  glassmorphism_widget::GlassmorphismWidgetPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
