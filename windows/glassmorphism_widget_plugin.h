#ifndef FLUTTER_PLUGIN_GLASSMORPHISM_WIDGET_PLUGIN_H_
#define FLUTTER_PLUGIN_GLASSMORPHISM_WIDGET_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace glassmorphism_widget {

class GlassmorphismWidgetPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  GlassmorphismWidgetPlugin();

  virtual ~GlassmorphismWidgetPlugin();

  // Disallow copy and assign.
  GlassmorphismWidgetPlugin(const GlassmorphismWidgetPlugin&) = delete;
  GlassmorphismWidgetPlugin& operator=(const GlassmorphismWidgetPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace glassmorphism_widget

#endif  // FLUTTER_PLUGIN_GLASSMORPHISM_WIDGET_PLUGIN_H_
