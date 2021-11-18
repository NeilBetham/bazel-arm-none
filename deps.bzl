load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def toolchain_deps():
  # Linux ARM Toolchain
  http_archive(
    name = "arm-none-eabi-linux",
    urls = ["https://developer.arm.com/-/media/Files/downloads/gnu-rm/10.3-2021.10/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2"],
    sha256 = "97dbb4f019ad1650b732faffcc881689cedc14e2b7ee863d390e0a41ef16c9a3",
    build_file = "@bazel_arm_none//toolchain:tools.BUILD",
    patch_cmds = ["mv gcc-arm-none* gcc-arm-none"],
  )

  http_archive(
    name = "arm-none-eabi-macos",
    urls = ["https://developer.arm.com/-/media/Files/downloads/gnu-rm/10.3-2021.10/gcc-arm-none-eabi-10.3-2021.10-mac.tar.bz2"],
    sha256 = "fb613dacb25149f140f73fe9ff6c380bb43328e6bf813473986e9127e2bc283b",
    build_file = "@bazel_arm_none//toolchain:tools.BUILD",
    patch_cmds = ["mv gcc-arm-none* gcc-arm-none"],
  )

  native.register_toolchains(
    "@bazel_arm_none//toolchain:linux_x86_64",
    "@bazel_arm_none//toolchain:darwin_m1",
  )

