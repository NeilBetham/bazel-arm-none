package(default_visibility = ["//visibility:public"])

config_setting(
  name = "linux",
  constraint_values = [
    "@platforms//cpu:x86_64",
    "@platforms//os:linux",
  ],
)

config_setting(
  name = "darwin",
  constraint_values = [
    "@platforms//cpu:arm64",
    "@platforms//os:osx",
  ],
)

filegroup(
  name = "gdb",
  srcs = select({
    "linux": ["@arm-none-eabi-linux//:gcc-arm-none/bin/arm-none-eabi-gdb"],
    "darwin": ["@arm-none-eabi-macos//:gcc-arm-none/bin/arm-none-eabi-gdb"],
  }),
)

