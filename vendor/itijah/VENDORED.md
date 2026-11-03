Vendored itijah for the cmux ghostty fork.

Upstream: DiaaEddin/itijah v0.2.1 (MIT, see LICENSE), the version the fork
previously pinned by URL+hash. Only `src/`, `LICENSE` and `README.md` are kept.

Why vendored: Ghostty 1.4.0 requires Zig 0.17. Zig compiles every dependency's
build.zig, and itijah's (plus the older uucode it pins) uses APIs Zig 0.17
removed (`std.fs.cwd`, ...). Ghostty never used that build script: it builds
the itijah module from `src/lib.zig` and imports its own uucode into it. The
replacement build.zig above is empty. Delete this copy when an itijah release
supports Zig 0.17.
