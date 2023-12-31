alsa_monitor.enabled = true

rule = {
  matches = {
    {
      { "device.nick", "matches", "alsa_output.usb-FOSTEX_FOSTEX_USB_AUDIO_HP-A4_00001-00.pro-output-0" },
    },
  },
  apply_properties = {
    ["api.alsa.use-acp"] = true,
    ["api.acp.auto-profile"] = true,
    ["api.acp.auto-port"] = true,
    ["device.profile"] = "multiple",
  },
}

table.insert(alsa_monitor.rules, rule)
