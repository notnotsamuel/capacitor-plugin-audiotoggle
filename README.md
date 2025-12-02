# capacitor-plugin-audiotoggle

A Capacitor plugin to override the iOS silent switch and control audio routing between speaker, earpiece, or normal ambient playback.

## Install

```bash
npm install capacitor-plugin-audiotoggle
npx cap sync
```

## Usage

```typescript
import { AudioToggle } from 'capacitor-plugin-audiotoggle';

await AudioToggle.setAudioMode({ mode: 'speaker' });
```

Available modes:
- `speaker`: Force playback through speaker and ignore the iOS silent switch.
- `earpiece`: Phone-call style routing (earpiece) on Android and iOS.
- `normal`: Ambient mode that respects the silent switch.

## API

<docgen-index>

* [`setAudioMode(...)`](#setaudiomode)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### setAudioMode(...)

```typescript
setAudioMode(options: { mode: 'speaker' | 'earpiece' | 'normal'; }) => Promise<void>
```

Sets the audio mode.
'speaker' = Playback (ignores silent switch on iOS, forces speaker on Android).
'earpiece' = PlayAndRecord (standard phone call behavior).
'normal' = Ambient (respects silent switch).

| Param         | Type                                                        |
| ------------- | ----------------------------------------------------------- |
| **`options`** | <code>{ mode: 'speaker' \| 'earpiece' \| 'normal'; }</code> |

--------------------

</docgen-api>
