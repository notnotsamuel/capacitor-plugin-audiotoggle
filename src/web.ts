import { WebPlugin } from '@capacitor/core';

import type { AudioTogglePlugin } from './definitions';

export class AudioToggleWeb extends WebPlugin implements AudioTogglePlugin {
  async setAudioMode(options: {
    mode: 'speaker' | 'earpiece' | 'normal';
  }): Promise<void> {
    console.warn(
      `AudioToggle.setAudioMode is not supported on web. Received mode: ${options.mode}`,
    );
  }
}
