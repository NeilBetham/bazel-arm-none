load("@rules_cc//cc:defs.bzl", "cc_toolchain_suite")

toolchain(
  name = "linux_x86_64",
  exec_compatible_with = [
    "@platforms//os:linux",
    "@platforms//cpu:x86_64",
  ],
  target_compatible_with = [
    "@platforms//os:none",
    "@platforms//cpu:arm",
  ],
  toolchain = "//toolchain/arm-none-eabi/linux:linux",
  toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
)

toolchain(
  name = "darwin_m1",
  exec_compatible_with = [
    "@platforms//os:osx",
    "@platforms//cpu:arm64",
  ],
  target_compatible_with = [
    "@platforms//os:none",
    "@platforms//cpu:arm",
  ],
  toolchain = "//toolchain/arm-none-eabi/macos:macos",
  toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
)
