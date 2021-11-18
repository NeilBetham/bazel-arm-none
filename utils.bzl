def gdb_bin():
  """ Copies the toolchain gdb into the bazel-bin dir """
  native.genrule(
    name = "gdb-bin",
    outs = ["gdb"],
    cmd = "cp $(location @bazel_arm_none//:gdb) $@",
    tools = ["@bazel_arm_none//:gdb"],
    executable = True,
  )
