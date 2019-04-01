(module
  (type (;0;) (func))
  (type (;1;) (func (param i32) (result i32)))
  (import "env" "memory" (memory (;0;) 2))
  (func $__wasm_call_ctors (type 0)
    call $_GLOBAL__sub_I_qrcode_reader.cpp)
  (func $__cxx_global_var_init (type 0)
    (local i32)
    i32.const 1024
    local.set 0
    local.get 0
    call $QRCode::QRCode__
    drop
    return)
  (func $QRCode::QRCode__ (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    i32.const 12
    local.set 4
    i32.const 16
    local.set 5
    i32.const 13
    local.set 6
    i32.const 14
    local.set 7
    i32.const 10
    local.set 8
    i32.const 11
    local.set 9
    i32.const 8
    local.set 10
    i32.const 9
    local.set 11
    i32.const 1048576
    local.set 12
    i32.const 0
    local.set 13
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 14
    local.get 14
    local.get 13
    i32.store8 offset=20
    local.get 14
    local.get 12
    i32.store offset=24
    local.get 14
    local.get 8
    i32.store8 offset=28
    local.get 14
    local.get 11
    i32.store8 offset=29
    local.get 14
    local.get 10
    i32.store8 offset=30
    local.get 14
    local.get 10
    i32.store8 offset=31
    local.get 14
    local.get 4
    i32.store8 offset=32
    local.get 14
    local.get 9
    i32.store8 offset=33
    local.get 14
    local.get 5
    i32.store8 offset=34
    local.get 14
    local.get 8
    i32.store8 offset=35
    local.get 14
    local.get 7
    i32.store8 offset=36
    local.get 14
    local.get 6
    i32.store8 offset=37
    local.get 14
    local.get 5
    i32.store8 offset=38
    local.get 14
    local.get 4
    i32.store8 offset=39
    local.get 14
    return)
  (func $_GLOBAL__sub_I_qrcode_reader.cpp (type 0)
    call $__cxx_global_var_init
    return)
  (table (;0;) 1 1 funcref)
  (global (;0;) (mut i32) (i32.const 66608))
  (global (;1;) i32 (i32.const 66608))
  (global (;2;) i32 (i32.const 1064))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (data (;0;) (i32.const 1024) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
