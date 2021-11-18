package(default_visibility = ['//visibility:public'])

# export the executable files to make them available for direct use.
exports_files(glob(["gcc-arm-none/bin/**"]))

# gcc executables.
filegroup(
    name = "gcc",
    srcs = glob(["gcc-arm-none/bin/arm-none-eabi-gcc*"]),
)

# ar executables.
filegroup(
    name = "ar",
    srcs = glob(["gcc-arm-none/bin/arm-none-eabi-ar*"]),
)

# ld executables.
filegroup(
    name = "ld",
    srcs = glob(["gcc-arm-none/bin/arm-none-eabi-ld*"]),
)

# nm executables.
filegroup(
    name = "nm",
    srcs = glob(["gcc-arm-none/bin/arm-none-eabi-nm*"]),
)

# objcopy executables.
filegroup(
    name = "objcopy",
    srcs = glob(["gcc-arm-none/bin/arm-none-eabi-objcopy*"]),
)

# objdump executables.
filegroup(
    name = "objdump",
    srcs = glob(["gcc-arm-none/bin/arm-none-eabi-objdump*"]),
)

# strip executables.
filegroup(
    name = "strip",
    srcs = glob(["gcc-arm-none/bin/arm-none-eabi-strip*"]),
)

# as executables.
filegroup(
    name = "as",
    srcs = glob(["gcc-arm-none/bin/arm-none-eabi-as*"]),
)

# size executables.
filegroup(
    name = "size",
    srcs = glob(["gcc-arm-none/bin/arm-none-eabi-size*"]),
)

# gdb executables.
filegroup(
    name = "gdb",
    srcs = glob(["gcc-arm-none/bin/arm-none-eabi-gdb*"]),
)

# libraries and headers.
filegroup(
    name = "compiler_pieces",
    srcs = glob([
        "gcc-arm-none/arm-none-eabi/**",
        "gcc-arm-none/lib/gcc/**",
    ]),
)

# collection of executables.
filegroup(
    name = "compiler_components",
    srcs = [
        ":ar",
        ":as",
        ":gcc",
        ":ld",
        ":nm",
        ":objcopy",
        ":objdump",
        ":strip",
    ],
)
