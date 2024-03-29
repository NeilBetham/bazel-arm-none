load("@rules_cc//cc:defs.bzl", "cc_toolchain")
load("@bazel_arm_none//toolchain:config.bzl", "cc_arm_none_eabi_config")

package(default_visibility = ["//visibility:public"])

compiler = "arm-none-eabi-linux"

filegroup(
  name = "all_files",
  srcs = [
    ":ar_files",
    ":compiler_files",
    ":linker_files",
    "@{}//:compiler_pieces".format(compiler),
  ],
)

filegroup(
  name = "compiler_files",
  srcs = [
    "wrapper",
    "arm-none-eabi-gcc",
    "@{}//:compiler_pieces".format(compiler),
    "@{}//:gcc".format(compiler),
  ],
)

filegroup(
  name = "linker_files",
  srcs = [
    "wrapper",
    "arm-none-eabi-gcc",
    "arm-none-eabi-ld",
    "@{}//:ar".format(compiler),
    "@{}//:compiler_pieces".format(compiler),
    "@{}//:gcc".format(compiler),
    "@{}//:ld".format(compiler),
  ],
)

filegroup(
  name = "ar_files",
  srcs = [
    "wrapper",
    "arm-none-eabi-ar",
    "@{}//:ar".format(compiler),
  ],
)

filegroup(
  name = "objcopy_files",
  srcs = [
    "wrapper",
    "arm-none-eabi-objcopy",
    "@{}//:objcopy".format(compiler),
  ],
)

filegroup(
  name = "strip_files",
  srcs = [
    "wrapper",
    "arm-none-eabi-strip",
    "@{}//:strip".format(compiler),
  ],
)

cc_arm_none_eabi_config(
  name = "linux_config",
  gcc_repo = "arm-none-eabi-linux/gcc-arm-none",
  gcc_version = "12.2.1",
  host_system_name = "linux_x86_64",
  toolchain_identifier = "arm-none-eabi-linux",
  wrapper_path = "arm-none-eabi/linux",
)

cc_toolchain(
  name = "linux",
  all_files = ":all_files",
  ar_files = ":ar_files",
  compiler_files = ":compiler_files",
  dwp_files = ":empty",
  linker_files = ":linker_files",
  objcopy_files = ":objcopy_files",
  strip_files = ":strip_files",
  supports_param_files = 0,
  toolchain_config = ":linux_config",
  toolchain_identifier = "arm-none-eabi-linux",
)
