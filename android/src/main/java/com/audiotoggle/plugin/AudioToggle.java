package com.audiotoggle.plugin;

import com.getcapacitor.Logger;

public class AudioToggle {

    public String echo(String value) {
        Logger.info("Echo", value);
        return value;
    }
}
