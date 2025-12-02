import { AudioToggle } from '@notnotsamuel/capacitor-plugin-audiotoggle';

window.setAudioMode = (mode) => {
    AudioToggle.setAudioMode({ mode })
        .then(() => console.log(`Audio mode set to ${mode}`))
        .catch((error) => console.error('Failed to set audio mode', error));
};
