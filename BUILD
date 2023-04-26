package(default_visibility = ["//visibility:public"])

config_setting(
  name = "linux",
  constraint_values = [
    "@platforms//cpu:x86_64",
    "@platforms//os:linux",
  ],
)

config_setting(
  name = "darwin-x86_64",
  constraint_values = [
    "@platforms//cpu:x86_64",
    "@platforms//os:osx",
  ],
)

config_setting(
  name = "darwin-arm64",
  constraint_values = [
    "@platforms//cpu:arm64",
    "@platforms//os:osx",
  ],
)

filegroup(
  name = "gdb",
  srcs = select({
    "linux": ["@arm-none-eabi-linux//:gcc-arm-none/bin/arm-none-eabi-gdb"],
    "darwin-x86_64": ["@arm-none-eabi-macos-x64_64//:gcc-arm-none/bin/arm-none-eabi-gdb"],
    "darwin-arm64": ["@arm-none-eabi-macos-arm64//:gcc-arm-none/bin/arm-none-eabi-gdb"],
  }),
)

