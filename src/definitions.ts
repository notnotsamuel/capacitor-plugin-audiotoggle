export interface AudioTogglePlugin {
  /**
   * Sets the audio mode.
   * 'speaker' = Playback (ignores silent switch on iOS, forces speaker on Android).
   * 'earpiece' = PlayAndRecord (standard phone call behavior).
   * 'normal' = Ambient (respects silent switch).
   */
  setAudioMode(options: { mode: 'speaker' | 'earpiece' | 'normal' }): Promise<void>;
}
