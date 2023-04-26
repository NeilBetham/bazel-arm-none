load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def toolchain_deps():
  # Linux ARM Toolchain
  http_archive(
    name = "arm-none-eabi-linux",
    urls = ["https://developer.arm.com/-/media/Files/downloads/gnu/12.2.mpacbti-rel1/binrel/arm-gnu-toolchain-12.2.mpacbti-rel1-x86_64-arm-none-eabi.tar.xz"],
    sha256 = "17455a06c816031cc2c66243c117cba48463cd6a3a3fdfac7275b4e9c40eb314",
    build_file = "@bazel_arm_none//toolchain:tools.BUILD",
    patch_cmds = ["mv arm-gnu-toolchain* gcc-arm-none"],
  )

  http_archive(
    name = "arm-none-eabi-macos",
    urls = ["https://developer.arm.com/-/media/Files/downloads/gnu/12.2.mpacbti-rel1/binrel/arm-gnu-toolchain-12.2.mpacbti-rel1-darwin-x86_64-arm-none-eabi.tar.xz"],
    sha256 = "febcb19108a400576a7cfa312b46c2393b78ab41cfcc450d219e9485b0d8e375",
    build_file = "@bazel_arm_none//toolchain:tools.BUILD",
    patch_cmds = ["mv arm-gnu-toolchain* gcc-arm-none"],
  )

  native.register_toolchains(
    "@bazel_arm_none//toolchain:linux_x86_64",
    "@bazel_arm_none//toolchain:darwin_m1",
  )

