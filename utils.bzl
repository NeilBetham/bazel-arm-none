def gdb_bin():
  """ Copies the toolchain gdb into the bazel-bin dir """
  genrule(
    name = "gdb-bin",
    outs = ["gdb"],
    cmd = "cp $(location @arm-none-eabi-linux//:gcc-arm-none/bin/arm-none-eabi-gdb) $@",
    tools = ["@arm-none-eabi-linux//:gcc-arm-none/bin/arm-none-eabi-gdb"],
    executable = True,
  )
