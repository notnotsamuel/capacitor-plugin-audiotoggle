package com.audiotoggle.plugin;

import android.content.Context;
import android.media.AudioManager;

import com.getcapacitor.Logger;

public class AudioToggle {

    public boolean setAudioMode(String mode, Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
        if (audioManager == null) {
            Logger.error("AudioToggle", "AudioManager is unavailable");
            return false;
        }

        switch (mode) {
            case "speaker":
                audioManager.setMode(AudioManager.MODE_NORMAL);
                audioManager.setSpeakerphoneOn(true);
                return true;
            case "earpiece":
                audioManager.setMode(AudioManager.MODE_IN_COMMUNICATION);
                audioManager.setSpeakerphoneOn(false);
                return true;
            case "normal":
                audioManager.setMode(AudioManager.MODE_NORMAL);
                audioManager.setSpeakerphoneOn(false);
                return true;
            default:
                Logger.warn("AudioToggle", "Unsupported audio mode: " + mode);
                return false;
        }
    }
}
