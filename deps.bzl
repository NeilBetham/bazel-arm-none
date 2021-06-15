load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def toolchain_deps():
  # Linux ARM Toolchain
  http_archive(
    name = "arm-none-eabi-linux",
    urls = ["https://developer.arm.com/-/media/Files/downloads/gnu-rm/10-2020q4/gcc-arm-none-eabi-10-2020-q4-major-x86_64-linux.tar.bz2"],
    sha256 = "21134caa478bbf5352e239fbc6e2da3038f8d2207e089efc96c3b55f1edcd618",
    build_file = "@bazel_arm_none//toolchain:tools.BUILD",
    patch_cmds = ["mv gcc-arm-none* gcc-arm-none"],
  )

  native.register_toolchains(
    "@bazel_arm_none//toolchain:linux_x86_64",
  )

