package com.audiotoggle.plugin;

import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "AudioToggle")
public class AudioTogglePlugin extends Plugin {

    private AudioToggle implementation = new AudioToggle();

    @PluginMethod
    public void setAudioMode(PluginCall call) {
        String mode = call.getString("mode");
        if (mode == null) {
            call.reject("mode is required");
            return;
        }

        boolean success = implementation.setAudioMode(mode, getContext());
        if (success) {
            call.resolve();
        } else {
            call.reject("Failed to set audio mode");
        }
    }
}
