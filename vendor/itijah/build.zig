const std = @import("std");

// Ghostty builds the itijah module itself (SharedDeps.addItijah) from
// src/lib.zig with Ghostty's shared uucode module, so this package only
// provides its source files.
pub fn build(b: *std.Build) void {
    _ = b;
}
