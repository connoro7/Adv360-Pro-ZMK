# tl;dr README

## &kp - keypress
default keypress behavior

## &kt - key-toggle
toggles the press of a key.
Essentially, standard caps lock behavior

Example use cases: shift-lock, alt-tab window switcher without needing to hold down alt

## &gresc - mod-morph
send first keypress if tapped
send second keypress if modifier is tapped while holding this key
not available from web GUI

Example of "grave escape"
```js
/ {
    behaviors {
        gresc: grave_escape {
            compatible = "zmk,behavior-mod-morph";
            label = "GRAVE_ESCAPE";
            #binding-cells = <0>;
            bindings = <## &kp ESC>, <&kp GRAVE>;
            mods = <(MOD_LGUI|MOD_LSFT|MOD_RGUI|MOD_RSFT)>;
        };
    };
};
```

## &lt - layer-tap
enables layer on key being held
outputs keypress when key is only tapped

## &macro - macro
outputs the specified macro on keypress

## &caps_word - caps word
Like caps lock, but will disable when a breaking character is detected.
Default behavior is to remain in caps locked state for any alphanumeric char, underscorem backspace, or delete. Any other non-modifier keycode will disable caps locked state.

## &mo - momentary layer
enables layer when key is pressed, disabled layer when key is released
basically like a shift key, but for accessing different layers

## &mt - mod-tap
hold for longer than 200ms, first keypress (mod) sent
tap key (release before 200ms), second  keypress (tap) is sent

## &out - output
Toggles whether keyboard output is sent over USB or Bluetooth.
Useful for when you have keyboards plugged into power, but that power isn't what you want to be sending output to. Example: keyboards charging off a powerbank, but you want to be sending keypresses to your laptop.

## &sk - sticky-key
sticky key will stay pressed until another key is pressed
sticky keys can be combined, if you take &sk LCTRL and then &sk LSHIFT and then &kp A, the output will be ctrl+shift+a
by default, they &sk has a 1000ms timeout

## &sl - sticky-layer
sticky layer will stay pressed until another keyis pressed
using &sl, you don't have to hold the layer key. by default, they &sl has a 1000ms timeout

## &to - to layer
enables specified layer

## &tog - toggle layer
enables a layer until the layer is manually disabled

## &reset - resets into bootloader mode

## &rgb_ug - rgb underglow
no rgb

## &ext_power - external power
enable/disable/toggle external power.
nRFMicro and nice!nane are the only boards that support this

## &trans - transparent
sends activation to next layer beneath it.

## &none - none
disables the key

## &bl - backlight
backlighting controls

## &key_repeat - key-repeat
sends whatever keycode was last sent

