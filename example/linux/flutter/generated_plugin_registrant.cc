//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <glassmorphism_widget/glassmorphism_widget_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) glassmorphism_widget_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "GlassmorphismWidgetPlugin");
  glassmorphism_widget_plugin_register_with_registrar(glassmorphism_widget_registrar);
}
