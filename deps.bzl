load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def toolchain_deps():
  # Linux ARM Toolchain
  http_archive(
    name = "arm-none-eabi-linux",
    urls = ["https://developer.arm.com/-/media/Files/downloads/gnu/13.3.rel1/binrel/arm-gnu-toolchain-13.3.rel1-x86_64-arm-none-eabi.tar.xz"],
    sha256 = "95c011cee430e64dd6087c75c800f04b9c49832cc1000127a92a97f9c8d83af4",
    build_file = "@bazel_arm_none//toolchain:tools.BUILD",
    patch_cmds = ["mv arm-gnu-toolchain* gcc-arm-none"],
  )

  http_archive(
    name = "arm-none-eabi-macos-x86_64",
    urls = ["https://developer.arm.com/-/media/Files/downloads/gnu/13.3.rel1/binrel/arm-gnu-toolchain-13.3.rel1-darwin-x86_64-arm-none-eabi.tar.xz"],
    sha256 = "1ab00742d1ed0926e6f227df39d767f8efab46f5250505c29cb81f548222d794",
    build_file = "@bazel_arm_none//toolchain:tools.BUILD",
    patch_cmds = ["mv arm-gnu-toolchain* gcc-arm-none"],
  )

  http_archive(
    name = "arm-none-eabi-macos-arm64",
    urls = ["https://developer.arm.com/-/media/Files/downloads/gnu/13.3.rel1/binrel/arm-gnu-toolchain-13.3.rel1-darwin-arm64-arm-none-eabi.tar.xz"],
    sha256 = "fb6921db95d345dc7e5e487dd43b745e3a5b4d5c0c7ca4f707347148760317b4",
    build_file = "@bazel_arm_none//toolchain:tools.BUILD",
    patch_cmds = ["mv arm-gnu-toolchain* gcc-arm-none"],
  )


  native.register_toolchains(
    "@bazel_arm_none//toolchain:linux_x86_64",
    "@bazel_arm_none//toolchain:darwin_x86_64",
    "@bazel_arm_none//toolchain:darwin_arm64",
  )

