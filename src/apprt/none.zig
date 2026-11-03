const std = @import("std");
const Allocator = std.mem.Allocator;

const internal_os = @import("../os/main.zig");
const apprt = @import("../apprt.zig");
pub const resourcesDir = internal_os.resourcesDir;

pub const App = struct {
    /// Always return false as there is no apprt to communicate with.
    pub fn performIpc(
        _: Allocator,
        _: apprt.ipc.Target,
        comptime action: apprt.ipc.Action.Key,
        _: apprt.ipc.Action.Value(action),
    ) !bool {
        return false;
    }

    /// cmux fork: there is no app loop to wake. The fork's manual-IO termio
    /// path processes messages inline, so a test that reaches `Surface.queueIo`
    /// also compiles the Exec backend's path into `App.Mailbox.push`, which
    /// calls this.
    pub fn wakeup(_: *const App) void {}
};
pub const Surface = struct {};
