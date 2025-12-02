import { AudioToggle } from 'capacitor-plugin-audiotoggle';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    AudioToggle.echo({ value: inputValue })
}
