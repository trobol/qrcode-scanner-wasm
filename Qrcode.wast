(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32) (result f32)))
  (type (;2;) (func (param f32) (result f32)))
  (type (;3;) (func (param i32 i32 f32 f32 f32)))
  (type (;4;) (func (param i32 f32 f32 f32) (result i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (result i32)))
  (type (;7;) (func))
  (type (;8;) (func (param i32)))
  (type (;9;) (func (param i32 i32)))
  (type (;10;) (func (param i32 i32 i32) (result i32)))
  (type (;11;) (func (param i32 i32 i32 i32) (result f32)))
  (type (;12;) (func (param f32 f32 f32 i32) (result i32)))
  (type (;13;) (func (param f32)))
  (type (;14;) (func (param f32) (result i32)))
  (type (;15;) (func (param f32 f32 f32 f32) (result f32)))
  (type (;16;) (func (param i32 i32 i32) (result f32)))
  (type (;17;) (func (param i32 i32 i32 f32) (result i32)))
  (type (;18;) (func (param f32 i32 i32 f32) (result i32)))
  (type (;19;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;20;) (func (param i32 i32 i32)))
  (type (;21;) (func (param i32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32)))
  (type (;22;) (func (param i32 i32 i32 i32 i32)))
  (type (;23;) (func (param i32 i32 i32 i32)))
  (type (;24;) (func (param i32 f32 f32 f32 f32 f32 f32 f32 f32)))
  (type (;25;) (func (param i32 f32 f32 f32 f32 f32 f32 f32 f32 f32)))
  (func $FinderPattern_distance (type 1) (param i32 i32) (result f32)
    (local i32 f32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    local.get 2
    i32.load offset=12
    f32.load
    local.get 2
    i32.load offset=8
    f32.load
    f32.sub
    f32.store offset=4
    local.get 2
    local.get 2
    i32.load offset=12
    f32.load offset=4
    local.get 2
    i32.load offset=8
    f32.load offset=4
    f32.sub
    f32.store
    local.get 2
    f32.load offset=4
    local.get 2
    f32.load offset=4
    f32.mul
    local.get 2
    f32.load
    local.get 2
    f32.load
    f32.mul
    f32.add
    call $math_fsqrt
    local.set 3
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 3)
  (func $math_fsqrt (type 2) (param f32) (result f32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    f32.store offset=12
    local.get 1
    f32.load offset=12
    f32.sqrt)
  (func $combineEstimate (type 3) (param i32 i32 f32 f32 f32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 5
    local.get 1
    i32.store offset=12
    local.get 5
    local.get 2
    f32.store offset=8
    local.get 5
    local.get 3
    f32.store offset=4
    local.get 5
    local.get 4
    f32.store
    local.get 0
    local.get 5
    i32.load offset=12
    i32.load offset=12
    i32.const 1
    i32.add
    i32.store offset=12
    local.get 0
    local.get 5
    i32.load offset=12
    local.tee 1
    i32.load offset=12
    f32.convert_i32_u
    local.get 1
    f32.load
    f32.mul
    local.get 5
    f32.load offset=4
    f32.add
    local.get 0
    i32.load offset=12
    f32.convert_i32_u
    f32.div
    f32.store
    local.get 0
    local.get 5
    i32.load offset=12
    local.tee 1
    i32.load offset=12
    f32.convert_i32_u
    local.get 1
    f32.load offset=4
    f32.mul
    local.get 5
    f32.load offset=8
    f32.add
    local.get 0
    i32.load offset=12
    f32.convert_i32_u
    f32.div
    f32.store offset=4
    local.get 0
    local.get 5
    i32.load offset=12
    local.tee 1
    i32.load offset=12
    f32.convert_i32_u
    local.get 1
    f32.load offset=8
    f32.mul
    local.get 5
    f32.load
    f32.add
    local.get 0
    i32.load offset=12
    f32.convert_i32_u
    f32.div
    f32.store offset=8)
  (func $aboutEquals (type 4) (param i32 f32 f32 f32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 0
    i32.store offset=24
    local.get 4
    local.get 1
    f32.store offset=20
    local.get 4
    local.get 2
    f32.store offset=16
    local.get 4
    local.get 3
    f32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        f32.load offset=16
        local.get 4
        i32.load offset=24
        f32.load offset=4
        f32.sub
        call $math_fabs
        local.get 4
        f32.load offset=20
        f32.le
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        f32.load offset=12
        local.get 4
        i32.load offset=24
        f32.load
        f32.sub
        call $math_fabs
        local.get 4
        f32.load offset=20
        f32.le
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 0
        local.get 4
        local.get 4
        f32.load offset=20
        local.get 4
        i32.load offset=24
        f32.load offset=8
        f32.sub
        call $math_fabs
        f32.store offset=8
        block  ;; label = @3
          local.get 4
          f32.load offset=8
          f32.const 0x1p+0 (;=1;)
          f32.le
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 4
          f32.load offset=8
          local.get 4
          i32.load offset=24
          f32.load offset=8
          f32.le
          local.set 0
        end
        local.get 4
        local.get 0
        i32.const 1
        i32.and
        i32.store8 offset=31
        br 1 (;@1;)
      end
      local.get 4
      i32.const 0
      i32.store8 offset=31
    end
    local.get 4
    i32.load8_u offset=31
    local.set 0
    local.get 4
    i32.const 32
    i32.add
    global.set 0
    local.get 0
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s)
  (func $math_fabs (type 2) (param f32) (result f32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    f32.store offset=12
    local.get 1
    f32.load offset=12
    f64.promote_f32
    f64.abs
    f32.demote_f64)
  (func $get_int (type 5) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    i32.load)
  (func $getBitMap (type 6) (result i32)
    i32.const 0
    i32.load offset=1024)
  (func $allocateImage (type 6) (result i32)
    call $Memory_clear
    i32.const 0
    i32.const 0
    i32.load offset=1028
    i32.const 0
    i32.load offset=1032
    i32.mul
    i32.const 2
    i32.shl
    call $Memory_allocate
    i32.store offset=1024
    i32.const 0
    i32.const 0
    i32.load offset=1036
    i32.const 2
    i32.shl
    call $Memory_allocate
    i32.store offset=1040
    i32.const 0
    i32.load offset=1040)
  (func $Memory_clear (type 7)
    i32.const 0
    i32.const 74144
    i32.store offset=6104)
  (func $Memory_allocate (type 5) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.const 0
    i32.load offset=6104
    i32.store offset=8
    i32.const 0
    i32.const 0
    i32.load offset=6104
    local.get 1
    i32.load offset=12
    i32.add
    i32.store offset=6104
    i32.const 0
    i32.load offset=6104
    i32.const 0
    i32.load8_u offset=74144
    i32.const 255
    i32.and
    i32.sub
    call $Memory_size
    local.get 1
    i32.load offset=8
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func $setImageSize (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    i32.const 0
    local.get 2
    i32.load offset=12
    i32.store offset=1028
    i32.const 0
    local.get 2
    i32.load offset=8
    i32.store offset=1032
    i32.const 0
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=8
    i32.mul
    i32.const 2
    i32.shl
    i32.store offset=1036
    call $allocateImage
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func $getImageSize (type 6) (result i32)
    i32.const 0
    i32.load offset=1036)
  (func $imageToBitmap (type 7)
    (local i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 0
    i32.const 4
    i32.store offset=56
    local.get 0
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.load offset=56
    i32.div_u
    i32.store offset=52
    local.get 0
    i32.const 0
    i32.load offset=1032
    local.get 0
    i32.load offset=56
    i32.div_u
    i32.store offset=48
    local.get 0
    i32.const 0
    i32.store offset=28
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.load offset=28
        i32.const 0
        i32.load offset=1028
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 0
        i32.store offset=24
        block  ;; label = @3
          loop  ;; label = @4
            local.get 0
            i32.load offset=24
            i32.const 0
            i32.load offset=1032
            i32.lt_u
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            i32.const 255
            i32.store offset=44
            local.get 0
            i32.const 0
            i32.store offset=40
            local.get 0
            i32.const 0
            i32.store offset=16
            block  ;; label = @5
              loop  ;; label = @6
                local.get 0
                i32.load offset=16
                local.get 0
                i32.load offset=48
                i32.lt_u
                i32.const 1
                i32.and
                i32.eqz
                br_if 1 (;@5;)
                local.get 0
                i32.const 0
                i32.store offset=20
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 0
                    i32.load offset=20
                    local.get 0
                    i32.load offset=52
                    i32.lt_u
                    i32.const 1
                    i32.and
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 0
                    local.get 0
                    i32.load offset=28
                    local.get 0
                    i32.load offset=20
                    i32.add
                    local.get 0
                    i32.load offset=24
                    local.get 0
                    i32.load offset=16
                    i32.add
                    i32.const 0
                    i32.load offset=1028
                    i32.mul
                    i32.add
                    i32.store offset=60
                    local.get 0
                    i32.const 0
                    i32.load offset=1040
                    local.get 0
                    i32.load offset=60
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.load
                    i32.const 0
                    i32.load offset=1040
                    local.get 0
                    i32.load offset=60
                    i32.const 1
                    i32.add
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.load
                    i32.add
                    i32.const 0
                    i32.load offset=1040
                    local.get 0
                    i32.load offset=60
                    i32.const 2
                    i32.add
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.load
                    i32.add
                    i32.store offset=36
                    block  ;; label = @9
                      local.get 0
                      i32.load offset=36
                      local.get 0
                      i32.load offset=44
                      i32.lt_u
                      i32.const 1
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 0
                      i32.load offset=36
                      i32.store offset=44
                    end
                    block  ;; label = @9
                      local.get 0
                      i32.load offset=36
                      local.get 0
                      i32.load offset=40
                      i32.gt_u
                      i32.const 1
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 0
                      i32.load offset=36
                      i32.store offset=40
                    end
                    local.get 0
                    local.get 0
                    i32.load offset=20
                    i32.const 1
                    i32.add
                    i32.store offset=20
                    br 0 (;@8;)
                  end
                end
                local.get 0
                local.get 0
                i32.load offset=16
                i32.const 1
                i32.add
                i32.store offset=16
                br 0 (;@6;)
              end
            end
            local.get 0
            local.get 0
            i32.load offset=44
            local.get 0
            i32.load offset=40
            i32.add
            i32.const 6
            i32.div_u
            i32.store offset=32
            local.get 0
            i32.const 0
            i32.store offset=16
            block  ;; label = @5
              loop  ;; label = @6
                local.get 0
                i32.load offset=16
                local.get 0
                i32.load offset=48
                i32.lt_u
                i32.const 1
                i32.and
                i32.eqz
                br_if 1 (;@5;)
                local.get 0
                i32.const 0
                i32.store offset=20
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 0
                    i32.load offset=20
                    local.get 0
                    i32.load offset=52
                    i32.lt_u
                    i32.const 1
                    i32.and
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 0
                    local.get 0
                    i32.load offset=28
                    local.get 0
                    i32.load offset=20
                    i32.add
                    i32.store offset=8
                    local.get 0
                    i32.const 0
                    i32.load offset=1028
                    local.get 0
                    i32.load offset=24
                    local.get 0
                    i32.load offset=16
                    i32.add
                    i32.mul
                    i32.store offset=4
                    local.get 0
                    local.get 0
                    i32.load offset=8
                    i32.const 2
                    i32.shl
                    local.get 0
                    i32.load offset=4
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.store offset=36
                    local.get 0
                    local.get 0
                    i32.load offset=8
                    local.get 0
                    i32.load offset=4
                    i32.add
                    i32.store offset=12
                    i32.const 0
                    i32.load offset=1024
                    local.get 0
                    i32.load offset=12
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.const 0
                    i32.load offset=1040
                    local.get 0
                    i32.load offset=36
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.load
                    local.get 0
                    i32.load offset=32
                    i32.lt_u
                    i32.const 1
                    i32.and
                    i32.store
                    local.get 0
                    local.get 0
                    i32.load offset=20
                    i32.const 1
                    i32.add
                    i32.store offset=20
                    br 0 (;@8;)
                  end
                end
                local.get 0
                local.get 0
                i32.load offset=16
                i32.const 1
                i32.add
                i32.store offset=16
                br 0 (;@6;)
              end
            end
            local.get 0
            local.get 0
            i32.load offset=24
            local.get 0
            i32.load offset=48
            i32.add
            i32.store offset=24
            br 0 (;@4;)
          end
        end
        local.get 0
        local.get 0
        i32.load offset=28
        local.get 0
        i32.load offset=52
        i32.add
        i32.store offset=28
        br 0 (;@2;)
      end
    end)
  (func $getBitmapPixel (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    i32.const 0
    i32.load offset=1024
    local.get 2
    i32.load offset=12
    i32.const 0
    i32.load offset=1028
    local.get 2
    i32.load offset=8
    i32.mul
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s)
  (func $get_size (type 6) (result i32)
    i32.const 0
    i32.load offset=1048)
  (func $get_bytes (type 6) (result i32)
    i32.const 0
    i32.load offset=1044)
  (func $getVersionNumber (type 6) (result i32)
    i32.const 0
    i32.load offset=1052
    i32.load)
  (func $getECLevelBits (type 6) (result i32)
    i32.const 0
    i32.load offset=1056
    i32.load offset=4)
  (func $decode (type 7)
    (local i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    call $imageToBitmap
    i32.const 0
    i32.const 0
    i32.store offset=1284
    call $findFinderPatterns
    i32.const 1060
    call $processFinderPatternInfo
    local.get 0
    i32.const 24
    i32.add
    i32.const 0
    i32.load offset=1084
    i32.store
    local.get 0
    i32.const 16
    i32.add
    i32.const 0
    i64.load offset=1076 align=4
    i64.store
    local.get 0
    i32.const 8
    i32.add
    i32.const 0
    i64.load offset=1068 align=4
    i64.store
    local.get 0
    i32.const 0
    i64.load offset=1060 align=4
    i64.store
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    call $Decoder_decode
    i32.const 0
    local.get 0
    i32.const 32
    i32.add
    local.tee 1
    i64.load align=4
    i64.store offset=1044 align=4
    i32.const 0
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store offset=1052 align=4
    call $allocateImage
    drop
    local.get 0
    i32.const 48
    i32.add
    global.set 0)
  (func $findFinderPatterns (type 7)
    (local i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    i32.const 0
    i32.store8 offset=1280
    local.get 0
    i32.const 0
    i32.store8 offset=63
    local.get 0
    i32.const 0
    i32.load offset=1032
    i32.store offset=56
    local.get 0
    i32.const 0
    i32.load offset=1028
    i32.store offset=52
    local.get 0
    i32.const 0
    i32.store8 offset=31
    local.get 0
    local.get 0
    i32.load offset=56
    i32.const 3
    i32.mul
    i32.const 228
    i32.div_u
    i32.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=24
        i32.const 3
        i32.lt_s
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 0
        i32.load8_u offset=63
        i32.const 24
        i32.shl
        i32.const 24
        i32.shr_s
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 0
      i32.const 3
      i32.store offset=24
    end
    local.get 0
    local.get 0
    i32.load offset=24
    i32.const 1
    i32.sub
    i32.store offset=20
    loop  ;; label = @1
      i32.const 0
      local.set 1
      block  ;; label = @2
        local.get 0
        i32.load offset=20
        local.get 0
        i32.load offset=56
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load8_u offset=31
        i32.const 255
        i32.and
        i32.const 0
        i32.const 255
        i32.and
        i32.ne
        i32.const -1
        i32.xor
        local.set 1
      end
      block  ;; label = @2
        local.get 1
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.store offset=32
        local.get 0
        i32.const 0
        i32.store offset=36
        local.get 0
        i32.const 0
        i32.store offset=40
        local.get 0
        i32.const 0
        i32.store offset=44
        local.get 0
        i32.const 0
        i32.store offset=48
        local.get 0
        i32.const 0
        i32.store offset=16
        local.get 0
        i32.const 0
        i32.store offset=12
        block  ;; label = @3
          loop  ;; label = @4
            local.get 0
            i32.load offset=12
            local.get 0
            i32.load offset=52
            i32.lt_u
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.load offset=12
                  local.get 0
                  i32.load offset=20
                  call $getBitmapPixel
                  i32.const 255
                  i32.and
                  i32.const 0
                  i32.const 255
                  i32.and
                  i32.ne
                  i32.const 1
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 0
                    i32.load offset=16
                    i32.const 1
                    i32.and
                    i32.const 1
                    i32.eq
                    i32.const 1
                    i32.and
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 0
                    local.get 0
                    i32.load offset=16
                    i32.const 1
                    i32.add
                    i32.store offset=16
                  end
                  local.get 0
                  i32.const 32
                  i32.add
                  local.get 0
                  i32.load offset=16
                  i32.const 2
                  i32.shl
                  i32.add
                  local.tee 1
                  local.get 1
                  i32.load
                  i32.const 1
                  i32.add
                  i32.store
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load offset=16
                    i32.const 1
                    i32.and
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        i32.load offset=16
                        i32.const 4
                        i32.eq
                        i32.const 1
                        i32.and
                        i32.eqz
                        br_if 0 (;@10;)
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.const 32
                            i32.add
                            call $foundPatternCross
                            i32.const 255
                            i32.and
                            i32.const 0
                            i32.const 255
                            i32.and
                            i32.ne
                            i32.const 1
                            i32.and
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 0
                            local.get 0
                            i32.const 32
                            i32.add
                            local.get 0
                            i32.load offset=20
                            local.get 0
                            i32.load offset=12
                            call $handlePossibleCenter
                            i32.store8 offset=11
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 0
                                i32.load8_u offset=11
                                i32.const 255
                                i32.and
                                i32.const 0
                                i32.const 255
                                i32.and
                                i32.ne
                                i32.const 1
                                i32.and
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 0
                                i32.const 2
                                i32.store offset=24
                                block  ;; label = @15
                                  block  ;; label = @16
                                    i32.const 0
                                    i32.load8_u offset=1280
                                    i32.const 255
                                    i32.and
                                    i32.const 0
                                    i32.const 255
                                    i32.and
                                    i32.ne
                                    i32.const 1
                                    i32.and
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 0
                                    call $haveMultiplyConfirmedCenters
                                    i32.store8 offset=31
                                    br 1 (;@15;)
                                  end
                                  local.get 0
                                  call $findRowSkip
                                  i32.store offset=4
                                  block  ;; label = @16
                                    local.get 0
                                    i32.load offset=4
                                    local.get 0
                                    i32.load offset=40
                                    i32.gt_s
                                    i32.const 1
                                    i32.and
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 0
                                    local.get 0
                                    i32.load offset=20
                                    local.get 0
                                    i32.load offset=4
                                    local.get 0
                                    i32.load offset=40
                                    i32.sub
                                    local.get 0
                                    i32.load offset=24
                                    i32.sub
                                    i32.add
                                    i32.store offset=20
                                    local.get 0
                                    local.get 0
                                    i32.load offset=52
                                    i32.const 1
                                    i32.sub
                                    i32.store offset=12
                                  end
                                end
                                br 1 (;@13;)
                              end
                              local.get 0
                              local.get 0
                              i32.load offset=40
                              i32.store offset=32
                              local.get 0
                              local.get 0
                              i32.load offset=44
                              i32.store offset=36
                              local.get 0
                              local.get 0
                              i32.load offset=48
                              i32.store offset=40
                              local.get 0
                              i32.const 1
                              i32.store offset=44
                              local.get 0
                              i32.const 0
                              i32.store offset=48
                              local.get 0
                              i32.const 3
                              i32.store offset=16
                              br 8 (;@5;)
                            end
                            local.get 0
                            i32.const 0
                            i32.store offset=16
                            local.get 0
                            i32.const 0
                            i32.store offset=32
                            local.get 0
                            i32.const 0
                            i32.store offset=36
                            local.get 0
                            i32.const 0
                            i32.store offset=40
                            local.get 0
                            i32.const 0
                            i32.store offset=44
                            local.get 0
                            i32.const 0
                            i32.store offset=48
                            br 1 (;@11;)
                          end
                          local.get 0
                          local.get 0
                          i32.load offset=40
                          i32.store offset=32
                          local.get 0
                          local.get 0
                          i32.load offset=44
                          i32.store offset=36
                          local.get 0
                          local.get 0
                          i32.load offset=48
                          i32.store offset=40
                          local.get 0
                          i32.const 1
                          i32.store offset=44
                          local.get 0
                          i32.const 0
                          i32.store offset=48
                          local.get 0
                          i32.const 3
                          i32.store offset=16
                        end
                        br 1 (;@9;)
                      end
                      local.get 0
                      local.get 0
                      i32.load offset=16
                      i32.const 1
                      i32.add
                      local.tee 1
                      i32.store offset=16
                      local.get 0
                      i32.const 32
                      i32.add
                      local.get 1
                      i32.const 2
                      i32.shl
                      i32.add
                      local.tee 1
                      local.get 1
                      i32.load
                      i32.const 1
                      i32.add
                      i32.store
                    end
                    br 1 (;@7;)
                  end
                  local.get 0
                  i32.const 32
                  i32.add
                  local.get 0
                  i32.load offset=16
                  i32.const 2
                  i32.shl
                  i32.add
                  local.tee 1
                  local.get 1
                  i32.load
                  i32.const 1
                  i32.add
                  i32.store
                end
              end
              block  ;; label = @6
                local.get 0
                i32.const 32
                i32.add
                call $foundPatternCross
                i32.const 255
                i32.and
                i32.const 0
                i32.const 255
                i32.and
                i32.ne
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                local.get 0
                i32.const 32
                i32.add
                local.get 0
                i32.load offset=20
                local.get 0
                i32.load offset=52
                call $handlePossibleCenter
                i32.store8 offset=3
                block  ;; label = @7
                  local.get 0
                  i32.load8_u offset=3
                  i32.const 255
                  i32.and
                  i32.const 0
                  i32.const 255
                  i32.and
                  i32.ne
                  i32.const 1
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  local.get 0
                  i32.load offset=32
                  i32.store offset=24
                  block  ;; label = @8
                    i32.const 0
                    i32.load8_u offset=1280
                    i32.const 255
                    i32.and
                    i32.const 0
                    i32.const 255
                    i32.and
                    i32.ne
                    i32.const 1
                    i32.and
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 0
                    call $haveMultiplyConfirmedCenters
                    i32.store8 offset=31
                  end
                end
              end
            end
            local.get 0
            local.get 0
            i32.load offset=12
            i32.const 1
            i32.add
            i32.store offset=12
            br 0 (;@4;)
          end
        end
        local.get 0
        local.get 0
        i32.load offset=20
        local.get 0
        i32.load offset=24
        i32.add
        i32.store offset=20
        br 1 (;@1;)
      end
    end
    call $selectBestPatterns
    call $orderBestPatterns
    local.get 0
    i32.const 64
    i32.add
    global.set 0)
  (func $processFinderPatternInfo (type 8) (param i32)
    (local i32 i32 i32 f32)
    global.get 0
    i32.const 176
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store offset=172
    local.get 1
    i32.const 152
    i32.add
    local.tee 0
    i32.const 8
    i32.add
    i32.const 0
    i64.load offset=1096
    i64.store align=4
    local.get 0
    i32.const 0
    i64.load offset=1088
    i64.store align=4
    local.get 1
    i32.const 136
    i32.add
    local.tee 2
    i32.const 8
    i32.add
    i32.const 0
    i64.load offset=1112
    i64.store align=4
    local.get 2
    i32.const 0
    i64.load offset=1104
    i64.store align=4
    local.get 1
    i32.const 120
    i32.add
    local.tee 3
    i32.const 8
    i32.add
    i32.const 0
    i64.load offset=1128
    i64.store align=4
    local.get 3
    i32.const 0
    i64.load offset=1120
    i64.store align=4
    local.get 1
    local.get 2
    local.get 3
    local.get 0
    call $calculateModuleSize
    f32.store offset=116
    block  ;; label = @1
      local.get 1
      f32.load offset=116
      f32.const 0x1p+0 (;=1;)
      f32.lt
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
    end
    local.get 1
    local.get 1
    i32.const 136
    i32.add
    local.get 1
    i32.const 120
    i32.add
    local.get 1
    i32.const 152
    i32.add
    local.get 1
    f32.load offset=116
    call $computeDimension
    i32.store offset=112
    local.get 1
    local.get 1
    i32.load offset=112
    call $getProvisionalVersionForDimension
    i32.store offset=108
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=108
        i32.const 4194304
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      local.get 1
      local.get 1
      i32.load offset=108
      call $getDimensionForVersion
      i32.const 7
      i32.sub
      i32.store offset=104
      local.get 1
      i32.const 0
      i32.store offset=100
      block  ;; label = @2
        local.get 1
        i32.load offset=108
        i32.load offset=8
        i32.const 0
        i32.gt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 1
        f32.load offset=120
        local.get 1
        f32.load offset=136
        f32.sub
        local.get 1
        f32.load offset=152
        f32.add
        f32.store offset=96
        local.get 1
        local.get 1
        f32.load offset=124
        local.get 1
        f32.load offset=140
        f32.sub
        local.get 1
        f32.load offset=156
        f32.add
        f32.store offset=92
        local.get 1
        f32.const 0x1p+0 (;=1;)
        f32.const 0x1.8p+1 (;=3;)
        local.get 1
        i32.load offset=104
        f32.convert_i32_s
        f32.div
        f32.sub
        f32.store offset=88
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            f32.load offset=136
            local.get 1
            f32.load offset=88
            local.get 1
            f32.load offset=96
            local.get 1
            f32.load offset=136
            f32.sub
            f32.mul
            f32.add
            local.tee 4
            f32.abs
            f32.const 0x1p+31 (;=2.14748e+09;)
            f32.lt
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.trunc_f32_s
            local.set 0
            br 1 (;@3;)
          end
          i32.const -2147483648
          local.set 0
        end
        local.get 1
        local.get 0
        i32.store offset=84
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            f32.load offset=136
            local.get 1
            f32.load offset=88
            local.get 1
            f32.load offset=92
            local.get 1
            f32.load offset=136
            f32.sub
            f32.mul
            f32.add
            local.tee 4
            f32.abs
            f32.const 0x1p+31 (;=2.14748e+09;)
            f32.lt
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.trunc_f32_s
            local.set 0
            br 1 (;@3;)
          end
          i32.const -2147483648
          local.set 0
        end
        local.get 1
        local.get 0
        i32.store offset=80
        local.get 1
        i32.const 4
        i32.store offset=76
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              local.get 1
              i32.load offset=76
              i32.const 16
              i32.le_s
              i32.const 1
              i32.and
              i32.eqz
              br_if 1 (;@4;)
              local.get 1
              local.get 1
              f32.load offset=116
              local.get 1
              i32.load offset=84
              local.get 1
              i32.load offset=80
              local.get 1
              i32.load offset=76
              f32.convert_i32_s
              call $findAlignmentInRegion
              i32.store offset=100
              block  ;; label = @6
                local.get 1
                i32.load offset=100
                i32.const 0
                i32.ne
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                br 3 (;@3;)
              end
              local.get 1
              local.get 1
              i32.load offset=76
              i32.const 1
              i32.shl
              i32.store offset=76
              br 0 (;@5;)
            end
          end
        end
        block  ;; label = @3
          local.get 1
          i32.load offset=100
          i32.const 0
          i32.eq
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
        end
      end
      local.get 1
      i32.const 40
      i32.add
      local.get 1
      i32.const 136
      i32.add
      local.get 1
      i32.const 120
      i32.add
      local.get 1
      i32.const 152
      i32.add
      local.get 1
      i32.load offset=100
      local.get 1
      i32.load offset=112
      call $Detector_createTransform
      local.get 1
      i32.load offset=172
      local.set 0
      local.get 1
      i32.load offset=112
      local.set 2
      local.get 1
      i32.const 32
      i32.add
      local.get 1
      i32.const 40
      i32.add
      i32.const 32
      i32.add
      i32.load
      i32.store
      local.get 1
      i32.const 24
      i32.add
      local.get 1
      i32.const 40
      i32.add
      i32.const 24
      i32.add
      i64.load
      i64.store
      local.get 1
      i32.const 16
      i32.add
      local.get 1
      i32.const 40
      i32.add
      i32.const 16
      i32.add
      i64.load
      i64.store
      local.get 1
      i32.const 8
      i32.add
      local.get 1
      i32.const 40
      i32.add
      i32.const 8
      i32.add
      i64.load
      i64.store
      local.get 1
      local.get 1
      i64.load offset=40
      i64.store
      local.get 0
      local.get 2
      local.get 1
      call $GridSampler_sampleGrid
    end
    local.get 1
    i32.const 176
    i32.add
    global.set 0)
  (func $Decoder_decode (type 9) (param i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 112
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 24
    i32.add
    local.get 1
    i32.const 24
    i32.add
    i32.load
    i32.store
    local.get 2
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store
    local.get 2
    call $BitMatrixParser_setBitMatrix
    local.get 2
    call $BitMatrixParser_readVersion
    i32.store offset=108
    local.get 2
    i32.const 96
    i32.add
    call $BitMatrixParser_readFormatInformation
    local.get 2
    i32.const 0
    i32.load offset=1396
    i32.store offset=92
    local.get 2
    call $BitMatrixParser_readCodewords
    i32.store offset=88
    local.get 2
    i32.const 80
    i32.add
    local.get 2
    i32.load offset=88
    local.get 2
    i32.load offset=108
    local.get 2
    i32.load offset=92
    call $DataBlock_getDataBlocks
    local.get 2
    local.get 2
    i32.load offset=84
    i32.store offset=76
    local.get 2
    local.get 2
    i32.load offset=80
    i32.store offset=72
    local.get 2
    i32.const 0
    i32.store offset=68
    local.get 2
    i32.const 0
    i32.store offset=64
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=64
        local.get 2
        i32.load offset=72
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.get 2
        i32.load offset=68
        local.get 2
        i32.load offset=76
        local.get 2
        i32.load offset=64
        i32.const 3
        i32.shl
        i32.add
        i32.load
        i32.add
        i32.store offset=68
        local.get 2
        local.get 2
        i32.load offset=64
        i32.const 1
        i32.add
        i32.store offset=64
        br 0 (;@2;)
      end
    end
    local.get 2
    local.get 2
    i32.load offset=68
    i32.const 0
    i32.shl
    call $Memory_allocate
    i32.store offset=60
    local.get 2
    i32.const 0
    i32.store offset=56
    local.get 2
    local.get 2
    i32.load offset=108
    i32.const 16
    i32.add
    local.get 2
    i32.load offset=92
    i32.load
    i32.const 20
    i32.mul
    i32.add
    i32.load
    i32.store offset=52
    local.get 2
    i32.const 0
    i32.store offset=48
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=48
        local.get 2
        i32.load offset=72
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.const 40
        i32.add
        local.get 2
        i32.load offset=76
        local.get 2
        i32.load offset=48
        i32.const 3
        i32.shl
        i32.add
        i64.load align=4
        i64.store align=4
        local.get 2
        local.get 2
        i32.load offset=44
        i32.store offset=36
        local.get 2
        local.get 2
        i32.load offset=40
        i32.store offset=32
        local.get 2
        i32.load offset=36
        local.get 2
        i32.load offset=52
        local.get 2
        i32.load offset=32
        call $Decoder_correctErrors
        local.get 2
        i32.const 0
        i32.store offset=28
        block  ;; label = @3
          loop  ;; label = @4
            local.get 2
            i32.load offset=28
            local.get 2
            i32.load offset=32
            i32.lt_s
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 2
            i32.load offset=36
            local.get 2
            i32.load offset=28
            i32.add
            i32.load8_u
            local.set 1
            local.get 2
            i32.load offset=60
            local.set 3
            local.get 2
            local.get 2
            i32.load offset=56
            local.tee 4
            i32.const 1
            i32.add
            i32.store offset=56
            local.get 3
            local.get 4
            i32.add
            local.get 1
            i32.store8
            local.get 2
            local.get 2
            i32.load offset=28
            i32.const 1
            i32.add
            i32.store offset=28
            br 0 (;@4;)
          end
        end
        local.get 2
        local.get 2
        i32.load offset=48
        i32.const 1
        i32.add
        i32.store offset=48
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 2
    i32.load offset=60
    i32.store
    local.get 0
    local.get 2
    i32.load offset=68
    i32.store offset=4
    local.get 0
    local.get 2
    i32.load offset=108
    i32.store offset=8
    local.get 0
    local.get 2
    i32.load offset=92
    i32.store offset=12
    local.get 2
    i32.const 112
    i32.add
    global.set 0)
  (func $orderBestPatterns (type 7)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 1088
    i32.const 1088
    i32.const 16
    i32.add
    local.tee 1
    call $FinderPattern_distance
    f32.store offset=76
    local.get 0
    local.get 1
    i32.const 1088
    i32.const 32
    i32.add
    local.tee 2
    call $FinderPattern_distance
    f32.store offset=72
    local.get 0
    i32.const 1088
    local.get 2
    call $FinderPattern_distance
    f32.store offset=68
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        f32.load offset=72
        local.get 0
        f32.load offset=76
        f32.ge
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        f32.load offset=72
        local.get 0
        f32.load offset=68
        f32.ge
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 48
        i32.add
        local.tee 1
        i32.const 8
        i32.add
        i32.const 0
        i64.load offset=1096
        i64.store align=4
        local.get 1
        i32.const 0
        i64.load offset=1088
        i64.store align=4
        local.get 0
        i32.const 32
        i32.add
        local.tee 1
        i32.const 8
        i32.add
        i32.const 0
        i64.load offset=1112
        i64.store align=4
        local.get 1
        i32.const 0
        i64.load offset=1104
        i64.store align=4
        local.get 0
        i32.const 16
        i32.add
        local.tee 1
        i32.const 8
        i32.add
        i32.const 0
        i64.load offset=1128
        i64.store align=4
        local.get 1
        i32.const 0
        i64.load offset=1120
        i64.store align=4
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          f32.load offset=68
          local.get 0
          f32.load offset=72
          f32.ge
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          f32.load offset=68
          local.get 0
          f32.load offset=76
          f32.ge
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 48
          i32.add
          local.tee 1
          i32.const 8
          i32.add
          i32.const 0
          i64.load offset=1112
          i64.store align=4
          local.get 1
          i32.const 0
          i64.load offset=1104
          i64.store align=4
          local.get 0
          i32.const 32
          i32.add
          local.tee 1
          i32.const 8
          i32.add
          i32.const 0
          i64.load offset=1096
          i64.store align=4
          local.get 1
          i32.const 0
          i64.load offset=1088
          i64.store align=4
          local.get 0
          i32.const 16
          i32.add
          local.tee 1
          i32.const 8
          i32.add
          i32.const 0
          i64.load offset=1128
          i64.store align=4
          local.get 1
          i32.const 0
          i64.load offset=1120
          i64.store align=4
          br 1 (;@2;)
        end
        local.get 0
        i32.const 48
        i32.add
        local.tee 1
        i32.const 8
        i32.add
        i32.const 0
        i64.load offset=1128
        i64.store align=4
        local.get 1
        i32.const 0
        i64.load offset=1120
        i64.store align=4
        local.get 0
        i32.const 32
        i32.add
        local.tee 1
        i32.const 8
        i32.add
        i32.const 0
        i64.load offset=1096
        i64.store align=4
        local.get 1
        i32.const 0
        i64.load offset=1088
        i64.store align=4
        local.get 0
        i32.const 16
        i32.add
        local.tee 1
        i32.const 8
        i32.add
        i32.const 0
        i64.load offset=1112
        i64.store align=4
        local.get 1
        i32.const 0
        i64.load offset=1104
        i64.store align=4
      end
    end
    block  ;; label = @1
      local.get 0
      f32.load offset=20
      local.get 0
      f32.load offset=52
      f32.sub
      local.get 0
      f32.load offset=32
      local.get 0
      f32.load offset=48
      f32.sub
      f32.mul
      local.get 0
      f32.load offset=16
      local.get 0
      f32.load offset=48
      f32.sub
      local.get 0
      f32.load offset=36
      local.get 0
      f32.load offset=52
      f32.sub
      f32.mul
      f32.lt
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.tee 1
      local.get 0
      i32.const 32
      i32.add
      local.tee 2
      i64.load align=4
      i64.store align=4
      local.get 1
      i32.const 8
      i32.add
      local.get 2
      i32.const 8
      i32.add
      i64.load align=4
      i64.store align=4
      local.get 2
      local.get 0
      i32.const 16
      i32.add
      local.tee 3
      i64.load align=4
      i64.store align=4
      local.get 2
      i32.const 8
      i32.add
      local.get 3
      i32.const 8
      i32.add
      i64.load align=4
      i64.store align=4
      local.get 3
      local.get 1
      i64.load align=4
      i64.store align=4
      local.get 3
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store align=4
    end
    i32.const 0
    local.get 0
    i32.const 16
    i32.add
    local.tee 1
    i64.load align=4
    i64.store offset=1088 align=4
    i32.const 0
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store offset=1096 align=4
    i32.const 0
    local.get 0
    i32.const 48
    i32.add
    local.tee 1
    i64.load align=4
    i64.store offset=1104 align=4
    i32.const 0
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store offset=1112 align=4
    i32.const 0
    local.get 0
    i32.const 32
    i32.add
    local.tee 1
    i64.load align=4
    i64.store offset=1120 align=4
    i32.const 0
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store offset=1128 align=4
    local.get 0
    i32.const 80
    i32.add
    global.set 0)
  (func $foundPatternCross (type 5) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store offset=24
    local.get 1
    i32.const 0
    i32.store offset=20
    local.get 1
    i32.const 0
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 1
          i32.load offset=16
          i32.const 5
          i32.lt_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 1
            i32.load offset=24
            local.get 1
            i32.load offset=16
            i32.const 2
            i32.shl
            i32.add
            i32.load
            br_if 0 (;@4;)
            local.get 1
            i32.const 0
            i32.store8 offset=31
            br 3 (;@1;)
          end
          local.get 1
          local.get 1
          i32.load offset=20
          local.get 1
          i32.load offset=24
          local.get 1
          i32.load offset=16
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.add
          i32.store offset=20
          local.get 1
          local.get 1
          i32.load offset=16
          i32.const 1
          i32.add
          i32.store offset=16
          br 0 (;@3;)
        end
      end
      block  ;; label = @2
        local.get 1
        i32.load offset=20
        i32.const 7
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 0
        i32.store8 offset=31
        br 1 (;@1;)
      end
      i32.const 0
      local.set 0
      local.get 1
      local.get 1
      i32.load offset=20
      f32.convert_i32_s
      f32.const 0x1.cp+2 (;=7;)
      f32.div
      f32.store offset=12
      local.get 1
      local.get 1
      f32.load offset=12
      f32.const 0x1p+1 (;=2;)
      f32.div
      f32.store offset=8
      block  ;; label = @2
        local.get 1
        f32.load offset=12
        local.get 1
        i32.load offset=24
        i32.load
        f32.convert_i32_s
        f32.sub
        call $math_fabs
        local.get 1
        f32.load offset=8
        f32.lt
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 0
        local.get 1
        f32.load offset=12
        local.get 1
        i32.load offset=24
        i32.load offset=4
        f32.convert_i32_s
        f32.sub
        call $math_fabs
        local.get 1
        f32.load offset=8
        f32.lt
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 0
        f32.const 0x1.8p+1 (;=3;)
        local.get 1
        f32.load offset=12
        f32.mul
        local.get 1
        i32.load offset=24
        i32.load offset=8
        f32.convert_i32_s
        f32.sub
        call $math_fabs
        f32.const 0x1.8p+1 (;=3;)
        local.get 1
        f32.load offset=8
        f32.mul
        f32.lt
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 0
        local.get 1
        f32.load offset=12
        local.get 1
        i32.load offset=24
        i32.load offset=12
        f32.convert_i32_s
        f32.sub
        call $math_fabs
        local.get 1
        f32.load offset=8
        f32.lt
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        f32.load offset=12
        local.get 1
        i32.load offset=24
        i32.load offset=16
        f32.convert_i32_s
        f32.sub
        call $math_fabs
        local.get 1
        f32.load offset=8
        f32.lt
        local.set 0
      end
      local.get 1
      local.get 0
      i32.const 1
      i32.and
      i32.store8 offset=31
    end
    local.get 1
    i32.load8_u offset=31
    local.set 0
    local.get 1
    i32.const 32
    i32.add
    global.set 0
    local.get 0
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s)
  (func $handlePossibleCenter (type 10) (param i32 i32 i32) (result i32)
    (local i32 f32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=72
    local.get 3
    local.get 1
    i32.store offset=68
    local.get 3
    local.get 2
    i32.store offset=64
    local.get 3
    local.get 3
    i32.load offset=72
    local.tee 2
    i32.load
    local.get 2
    i32.load offset=4
    i32.add
    local.get 2
    i32.load offset=8
    i32.add
    local.get 2
    i32.load offset=12
    i32.add
    local.get 2
    i32.load offset=16
    i32.add
    i32.store offset=60
    local.get 3
    local.get 3
    i32.load offset=72
    local.get 3
    i32.load offset=64
    call $centerFromEnd
    f32.store offset=56
    local.get 3
    i32.load offset=68
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        f32.load offset=56
        local.tee 4
        f32.const 0x1p+32 (;=4.29497e+09;)
        f32.lt
        local.get 4
        f32.const 0x0p+0 (;=0;)
        f32.ge
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.trunc_f32_u
        local.set 1
        br 1 (;@1;)
      end
      i32.const 0
      local.set 1
    end
    local.get 3
    local.get 2
    local.get 1
    local.get 3
    i32.load offset=72
    i32.load offset=8
    local.get 3
    i32.load offset=60
    call $crossCheckVertical
    f32.store offset=52
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        f32.load offset=52
        f32.const 0x1p+22 (;=4.1943e+06;)
        f32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            f32.load offset=56
            local.tee 4
            f32.const 0x1p+32 (;=4.29497e+09;)
            f32.lt
            local.get 4
            f32.const 0x0p+0 (;=0;)
            f32.ge
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.trunc_f32_u
            local.set 2
            br 1 (;@3;)
          end
          i32.const 0
          local.set 2
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            f32.load offset=52
            local.tee 4
            f32.const 0x1p+32 (;=4.29497e+09;)
            f32.lt
            local.get 4
            f32.const 0x0p+0 (;=0;)
            f32.ge
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.trunc_f32_u
            local.set 1
            br 1 (;@3;)
          end
          i32.const 0
          local.set 1
        end
        local.get 3
        local.get 2
        local.get 1
        local.get 3
        i32.load offset=72
        i32.load offset=8
        local.get 3
        i32.load offset=60
        call $crossCheckHorizontal
        f32.store offset=56
        block  ;; label = @3
          local.get 3
          f32.load offset=56
          f32.const 0x1p+22 (;=4.1943e+06;)
          f32.ne
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 3
          i32.load offset=60
          f32.convert_i32_s
          f32.const 0x1.cp+2 (;=7;)
          f32.div
          f32.store offset=48
          local.get 3
          i32.const 0
          i32.store8 offset=47
          local.get 3
          i32.const 0
          i32.load offset=1284
          i32.store offset=40
          local.get 3
          i32.const 0
          i32.store offset=36
          block  ;; label = @4
            block  ;; label = @5
              loop  ;; label = @6
                local.get 3
                i32.load offset=36
                local.get 3
                i32.load offset=40
                i32.lt_u
                i32.const 1
                i32.and
                i32.eqz
                br_if 1 (;@5;)
                block  ;; label = @7
                  i32.const 1088
                  local.get 3
                  i32.load offset=36
                  i32.const 4
                  i32.shl
                  i32.add
                  local.get 3
                  f32.load offset=48
                  local.get 3
                  f32.load offset=52
                  local.get 3
                  f32.load offset=56
                  call $aboutEquals
                  i32.const 255
                  i32.and
                  i32.const 0
                  i32.const 255
                  i32.and
                  i32.ne
                  i32.const 1
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 3
                  i32.load offset=36
                  local.set 1
                  local.get 3
                  i32.const 16
                  i32.add
                  local.tee 2
                  i32.const 1088
                  local.get 3
                  i32.load offset=36
                  i32.const 4
                  i32.shl
                  i32.add
                  local.get 3
                  f32.load offset=52
                  local.get 3
                  f32.load offset=56
                  local.get 3
                  f32.load offset=48
                  call $combineEstimate
                  i32.const 1088
                  local.get 1
                  i32.const 4
                  i32.shl
                  i32.add
                  local.tee 1
                  local.get 2
                  i64.load align=4
                  i64.store align=4
                  local.get 1
                  i32.const 8
                  i32.add
                  local.get 2
                  i32.const 8
                  i32.add
                  i64.load align=4
                  i64.store align=4
                  local.get 3
                  i32.const 1
                  i32.store8 offset=47
                  br 3 (;@4;)
                end
                local.get 3
                local.get 3
                i32.load offset=36
                i32.const 1
                i32.add
                i32.store offset=36
                br 0 (;@6;)
              end
            end
          end
          block  ;; label = @4
            local.get 3
            i32.load8_u offset=47
            i32.const 255
            i32.and
            i32.const 0
            i32.const 255
            i32.and
            i32.ne
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 3
            local.get 3
            f32.load offset=56
            local.get 3
            f32.load offset=52
            local.get 3
            f32.load offset=48
            i32.const 0
            call $addPossibleCenter
            i32.store offset=12
          end
          local.get 3
          i32.const 1
          i32.store8 offset=79
          br 2 (;@1;)
        end
      end
      local.get 3
      i32.const 0
      i32.store8 offset=79
    end
    local.get 3
    i32.load8_u offset=79
    local.set 2
    local.get 3
    i32.const 80
    i32.add
    global.set 0
    local.get 2
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s)
  (func $haveMultiplyConfirmedCenters (type 6) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 0
    i32.store offset=24
    local.get 0
    i32.const 0
    f32.convert_i32_s
    f32.store offset=20
    local.get 0
    i32.const 0
    i32.load offset=1284
    i32.store offset=16
    local.get 0
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.load offset=12
        local.get 0
        i32.load offset=16
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        block  ;; label = @3
          i32.const 1088
          local.get 0
          i32.load offset=12
          i32.const 4
          i32.shl
          i32.add
          i32.load offset=12
          i32.const 2
          i32.ge_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 0
          i32.load offset=24
          i32.const 1
          i32.add
          i32.store offset=24
          local.get 0
          local.get 0
          f32.load offset=20
          i32.const 1088
          local.get 0
          i32.load offset=12
          i32.const 4
          i32.shl
          i32.add
          f32.load offset=8
          f32.add
          f32.store offset=20
        end
        local.get 0
        local.get 0
        i32.load offset=12
        i32.const 1
        i32.add
        i32.store offset=12
        br 0 (;@2;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=24
        i32.const 3
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.store8 offset=31
        br 1 (;@1;)
      end
      local.get 0
      local.get 0
      f32.load offset=20
      local.get 0
      i32.load offset=16
      f32.convert_i32_u
      f32.div
      f32.store offset=8
      local.get 0
      i32.const 0
      f32.convert_i32_s
      f32.store offset=4
      local.get 0
      i32.const 0
      i32.store
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load
          local.get 0
          i32.load offset=16
          i32.lt_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.const 1088
          local.get 0
          i32.load
          i32.const 4
          i32.shl
          i32.add
          f32.load offset=8
          local.get 0
          f32.load offset=8
          f32.sub
          call $math_fabs
          local.get 0
          f32.load offset=4
          f32.add
          f32.store offset=4
          local.get 0
          local.get 0
          i32.load
          i32.const 1
          i32.add
          i32.store
          br 0 (;@3;)
        end
      end
      local.get 0
      local.get 0
      f32.load offset=4
      f32.const 0x1.99999ap-5 (;=0.05;)
      local.get 0
      f32.load offset=20
      f32.mul
      f32.le
      i32.const 1
      i32.and
      i32.store8 offset=31
    end
    local.get 0
    i32.load8_u offset=31
    local.set 1
    local.get 0
    i32.const 32
    i32.add
    global.set 0
    local.get 1
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s)
  (func $findRowSkip (type 6) (result i32)
    (local i32 f32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 0
    i32.load offset=1284
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=8
        i32.const 1
        i32.le_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store offset=4
      local.get 0
      i32.const 0
      i32.store
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load
          local.get 0
          i32.load offset=8
          i32.lt_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            i32.const 1088
            local.get 0
            i32.load
            i32.const 4
            i32.shl
            i32.add
            i32.load offset=12
            i32.const 2
            i32.ge_u
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=4
                br_if 0 (;@6;)
                local.get 0
                local.get 0
                i32.load
                i32.store offset=4
                br 1 (;@5;)
              end
              i32.const 0
              i32.const 1
              i32.store8 offset=1280
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 1088
                  local.get 0
                  i32.load offset=4
                  i32.const 4
                  i32.shl
                  i32.add
                  f32.load
                  i32.const 1088
                  local.get 0
                  i32.load
                  i32.const 4
                  i32.shl
                  i32.add
                  f32.load
                  f32.sub
                  call $math_fabs
                  i32.const 1088
                  local.get 0
                  i32.load offset=4
                  i32.const 4
                  i32.shl
                  i32.add
                  f32.load offset=4
                  i32.const 1088
                  local.get 0
                  i32.load
                  i32.const 4
                  i32.shl
                  i32.add
                  f32.load offset=4
                  f32.sub
                  call $math_fabs
                  f32.sub
                  local.tee 1
                  f32.abs
                  f32.const 0x1p+31 (;=2.14748e+09;)
                  f32.lt
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 1
                  i32.trunc_f32_s
                  local.set 2
                  br 1 (;@6;)
                end
                i32.const -2147483648
                local.set 2
              end
              local.get 0
              local.get 2
              i32.const 2
              i32.div_s
              i32.store offset=12
              br 4 (;@1;)
            end
          end
          local.get 0
          local.get 0
          i32.load
          i32.const 1
          i32.add
          i32.store
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.const 0
      i32.store offset=12
    end
    local.get 0
    i32.load offset=12
    local.set 2
    local.get 0
    i32.const 16
    i32.add
    global.set 0
    local.get 2)
  (func $selectBestPatterns (type 7)
    (local i32 f32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 0
    i32.load offset=1284
    i32.store offset=60
    block  ;; label = @1
      local.get 0
      i32.load offset=60
      i32.const 3
      i32.lt_u
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=60
      i32.const 3
      i32.gt_u
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      f32.convert_i32_s
      local.tee 1
      f32.store offset=56
      local.get 0
      local.get 1
      f32.store offset=52
      local.get 0
      i32.const 0
      i32.store offset=48
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load offset=48
          local.get 0
          i32.load offset=60
          i32.lt_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.const 1088
          local.get 0
          i32.load offset=48
          i32.const 4
          i32.shl
          i32.add
          f32.load offset=8
          f32.store offset=44
          local.get 0
          local.get 0
          f32.load offset=56
          local.get 0
          f32.load offset=44
          f32.add
          f32.store offset=56
          local.get 0
          local.get 0
          f32.load offset=52
          local.get 0
          f32.load offset=44
          local.get 0
          f32.load offset=44
          f32.mul
          f32.add
          f32.store offset=52
          local.get 0
          local.get 0
          i32.load offset=48
          i32.const 1
          i32.add
          i32.store offset=48
          br 0 (;@3;)
        end
      end
      local.get 0
      local.get 0
      f32.load offset=56
      local.get 0
      i32.load offset=60
      f32.convert_i32_u
      f32.div
      f32.store offset=40
      local.get 0
      local.get 0
      f32.load offset=52
      local.get 0
      i32.load offset=60
      f32.convert_i32_u
      f32.div
      local.get 0
      f32.load offset=40
      local.get 0
      f32.load offset=40
      f32.mul
      f32.sub
      call $math_fsqrt
      f32.store offset=36
      local.get 0
      f32.load offset=40
      call $sortPossibleCenters
      block  ;; label = @2
        block  ;; label = @3
          f32.const 0x1.99999ap-3 (;=0.2;)
          local.get 0
          f32.load offset=40
          f32.mul
          local.tee 1
          f32.abs
          f32.const 0x1p+31 (;=2.14748e+09;)
          f32.lt
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.trunc_f32_s
          local.set 2
          br 1 (;@2;)
        end
        i32.const -2147483648
        local.set 2
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          f32.load offset=36
          local.tee 1
          f32.abs
          f32.const 0x1p+31 (;=2.14748e+09;)
          f32.lt
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.trunc_f32_s
          local.set 3
          br 1 (;@2;)
        end
        i32.const -2147483648
        local.set 3
      end
      local.get 0
      local.get 2
      local.get 3
      call $math_max
      f32.convert_i32_s
      f32.store offset=32
      local.get 0
      i32.const 0
      i32.store offset=28
      loop  ;; label = @2
        i32.const 0
        local.set 2
        block  ;; label = @3
          local.get 0
          i32.load offset=28
          i32.const 0
          i32.load offset=1284
          i32.lt_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1284
          i32.const 3
          i32.gt_u
          local.set 2
        end
        block  ;; label = @3
          local.get 2
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            i32.const 1088
            local.get 0
            i32.load offset=28
            i32.const 4
            i32.shl
            i32.add
            f32.load offset=8
            local.get 0
            f32.load offset=40
            f32.sub
            call $math_fabs
            local.get 0
            f32.load offset=32
            f32.gt
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 0
            i32.load offset=28
            i32.store offset=24
            block  ;; label = @5
              loop  ;; label = @6
                local.get 0
                i32.load offset=24
                i32.const 0
                i32.load offset=1284
                i32.const 1
                i32.sub
                i32.lt_u
                i32.const 1
                i32.and
                i32.eqz
                br_if 1 (;@5;)
                i32.const 1088
                local.get 0
                i32.load offset=24
                i32.const 4
                i32.shl
                i32.add
                local.tee 2
                i32.const 1088
                local.get 0
                i32.load offset=24
                i32.const 1
                i32.add
                i32.const 4
                i32.shl
                i32.add
                local.tee 3
                i64.load
                i64.store
                local.get 2
                i32.const 8
                i32.add
                local.get 3
                i32.const 8
                i32.add
                i64.load
                i64.store
                local.get 0
                local.get 0
                i32.load offset=24
                i32.const 1
                i32.add
                i32.store offset=24
                br 0 (;@6;)
              end
            end
            i32.const 0
            i32.const 0
            i32.load offset=1284
            i32.const -1
            i32.add
            i32.store offset=1284
            local.get 0
            local.get 0
            i32.load offset=28
            i32.const -1
            i32.add
            i32.store offset=28
          end
          local.get 0
          local.get 0
          i32.load offset=28
          i32.const 1
          i32.add
          i32.store offset=28
          br 1 (;@2;)
        end
      end
    end
    block  ;; label = @1
      i32.const 0
      i32.load offset=1284
      i32.const 3
      i32.gt_u
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      f32.convert_i32_s
      f32.store offset=20
      local.get 0
      i32.const 0
      i32.store offset=16
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load offset=16
          i32.const 0
          i32.load offset=1284
          i32.lt_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.const 1088
          local.get 0
          i32.load offset=16
          i32.const 4
          i32.shl
          i32.add
          f32.load offset=8
          f32.store offset=12
          local.get 0
          local.get 0
          f32.load offset=20
          local.get 0
          f32.load offset=12
          f32.add
          f32.store offset=20
          local.get 0
          local.get 0
          i32.load offset=16
          i32.const 1
          i32.add
          i32.store offset=16
          br 0 (;@3;)
        end
      end
      local.get 0
      local.get 0
      f32.load offset=20
      i32.const 0
      i32.load offset=1284
      f32.convert_i32_u
      f32.div
      f32.store offset=8
      local.get 0
      f32.load offset=8
      call $sortCenterComparator
      i32.const 0
      i32.const 3
      i32.store offset=1284
    end
    local.get 0
    i32.const 64
    i32.add
    global.set 0)
  (func $centerFromEnd (type 1) (param i32 i32) (result f32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load offset=12
    i32.load offset=16
    i32.sub
    local.get 2
    i32.load offset=12
    i32.load offset=12
    i32.sub
    f32.convert_i32_s
    local.get 2
    i32.load offset=12
    i32.load offset=8
    f32.convert_i32_s
    f32.const 0x1p+1 (;=2;)
    f32.div
    f32.sub)
  (func $crossCheckVertical (type 11) (param i32 i32 i32 i32) (result f32)
    (local i32 f32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 0
    i32.store offset=56
    local.get 4
    local.get 1
    i32.store offset=52
    local.get 4
    local.get 2
    i32.store offset=48
    local.get 4
    local.get 3
    i32.store offset=44
    local.get 4
    i32.const 0
    i32.load offset=1032
    i32.store offset=40
    local.get 4
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load offset=12
        i32.const 5
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.const 16
        i32.add
        local.get 4
        i32.load offset=12
        i32.const 2
        i32.shl
        i32.add
        i32.const 0
        i32.store
        local.get 4
        local.get 4
        i32.load offset=12
        i32.const 1
        i32.add
        i32.store offset=12
        br 0 (;@2;)
      end
    end
    local.get 4
    local.get 4
    i32.load offset=56
    i32.store offset=8
    loop  ;; label = @1
      i32.const 0
      local.set 3
      block  ;; label = @2
        local.get 4
        i32.load offset=8
        i32.const 0
        i32.ge_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.load offset=52
        local.get 4
        i32.load offset=8
        call $getBitmapPixel
        i32.const 24
        i32.shl
        i32.const 24
        i32.shr_s
        i32.const 0
        i32.ne
        local.set 3
      end
      block  ;; label = @2
        local.get 3
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 4
        i32.load offset=24
        i32.const 1
        i32.add
        i32.store offset=24
        local.get 4
        local.get 4
        i32.load offset=8
        i32.const -1
        i32.add
        i32.store offset=8
        br 1 (;@1;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.load offset=8
        i32.const 0
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        f32.const 0x1p+22 (;=4.1943e+06;)
        f32.store offset=60
        br 1 (;@1;)
      end
      loop  ;; label = @2
        i32.const 0
        local.set 3
        block  ;; label = @3
          local.get 4
          i32.load offset=8
          i32.const 0
          i32.ge_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 3
          local.get 4
          i32.load offset=52
          local.get 4
          i32.load offset=8
          call $getBitmapPixel
          i32.const 255
          i32.and
          i32.const 0
          i32.const 255
          i32.and
          i32.ne
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=20
          local.get 4
          i32.load offset=48
          i32.le_s
          local.set 3
        end
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 4
          i32.load offset=20
          i32.const 1
          i32.add
          i32.store offset=20
          local.get 4
          local.get 4
          i32.load offset=8
          i32.const -1
          i32.add
          i32.store offset=8
          br 1 (;@2;)
        end
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.load offset=8
          i32.const 0
          i32.lt_s
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=20
          local.get 4
          i32.load offset=48
          i32.gt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 4
        f32.const 0x1p+22 (;=4.1943e+06;)
        f32.store offset=60
        br 1 (;@1;)
      end
      loop  ;; label = @2
        i32.const 0
        local.set 3
        block  ;; label = @3
          local.get 4
          i32.load offset=8
          i32.const 0
          i32.ge_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 3
          local.get 4
          i32.load offset=52
          local.get 4
          i32.load offset=8
          call $getBitmapPixel
          i32.const 24
          i32.shl
          i32.const 24
          i32.shr_s
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=16
          local.get 4
          i32.load offset=48
          i32.le_s
          local.set 3
        end
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 4
          i32.load offset=16
          i32.const 1
          i32.add
          i32.store offset=16
          local.get 4
          local.get 4
          i32.load offset=8
          i32.const -1
          i32.add
          i32.store offset=8
          br 1 (;@2;)
        end
      end
      block  ;; label = @2
        local.get 4
        i32.load offset=16
        local.get 4
        i32.load offset=48
        i32.gt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        f32.const 0x1p+22 (;=4.1943e+06;)
        f32.store offset=60
        br 1 (;@1;)
      end
      local.get 4
      local.get 4
      i32.load offset=56
      i32.const 1
      i32.add
      i32.store offset=8
      loop  ;; label = @2
        i32.const 0
        local.set 3
        block  ;; label = @3
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=40
          i32.lt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=52
          local.get 4
          i32.load offset=8
          call $getBitmapPixel
          i32.const 24
          i32.shl
          i32.const 24
          i32.shr_s
          i32.const 0
          i32.ne
          local.set 3
        end
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 4
          i32.load offset=24
          i32.const 1
          i32.add
          i32.store offset=24
          local.get 4
          local.get 4
          i32.load offset=8
          i32.const 1
          i32.add
          i32.store offset=8
          br 1 (;@2;)
        end
      end
      block  ;; label = @2
        local.get 4
        i32.load offset=8
        local.get 4
        i32.load offset=40
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        f32.const 0x1p+22 (;=4.1943e+06;)
        f32.store offset=60
        br 1 (;@1;)
      end
      loop  ;; label = @2
        i32.const 0
        local.set 3
        block  ;; label = @3
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=40
          i32.lt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 3
          local.get 4
          i32.load offset=52
          local.get 4
          i32.load offset=8
          call $getBitmapPixel
          i32.const 255
          i32.and
          i32.const 0
          i32.const 255
          i32.and
          i32.ne
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=28
          local.get 4
          i32.load offset=48
          i32.lt_s
          local.set 3
        end
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 4
          i32.load offset=28
          i32.const 1
          i32.add
          i32.store offset=28
          local.get 4
          local.get 4
          i32.load offset=8
          i32.const 1
          i32.add
          i32.store offset=8
          br 1 (;@2;)
        end
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=40
          i32.eq
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=28
          local.get 4
          i32.load offset=48
          i32.ge_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 4
        f32.const 0x1p+22 (;=4.1943e+06;)
        f32.store offset=60
        br 1 (;@1;)
      end
      loop  ;; label = @2
        i32.const 0
        local.set 3
        block  ;; label = @3
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=40
          i32.lt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 3
          local.get 4
          i32.load offset=52
          local.get 4
          i32.load offset=8
          call $getBitmapPixel
          i32.const 24
          i32.shl
          i32.const 24
          i32.shr_s
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=32
          local.get 4
          i32.load offset=48
          i32.lt_s
          local.set 3
        end
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 4
          i32.load offset=32
          i32.const 1
          i32.add
          i32.store offset=32
          local.get 4
          local.get 4
          i32.load offset=8
          i32.const 1
          i32.add
          i32.store offset=8
          br 1 (;@2;)
        end
      end
      block  ;; label = @2
        local.get 4
        i32.load offset=32
        local.get 4
        i32.load offset=48
        i32.ge_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        f32.const 0x1p+22 (;=4.1943e+06;)
        f32.store offset=60
        br 1 (;@1;)
      end
      local.get 4
      local.get 4
      i32.load offset=16
      local.get 4
      i32.load offset=20
      i32.add
      local.get 4
      i32.load offset=24
      i32.add
      local.get 4
      i32.load offset=28
      i32.add
      local.get 4
      i32.load offset=32
      i32.add
      i32.store offset=4
      block  ;; label = @2
        local.get 4
        i32.load offset=4
        local.get 4
        i32.load offset=44
        i32.sub
        call $math_abs
        i32.const 5
        i32.mul
        local.get 4
        i32.load offset=44
        i32.const 1
        i32.shl
        i32.ge_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        f32.const 0x1p+22 (;=4.1943e+06;)
        f32.store offset=60
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 16
          i32.add
          call $foundPatternCross
          i32.const 24
          i32.shl
          i32.const 24
          i32.shr_s
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.const 16
          i32.add
          local.get 4
          i32.load offset=8
          call $centerFromEnd
          local.set 5
          br 1 (;@2;)
        end
        f32.const 0x1p+22 (;=4.1943e+06;)
        local.set 5
      end
      local.get 4
      local.get 5
      f32.store offset=60
    end
    local.get 4
    f32.load offset=60
    local.set 5
    local.get 4
    i32.const 64
    i32.add
    global.set 0
    local.get 5)
  (func $crossCheckHorizontal (type 11) (param i32 i32 i32 i32) (result f32)
    (local i32 f32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 0
    i32.store offset=56
    local.get 4
    local.get 1
    i32.store offset=52
    local.get 4
    local.get 2
    i32.store offset=48
    local.get 4
    local.get 3
    i32.store offset=44
    local.get 4
    i32.const 0
    i32.load offset=1028
    i32.store offset=40
    local.get 4
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load offset=12
        i32.const 5
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.const 16
        i32.add
        local.get 4
        i32.load offset=12
        i32.const 2
        i32.shl
        i32.add
        i32.const 0
        i32.store
        local.get 4
        local.get 4
        i32.load offset=12
        i32.const 1
        i32.add
        i32.store offset=12
        br 0 (;@2;)
      end
    end
    local.get 4
    local.get 4
    i32.load offset=56
    i32.store offset=8
    loop  ;; label = @1
      i32.const 0
      local.set 3
      block  ;; label = @2
        local.get 4
        i32.load offset=8
        i32.const 0
        i32.ge_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.load offset=8
        local.get 4
        i32.load offset=52
        call $getBitmapPixel
        i32.const 24
        i32.shl
        i32.const 24
        i32.shr_s
        i32.const 0
        i32.ne
        local.set 3
      end
      block  ;; label = @2
        local.get 3
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 4
        i32.load offset=24
        i32.const 1
        i32.add
        i32.store offset=24
        local.get 4
        local.get 4
        i32.load offset=8
        i32.const -1
        i32.add
        i32.store offset=8
        br 1 (;@1;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.load offset=8
        i32.const 0
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        f32.const 0x1p+22 (;=4.1943e+06;)
        f32.store offset=60
        br 1 (;@1;)
      end
      loop  ;; label = @2
        i32.const 0
        local.set 3
        block  ;; label = @3
          local.get 4
          i32.load offset=8
          i32.const 0
          i32.ge_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 3
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=52
          call $getBitmapPixel
          i32.const 255
          i32.and
          i32.const 0
          i32.const 255
          i32.and
          i32.ne
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=20
          local.get 4
          i32.load offset=48
          i32.le_s
          local.set 3
        end
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 4
          i32.load offset=20
          i32.const 1
          i32.add
          i32.store offset=20
          local.get 4
          local.get 4
          i32.load offset=8
          i32.const -1
          i32.add
          i32.store offset=8
          br 1 (;@2;)
        end
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.load offset=8
          i32.const 0
          i32.lt_s
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=20
          local.get 4
          i32.load offset=48
          i32.gt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 4
        f32.const 0x1p+22 (;=4.1943e+06;)
        f32.store offset=60
        br 1 (;@1;)
      end
      loop  ;; label = @2
        i32.const 0
        local.set 3
        block  ;; label = @3
          local.get 4
          i32.load offset=8
          i32.const 0
          i32.ge_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 3
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=52
          call $getBitmapPixel
          i32.const 24
          i32.shl
          i32.const 24
          i32.shr_s
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=16
          local.get 4
          i32.load offset=48
          i32.le_s
          local.set 3
        end
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 4
          i32.load offset=16
          i32.const 1
          i32.add
          i32.store offset=16
          local.get 4
          local.get 4
          i32.load offset=8
          i32.const -1
          i32.add
          i32.store offset=8
          br 1 (;@2;)
        end
      end
      block  ;; label = @2
        local.get 4
        i32.load offset=16
        local.get 4
        i32.load offset=48
        i32.gt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        f32.const 0x1p+22 (;=4.1943e+06;)
        f32.store offset=60
        br 1 (;@1;)
      end
      local.get 4
      local.get 4
      i32.load offset=56
      i32.const 1
      i32.add
      i32.store offset=8
      loop  ;; label = @2
        i32.const 0
        local.set 3
        block  ;; label = @3
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=40
          i32.lt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=52
          call $getBitmapPixel
          i32.const 24
          i32.shl
          i32.const 24
          i32.shr_s
          i32.const 0
          i32.ne
          local.set 3
        end
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 4
          i32.load offset=24
          i32.const 1
          i32.add
          i32.store offset=24
          local.get 4
          local.get 4
          i32.load offset=8
          i32.const 1
          i32.add
          i32.store offset=8
          br 1 (;@2;)
        end
      end
      block  ;; label = @2
        local.get 4
        i32.load offset=8
        local.get 4
        i32.load offset=40
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        f32.const 0x1p+22 (;=4.1943e+06;)
        f32.store offset=60
        br 1 (;@1;)
      end
      loop  ;; label = @2
        i32.const 0
        local.set 3
        block  ;; label = @3
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=40
          i32.lt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 3
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=52
          call $getBitmapPixel
          i32.const 255
          i32.and
          i32.const 0
          i32.const 255
          i32.and
          i32.ne
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=28
          local.get 4
          i32.load offset=48
          i32.lt_s
          local.set 3
        end
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 4
          i32.load offset=28
          i32.const 1
          i32.add
          i32.store offset=28
          local.get 4
          local.get 4
          i32.load offset=8
          i32.const 1
          i32.add
          i32.store offset=8
          br 1 (;@2;)
        end
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=40
          i32.eq
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=28
          local.get 4
          i32.load offset=48
          i32.ge_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 4
        f32.const 0x1p+22 (;=4.1943e+06;)
        f32.store offset=60
        br 1 (;@1;)
      end
      loop  ;; label = @2
        i32.const 0
        local.set 3
        block  ;; label = @3
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=40
          i32.lt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 3
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=52
          call $getBitmapPixel
          i32.const 24
          i32.shl
          i32.const 24
          i32.shr_s
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=32
          local.get 4
          i32.load offset=48
          i32.lt_s
          local.set 3
        end
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 4
          i32.load offset=32
          i32.const 1
          i32.add
          i32.store offset=32
          local.get 4
          local.get 4
          i32.load offset=8
          i32.const 1
          i32.add
          i32.store offset=8
          br 1 (;@2;)
        end
      end
      block  ;; label = @2
        local.get 4
        i32.load offset=32
        local.get 4
        i32.load offset=48
        i32.ge_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        f32.const 0x1p+22 (;=4.1943e+06;)
        f32.store offset=60
        br 1 (;@1;)
      end
      local.get 4
      local.get 4
      i32.load offset=16
      local.get 4
      i32.load offset=20
      i32.add
      local.get 4
      i32.load offset=24
      i32.add
      local.get 4
      i32.load offset=28
      i32.add
      local.get 4
      i32.load offset=32
      i32.add
      i32.store offset=4
      block  ;; label = @2
        local.get 4
        i32.load offset=4
        local.get 4
        i32.load offset=44
        i32.sub
        call $math_abs
        i32.const 5
        i32.mul
        local.get 4
        i32.load offset=44
        i32.ge_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        f32.const 0x1p+22 (;=4.1943e+06;)
        f32.store offset=60
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 16
          i32.add
          call $foundPatternCross
          i32.const 24
          i32.shl
          i32.const 24
          i32.shr_s
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.const 16
          i32.add
          local.get 4
          i32.load offset=8
          call $centerFromEnd
          local.set 5
          br 1 (;@2;)
        end
        f32.const 0x1p+22 (;=4.1943e+06;)
        local.set 5
      end
      local.get 4
      local.get 5
      f32.store offset=60
    end
    local.get 4
    f32.load offset=60
    local.set 5
    local.get 4
    i32.const 64
    i32.add
    global.set 0
    local.get 5)
  (func $addPossibleCenter (type 12) (param f32 f32 f32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    local.get 0
    f32.store offset=24
    local.get 4
    local.get 1
    f32.store offset=20
    local.get 4
    local.get 2
    f32.store offset=16
    local.get 4
    local.get 3
    i32.store offset=12
    i32.const 1088
    i32.const 0
    i32.load offset=1284
    i32.const 4
    i32.shl
    i32.add
    local.get 4
    f32.load offset=24
    f32.store
    i32.const 1088
    i32.const 0
    i32.load offset=1284
    i32.const 4
    i32.shl
    i32.add
    local.get 4
    f32.load offset=20
    f32.store offset=4
    i32.const 1088
    i32.const 0
    i32.load offset=1284
    i32.const 4
    i32.shl
    i32.add
    local.get 4
    f32.load offset=16
    f32.store offset=8
    i32.const 1088
    i32.const 0
    i32.load offset=1284
    i32.const 4
    i32.shl
    i32.add
    local.get 4
    i32.load offset=12
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1284
        i32.const 10
        i32.gt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.const 1088
        i32.const 0
        i32.load offset=1284
        i32.const 4
        i32.shl
        i32.add
        i32.store offset=28
        br 1 (;@1;)
      end
      i32.const 0
      i32.const 0
      i32.load offset=1284
      local.tee 3
      i32.const 1
      i32.add
      i32.store offset=1284
      local.get 4
      i32.const 1088
      local.get 3
      i32.const 4
      i32.shl
      i32.add
      i32.store offset=28
    end
    local.get 4
    i32.load offset=28)
  (func $sortPossibleCenters (type 13) (param f32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    f32.store offset=44
    local.get 1
    i32.const 0
    i32.store offset=20
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.load offset=20
        i32.const 0
        i32.load offset=1284
        i32.const 1
        i32.sub
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const 0
        i32.store offset=16
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i32.load offset=16
            i32.const 0
            i32.load offset=1284
            local.get 1
            i32.load offset=20
            i32.sub
            i32.const 1
            i32.sub
            i32.lt_u
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 1
            i32.const 1088
            local.get 1
            i32.load offset=16
            i32.const 4
            i32.shl
            i32.add
            f32.load offset=8
            local.get 1
            f32.load offset=44
            f32.sub
            call $math_fabs
            f32.store offset=12
            local.get 1
            i32.const 1088
            local.get 1
            i32.load offset=16
            i32.const 1
            i32.add
            i32.const 4
            i32.shl
            i32.add
            f32.load offset=8
            local.get 1
            f32.load offset=44
            f32.sub
            call $math_fabs
            f32.store offset=8
            block  ;; label = @5
              local.get 1
              f32.load offset=12
              local.get 1
              f32.load offset=8
              f32.gt
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.const 24
              i32.add
              local.tee 2
              i32.const 1088
              local.get 1
              i32.load offset=16
              i32.const 4
              i32.shl
              i32.add
              local.tee 3
              i64.load align=4
              i64.store align=4
              local.get 2
              i32.const 8
              i32.add
              local.get 3
              i32.const 8
              i32.add
              i64.load align=4
              i64.store align=4
              i32.const 1088
              local.get 1
              i32.load offset=16
              i32.const 4
              i32.shl
              i32.add
              local.tee 3
              i32.const 1088
              local.get 1
              i32.load offset=16
              i32.const 1
              i32.add
              i32.const 4
              i32.shl
              i32.add
              local.tee 4
              i64.load
              i64.store
              local.get 3
              i32.const 8
              i32.add
              local.get 4
              i32.const 8
              i32.add
              i64.load
              i64.store
              i32.const 1088
              local.get 1
              i32.load offset=16
              i32.const 1
              i32.add
              i32.const 4
              i32.shl
              i32.add
              local.tee 3
              local.get 2
              i64.load align=4
              i64.store align=4
              local.get 3
              i32.const 8
              i32.add
              local.get 2
              i32.const 8
              i32.add
              i64.load align=4
              i64.store align=4
            end
            local.get 1
            local.get 1
            i32.load offset=16
            i32.const 1
            i32.add
            i32.store offset=16
            br 0 (;@4;)
          end
        end
        local.get 1
        local.get 1
        i32.load offset=20
        i32.const 1
        i32.add
        i32.store offset=20
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.const 48
    i32.add
    global.set 0)
  (func $math_max (type 0) (param i32 i32) (result i32)
    (local i32 f32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=12
        f32.convert_i32_s
        local.get 2
        i32.load offset=8
        f32.convert_i32_s
        f32.max
        local.tee 3
        f32.abs
        f32.const 0x1p+31 (;=2.14748e+09;)
        f32.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.trunc_f32_s
        local.set 2
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 2
    end
    local.get 2)
  (func $sortCenterComparator (type 13) (param f32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    f32.store offset=44
    local.get 1
    i32.const 0
    i32.store offset=20
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.load offset=20
        i32.const 0
        i32.load offset=1284
        i32.const 1
        i32.sub
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const 0
        i32.store offset=16
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i32.load offset=16
            i32.const 0
            i32.load offset=1284
            local.get 1
            i32.load offset=20
            i32.sub
            i32.const 1
            i32.sub
            i32.lt_u
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 1
            i32.const 0
            i32.store8 offset=15
            block  ;; label = @5
              block  ;; label = @6
                i32.const 1088
                local.get 1
                i32.load offset=16
                i32.const 4
                i32.shl
                i32.add
                i32.load offset=12
                i32.const 1088
                local.get 1
                i32.load offset=16
                i32.const 1
                i32.add
                i32.const 4
                i32.shl
                i32.add
                i32.load offset=12
                i32.ne
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 1
                i32.const 1088
                local.get 1
                i32.load offset=16
                i32.const 4
                i32.shl
                i32.add
                i32.load offset=12
                i32.const 1088
                local.get 1
                i32.load offset=16
                i32.const 1
                i32.add
                i32.const 4
                i32.shl
                i32.add
                i32.load offset=12
                i32.gt_u
                i32.const 1
                i32.and
                i32.store8 offset=15
                br 1 (;@5;)
              end
              local.get 1
              i32.const 1088
              local.get 1
              i32.load offset=16
              i32.const 4
              i32.shl
              i32.add
              f32.load offset=8
              local.get 1
              f32.load offset=44
              f32.sub
              call $math_fabs
              f32.store offset=8
              local.get 1
              i32.const 1088
              local.get 1
              i32.load offset=16
              i32.const 1
              i32.add
              i32.const 4
              i32.shl
              i32.add
              f32.load offset=8
              local.get 1
              f32.load offset=44
              f32.sub
              call $math_fabs
              f32.store offset=4
              local.get 1
              local.get 1
              f32.load offset=8
              local.get 1
              f32.load offset=4
              f32.lt
              i32.const 1
              i32.and
              i32.store8 offset=15
            end
            block  ;; label = @5
              local.get 1
              i32.load8_u offset=15
              i32.const 255
              i32.and
              i32.const 0
              i32.const 255
              i32.and
              i32.ne
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.const 24
              i32.add
              local.tee 2
              i32.const 1088
              local.get 1
              i32.load offset=16
              i32.const 4
              i32.shl
              i32.add
              local.tee 3
              i64.load align=4
              i64.store align=4
              local.get 2
              i32.const 8
              i32.add
              local.get 3
              i32.const 8
              i32.add
              i64.load align=4
              i64.store align=4
              i32.const 1088
              local.get 1
              i32.load offset=16
              i32.const 4
              i32.shl
              i32.add
              local.tee 3
              i32.const 1088
              local.get 1
              i32.load offset=16
              i32.const 1
              i32.add
              i32.const 4
              i32.shl
              i32.add
              local.tee 4
              i64.load
              i64.store
              local.get 3
              i32.const 8
              i32.add
              local.get 4
              i32.const 8
              i32.add
              i64.load
              i64.store
              i32.const 1088
              local.get 1
              i32.load offset=16
              i32.const 1
              i32.add
              i32.const 4
              i32.shl
              i32.add
              local.tee 3
              local.get 2
              i64.load align=4
              i64.store align=4
              local.get 3
              i32.const 8
              i32.add
              local.get 2
              i32.const 8
              i32.add
              i64.load align=4
              i64.store align=4
            end
            local.get 1
            local.get 1
            i32.load offset=16
            i32.const 1
            i32.add
            i32.store offset=16
            br 0 (;@4;)
          end
        end
        local.get 1
        local.get 1
        i32.load offset=20
        i32.const 1
        i32.add
        i32.store offset=20
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.const 48
    i32.add
    global.set 0)
  (func $math_abs (type 5) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    i32.const 0
    local.get 1
    i32.load offset=12
    local.tee 0
    i32.sub
    local.get 0
    local.get 0
    i32.const 0
    i32.lt_s
    i32.const 1
    i32.and
    select)
  (func $math_min (type 0) (param i32 i32) (result i32)
    (local i32 f32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=12
        f32.convert_i32_s
        local.get 2
        i32.load offset=8
        f32.convert_i32_s
        f32.min
        local.tee 3
        f32.abs
        f32.const 0x1p+31 (;=2.14748e+09;)
        f32.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.trunc_f32_s
        local.set 2
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 2
    end
    local.get 2)
  (func $math_round (type 14) (param f32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    f32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        f32.load offset=12
        f32.const 0x1p-1 (;=0.5;)
        f32.add
        local.tee 0
        f32.abs
        f32.const 0x1p+31 (;=2.14748e+09;)
        f32.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.trunc_f32_s
        local.set 1
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 1
    end
    local.get 1)
  (func $math_distance (type 15) (param f32 f32 f32 f32) (result f32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    local.get 0
    f32.store offset=28
    local.get 4
    local.get 1
    f32.store offset=24
    local.get 4
    local.get 2
    f32.store offset=20
    local.get 4
    local.get 3
    f32.store offset=16
    local.get 4
    local.get 4
    f32.load offset=28
    local.get 4
    f32.load offset=20
    f32.sub
    f32.store offset=12
    local.get 4
    local.get 4
    f32.load offset=24
    local.get 4
    f32.load offset=16
    f32.sub
    f32.store offset=8
    local.get 4
    f32.load offset=12
    local.get 4
    f32.load offset=12
    f32.mul
    local.get 4
    f32.load offset=8
    local.get 4
    f32.load offset=8
    f32.mul
    f32.add
    f32.sqrt)
  (func $calculateModuleSize (type 16) (param i32 i32 i32) (result f32)
    (local i32 f32 f32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 2
    i32.store offset=4
    local.get 3
    i32.load offset=12
    local.get 3
    i32.load offset=8
    call $calculateModuleSizeOneWay
    local.set 4
    local.get 3
    i32.load offset=12
    local.get 3
    i32.load offset=4
    call $calculateModuleSizeOneWay
    local.set 5
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    local.get 4
    local.get 5
    f32.add
    f32.const 0x1p+1 (;=2;)
    f32.div)
  (func $computeDimension (type 17) (param i32 i32 i32 f32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 0
    i32.store offset=28
    local.get 4
    local.get 1
    i32.store offset=24
    local.get 4
    local.get 2
    i32.store offset=20
    local.get 4
    local.get 3
    f32.store offset=16
    local.get 4
    local.get 4
    i32.load offset=28
    local.get 4
    i32.load offset=24
    call $FinderPattern_distance
    local.get 4
    f32.load offset=16
    f32.div
    call $math_round
    i32.store offset=12
    local.get 4
    local.get 4
    i32.load offset=28
    local.get 4
    i32.load offset=20
    call $FinderPattern_distance
    local.get 4
    f32.load offset=16
    f32.div
    call $math_round
    i32.store offset=8
    local.get 4
    local.get 4
    i32.load offset=12
    local.get 4
    i32.load offset=8
    i32.add
    i32.const 1
    i32.shr_s
    i32.const 7
    i32.add
    i32.store offset=4
    block  ;; label = @1
      local.get 4
      i32.load offset=4
      i32.const 3
      i32.and
      local.tee 2
      i32.const 3
      i32.gt_u
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            br_table 0 (;@4;) 3 (;@1;) 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          local.get 4
          local.get 4
          i32.load offset=4
          i32.const 1
          i32.add
          i32.store offset=4
          br 2 (;@1;)
        end
        local.get 4
        local.get 4
        i32.load offset=4
        i32.const -1
        i32.add
        i32.store offset=4
        br 1 (;@1;)
      end
    end
    local.get 4
    i32.load offset=4
    local.set 2
    local.get 4
    i32.const 32
    i32.add
    global.set 0
    local.get 2)
  (func $getProvisionalVersionForDimension (type 5) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=8
        i32.const 4
        i32.rem_s
        i32.const 1
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 4194304
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 1
      local.get 1
      i32.load offset=8
      i32.const 17
      i32.sub
      i32.const 2
      i32.shr_s
      call $getVersionForNumber
      i32.store offset=12
    end
    local.get 1
    i32.load offset=12
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func $getDimensionForVersion (type 5) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    i32.load
    i32.const 2
    i32.shl
    i32.const 17
    i32.add)
  (func $findAlignmentInRegion (type 18) (param f32 i32 i32 f32) (result i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 0
    f32.store offset=44
    local.get 4
    local.get 1
    i32.store offset=40
    local.get 4
    local.get 2
    i32.store offset=36
    local.get 4
    local.get 3
    f32.store offset=32
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        f32.load offset=32
        local.get 4
        f32.load offset=44
        f32.mul
        local.tee 3
        f32.abs
        f32.const 0x1p+31 (;=2.14748e+09;)
        f32.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.trunc_f32_s
        local.set 2
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 2
    end
    local.get 4
    local.get 2
    i32.store offset=28
    local.get 4
    i32.const 0
    local.get 4
    i32.load offset=40
    local.get 4
    i32.load offset=28
    i32.sub
    call $math_max
    i32.store offset=24
    local.get 4
    i32.const 0
    i32.load offset=1028
    i32.const 1
    i32.sub
    local.get 4
    i32.load offset=40
    local.get 4
    i32.load offset=28
    i32.add
    call $math_min
    i32.store offset=20
    block  ;; label = @1
      local.get 4
      i32.load offset=20
      local.get 4
      i32.load offset=24
      i32.sub
      f32.convert_i32_s
      local.get 4
      f32.load offset=44
      f32.const 0x1.8p+1 (;=3;)
      f32.mul
      f32.lt
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
    end
    local.get 4
    i32.const 0
    local.get 4
    i32.load offset=36
    local.get 4
    i32.load offset=28
    i32.sub
    call $math_max
    i32.store offset=16
    local.get 4
    i32.const 0
    i32.load offset=1032
    i32.const 1
    i32.sub
    local.get 4
    i32.load offset=36
    local.get 4
    i32.load offset=28
    i32.add
    call $math_min
    i32.store offset=12
    block  ;; label = @1
      local.get 4
      i32.load offset=12
      local.get 4
      i32.load offset=16
      i32.sub
      f32.convert_i32_s
      local.get 4
      f32.load offset=44
      f32.const 0x1.8p+1 (;=3;)
      f32.mul
      f32.lt
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
    end
    i32.const 0
    local.get 4
    i32.load offset=24
    i32.store offset=1344
    i32.const 0
    local.get 4
    i32.load offset=16
    i32.store offset=1352
    i32.const 0
    local.get 4
    i32.load offset=20
    local.get 4
    i32.load offset=24
    i32.sub
    i32.store offset=1348
    i32.const 0
    local.get 4
    i32.load offset=12
    local.get 4
    i32.load offset=16
    i32.sub
    i32.store offset=1356
    i32.const 0
    local.get 4
    f32.load offset=44
    f32.store offset=1288
    call $AlignmentPatternFinder_find
    local.set 2
    local.get 4
    i32.const 48
    i32.add
    global.set 0
    local.get 2)
  (func $Detector_createTransform (type 19) (param i32 i32 i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 6
    global.set 0
    local.get 6
    local.get 1
    i32.store offset=44
    local.get 6
    local.get 2
    i32.store offset=40
    local.get 6
    local.get 3
    i32.store offset=36
    local.get 6
    local.get 4
    i32.store offset=32
    local.get 6
    local.get 5
    i32.store offset=28
    local.get 6
    local.get 6
    i32.load offset=28
    f32.convert_i32_s
    f32.const 0x1.cp+1 (;=3.5;)
    f32.sub
    f32.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.load offset=32
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 6
        local.get 6
        i32.load offset=32
        f32.load
        f32.store offset=20
        local.get 6
        local.get 6
        i32.load offset=32
        f32.load offset=4
        f32.store offset=16
        local.get 6
        local.get 6
        f32.load offset=24
        f32.const 0x1.8p+1 (;=3;)
        f32.sub
        f32.store offset=12
        local.get 6
        local.get 6
        f32.load offset=12
        f32.store offset=8
        br 1 (;@1;)
      end
      local.get 6
      local.get 6
      i32.load offset=40
      f32.load
      local.get 6
      i32.load offset=44
      f32.load
      f32.sub
      local.get 6
      i32.load offset=36
      f32.load
      f32.add
      f32.store offset=20
      local.get 6
      local.get 6
      i32.load offset=40
      f32.load offset=4
      local.get 6
      i32.load offset=44
      f32.load offset=4
      f32.sub
      local.get 6
      i32.load offset=36
      f32.load offset=4
      f32.add
      f32.store offset=16
      local.get 6
      local.get 6
      f32.load offset=24
      f32.store offset=12
      local.get 6
      local.get 6
      f32.load offset=24
      f32.store offset=8
    end
    local.get 0
    f32.const 0x1.cp+1 (;=3.5;)
    f32.const 0x1.cp+1 (;=3.5;)
    local.get 6
    f32.load offset=24
    f32.const 0x1.cp+1 (;=3.5;)
    local.get 6
    f32.load offset=12
    local.get 6
    f32.load offset=8
    f32.const 0x1.cp+1 (;=3.5;)
    local.get 6
    f32.load offset=24
    local.get 6
    i32.load offset=44
    f32.load
    local.get 6
    i32.load offset=44
    f32.load offset=4
    local.get 6
    i32.load offset=40
    f32.load
    local.get 6
    i32.load offset=40
    f32.load offset=4
    local.get 6
    f32.load offset=20
    local.get 6
    f32.load offset=16
    local.get 6
    i32.load offset=36
    f32.load
    local.get 6
    i32.load offset=36
    f32.load offset=4
    call $PerspectiveTransform_quadrilateralToQuadrilateral
    local.get 6
    i32.const 48
    i32.add
    global.set 0)
  (func $GridSampler_sampleGrid (type 20) (param i32 i32 i32)
    (local i32 f32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=76
    local.get 3
    local.get 1
    i32.store offset=72
    local.get 3
    i32.load offset=76
    local.get 3
    i32.load offset=72
    call $new_BitMatrix
    local.get 3
    local.get 3
    i32.load offset=72
    i32.const 1
    i32.shl
    i32.store offset=68
    local.get 3
    local.get 3
    i32.load offset=68
    i32.const 2
    i32.shl
    call $Memory_allocate
    i32.store offset=64
    local.get 3
    i32.const 0
    i32.store offset=60
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.load offset=60
        local.get 3
        i32.load offset=72
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        local.get 3
        i32.load offset=60
        f32.convert_i32_s
        f32.const 0x1p-1 (;=0.5;)
        f32.add
        f32.store offset=56
        local.get 3
        i32.const 0
        i32.store offset=52
        block  ;; label = @3
          loop  ;; label = @4
            local.get 3
            i32.load offset=52
            local.get 3
            i32.load offset=68
            i32.lt_s
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 3
            i32.load offset=64
            local.get 3
            i32.load offset=52
            i32.const 2
            i32.shl
            i32.add
            local.get 3
            i32.load offset=52
            i32.const 1
            i32.shr_s
            f32.convert_i32_s
            f32.const 0x1p-1 (;=0.5;)
            f32.add
            f32.store
            local.get 3
            i32.load offset=64
            local.get 3
            i32.load offset=52
            i32.const 1
            i32.add
            i32.const 2
            i32.shl
            i32.add
            local.get 3
            f32.load offset=56
            f32.store
            local.get 3
            local.get 3
            i32.load offset=52
            i32.const 2
            i32.add
            i32.store offset=52
            br 0 (;@4;)
          end
        end
        local.get 3
        i32.load offset=64
        local.set 0
        local.get 3
        i32.load offset=68
        local.set 1
        local.get 3
        i32.const 8
        i32.add
        i32.const 32
        i32.add
        local.get 2
        i32.const 32
        i32.add
        i32.load
        i32.store
        local.get 3
        i32.const 8
        i32.add
        i32.const 24
        i32.add
        local.get 2
        i32.const 24
        i32.add
        i64.load align=4
        i64.store
        local.get 3
        i32.const 8
        i32.add
        i32.const 16
        i32.add
        local.get 2
        i32.const 16
        i32.add
        i64.load align=4
        i64.store
        local.get 3
        i32.const 8
        i32.add
        i32.const 8
        i32.add
        local.get 2
        i32.const 8
        i32.add
        i64.load align=4
        i64.store
        local.get 3
        local.get 2
        i64.load align=4
        i64.store offset=8
        local.get 3
        i32.const 8
        i32.add
        local.get 0
        local.get 1
        call $PerspectiveTransform_transformPoints
        local.get 3
        i32.load offset=76
        i32.load
        local.get 3
        i32.load offset=76
        i32.load offset=4
        local.get 3
        i32.load offset=64
        local.get 3
        i32.load offset=68
        call $GridSampler_checkAndNudgePoints
        local.get 3
        i32.const 0
        i32.store offset=48
        block  ;; label = @3
          loop  ;; label = @4
            local.get 3
            i32.load offset=48
            local.get 3
            i32.load offset=68
            i32.lt_s
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load offset=64
                local.get 3
                i32.load offset=48
                i32.const 2
                i32.shl
                i32.add
                f32.load
                local.tee 4
                f32.abs
                f32.const 0x1p+31 (;=2.14748e+09;)
                f32.lt
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i32.trunc_f32_s
                local.set 0
                br 1 (;@5;)
              end
              i32.const -2147483648
              local.set 0
            end
            local.get 0
            i32.const 2
            i32.shl
            local.set 1
            i32.const 0
            i32.load offset=1028
            local.set 5
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load offset=64
                local.get 3
                i32.load offset=48
                i32.const 1
                i32.add
                i32.const 2
                i32.shl
                i32.add
                f32.load
                local.tee 4
                f32.abs
                f32.const 0x1p+31 (;=2.14748e+09;)
                f32.lt
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i32.trunc_f32_s
                local.set 0
                br 1 (;@5;)
              end
              i32.const -2147483648
              local.set 0
            end
            block  ;; label = @5
              local.get 1
              local.get 5
              local.get 0
              i32.mul
              i32.const 2
              i32.shl
              i32.add
              i32.const 0
              i32.load offset=1036
              i32.gt_u
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load offset=64
                local.get 3
                i32.load offset=48
                i32.const 2
                i32.shl
                i32.add
                f32.load
                local.tee 4
                f32.abs
                f32.const 0x1p+31 (;=2.14748e+09;)
                f32.lt
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i32.trunc_f32_s
                local.set 0
                br 1 (;@5;)
              end
              i32.const -2147483648
              local.set 0
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load offset=64
                local.get 3
                i32.load offset=48
                i32.const 1
                i32.add
                i32.const 2
                i32.shl
                i32.add
                f32.load
                local.tee 4
                f32.abs
                f32.const 0x1p+31 (;=2.14748e+09;)
                f32.lt
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i32.trunc_f32_s
                local.set 1
                br 1 (;@5;)
              end
              i32.const -2147483648
              local.set 1
            end
            block  ;; label = @5
              local.get 0
              local.get 1
              call $getBitmapPixel
              i32.const 255
              i32.and
              i32.const 0
              i32.const 255
              i32.and
              i32.ne
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=76
              local.get 3
              i32.load offset=48
              i32.const 1
              i32.shr_s
              local.get 3
              i32.load offset=60
              call $BitMatrix_set
            end
            local.get 3
            local.get 3
            i32.load offset=48
            i32.const 2
            i32.add
            i32.store offset=48
            br 0 (;@4;)
          end
        end
        local.get 3
        local.get 3
        i32.load offset=60
        i32.const 1
        i32.add
        i32.store offset=60
        br 0 (;@2;)
      end
    end
    local.get 3
    i32.load offset=68
    i32.const 2
    i32.shl
    call $Memory_delete
    local.get 3
    i32.const 80
    i32.add
    global.set 0)
  (func $calculateModuleSizeOneWay (type 1) (param i32 i32) (result f32)
    (local i32 f32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.store offset=24
    local.get 2
    local.get 1
    i32.store offset=20
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=24
        f32.load
        local.tee 3
        f32.abs
        f32.const 0x1p+31 (;=2.14748e+09;)
        f32.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.trunc_f32_s
        local.set 1
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=24
        f32.load offset=4
        local.tee 3
        f32.abs
        f32.const 0x1p+31 (;=2.14748e+09;)
        f32.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.trunc_f32_s
        local.set 0
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 0
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=20
        f32.load
        local.tee 3
        f32.abs
        f32.const 0x1p+31 (;=2.14748e+09;)
        f32.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.trunc_f32_s
        local.set 4
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 4
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=20
        f32.load offset=4
        local.tee 3
        f32.abs
        f32.const 0x1p+31 (;=2.14748e+09;)
        f32.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.trunc_f32_s
        local.set 5
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 5
    end
    local.get 2
    local.get 1
    local.get 0
    local.get 4
    local.get 5
    call $sizeOfBlackWhiteBlackRunBothWays
    f32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=20
        f32.load
        local.tee 3
        f32.abs
        f32.const 0x1p+31 (;=2.14748e+09;)
        f32.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.trunc_f32_s
        local.set 1
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=20
        f32.load offset=4
        local.tee 3
        f32.abs
        f32.const 0x1p+31 (;=2.14748e+09;)
        f32.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.trunc_f32_s
        local.set 0
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 0
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=24
        f32.load
        local.tee 3
        f32.abs
        f32.const 0x1p+31 (;=2.14748e+09;)
        f32.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.trunc_f32_s
        local.set 4
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 4
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=24
        f32.load offset=4
        local.tee 3
        f32.abs
        f32.const 0x1p+31 (;=2.14748e+09;)
        f32.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.trunc_f32_s
        local.set 5
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 5
    end
    local.get 2
    local.get 1
    local.get 0
    local.get 4
    local.get 5
    call $sizeOfBlackWhiteBlackRunBothWays
    f32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        f32.load offset=16
        f32.const 0x1p+22 (;=4.1943e+06;)
        f32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 2
        f32.load offset=12
        f32.store offset=28
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 2
        f32.load offset=12
        f32.const 0x1p+22 (;=4.1943e+06;)
        f32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 2
        f32.load offset=16
        f32.store offset=28
        br 1 (;@1;)
      end
      local.get 2
      local.get 2
      f32.load offset=16
      local.get 2
      f32.load offset=12
      f32.add
      f32.const 0x1.cp+3 (;=14;)
      f32.div
      f32.store offset=28
    end
    local.get 2
    f32.load offset=28
    local.set 3
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 3)
  (func $AlignmentPatternFinder_find (type 6) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    i32.const 0
    i32.store offset=1292
    local.get 0
    i32.const 0
    i32.load offset=1344
    i32.const 0
    i32.load offset=1348
    i32.add
    i32.store offset=56
    local.get 0
    i32.const 0
    i32.load offset=1352
    i32.const 0
    i32.load offset=1356
    i32.const 1
    i32.shr_s
    i32.add
    i32.store offset=52
    local.get 0
    i32.const 40
    i32.add
    local.tee 1
    i64.const 0
    i64.store align=4
    local.get 1
    i32.const 8
    i32.add
    i32.const 0
    i32.store
    local.get 0
    i32.const 0
    i32.store offset=36
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load offset=36
          i32.const 0
          i32.load offset=1356
          i32.lt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=52
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=36
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              local.get 0
              i32.load offset=36
              i32.const 1
              i32.add
              i32.const 1
              i32.shr_s
              local.set 2
              br 1 (;@4;)
            end
            i32.const 0
            local.get 0
            i32.load offset=36
            i32.const 1
            i32.add
            i32.const 1
            i32.shr_s
            i32.sub
            local.set 2
          end
          local.get 0
          local.get 1
          local.get 2
          i32.add
          i32.store offset=32
          local.get 0
          i32.const 0
          i32.store offset=40
          local.get 0
          i32.const 0
          i32.store offset=44
          local.get 0
          i32.const 0
          i32.store offset=48
          local.get 0
          i32.const 0
          i32.load offset=1344
          i32.store offset=28
          loop  ;; label = @4
            i32.const 0
            local.set 1
            block  ;; label = @5
              local.get 0
              i32.load offset=28
              local.get 0
              i32.load offset=56
              i32.lt_s
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              i32.load offset=28
              local.get 0
              i32.load offset=32
              call $getBitmapPixel
              i32.const 255
              i32.and
              i32.const 0
              i32.const 255
              i32.and
              i32.ne
              i32.const -1
              i32.xor
              local.set 1
            end
            block  ;; label = @5
              local.get 1
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              local.get 0
              i32.load offset=28
              i32.const 1
              i32.add
              i32.store offset=28
              br 1 (;@4;)
            end
          end
          local.get 0
          i32.const 0
          i32.store offset=24
          block  ;; label = @4
            loop  ;; label = @5
              local.get 0
              i32.load offset=28
              local.get 0
              i32.load offset=56
              i32.lt_s
              i32.const 1
              i32.and
              i32.eqz
              br_if 1 (;@4;)
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.load offset=28
                  local.get 0
                  i32.load offset=32
                  call $getBitmapPixel
                  i32.const 255
                  i32.and
                  i32.const 0
                  i32.const 255
                  i32.and
                  i32.ne
                  i32.const 1
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load offset=24
                      i32.const 1
                      i32.eq
                      i32.const 1
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 0
                      i32.const 40
                      i32.add
                      local.get 0
                      i32.load offset=24
                      i32.const 2
                      i32.shl
                      i32.add
                      local.tee 1
                      local.get 1
                      i32.load
                      i32.const 1
                      i32.add
                      i32.store
                      br 1 (;@8;)
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        i32.load offset=24
                        i32.const 2
                        i32.eq
                        i32.const 1
                        i32.and
                        i32.eqz
                        br_if 0 (;@10;)
                        block  ;; label = @11
                          local.get 0
                          i32.const 40
                          i32.add
                          call $AlignmentPatternFinder_foundPatternCross
                          i32.const 255
                          i32.and
                          i32.const 0
                          i32.const 255
                          i32.and
                          i32.ne
                          i32.const 1
                          i32.and
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 0
                          local.get 0
                          i32.const 40
                          i32.add
                          local.get 0
                          i32.load offset=32
                          local.get 0
                          i32.load offset=28
                          call $AlignmentPatternFinder_handlePossibleCenter
                          i32.store offset=20
                          block  ;; label = @12
                            local.get 0
                            i32.load offset=20
                            i32.const 0
                            i32.ne
                            i32.const 1
                            i32.and
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 0
                            local.get 0
                            i32.load offset=20
                            i32.store offset=60
                            br 11 (;@1;)
                          end
                        end
                        local.get 0
                        local.get 0
                        i32.load offset=48
                        i32.store offset=40
                        local.get 0
                        i32.const 1
                        i32.store offset=44
                        local.get 0
                        i32.const 0
                        i32.store offset=48
                        local.get 0
                        i32.const 1
                        i32.store offset=24
                        br 1 (;@9;)
                      end
                      local.get 0
                      local.get 0
                      i32.load offset=24
                      i32.const 1
                      i32.add
                      local.tee 1
                      i32.store offset=24
                      local.get 0
                      i32.const 40
                      i32.add
                      local.get 1
                      i32.const 2
                      i32.shl
                      i32.add
                      local.tee 1
                      local.get 1
                      i32.load
                      i32.const 1
                      i32.add
                      i32.store
                    end
                  end
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  local.get 0
                  i32.load offset=24
                  i32.const 1
                  i32.eq
                  i32.const 1
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  local.get 0
                  i32.load offset=24
                  i32.const 1
                  i32.add
                  i32.store offset=24
                end
                local.get 0
                i32.const 40
                i32.add
                local.get 0
                i32.load offset=24
                i32.const 2
                i32.shl
                i32.add
                local.tee 1
                local.get 1
                i32.load
                i32.const 1
                i32.add
                i32.store
              end
              local.get 0
              local.get 0
              i32.load offset=28
              i32.const 1
              i32.add
              i32.store offset=28
              br 0 (;@5;)
            end
          end
          block  ;; label = @4
            local.get 0
            i32.const 40
            i32.add
            call $AlignmentPatternFinder_foundPatternCross
            i32.const 255
            i32.and
            i32.const 0
            i32.const 255
            i32.and
            i32.ne
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 0
            i32.const 40
            i32.add
            local.get 0
            i32.load offset=32
            local.get 0
            i32.load offset=56
            call $AlignmentPatternFinder_handlePossibleCenter
            i32.store offset=16
            block  ;; label = @5
              local.get 0
              i32.load offset=16
              i32.const 0
              i32.ne
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              local.get 0
              i32.load offset=16
              i32.store offset=60
              br 4 (;@1;)
            end
          end
          local.get 0
          local.get 0
          i32.load offset=36
          i32.const 1
          i32.add
          i32.store offset=36
          br 0 (;@3;)
        end
      end
      block  ;; label = @2
        i32.const 0
        i32.load offset=1292
        i32.const 0
        i32.gt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 1296
        i32.store offset=12
        local.get 0
        local.get 0
        i32.load offset=12
        i32.store offset=60
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store offset=60
    end
    local.get 0
    i32.load offset=60
    local.set 1
    local.get 0
    i32.const 64
    i32.add
    global.set 0
    local.get 1)
  (func $PerspectiveTransform_quadrilateralToQuadrilateral (type 21) (param i32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32)
    (local i32)
    global.get 0
    i32.const 224
    i32.sub
    local.tee 17
    global.set 0
    local.get 17
    local.get 1
    f32.store offset=220
    local.get 17
    local.get 2
    f32.store offset=216
    local.get 17
    local.get 3
    f32.store offset=212
    local.get 17
    local.get 4
    f32.store offset=208
    local.get 17
    local.get 5
    f32.store offset=204
    local.get 17
    local.get 6
    f32.store offset=200
    local.get 17
    local.get 7
    f32.store offset=196
    local.get 17
    local.get 8
    f32.store offset=192
    local.get 17
    local.get 9
    f32.store offset=188
    local.get 17
    local.get 10
    f32.store offset=184
    local.get 17
    local.get 11
    f32.store offset=180
    local.get 17
    local.get 12
    f32.store offset=176
    local.get 17
    local.get 13
    f32.store offset=172
    local.get 17
    local.get 14
    f32.store offset=168
    local.get 17
    local.get 15
    f32.store offset=164
    local.get 17
    local.get 16
    f32.store offset=160
    local.get 17
    i32.const 120
    i32.add
    local.get 17
    f32.load offset=220
    local.get 17
    f32.load offset=216
    local.get 17
    f32.load offset=212
    local.get 17
    f32.load offset=208
    local.get 17
    f32.load offset=204
    local.get 17
    f32.load offset=200
    local.get 17
    f32.load offset=196
    local.get 17
    f32.load offset=192
    call $PerspectiveTransform_quadrilateralToSquare
    local.get 17
    i32.const 80
    i32.add
    local.get 17
    f32.load offset=188
    local.get 17
    f32.load offset=184
    local.get 17
    f32.load offset=180
    local.get 17
    f32.load offset=176
    local.get 17
    f32.load offset=172
    local.get 17
    f32.load offset=168
    local.get 17
    f32.load offset=164
    local.get 17
    f32.load offset=160
    call $PerspectiveTransform_squareToQuadrilateral
    local.get 17
    i32.const 40
    i32.add
    i32.const 32
    i32.add
    local.get 17
    i32.const 80
    i32.add
    i32.const 32
    i32.add
    i32.load
    i32.store
    local.get 17
    i32.const 40
    i32.add
    i32.const 24
    i32.add
    local.get 17
    i32.const 80
    i32.add
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get 17
    i32.const 40
    i32.add
    i32.const 16
    i32.add
    local.get 17
    i32.const 80
    i32.add
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 17
    i32.const 40
    i32.add
    i32.const 8
    i32.add
    local.get 17
    i32.const 80
    i32.add
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 17
    local.get 17
    i64.load offset=80
    i64.store offset=40
    local.get 17
    i32.const 32
    i32.add
    local.get 17
    i32.const 120
    i32.add
    i32.const 32
    i32.add
    i32.load
    i32.store
    local.get 17
    i32.const 24
    i32.add
    local.get 17
    i32.const 120
    i32.add
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get 17
    i32.const 16
    i32.add
    local.get 17
    i32.const 120
    i32.add
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 17
    i32.const 8
    i32.add
    local.get 17
    i32.const 120
    i32.add
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 17
    local.get 17
    i64.load offset=120
    i64.store
    local.get 0
    local.get 17
    i32.const 40
    i32.add
    local.get 17
    call $PerspectiveTransform_times
    local.get 17
    i32.const 224
    i32.add
    global.set 0)
  (func $sizeOfBlackWhiteBlackRunBothWays (type 11) (param i32 i32 i32 i32) (result f32)
    (local i32 f32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 0
    i32.store offset=28
    local.get 4
    local.get 1
    i32.store offset=24
    local.get 4
    local.get 2
    i32.store offset=20
    local.get 4
    local.get 3
    i32.store offset=16
    local.get 4
    local.get 4
    i32.load offset=28
    local.get 4
    i32.load offset=24
    local.get 4
    i32.load offset=20
    local.get 4
    i32.load offset=16
    call $sizeOfBlackWhiteBlackRun
    f32.store offset=12
    local.get 4
    f32.const 0x1p+0 (;=1;)
    f32.store offset=8
    local.get 4
    local.get 4
    i32.load offset=28
    local.get 4
    i32.load offset=20
    local.get 4
    i32.load offset=28
    i32.sub
    i32.sub
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.load offset=4
        i32.const 0
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 4
        i32.load offset=28
        f32.convert_i32_s
        local.get 4
        i32.load offset=28
        local.get 4
        i32.load offset=4
        i32.sub
        f32.convert_i32_s
        f32.div
        f32.store offset=8
        local.get 4
        i32.const 0
        i32.store offset=4
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        i32.load offset=4
        i32.const 0
        i32.load offset=1028
        i32.ge_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 4
        i32.load offset=28
        i32.const -1
        i32.xor
        i32.const 0
        i32.load offset=1028
        i32.add
        f32.convert_i32_u
        local.get 4
        i32.load offset=4
        local.get 4
        i32.load offset=28
        i32.sub
        f32.convert_i32_s
        f32.div
        f32.store offset=8
        local.get 4
        i32.const 0
        i32.load offset=1028
        i32.const 1
        i32.sub
        i32.store offset=4
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.load offset=24
        f32.convert_i32_s
        local.get 4
        i32.load offset=16
        local.get 4
        i32.load offset=24
        i32.sub
        f32.convert_i32_s
        local.get 4
        f32.load offset=8
        f32.mul
        f32.sub
        local.tee 5
        f32.abs
        f32.const 0x1p+31 (;=2.14748e+09;)
        f32.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.trunc_f32_s
        local.set 3
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 3
    end
    local.get 4
    local.get 3
    i32.store
    local.get 4
    f32.const 0x1p+0 (;=1;)
    f32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.load
        i32.const 0
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 4
        i32.load offset=24
        f32.convert_i32_s
        local.get 4
        i32.load offset=24
        local.get 4
        i32.load
        i32.sub
        f32.convert_i32_s
        f32.div
        f32.store offset=8
        local.get 4
        i32.const 0
        i32.store
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        i32.load
        i32.const 0
        i32.load offset=1032
        i32.ge_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 4
        i32.load offset=24
        i32.const -1
        i32.xor
        i32.const 0
        i32.load offset=1032
        i32.add
        f32.convert_i32_u
        local.get 4
        i32.load
        local.get 4
        i32.load offset=24
        i32.sub
        f32.convert_i32_s
        f32.div
        f32.store offset=8
        local.get 4
        i32.const 0
        i32.load offset=1032
        i32.const 1
        i32.sub
        i32.store
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.load offset=28
        f32.convert_i32_s
        local.get 4
        i32.load offset=4
        local.get 4
        i32.load offset=28
        i32.sub
        f32.convert_i32_s
        local.get 4
        f32.load offset=8
        f32.mul
        f32.add
        local.tee 5
        f32.abs
        f32.const 0x1p+31 (;=2.14748e+09;)
        f32.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.trunc_f32_s
        local.set 3
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 3
    end
    local.get 4
    local.get 3
    i32.store offset=4
    local.get 4
    local.get 4
    i32.load offset=28
    local.get 4
    i32.load offset=24
    local.get 4
    i32.load offset=4
    local.get 4
    i32.load
    call $sizeOfBlackWhiteBlackRun
    local.get 4
    f32.load offset=12
    f32.add
    f32.store offset=12
    local.get 4
    f32.load offset=12
    local.set 5
    local.get 4
    i32.const 32
    i32.add
    global.set 0
    local.get 5
    f32.const 0x1p+0 (;=1;)
    f32.sub)
  (func $sizeOfBlackWhiteBlackRun (type 11) (param i32 i32 i32 i32) (result f32)
    (local i32 f32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 0
    i32.store offset=72
    local.get 4
    local.get 1
    i32.store offset=68
    local.get 4
    local.get 2
    i32.store offset=64
    local.get 4
    local.get 3
    i32.store offset=60
    local.get 4
    local.get 4
    i32.load offset=60
    local.get 4
    i32.load offset=68
    i32.sub
    call $math_abs
    local.get 4
    i32.load offset=64
    local.get 4
    i32.load offset=72
    i32.sub
    call $math_abs
    i32.gt_s
    i32.const 1
    i32.and
    i32.store8 offset=59
    block  ;; label = @1
      local.get 4
      i32.load8_u offset=59
      i32.const 255
      i32.and
      i32.const 0
      i32.const 255
      i32.and
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      local.get 4
      i32.load offset=72
      i32.store offset=52
      local.get 4
      local.get 4
      i32.load offset=68
      i32.store offset=72
      local.get 4
      local.get 4
      i32.load offset=52
      i32.store offset=68
      local.get 4
      local.get 4
      i32.load offset=64
      i32.store offset=52
      local.get 4
      local.get 4
      i32.load offset=60
      i32.store offset=64
      local.get 4
      local.get 4
      i32.load offset=52
      i32.store offset=60
    end
    local.get 4
    local.get 4
    i32.load offset=64
    local.get 4
    i32.load offset=72
    i32.sub
    call $math_abs
    i32.store offset=48
    local.get 4
    local.get 4
    i32.load offset=60
    local.get 4
    i32.load offset=68
    i32.sub
    call $math_abs
    i32.store offset=44
    local.get 4
    i32.const 0
    local.get 4
    i32.load offset=48
    i32.sub
    i32.const 1
    i32.shr_s
    i32.store offset=40
    local.get 4
    i32.const 1
    i32.const -1
    local.get 4
    i32.load offset=72
    local.get 4
    i32.load offset=64
    i32.lt_s
    i32.const 1
    i32.and
    select
    i32.store offset=36
    local.get 4
    i32.const 1
    i32.const -1
    local.get 4
    i32.load offset=68
    local.get 4
    i32.load offset=60
    i32.lt_s
    i32.const 1
    i32.and
    select
    i32.store offset=32
    local.get 4
    i32.const 0
    i32.store offset=28
    local.get 4
    local.get 4
    i32.load offset=64
    local.get 4
    i32.load offset=36
    i32.add
    i32.store offset=24
    local.get 4
    local.get 4
    i32.load offset=72
    i32.store offset=20
    local.get 4
    local.get 4
    i32.load offset=68
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            local.get 4
            i32.load offset=20
            local.get 4
            i32.load offset=24
            i32.ne
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 4
                i32.load8_u offset=59
                i32.const 24
                i32.shl
                i32.const 24
                i32.shr_s
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i32.load offset=16
                local.set 3
                br 1 (;@5;)
              end
              local.get 4
              i32.load offset=20
              local.set 3
            end
            local.get 4
            local.get 3
            i32.store offset=12
            block  ;; label = @5
              block  ;; label = @6
                local.get 4
                i32.load8_u offset=59
                i32.const 24
                i32.shl
                i32.const 24
                i32.shr_s
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i32.load offset=20
                local.set 3
                br 1 (;@5;)
              end
              local.get 4
              i32.load offset=16
              local.set 3
            end
            local.get 4
            local.get 3
            i32.store offset=8
            block  ;; label = @5
              local.get 4
              i32.load offset=28
              i32.const 1
              i32.eq
              i32.const 1
              i32.and
              local.get 4
              i32.load offset=12
              local.get 4
              i32.load offset=8
              call $getBitmapPixel
              i32.const 24
              i32.shl
              i32.const 24
              i32.shr_s
              i32.xor
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 4
                i32.load offset=28
                i32.const 2
                i32.eq
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                local.get 4
                i32.load offset=20
                f32.convert_i32_s
                local.get 4
                i32.load offset=16
                f32.convert_i32_s
                local.get 4
                i32.load offset=72
                f32.convert_i32_s
                local.get 4
                i32.load offset=68
                f32.convert_i32_s
                call $math_distance
                f32.store offset=76
                br 5 (;@1;)
              end
              local.get 4
              local.get 4
              i32.load offset=28
              i32.const 1
              i32.add
              i32.store offset=28
            end
            local.get 4
            local.get 4
            i32.load offset=40
            local.get 4
            i32.load offset=44
            i32.add
            i32.store offset=40
            block  ;; label = @5
              local.get 4
              i32.load offset=40
              i32.const 0
              i32.gt_s
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 4
                i32.load offset=16
                local.get 4
                i32.load offset=60
                i32.eq
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                br 4 (;@2;)
              end
              local.get 4
              local.get 4
              i32.load offset=16
              local.get 4
              i32.load offset=32
              i32.add
              i32.store offset=16
              local.get 4
              local.get 4
              i32.load offset=40
              local.get 4
              i32.load offset=48
              i32.sub
              i32.store offset=40
            end
            local.get 4
            local.get 4
            i32.load offset=20
            local.get 4
            i32.load offset=36
            i32.add
            i32.store offset=20
            br 0 (;@4;)
          end
        end
      end
      block  ;; label = @2
        local.get 4
        i32.load offset=28
        i32.const 2
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 4
        i32.load offset=64
        local.get 4
        i32.load offset=36
        i32.add
        f32.convert_i32_s
        local.get 4
        i32.load offset=60
        f32.convert_i32_s
        local.get 4
        i32.load offset=72
        f32.convert_i32_s
        local.get 4
        i32.load offset=68
        f32.convert_i32_s
        call $math_distance
        f32.store offset=76
        br 1 (;@1;)
      end
      local.get 4
      f32.const 0x1p+22 (;=4.1943e+06;)
      f32.store offset=76
    end
    local.get 4
    f32.load offset=76
    local.set 5
    local.get 4
    i32.const 80
    i32.add
    global.set 0
    local.get 5)
  (func $getVersionForNumber (type 5) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=8
          i32.const 1
          i32.lt_s
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 1
          i32.load offset=8
          i32.const 40
          i32.gt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 1
        i32.const 4194304
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 1
      i32.const 1408
      local.get 1
      i32.load offset=8
      i32.const 1
      i32.sub
      i32.const 96
      i32.mul
      i32.add
      i32.store offset=12
    end
    local.get 1
    i32.load offset=12)
  (func $decodeVersionInformation (type 5) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store offset=24
    local.get 1
    i32.const 2147483647
    i32.store offset=20
    local.get 1
    i32.const 0
    i32.store offset=16
    local.get 1
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 1
          i32.load offset=12
          i32.const 34
          i32.lt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          i32.const 5968
          local.get 1
          i32.load offset=12
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.store offset=8
          block  ;; label = @4
            local.get 1
            i32.load offset=8
            local.get 1
            i32.load offset=24
            i32.eq
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            local.get 1
            i32.load offset=12
            i32.const 7
            i32.add
            call $getVersionForNumber
            i32.store offset=28
            br 3 (;@1;)
          end
          local.get 1
          local.get 1
          i32.load offset=24
          local.get 1
          i32.load offset=8
          call $FormatInformation_numBitsDiffering
          i32.store offset=4
          block  ;; label = @4
            local.get 1
            i32.load offset=4
            local.get 1
            i32.load offset=20
            i32.lt_s
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            local.get 1
            i32.load offset=12
            i32.const 7
            i32.add
            i32.store offset=16
            local.get 1
            local.get 1
            i32.load offset=4
            i32.store offset=20
          end
          local.get 1
          local.get 1
          i32.load offset=12
          i32.const 1
          i32.add
          i32.store offset=12
          br 0 (;@3;)
        end
      end
      block  ;; label = @2
        local.get 1
        i32.load offset=20
        i32.const 3
        i32.le_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 1
        i32.load offset=16
        call $getVersionForNumber
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 1
      i32.const 0
      i32.store offset=28
    end
    local.get 1
    i32.load offset=28
    local.set 0
    local.get 1
    i32.const 32
    i32.add
    global.set 0
    local.get 0)
  (func $FormatInformation_numBitsDiffering (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=8
    i32.xor
    i32.store offset=12
    i32.const 6368
    local.get 2
    i32.load offset=12
    i32.const 15
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.const 6368
    local.get 2
    i32.load offset=12
    i32.const 4
    i32.shr_s
    i32.const 15
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.add
    i32.const 6368
    local.get 2
    i32.load offset=12
    i32.const 8
    i32.shr_s
    i32.const 15
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.add
    i32.const 6368
    local.get 2
    i32.load offset=12
    i32.const 12
    i32.shr_s
    i32.const 15
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.add
    i32.const 6368
    local.get 2
    i32.load offset=12
    i32.const 16
    i32.shr_s
    i32.const 15
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.add
    i32.const 6368
    local.get 2
    i32.load offset=12
    i32.const 20
    i32.shr_s
    i32.const 15
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.add
    i32.const 6368
    local.get 2
    i32.load offset=12
    i32.const 24
    i32.shr_s
    i32.const 15
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.add
    i32.const 6368
    local.get 2
    i32.load offset=12
    i32.const 28
    i32.shr_s
    i32.const 15
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.add)
  (func $Version_buildFunctionPattern (type 9) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=28
    local.get 2
    local.get 2
    i32.load offset=28
    call $getDimensionForVersion
    i32.store offset=24
    local.get 0
    local.get 2
    i32.load offset=24
    call $new_BitMatrix
    local.get 0
    i32.const 0
    i32.const 0
    i32.const 9
    i32.const 9
    call $BitMatrix_setRegion
    local.get 0
    local.get 2
    i32.load offset=24
    i32.const 8
    i32.sub
    i32.const 0
    i32.const 8
    i32.const 9
    call $BitMatrix_setRegion
    local.get 0
    i32.const 0
    local.get 2
    i32.load offset=24
    i32.const 8
    i32.sub
    i32.const 9
    i32.const 8
    call $BitMatrix_setRegion
    local.get 2
    local.get 2
    i32.load offset=28
    i32.load offset=8
    i32.store offset=20
    local.get 2
    i32.const 0
    i32.store offset=16
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=16
        local.get 2
        i32.load offset=20
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.get 2
        i32.load offset=28
        i32.load offset=12
        local.get 2
        i32.load offset=16
        i32.const 2
        i32.shl
        i32.add
        i32.load
        i32.const 2
        i32.sub
        i32.store offset=12
        local.get 2
        i32.const 0
        i32.store offset=8
        block  ;; label = @3
          loop  ;; label = @4
            local.get 2
            i32.load offset=8
            local.get 2
            i32.load offset=20
            i32.lt_u
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.load offset=16
                    br_if 0 (;@8;)
                    local.get 2
                    i32.load offset=8
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 2
                    i32.load offset=8
                    local.get 2
                    i32.load offset=20
                    i32.const 1
                    i32.sub
                    i32.eq
                    i32.const 1
                    i32.and
                    br_if 1 (;@7;)
                  end
                  local.get 2
                  i32.load offset=16
                  local.get 2
                  i32.load offset=20
                  i32.const 1
                  i32.sub
                  i32.eq
                  i32.const 1
                  i32.and
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 2
                  i32.load offset=8
                  br_if 1 (;@6;)
                end
                br 1 (;@5;)
              end
              local.get 0
              local.get 2
              i32.load offset=28
              i32.load offset=12
              local.get 2
              i32.load offset=8
              i32.const 2
              i32.shl
              i32.add
              i32.load
              i32.const 2
              i32.sub
              local.get 2
              i32.load offset=12
              i32.const 5
              i32.const 5
              call $BitMatrix_setRegion
            end
            local.get 2
            local.get 2
            i32.load offset=8
            i32.const 1
            i32.add
            i32.store offset=8
            br 0 (;@4;)
          end
        end
        local.get 2
        local.get 2
        i32.load offset=16
        i32.const 1
        i32.add
        i32.store offset=16
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 6
    i32.const 9
    i32.const 1
    local.get 2
    i32.load offset=24
    i32.const 17
    i32.sub
    call $BitMatrix_setRegion
    local.get 0
    i32.const 9
    i32.const 6
    local.get 2
    i32.load offset=24
    i32.const 17
    i32.sub
    i32.const 1
    call $BitMatrix_setRegion
    block  ;; label = @1
      local.get 2
      i32.load offset=28
      i32.load
      i32.const 6
      i32.gt_s
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.load offset=24
      i32.const 11
      i32.sub
      i32.const 0
      i32.const 3
      i32.const 6
      call $BitMatrix_setRegion
      local.get 0
      i32.const 0
      local.get 2
      i32.load offset=24
      i32.const 11
      i32.sub
      i32.const 6
      i32.const 3
      call $BitMatrix_setRegion
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func $new_BitMatrix (type 9) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=8
    i32.store
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=8
    i32.store offset=4
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=8
    i32.const 5
    i32.shr_s
    i32.store offset=16
    block  ;; label = @1
      local.get 2
      i32.load offset=8
      i32.const 31
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.load offset=12
      local.tee 1
      local.get 1
      i32.load offset=16
      i32.const 1
      i32.add
      i32.store offset=16
    end
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=12
    i32.load offset=16
    local.get 2
    i32.load offset=12
    i32.load offset=4
    i32.mul
    i32.store offset=8
    local.get 2
    i32.load offset=12
    i32.load offset=8
    i32.const 2
    i32.shl
    call $Memory_allocate
    local.set 1
    local.get 2
    i32.load offset=12
    local.get 1
    i32.store offset=20
    local.get 2
    i32.const 0
    i32.store offset=4
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=4
        local.get 2
        i32.load offset=12
        i32.load offset=8
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=12
        i32.load offset=20
        local.get 2
        i32.load offset=4
        i32.const 2
        i32.shl
        i32.add
        i32.const 0
        i32.store
        local.get 2
        local.get 2
        i32.load offset=4
        i32.const 1
        i32.add
        i32.store offset=4
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func $BitMatrix_setRegion (type 22) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 5
    local.get 0
    i32.store offset=44
    local.get 5
    local.get 1
    i32.store offset=40
    local.get 5
    local.get 2
    i32.store offset=36
    local.get 5
    local.get 3
    i32.store offset=32
    local.get 5
    local.get 4
    i32.store offset=28
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.load offset=36
        i32.const 0
        i32.lt_s
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=40
        i32.const 0
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.load offset=28
        i32.const 1
        i32.lt_s
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=32
        i32.const 1
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
      end
    end
    local.get 5
    local.get 5
    i32.load offset=40
    local.get 5
    i32.load offset=32
    i32.add
    i32.store offset=24
    local.get 5
    local.get 5
    i32.load offset=36
    local.get 5
    i32.load offset=28
    i32.add
    i32.store offset=20
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.load offset=20
        local.get 5
        i32.load offset=44
        i32.load offset=4
        i32.gt_s
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=24
        local.get 5
        i32.load offset=44
        i32.load
        i32.gt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
      end
    end
    local.get 5
    local.get 5
    i32.load offset=36
    i32.store offset=16
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        i32.load offset=16
        local.get 5
        i32.load offset=20
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 5
        local.get 5
        i32.load offset=16
        local.get 5
        i32.load offset=44
        i32.load offset=16
        i32.mul
        i32.store offset=12
        local.get 5
        local.get 5
        i32.load offset=40
        i32.store offset=8
        block  ;; label = @3
          loop  ;; label = @4
            local.get 5
            i32.load offset=8
            local.get 5
            i32.load offset=24
            i32.lt_s
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 5
            i32.load offset=44
            i32.load offset=20
            local.get 5
            i32.load offset=12
            local.get 5
            i32.load offset=8
            i32.const 5
            i32.shr_s
            i32.add
            i32.const 2
            i32.shl
            i32.add
            local.tee 4
            local.get 4
            i32.load
            i32.const 1
            local.get 5
            i32.load offset=8
            i32.const 31
            i32.and
            i32.shl
            i32.or
            i32.store
            local.get 5
            local.get 5
            i32.load offset=8
            i32.const 1
            i32.add
            i32.store offset=8
            br 0 (;@4;)
          end
        end
        local.get 5
        local.get 5
        i32.load offset=16
        i32.const 1
        i32.add
        i32.store offset=16
        br 0 (;@2;)
      end
    end)
  (func $AlignmentPatternFinder_centerFromEnd (type 1) (param i32 i32) (result f32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load offset=12
    i32.load offset=8
    i32.sub
    f32.convert_i32_s
    local.get 2
    i32.load offset=12
    i32.load offset=4
    f32.convert_i32_s
    f32.const 0x1p+1 (;=2;)
    f32.div
    f32.sub)
  (func $AlignmentPatternFinder_foundPatternCross (type 5) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 1
    i32.const 0
    f32.load offset=1288
    f32.const 0x1p+1 (;=2;)
    f32.div
    f32.store offset=4
    local.get 1
    i32.const 0
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 1
          i32.load
          i32.const 3
          i32.lt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            i32.const 0
            f32.load offset=1288
            local.get 1
            i32.load offset=8
            local.get 1
            i32.load
            i32.const 2
            i32.shl
            i32.add
            i32.load
            f32.convert_i32_s
            f32.sub
            call $math_fabs
            local.get 1
            f32.load offset=4
            f32.ge
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 0
            i32.store8 offset=15
            br 3 (;@1;)
          end
          local.get 1
          local.get 1
          i32.load
          i32.const 1
          i32.add
          i32.store
          br 0 (;@3;)
        end
      end
      local.get 1
      i32.const 1
      i32.store8 offset=15
    end
    local.get 1
    i32.load8_u offset=15
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s)
  (func $AlignmentPatternFinder_crossCheckVertical (type 11) (param i32 i32 i32 i32) (result f32)
    (local i32 f32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 0
    i32.store offset=40
    local.get 4
    local.get 1
    i32.store offset=36
    local.get 4
    local.get 2
    i32.store offset=32
    local.get 4
    local.get 3
    i32.store offset=28
    local.get 4
    i32.const 0
    i32.load offset=1032
    i32.store offset=24
    local.get 4
    i32.const 12
    i32.add
    local.tee 3
    i64.const 0
    i64.store align=4
    local.get 3
    i32.const 8
    i32.add
    i32.const 0
    i32.store
    local.get 4
    local.get 4
    i32.load offset=40
    i32.store offset=8
    loop  ;; label = @1
      i32.const 0
      local.set 3
      block  ;; label = @2
        local.get 4
        i32.load offset=8
        i32.const 0
        i32.ge_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 3
        local.get 4
        i32.load offset=36
        local.get 4
        i32.load offset=8
        call $getBitmapPixel
        i32.const 24
        i32.shl
        i32.const 24
        i32.shr_s
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.load offset=16
        local.get 4
        i32.load offset=32
        i32.le_s
        local.set 3
      end
      block  ;; label = @2
        local.get 3
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 4
        i32.load offset=16
        i32.const 1
        i32.add
        i32.store offset=16
        local.get 4
        local.get 4
        i32.load offset=8
        i32.const -1
        i32.add
        i32.store offset=8
        br 1 (;@1;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.load offset=8
          i32.const 0
          i32.lt_s
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=16
          local.get 4
          i32.load offset=32
          i32.gt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 4
        f32.const 0x1p+22 (;=4.1943e+06;)
        f32.store offset=44
        br 1 (;@1;)
      end
      loop  ;; label = @2
        i32.const 0
        local.set 3
        block  ;; label = @3
          local.get 4
          i32.load offset=8
          i32.const 0
          i32.ge_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 3
          local.get 4
          i32.load offset=36
          local.get 4
          i32.load offset=8
          call $getBitmapPixel
          i32.const 255
          i32.and
          i32.const 0
          i32.const 255
          i32.and
          i32.ne
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=12
          local.get 4
          i32.load offset=32
          i32.le_s
          local.set 3
        end
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 4
          i32.load offset=12
          i32.const 1
          i32.add
          i32.store offset=12
          local.get 4
          local.get 4
          i32.load offset=8
          i32.const -1
          i32.add
          i32.store offset=8
          br 1 (;@2;)
        end
      end
      block  ;; label = @2
        local.get 4
        i32.load offset=12
        local.get 4
        i32.load offset=32
        i32.gt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        f32.const 0x1p+22 (;=4.1943e+06;)
        f32.store offset=44
        br 1 (;@1;)
      end
      local.get 4
      local.get 4
      i32.load offset=40
      i32.const 1
      i32.add
      i32.store offset=8
      loop  ;; label = @2
        i32.const 0
        local.set 3
        block  ;; label = @3
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=24
          i32.lt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 3
          local.get 4
          i32.load offset=36
          local.get 4
          i32.load offset=8
          call $getBitmapPixel
          i32.const 24
          i32.shl
          i32.const 24
          i32.shr_s
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=16
          local.get 4
          i32.load offset=32
          i32.le_s
          local.set 3
        end
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 4
          i32.load offset=16
          i32.const 1
          i32.add
          i32.store offset=16
          local.get 4
          local.get 4
          i32.load offset=8
          i32.const 1
          i32.add
          i32.store offset=8
          br 1 (;@2;)
        end
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=24
          i32.eq
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=16
          local.get 4
          i32.load offset=32
          i32.gt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 4
        f32.const 0x1p+22 (;=4.1943e+06;)
        f32.store offset=44
        br 1 (;@1;)
      end
      loop  ;; label = @2
        i32.const 0
        local.set 3
        block  ;; label = @3
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=24
          i32.lt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 3
          local.get 4
          i32.load offset=36
          local.get 4
          i32.load offset=8
          call $getBitmapPixel
          i32.const 255
          i32.and
          i32.const 0
          i32.const 255
          i32.and
          i32.ne
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=20
          local.get 4
          i32.load offset=32
          i32.le_s
          local.set 3
        end
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 4
          i32.load offset=20
          i32.const 1
          i32.add
          i32.store offset=20
          local.get 4
          local.get 4
          i32.load offset=8
          i32.const 1
          i32.add
          i32.store offset=8
          br 1 (;@2;)
        end
      end
      block  ;; label = @2
        local.get 4
        i32.load offset=20
        local.get 4
        i32.load offset=32
        i32.gt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        f32.const 0x1p+22 (;=4.1943e+06;)
        f32.store offset=44
        br 1 (;@1;)
      end
      local.get 4
      local.get 4
      i32.load offset=12
      local.get 4
      i32.load offset=16
      i32.add
      local.get 4
      i32.load offset=20
      i32.add
      i32.store offset=4
      block  ;; label = @2
        f32.const 0x1.4p+2 (;=5;)
        local.get 4
        i32.load offset=4
        local.get 4
        i32.load offset=28
        i32.sub
        f32.convert_i32_s
        call $math_fabs
        f32.mul
        local.get 4
        i32.load offset=28
        i32.const 1
        i32.shl
        f32.convert_i32_s
        f32.ge
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        f32.const 0x1p+22 (;=4.1943e+06;)
        f32.store offset=44
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 12
          i32.add
          call $AlignmentPatternFinder_foundPatternCross
          i32.const 24
          i32.shl
          i32.const 24
          i32.shr_s
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.const 12
          i32.add
          local.get 4
          i32.load offset=8
          call $AlignmentPatternFinder_centerFromEnd
          local.set 5
          br 1 (;@2;)
        end
        f32.const 0x1p+22 (;=4.1943e+06;)
        local.set 5
      end
      local.get 4
      local.get 5
      f32.store offset=44
    end
    local.get 4
    f32.load offset=44
    local.set 5
    local.get 4
    i32.const 48
    i32.add
    global.set 0
    local.get 5)
  (func $AlignmentPatternFinder_handlePossibleCenter (type 10) (param i32 i32 i32) (result i32)
    (local i32 f32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=40
    local.get 3
    local.get 1
    i32.store offset=36
    local.get 3
    local.get 2
    i32.store offset=32
    local.get 3
    local.get 3
    i32.load offset=40
    i32.load
    local.get 3
    i32.load offset=40
    i32.load offset=4
    i32.add
    local.get 3
    i32.load offset=40
    i32.load offset=8
    i32.add
    i32.store offset=28
    local.get 3
    local.get 3
    i32.load offset=40
    local.get 3
    i32.load offset=32
    call $AlignmentPatternFinder_centerFromEnd
    f32.store offset=24
    local.get 3
    i32.load offset=36
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        f32.load offset=24
        local.tee 4
        f32.abs
        f32.const 0x1p+31 (;=2.14748e+09;)
        f32.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.trunc_f32_s
        local.set 1
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 1
    end
    local.get 3
    local.get 2
    local.get 1
    local.get 3
    i32.load offset=40
    i32.load offset=4
    i32.const 1
    i32.shl
    local.get 3
    i32.load offset=28
    call $AlignmentPatternFinder_crossCheckVertical
    f32.store offset=20
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        f32.load offset=20
        f32.const 0x1p+22 (;=4.1943e+06;)
        f32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 3
        i32.load offset=40
        i32.load
        local.get 3
        i32.load offset=40
        i32.load offset=4
        i32.add
        local.get 3
        i32.load offset=40
        i32.load offset=8
        i32.add
        f32.convert_i32_s
        f32.const 0x1.8p+1 (;=3;)
        f32.div
        f32.store offset=16
        local.get 3
        i32.const 0
        i32.load offset=1292
        i32.store offset=12
        local.get 3
        i32.const 0
        i32.store offset=8
        block  ;; label = @3
          loop  ;; label = @4
            local.get 3
            i32.load offset=8
            local.get 3
            i32.load offset=12
            i32.lt_s
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 3
            i32.const 1296
            local.get 3
            i32.load offset=8
            i32.const 12
            i32.mul
            i32.add
            i32.store offset=4
            block  ;; label = @5
              local.get 3
              i32.load offset=4
              local.get 3
              f32.load offset=16
              local.get 3
              f32.load offset=20
              local.get 3
              f32.load offset=24
              call $AlignmentPattern_aboutEquals
              i32.const 255
              i32.and
              i32.const 0
              i32.const 255
              i32.and
              i32.ne
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              local.get 3
              i32.load offset=4
              local.get 3
              f32.load offset=20
              local.get 3
              f32.load offset=24
              local.get 3
              f32.load offset=16
              call $AlignmentPattern_combineEstimate
              i32.store offset=44
              br 4 (;@1;)
            end
            local.get 3
            local.get 3
            i32.load offset=8
            i32.const 1
            i32.add
            i32.store offset=8
            br 0 (;@4;)
          end
        end
        i32.const 1296
        i32.const 0
        i32.load offset=1292
        i32.const 12
        i32.mul
        i32.add
        local.get 3
        f32.load offset=24
        f32.store
        i32.const 1296
        i32.const 0
        i32.load offset=1292
        i32.const 12
        i32.mul
        i32.add
        local.get 3
        f32.load offset=20
        f32.store offset=4
        i32.const 1296
        i32.const 0
        i32.load offset=1292
        i32.const 12
        i32.mul
        i32.add
        local.get 3
        f32.load offset=16
        f32.store offset=8
        i32.const 0
        i32.const 0
        i32.load offset=1292
        i32.const 1
        i32.add
        i32.store offset=1292
      end
      local.get 3
      i32.const 0
      i32.store offset=44
    end
    local.get 3
    i32.load offset=44
    local.set 2
    local.get 3
    i32.const 48
    i32.add
    global.set 0
    local.get 2)
  (func $AlignmentPattern_aboutEquals (type 4) (param i32 f32 f32 f32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 0
    i32.store offset=24
    local.get 4
    local.get 1
    f32.store offset=20
    local.get 4
    local.get 2
    f32.store offset=16
    local.get 4
    local.get 3
    f32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        f32.load offset=16
        local.get 4
        i32.load offset=24
        f32.load offset=4
        f32.sub
        call $math_fabs
        local.get 4
        f32.load offset=20
        f32.le
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        f32.load offset=12
        local.get 4
        i32.load offset=24
        f32.load
        f32.sub
        call $math_fabs
        local.get 4
        f32.load offset=20
        f32.le
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 0
        local.get 4
        local.get 4
        f32.load offset=20
        local.get 4
        i32.load offset=24
        f32.load offset=8
        f32.sub
        call $math_fabs
        f32.store offset=8
        block  ;; label = @3
          local.get 4
          f32.load offset=8
          f32.const 0x1p+0 (;=1;)
          f32.le
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 4
          f32.load offset=8
          local.get 4
          i32.load offset=24
          f32.load offset=8
          f32.le
          local.set 0
        end
        local.get 4
        local.get 0
        i32.const 1
        i32.and
        i32.store8 offset=31
        br 1 (;@1;)
      end
      local.get 4
      i32.const 0
      i32.store8 offset=31
    end
    local.get 4
    i32.load8_u offset=31
    local.set 0
    local.get 4
    i32.const 32
    i32.add
    global.set 0
    local.get 0
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s)
  (func $AlignmentPattern_combineEstimate (type 4) (param i32 f32 f32 f32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    f32.store offset=8
    local.get 4
    local.get 2
    f32.store offset=4
    local.get 4
    local.get 3
    f32.store
    local.get 4
    i32.load offset=12
    local.get 4
    i32.load offset=12
    f32.load
    local.get 4
    f32.load offset=4
    f32.add
    f32.const 0x1p+1 (;=2;)
    f32.div
    f32.store
    local.get 4
    i32.load offset=12
    local.get 4
    i32.load offset=12
    f32.load offset=4
    local.get 4
    f32.load offset=8
    f32.add
    f32.const 0x1p+1 (;=2;)
    f32.div
    f32.store offset=4
    local.get 4
    i32.load offset=12
    local.get 4
    i32.load offset=12
    f32.load offset=8
    local.get 4
    f32.load
    f32.add
    f32.const 0x1p+1 (;=2;)
    f32.div
    f32.store offset=8
    local.get 4
    i32.load offset=12)
  (func $PerspectiveTransform_transformPoints (type 20) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 2
    i32.store offset=24
    local.get 3
    i32.const 0
    i32.store offset=20
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.load offset=20
        local.get 3
        i32.load offset=24
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        local.get 3
        i32.load offset=28
        local.get 3
        i32.load offset=20
        i32.const 2
        i32.shl
        i32.add
        f32.load
        f32.store offset=16
        local.get 3
        local.get 3
        i32.load offset=28
        local.get 3
        i32.load offset=20
        i32.const 1
        i32.add
        i32.const 2
        i32.shl
        i32.add
        f32.load
        f32.store offset=12
        local.get 3
        local.get 0
        f32.load offset=8
        local.get 3
        f32.load offset=16
        f32.mul
        local.get 0
        f32.load offset=20
        local.get 3
        f32.load offset=12
        f32.mul
        f32.add
        local.get 0
        f32.load offset=32
        f32.add
        f32.store offset=8
        local.get 3
        i32.load offset=28
        local.get 3
        i32.load offset=20
        i32.const 2
        i32.shl
        i32.add
        local.get 0
        f32.load
        local.get 3
        f32.load offset=16
        f32.mul
        local.get 0
        f32.load offset=12
        local.get 3
        f32.load offset=12
        f32.mul
        f32.add
        local.get 0
        f32.load offset=24
        f32.add
        local.get 3
        f32.load offset=8
        f32.div
        f32.store
        local.get 3
        i32.load offset=28
        local.get 3
        i32.load offset=20
        i32.const 1
        i32.add
        i32.const 2
        i32.shl
        i32.add
        local.get 0
        f32.load offset=4
        local.get 3
        f32.load offset=16
        f32.mul
        local.get 0
        f32.load offset=16
        local.get 3
        f32.load offset=12
        f32.mul
        f32.add
        local.get 0
        f32.load offset=28
        f32.add
        local.get 3
        f32.load offset=8
        f32.div
        f32.store
        local.get 3
        local.get 3
        i32.load offset=20
        i32.const 2
        i32.add
        i32.store offset=20
        br 0 (;@2;)
      end
    end)
  (func $GridSampler_checkAndNudgePoints (type 23) (param i32 i32 i32 i32)
    (local i32 f32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    local.get 0
    i32.store offset=28
    local.get 4
    local.get 1
    i32.store offset=24
    local.get 4
    local.get 2
    i32.store offset=20
    local.get 4
    local.get 3
    i32.store offset=16
    local.get 4
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load offset=12
        local.get 4
        i32.load offset=16
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.load offset=20
            local.get 4
            i32.load offset=12
            i32.const 2
            i32.shl
            i32.add
            f32.load
            local.tee 5
            f32.abs
            f32.const 0x1p+31 (;=2.14748e+09;)
            f32.lt
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i32.trunc_f32_s
            local.set 3
            br 1 (;@3;)
          end
          i32.const -2147483648
          local.set 3
        end
        local.get 4
        local.get 3
        i32.store offset=8
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.load offset=20
            local.get 4
            i32.load offset=12
            i32.const 1
            i32.add
            i32.const 2
            i32.shl
            i32.add
            f32.load
            local.tee 5
            f32.abs
            f32.const 0x1p+31 (;=2.14748e+09;)
            f32.lt
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i32.trunc_f32_s
            local.set 3
            br 1 (;@3;)
          end
          i32.const -2147483648
          local.set 3
        end
        local.get 4
        local.get 3
        i32.store offset=4
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.load offset=8
            i32.const -1
            i32.lt_s
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 4
            i32.load offset=8
            local.get 4
            i32.load offset=28
            i32.gt_s
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 4
            i32.load offset=4
            i32.const -1
            i32.lt_s
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 4
            i32.load offset=4
            local.get 4
            i32.load offset=24
            i32.gt_s
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
          end
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.load offset=8
            i32.const -1
            i32.eq
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.load offset=20
            local.get 4
            i32.load offset=12
            i32.const 2
            i32.shl
            i32.add
            i32.const 0
            f32.convert_i32_s
            f32.store
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 4
            i32.load offset=8
            local.get 4
            i32.load offset=28
            i32.eq
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.load offset=20
            local.get 4
            i32.load offset=12
            i32.const 2
            i32.shl
            i32.add
            local.get 4
            i32.load offset=28
            i32.const 1
            i32.sub
            f32.convert_i32_s
            f32.store
          end
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.load offset=4
            i32.const -1
            i32.eq
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.load offset=20
            local.get 4
            i32.load offset=12
            i32.const 1
            i32.add
            i32.const 2
            i32.shl
            i32.add
            i32.const 0
            f32.convert_i32_s
            f32.store
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 4
            i32.load offset=4
            local.get 4
            i32.load offset=24
            i32.eq
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.load offset=20
            local.get 4
            i32.load offset=12
            i32.const 1
            i32.add
            i32.const 2
            i32.shl
            i32.add
            local.get 4
            i32.load offset=24
            i32.const 1
            i32.sub
            f32.convert_i32_s
            f32.store
          end
        end
        local.get 4
        local.get 4
        i32.load offset=12
        i32.const 2
        i32.add
        i32.store offset=12
        br 0 (;@2;)
      end
    end)
  (func $BitMatrix_set (type 20) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    local.get 0
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 2
    i32.store offset=4
    local.get 3
    local.get 3
    i32.load offset=4
    local.get 3
    i32.load offset=12
    i32.load offset=16
    i32.mul
    local.get 3
    i32.load offset=8
    i32.const 5
    i32.shr_s
    i32.add
    i32.store
    local.get 3
    i32.load offset=12
    i32.load offset=20
    local.get 3
    i32.load
    i32.const 2
    i32.shl
    i32.add
    local.tee 2
    local.get 2
    i32.load
    i32.const 1
    local.get 3
    i32.load offset=8
    i32.const 31
    i32.and
    i32.shl
    i32.or
    i32.store)
  (func $Memory_delete (type 8) (param i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    i32.const 0
    i32.const 0
    i32.load offset=6104
    local.get 1
    i32.load offset=12
    i32.sub
    i32.store offset=6104)
  (func $PerspectiveTransform_quadrilateralToSquare (type 24) (param i32 f32 f32 f32 f32 f32 f32 f32 f32)
    (local i32)
    global.get 0
    i32.const 112
    i32.sub
    local.tee 9
    global.set 0
    local.get 9
    local.get 1
    f32.store offset=108
    local.get 9
    local.get 2
    f32.store offset=104
    local.get 9
    local.get 3
    f32.store offset=100
    local.get 9
    local.get 4
    f32.store offset=96
    local.get 9
    local.get 5
    f32.store offset=92
    local.get 9
    local.get 6
    f32.store offset=88
    local.get 9
    local.get 7
    f32.store offset=84
    local.get 9
    local.get 8
    f32.store offset=80
    local.get 9
    i32.const 40
    i32.add
    local.get 9
    f32.load offset=108
    local.get 9
    f32.load offset=104
    local.get 9
    f32.load offset=100
    local.get 9
    f32.load offset=96
    local.get 9
    f32.load offset=92
    local.get 9
    f32.load offset=88
    local.get 9
    f32.load offset=84
    local.get 9
    f32.load offset=80
    call $PerspectiveTransform_squareToQuadrilateral
    local.get 9
    i32.const 32
    i32.add
    local.get 9
    i32.const 40
    i32.add
    i32.const 32
    i32.add
    i32.load
    i32.store
    local.get 9
    i32.const 24
    i32.add
    local.get 9
    i32.const 40
    i32.add
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get 9
    i32.const 16
    i32.add
    local.get 9
    i32.const 40
    i32.add
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 9
    i32.const 8
    i32.add
    local.get 9
    i32.const 40
    i32.add
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 9
    local.get 9
    i64.load offset=40
    i64.store
    local.get 0
    local.get 9
    call $PerspectiveTransform_buildAjoint
    local.get 9
    i32.const 112
    i32.add
    global.set 0)
  (func $PerspectiveTransform_squareToQuadrilateral (type 24) (param i32 f32 f32 f32 f32 f32 f32 f32 f32)
    (local i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 9
    global.set 0
    local.get 9
    local.get 1
    f32.store offset=76
    local.get 9
    local.get 2
    f32.store offset=72
    local.get 9
    local.get 3
    f32.store offset=68
    local.get 9
    local.get 4
    f32.store offset=64
    local.get 9
    local.get 5
    f32.store offset=60
    local.get 9
    local.get 6
    f32.store offset=56
    local.get 9
    local.get 7
    f32.store offset=52
    local.get 9
    local.get 8
    f32.store offset=48
    local.get 9
    local.get 9
    f32.load offset=76
    local.get 9
    f32.load offset=68
    f32.sub
    local.get 9
    f32.load offset=60
    f32.add
    local.get 9
    f32.load offset=52
    f32.sub
    f32.store offset=44
    local.get 9
    local.get 9
    f32.load offset=72
    local.get 9
    f32.load offset=64
    f32.sub
    local.get 9
    f32.load offset=56
    f32.add
    local.get 9
    f32.load offset=48
    f32.sub
    f32.store offset=40
    block  ;; label = @1
      block  ;; label = @2
        local.get 9
        f32.load offset=44
        i32.const 0
        f32.convert_i32_s
        f32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 9
        f32.load offset=40
        i32.const 0
        f32.convert_i32_s
        f32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 9
        f32.load offset=68
        local.get 9
        f32.load offset=76
        f32.sub
        local.get 9
        f32.load offset=60
        local.get 9
        f32.load offset=68
        f32.sub
        local.get 9
        f32.load offset=76
        local.get 9
        f32.load offset=64
        local.get 9
        f32.load offset=72
        f32.sub
        local.get 9
        f32.load offset=56
        local.get 9
        f32.load offset=64
        f32.sub
        local.get 9
        f32.load offset=72
        i32.const 0
        f32.convert_i32_s
        local.tee 8
        local.get 8
        f32.const 0x1p+0 (;=1;)
        call $new_PerspectiveTransform
        br 1 (;@1;)
      end
      local.get 9
      local.get 9
      f32.load offset=68
      local.get 9
      f32.load offset=60
      f32.sub
      f32.store offset=36
      local.get 9
      local.get 9
      f32.load offset=52
      local.get 9
      f32.load offset=60
      f32.sub
      f32.store offset=32
      local.get 9
      local.get 9
      f32.load offset=64
      local.get 9
      f32.load offset=56
      f32.sub
      f32.store offset=28
      local.get 9
      local.get 9
      f32.load offset=48
      local.get 9
      f32.load offset=56
      f32.sub
      f32.store offset=24
      local.get 9
      local.get 9
      f32.load offset=36
      local.get 9
      f32.load offset=24
      f32.mul
      local.get 9
      f32.load offset=32
      local.get 9
      f32.load offset=28
      f32.mul
      f32.sub
      f32.store offset=20
      local.get 9
      local.get 9
      f32.load offset=44
      local.get 9
      f32.load offset=24
      f32.mul
      local.get 9
      f32.load offset=32
      local.get 9
      f32.load offset=40
      f32.mul
      f32.sub
      local.get 9
      f32.load offset=20
      f32.div
      f32.store offset=16
      local.get 9
      local.get 9
      f32.load offset=36
      local.get 9
      f32.load offset=40
      f32.mul
      local.get 9
      f32.load offset=44
      local.get 9
      f32.load offset=28
      f32.mul
      f32.sub
      local.get 9
      f32.load offset=20
      f32.div
      f32.store offset=12
      local.get 0
      local.get 9
      f32.load offset=68
      local.get 9
      f32.load offset=76
      f32.sub
      local.get 9
      f32.load offset=16
      local.get 9
      f32.load offset=68
      f32.mul
      f32.add
      local.get 9
      f32.load offset=52
      local.get 9
      f32.load offset=76
      f32.sub
      local.get 9
      f32.load offset=12
      local.get 9
      f32.load offset=52
      f32.mul
      f32.add
      local.get 9
      f32.load offset=76
      local.get 9
      f32.load offset=64
      local.get 9
      f32.load offset=72
      f32.sub
      local.get 9
      f32.load offset=16
      local.get 9
      f32.load offset=64
      f32.mul
      f32.add
      local.get 9
      f32.load offset=48
      local.get 9
      f32.load offset=72
      f32.sub
      local.get 9
      f32.load offset=12
      local.get 9
      f32.load offset=48
      f32.mul
      f32.add
      local.get 9
      f32.load offset=72
      local.get 9
      f32.load offset=16
      local.get 9
      f32.load offset=12
      f32.const 0x1p+0 (;=1;)
      call $new_PerspectiveTransform
    end
    local.get 9
    i32.const 80
    i32.add
    global.set 0)
  (func $PerspectiveTransform_times (type 20) (param i32 i32 i32)
    local.get 0
    local.get 1
    f32.load
    local.get 2
    f32.load
    f32.mul
    local.get 1
    f32.load offset=12
    local.get 2
    f32.load offset=4
    f32.mul
    f32.add
    local.get 1
    f32.load offset=24
    local.get 2
    f32.load offset=8
    f32.mul
    f32.add
    local.get 1
    f32.load
    local.get 2
    f32.load offset=12
    f32.mul
    local.get 1
    f32.load offset=12
    local.get 2
    f32.load offset=16
    f32.mul
    f32.add
    local.get 1
    f32.load offset=24
    local.get 2
    f32.load offset=20
    f32.mul
    f32.add
    local.get 1
    f32.load
    local.get 2
    f32.load offset=24
    f32.mul
    local.get 1
    f32.load offset=12
    local.get 2
    f32.load offset=28
    f32.mul
    f32.add
    local.get 1
    f32.load offset=24
    local.get 2
    f32.load offset=32
    f32.mul
    f32.add
    local.get 1
    f32.load offset=4
    local.get 2
    f32.load
    f32.mul
    local.get 1
    f32.load offset=16
    local.get 2
    f32.load offset=4
    f32.mul
    f32.add
    local.get 1
    f32.load offset=28
    local.get 2
    f32.load offset=8
    f32.mul
    f32.add
    local.get 1
    f32.load offset=4
    local.get 2
    f32.load offset=12
    f32.mul
    local.get 1
    f32.load offset=16
    local.get 2
    f32.load offset=16
    f32.mul
    f32.add
    local.get 1
    f32.load offset=28
    local.get 2
    f32.load offset=20
    f32.mul
    f32.add
    local.get 1
    f32.load offset=4
    local.get 2
    f32.load offset=24
    f32.mul
    local.get 1
    f32.load offset=16
    local.get 2
    f32.load offset=28
    f32.mul
    f32.add
    local.get 1
    f32.load offset=28
    local.get 2
    f32.load offset=32
    f32.mul
    f32.add
    local.get 1
    f32.load offset=8
    local.get 2
    f32.load
    f32.mul
    local.get 1
    f32.load offset=20
    local.get 2
    f32.load offset=4
    f32.mul
    f32.add
    local.get 1
    f32.load offset=32
    local.get 2
    f32.load offset=8
    f32.mul
    f32.add
    local.get 1
    f32.load offset=8
    local.get 2
    f32.load offset=12
    f32.mul
    local.get 1
    f32.load offset=20
    local.get 2
    f32.load offset=16
    f32.mul
    f32.add
    local.get 1
    f32.load offset=32
    local.get 2
    f32.load offset=20
    f32.mul
    f32.add
    local.get 1
    f32.load offset=8
    local.get 2
    f32.load offset=24
    f32.mul
    local.get 1
    f32.load offset=20
    local.get 2
    f32.load offset=28
    f32.mul
    f32.add
    local.get 1
    f32.load offset=32
    local.get 2
    f32.load offset=32
    f32.mul
    f32.add
    call $new_PerspectiveTransform)
  (func $PerspectiveTransform_buildAjoint (type 9) (param i32 i32)
    local.get 0
    local.get 1
    f32.load offset=16
    local.get 1
    f32.load offset=32
    f32.mul
    local.get 1
    f32.load offset=20
    local.get 1
    f32.load offset=28
    f32.mul
    f32.sub
    local.get 1
    f32.load offset=20
    local.get 1
    f32.load offset=24
    f32.mul
    local.get 1
    f32.load offset=12
    local.get 1
    f32.load offset=32
    f32.mul
    f32.sub
    local.get 1
    f32.load offset=12
    local.get 1
    f32.load offset=28
    f32.mul
    local.get 1
    f32.load offset=16
    local.get 1
    f32.load offset=24
    f32.mul
    f32.sub
    local.get 1
    f32.load offset=8
    local.get 1
    f32.load offset=28
    f32.mul
    local.get 1
    f32.load offset=4
    local.get 1
    f32.load offset=32
    f32.mul
    f32.sub
    local.get 1
    f32.load
    local.get 1
    f32.load offset=32
    f32.mul
    local.get 1
    f32.load offset=8
    local.get 1
    f32.load offset=24
    f32.mul
    f32.sub
    local.get 1
    f32.load offset=4
    local.get 1
    f32.load offset=24
    f32.mul
    local.get 1
    f32.load
    local.get 1
    f32.load offset=28
    f32.mul
    f32.sub
    local.get 1
    f32.load offset=4
    local.get 1
    f32.load offset=20
    f32.mul
    local.get 1
    f32.load offset=8
    local.get 1
    f32.load offset=16
    f32.mul
    f32.sub
    local.get 1
    f32.load offset=8
    local.get 1
    f32.load offset=12
    f32.mul
    local.get 1
    f32.load
    local.get 1
    f32.load offset=20
    f32.mul
    f32.sub
    local.get 1
    f32.load
    local.get 1
    f32.load offset=16
    f32.mul
    local.get 1
    f32.load offset=4
    local.get 1
    f32.load offset=12
    f32.mul
    f32.sub
    call $new_PerspectiveTransform)
  (func $new_PerspectiveTransform (type 25) (param i32 f32 f32 f32 f32 f32 f32 f32 f32 f32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 10
    local.get 1
    f32.store offset=44
    local.get 10
    local.get 2
    f32.store offset=40
    local.get 10
    local.get 3
    f32.store offset=36
    local.get 10
    local.get 4
    f32.store offset=32
    local.get 10
    local.get 5
    f32.store offset=28
    local.get 10
    local.get 6
    f32.store offset=24
    local.get 10
    local.get 7
    f32.store offset=20
    local.get 10
    local.get 8
    f32.store offset=16
    local.get 10
    local.get 9
    f32.store offset=12
    local.get 0
    local.get 10
    f32.load offset=44
    f32.store
    local.get 0
    local.get 10
    f32.load offset=40
    f32.store offset=12
    local.get 0
    local.get 10
    f32.load offset=36
    f32.store offset=24
    local.get 0
    local.get 10
    f32.load offset=32
    f32.store offset=4
    local.get 0
    local.get 10
    f32.load offset=28
    f32.store offset=16
    local.get 0
    local.get 10
    f32.load offset=24
    f32.store offset=28
    local.get 0
    local.get 10
    f32.load offset=20
    f32.store offset=8
    local.get 0
    local.get 10
    f32.load offset=16
    f32.store offset=20
    local.get 0
    local.get 10
    f32.load offset=12
    f32.store offset=32)
  (func $Memory_size (type 8) (param i32)
    (local i32 f32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    block  ;; label = @1
      i32.const 0
      i32.load offset=6108
      local.get 1
      i32.load offset=12
      i32.lt_u
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.load offset=6108
      i32.sub
      f32.convert_i32_u
      f32.const 0x1p+16 (;=65536;)
      f32.div
      f32.store offset=8
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          f32.load offset=8
          local.tee 2
          f32.abs
          f32.const 0x1p+31 (;=2.14748e+09;)
          f32.lt
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.trunc_f32_s
          local.set 0
          br 1 (;@2;)
        end
        i32.const -2147483648
        local.set 0
      end
      local.get 1
      local.get 0
      i32.store offset=4
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        f32.convert_i32_s
        local.get 1
        f32.load offset=8
        f32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 1
        i32.load offset=4
        i32.const 1
        i32.add
        i32.store offset=4
      end
      local.get 1
      i32.load offset=4
      memory.grow
      drop
      i32.const 0
      i32.const 0
      i32.load offset=6108
      local.get 1
      i32.load offset=4
      i32.const 16
      i32.shl
      i32.add
      i32.store offset=6108
    end)
  (func $new_FormatInformation (type 9) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 2
    i32.load offset=12
    i32.const 3
    i32.shr_s
    i32.const 3
    i32.and
    call $ErrorCorrectionLevel_forBits
    i32.store
    local.get 0
    local.get 2
    i32.load offset=12
    i32.const 7
    i32.and
    i32.store8 offset=4
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func $ErrorCorrectionLevel_forBits (type 5) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=8
          i32.const 0
          i32.lt_s
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 1
          i32.load offset=8
          i32.const 4
          i32.ge_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 1
        i32.const 4194304
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 1
      i32.const 6432
      local.get 1
      i32.load offset=8
      i32.const 12
      i32.mul
      i32.add
      i32.store offset=12
    end
    local.get 1
    i32.load offset=12)
  (func $FormatInformation_decodeFormatInformation (type 20) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 2
    i32.store offset=8
    local.get 3
    local.get 3
    i32.load offset=12
    local.get 3
    i32.load offset=8
    call $FormatInformation_doDecodeFormatInformation
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        i64.load align=4
        i64.store align=4
        br 1 (;@1;)
      end
      local.get 0
      local.get 3
      i32.load offset=12
      i32.const 21522
      i32.xor
      local.get 3
      i32.load offset=8
      i32.const 21522
      i32.xor
      call $FormatInformation_doDecodeFormatInformation
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func $FormatInformation_doDecodeFormatInformation (type 20) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 2
    i32.store offset=24
    local.get 3
    i32.const 2147483647
    i32.store offset=20
    local.get 3
    i32.const 0
    i32.store offset=16
    local.get 3
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load offset=12
          i32.const 32
          i32.lt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.const 6112
          local.get 3
          i32.load offset=12
          i32.const 3
          i32.shl
          i32.add
          i32.store offset=8
          local.get 3
          local.get 3
          i32.load offset=8
          i32.load
          i32.store offset=4
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.load offset=4
              local.get 3
              i32.load offset=28
              i32.eq
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=4
              local.get 3
              i32.load offset=24
              i32.eq
              i32.const 1
              i32.and
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 0
            local.get 3
            i32.load offset=8
            i32.load offset=4
            call $new_FormatInformation
            br 3 (;@1;)
          end
          local.get 3
          local.get 3
          i32.load offset=28
          local.get 3
          i32.load offset=4
          call $FormatInformation_numBitsDiffering
          i32.store
          block  ;; label = @4
            local.get 3
            i32.load
            local.get 3
            i32.load offset=20
            i32.lt_s
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 3
            i32.load offset=8
            i32.load offset=4
            i32.store offset=16
            local.get 3
            local.get 3
            i32.load
            i32.store offset=20
          end
          block  ;; label = @4
            local.get 3
            i32.load offset=28
            local.get 3
            i32.load offset=24
            i32.ne
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 3
            i32.load offset=24
            local.get 3
            i32.load offset=4
            call $FormatInformation_numBitsDiffering
            i32.store
            block  ;; label = @5
              local.get 3
              i32.load
              local.get 3
              i32.load offset=20
              i32.lt_s
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              local.get 3
              i32.load offset=8
              i32.load offset=4
              i32.store offset=16
              local.get 3
              local.get 3
              i32.load
              i32.store offset=20
            end
          end
          local.get 3
          local.get 3
          i32.load offset=12
          i32.const 1
          i32.add
          i32.store offset=12
          br 0 (;@3;)
        end
      end
      block  ;; label = @2
        local.get 3
        i32.load offset=20
        i32.const 3
        i32.le_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        i32.load offset=16
        call $new_FormatInformation
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store
      local.get 0
      i32.const 0
      i32.store8 offset=4
    end
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func $BitMatrix_get (type 10) (param i32 i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    local.get 0
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 2
    i32.store offset=4
    local.get 3
    local.get 3
    i32.load offset=4
    local.get 3
    i32.load offset=12
    i32.load offset=16
    i32.mul
    local.get 3
    i32.load offset=8
    i32.const 5
    i32.shr_s
    i32.add
    i32.store
    local.get 3
    i32.load offset=12
    i32.load offset=20
    local.get 3
    i32.load
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get 3
    i32.load offset=8
    i32.const 31
    i32.and
    i32.shr_u
    i32.const 1
    i32.and
    i32.const 0
    i32.ne
    i32.const 1
    i32.and
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s)
  (func $BitMatrix_flip (type 20) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    local.get 0
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 2
    i32.store offset=4
    local.get 3
    local.get 3
    i32.load offset=4
    local.get 3
    i32.load offset=12
    i32.load offset=16
    i32.mul
    local.get 3
    i32.load offset=8
    i32.const 5
    i32.shr_s
    i32.add
    i32.store
    local.get 3
    i32.load offset=12
    i32.load offset=20
    local.get 3
    i32.load
    i32.const 2
    i32.shl
    i32.add
    local.tee 2
    local.get 2
    i32.load
    i32.const 1
    local.get 3
    i32.load offset=8
    i32.const 31
    i32.and
    i32.shl
    i32.xor
    i32.store)
  (func $delete_BitMatrix (type 8) (param i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    i32.load offset=8
    i32.const 2
    i32.shl
    call $Memory_delete
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func $BitMatrixParser_setBitMatrix (type 8) (param i32)
    (local i32)
    global.get 0
    local.set 1
    i32.const 0
    local.get 0
    i64.load align=4
    i64.store offset=1364 align=4
    i32.const 0
    local.get 0
    i32.const 24
    i32.add
    i32.load
    i32.store offset=1388
    i32.const 0
    local.get 0
    i32.const 16
    i32.add
    i64.load align=4
    i64.store offset=1380 align=4
    i32.const 0
    local.get 0
    i32.const 8
    i32.add
    i64.load align=4
    i64.store offset=1372 align=4
    i32.const 0
    i32.const 0
    i32.store offset=1392
    local.get 1
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.load offset=4
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=12
        i32.const 21
        i32.lt_u
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=12
        i32.const 3
        i32.and
        i32.const 1
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
      end
    end)
  (func $BitMatrixParser_readVersion (type 6) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1392
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.load offset=1392
        i32.store offset=44
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.load offset=1368
      i32.store offset=40
      local.get 0
      local.get 0
      i32.load offset=40
      i32.const 17
      i32.sub
      i32.const 2
      i32.shr_s
      i32.store offset=36
      block  ;; label = @2
        local.get 0
        i32.load offset=36
        i32.const 6
        i32.le_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 0
        i32.load offset=36
        call $getVersionForNumber
        i32.store offset=44
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store offset=32
      local.get 0
      i32.const 5
      i32.store offset=28
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load offset=28
          i32.const 0
          i32.ge_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          local.get 0
          i32.load offset=40
          i32.const 11
          i32.sub
          i32.store offset=24
          local.get 0
          local.get 0
          i32.load offset=40
          i32.const 9
          i32.sub
          i32.store offset=20
          block  ;; label = @4
            loop  ;; label = @5
              local.get 0
              i32.load offset=20
              local.get 0
              i32.load offset=24
              i32.ge_s
              i32.const 1
              i32.and
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              local.get 0
              i32.load offset=20
              local.get 0
              i32.load offset=28
              local.get 0
              i32.load offset=32
              call $BitMatrixParser_copyBit
              i32.store offset=32
              local.get 0
              local.get 0
              i32.load offset=20
              i32.const -1
              i32.add
              i32.store offset=20
              br 0 (;@5;)
            end
          end
          local.get 0
          local.get 0
          i32.load offset=28
          i32.const -1
          i32.add
          i32.store offset=28
          br 0 (;@3;)
        end
      end
      i32.const 0
      local.get 0
      i32.load offset=32
      call $decodeVersionInformation
      i32.store offset=1392
      block  ;; label = @2
        i32.const 0
        i32.load offset=1392
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=1392
        call $getDimensionForVersion
        local.get 0
        i32.load offset=40
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.load offset=1392
        i32.store offset=44
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store offset=32
      local.get 0
      i32.const 5
      i32.store offset=16
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load offset=16
          i32.const 0
          i32.ge_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          local.get 0
          i32.load offset=40
          i32.const 11
          i32.sub
          i32.store offset=12
          local.get 0
          local.get 0
          i32.load offset=40
          i32.const 9
          i32.sub
          i32.store offset=8
          block  ;; label = @4
            loop  ;; label = @5
              local.get 0
              i32.load offset=8
              local.get 0
              i32.load offset=12
              i32.ge_s
              i32.const 1
              i32.and
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              local.get 0
              i32.load offset=16
              local.get 0
              i32.load offset=8
              local.get 0
              i32.load offset=32
              call $BitMatrixParser_copyBit
              i32.store offset=32
              local.get 0
              local.get 0
              i32.load offset=8
              i32.const -1
              i32.add
              i32.store offset=8
              br 0 (;@5;)
            end
          end
          local.get 0
          local.get 0
          i32.load offset=16
          i32.const -1
          i32.add
          i32.store offset=16
          br 0 (;@3;)
        end
      end
      i32.const 0
      local.get 0
      i32.load offset=32
      call $decodeVersionInformation
      i32.store offset=1392
      block  ;; label = @2
        i32.const 0
        i32.load offset=1392
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=1392
        call $getDimensionForVersion
        local.get 0
        i32.load offset=40
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.load offset=1392
        i32.store offset=44
        br 1 (;@1;)
      end
      local.get 0
      i32.const 4194304
      i32.store offset=44
    end
    local.get 0
    i32.load offset=44
    local.set 1
    local.get 0
    i32.const 48
    i32.add
    global.set 0
    local.get 1)
  (func $BitMatrixParser_readFormatInformation (type 8) (param i32)
    (local i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 0
    i32.store offset=44
    local.get 1
    i32.const 0
    i32.store offset=40
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.load offset=40
        i32.const 6
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 1
        i32.load offset=40
        i32.const 8
        local.get 1
        i32.load offset=44
        call $BitMatrixParser_copyBit
        i32.store offset=44
        local.get 1
        local.get 1
        i32.load offset=40
        i32.const 1
        i32.add
        i32.store offset=40
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.const 7
    i32.const 8
    local.get 1
    i32.load offset=44
    call $BitMatrixParser_copyBit
    i32.store offset=44
    local.get 1
    i32.const 8
    i32.const 8
    local.get 1
    i32.load offset=44
    call $BitMatrixParser_copyBit
    i32.store offset=44
    local.get 1
    i32.const 8
    i32.const 7
    local.get 1
    i32.load offset=44
    call $BitMatrixParser_copyBit
    i32.store offset=44
    local.get 1
    i32.const 5
    i32.store offset=36
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.load offset=36
        i32.const 0
        i32.ge_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const 8
        local.get 1
        i32.load offset=36
        local.get 1
        i32.load offset=44
        call $BitMatrixParser_copyBit
        i32.store offset=44
        local.get 1
        local.get 1
        i32.load offset=36
        i32.const -1
        i32.add
        i32.store offset=36
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.const 0
    i32.load offset=1368
    i32.store offset=32
    local.get 1
    i32.const 0
    i32.store offset=28
    local.get 1
    local.get 1
    i32.load offset=32
    i32.const 7
    i32.sub
    i32.store offset=24
    local.get 1
    local.get 1
    i32.load offset=32
    i32.const 1
    i32.sub
    i32.store offset=20
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.load offset=20
        local.get 1
        i32.load offset=24
        i32.ge_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const 8
        local.get 1
        i32.load offset=20
        local.get 1
        i32.load offset=28
        call $BitMatrixParser_copyBit
        i32.store offset=28
        local.get 1
        local.get 1
        i32.load offset=20
        i32.const -1
        i32.add
        i32.store offset=20
        br 0 (;@2;)
      end
    end
    local.get 1
    local.get 1
    i32.load offset=32
    i32.const 8
    i32.sub
    i32.store offset=16
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.load offset=16
        local.get 1
        i32.load offset=32
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 1
        i32.load offset=16
        i32.const 8
        local.get 1
        i32.load offset=28
        call $BitMatrixParser_copyBit
        i32.store offset=28
        local.get 1
        local.get 1
        i32.load offset=16
        i32.const 1
        i32.add
        i32.store offset=16
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.const 8
    i32.add
    local.tee 2
    local.get 1
    i32.load offset=44
    local.get 1
    i32.load offset=28
    call $FormatInformation_decodeFormatInformation
    i32.const 0
    local.get 2
    i64.load align=4
    i64.store offset=1396 align=4
    local.get 0
    i32.const 0
    i64.load offset=1396 align=4
    i64.store align=4
    local.get 1
    i32.const 48
    i32.add
    global.set 0)
  (func $BitMatrixParser_readCodewords (type 6) (result i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 112
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    call $BitMatrixParser_readVersion
    i32.store offset=104
    local.get 0
    i32.const 0
    i32.load offset=1368
    i32.store offset=100
    local.get 0
    i32.load offset=100
    local.set 1
    i32.const 0
    i32.load8_u offset=1400
    local.set 2
    local.get 0
    i32.const 24
    i32.add
    i32.const 0
    i32.load offset=1388
    i32.store
    local.get 0
    i32.const 16
    i32.add
    i32.const 0
    i64.load offset=1380 align=4
    i64.store
    local.get 0
    i32.const 8
    i32.add
    i32.const 0
    i64.load offset=1372 align=4
    i64.store
    local.get 0
    i32.const 0
    i64.load offset=1364 align=4
    i64.store
    local.get 0
    local.get 1
    local.get 2
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $DataMask_unmaskBitMatrix
    local.get 0
    local.get 0
    i32.load offset=104
    i32.load offset=4
    i32.const 0
    i32.shl
    call $Memory_allocate
    i32.store offset=96
    local.get 0
    i32.const 64
    i32.add
    local.get 0
    i32.load offset=104
    call $Version_buildFunctionPattern
    local.get 0
    i32.const 1
    i32.store8 offset=63
    local.get 0
    i32.const 0
    i32.store offset=56
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.load offset=56
        local.get 0
        i32.load offset=104
        i32.load offset=4
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=96
        local.get 0
        i32.load offset=56
        i32.add
        i32.const 0
        i32.store8
        local.get 0
        local.get 0
        i32.load offset=56
        i32.const 1
        i32.add
        i32.store offset=56
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 0
    i32.store offset=52
    local.get 0
    i32.const 0
    i32.store offset=48
    local.get 0
    i32.const 0
    i32.store offset=44
    local.get 0
    local.get 0
    i32.load offset=100
    i32.const 1
    i32.sub
    i32.store offset=40
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.load offset=40
        i32.const 0
        i32.gt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 0
          i32.load offset=40
          i32.const 6
          i32.eq
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 0
          i32.load offset=40
          i32.const -1
          i32.add
          i32.store offset=40
        end
        local.get 0
        i32.const 0
        i32.store offset=36
        block  ;; label = @3
          loop  ;; label = @4
            local.get 0
            i32.load offset=36
            local.get 0
            i32.load offset=100
            i32.lt_s
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load8_u offset=63
                i32.const 24
                i32.shl
                i32.const 24
                i32.shr_s
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.load offset=100
                i32.const 1
                i32.sub
                local.get 0
                i32.load offset=36
                i32.sub
                local.set 1
                br 1 (;@5;)
              end
              local.get 0
              i32.load offset=36
              local.set 1
            end
            local.get 0
            local.get 1
            i32.store offset=32
            local.get 0
            i32.const 0
            i32.store offset=28
            block  ;; label = @5
              loop  ;; label = @6
                local.get 0
                i32.load offset=28
                i32.const 2
                i32.lt_s
                i32.const 1
                i32.and
                i32.eqz
                br_if 1 (;@5;)
                block  ;; label = @7
                  local.get 0
                  i32.const 64
                  i32.add
                  local.get 0
                  i32.load offset=40
                  local.get 0
                  i32.load offset=28
                  i32.sub
                  local.get 0
                  i32.load offset=32
                  call $BitMatrix_get
                  i32.const 255
                  i32.and
                  i32.const 0
                  i32.const 255
                  i32.and
                  i32.ne
                  i32.const 1
                  i32.and
                  br_if 0 (;@7;)
                  local.get 0
                  local.get 0
                  i32.load offset=44
                  i32.const 1
                  i32.add
                  i32.store offset=44
                  local.get 0
                  local.get 0
                  i32.load offset=48
                  i32.const 1
                  i32.shl
                  i32.store offset=48
                  block  ;; label = @8
                    i32.const 1364
                    local.get 0
                    i32.load offset=40
                    local.get 0
                    i32.load offset=28
                    i32.sub
                    local.get 0
                    i32.load offset=32
                    call $BitMatrix_get
                    i32.const 255
                    i32.and
                    i32.const 0
                    i32.const 255
                    i32.and
                    i32.ne
                    i32.const 1
                    i32.and
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 0
                    local.get 0
                    i32.load offset=48
                    i32.const 1
                    i32.or
                    i32.store offset=48
                  end
                  block  ;; label = @8
                    local.get 0
                    i32.load offset=44
                    i32.const 8
                    i32.eq
                    i32.const 1
                    i32.and
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 0
                    i32.load offset=48
                    local.set 1
                    local.get 0
                    i32.load offset=96
                    local.set 2
                    local.get 0
                    local.get 0
                    i32.load offset=52
                    local.tee 3
                    i32.const 1
                    i32.add
                    i32.store offset=52
                    local.get 2
                    local.get 3
                    i32.add
                    local.get 1
                    i32.store8
                    local.get 0
                    i32.const 0
                    i32.store offset=44
                    local.get 0
                    i32.const 0
                    i32.store offset=48
                  end
                end
                local.get 0
                local.get 0
                i32.load offset=28
                i32.const 1
                i32.add
                i32.store offset=28
                br 0 (;@6;)
              end
            end
            local.get 0
            local.get 0
            i32.load offset=36
            i32.const 1
            i32.add
            i32.store offset=36
            br 0 (;@4;)
          end
        end
        local.get 0
        local.get 0
        i32.load8_u offset=63
        i32.const 255
        i32.and
        i32.const 0
        i32.const 255
        i32.and
        i32.ne
        i32.const -1
        i32.xor
        i32.const 1
        i32.and
        i32.store8 offset=63
        local.get 0
        local.get 0
        i32.load offset=40
        i32.const 2
        i32.sub
        i32.store offset=40
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 64
    i32.add
    call $delete_BitMatrix
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=52
        local.get 0
        i32.load offset=104
        i32.load offset=4
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.store offset=108
        br 1 (;@1;)
      end
      local.get 0
      local.get 0
      i32.load offset=96
      i32.store offset=108
    end
    local.get 0
    i32.load offset=108
    local.set 1
    local.get 0
    i32.const 112
    i32.add
    global.set 0
    local.get 1)
  (func $DataBlock_getDataBlocks (type 23) (param i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 144
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 1
    i32.store offset=140
    local.get 4
    local.get 2
    i32.store offset=136
    local.get 4
    local.get 3
    i32.store offset=132
    local.get 4
    i32.const 112
    i32.add
    local.tee 3
    local.get 4
    i32.load offset=136
    i32.const 16
    i32.add
    local.get 4
    i32.load offset=132
    i32.load
    i32.const 20
    i32.mul
    i32.add
    local.tee 2
    i64.load align=4
    i64.store align=4
    local.get 3
    i32.const 16
    i32.add
    local.get 2
    i32.const 16
    i32.add
    i32.load
    i32.store
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i64.load align=4
    i64.store align=4
    local.get 4
    i32.const 0
    i32.store offset=108
    local.get 4
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=104
    local.get 4
    i32.const 0
    i32.store offset=100
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load offset=100
        i32.const 2
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 4
        i32.load offset=108
        local.get 4
        i32.load offset=104
        local.get 4
        i32.load offset=100
        i32.const 3
        i32.shl
        i32.add
        i32.load
        i32.add
        i32.store offset=108
        local.get 4
        local.get 4
        i32.load offset=100
        i32.const 1
        i32.add
        i32.store offset=100
        br 0 (;@2;)
      end
    end
    local.get 4
    local.get 4
    i32.load offset=108
    i32.const 2
    i32.shl
    i32.const 4
    i32.add
    call $Memory_allocate
    i32.store offset=96
    local.get 4
    local.get 4
    i32.load offset=136
    i32.load offset=4
    i32.const 0
    i32.shl
    call $Memory_allocate
    i32.store offset=92
    local.get 4
    i32.const 0
    i32.store offset=88
    local.get 4
    i32.const 0
    i32.store offset=84
    local.get 4
    i32.const 0
    i32.store offset=80
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load offset=80
        i32.const 2
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.const 72
        i32.add
        local.get 4
        i32.load offset=104
        local.get 4
        i32.load offset=80
        i32.const 3
        i32.shl
        i32.add
        i64.load align=4
        i64.store align=4
        local.get 4
        i32.const 0
        i32.store offset=68
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              local.get 4
              i32.load offset=68
              local.get 4
              i32.load offset=72
              i32.lt_s
              i32.const 1
              i32.and
              i32.eqz
              br_if 1 (;@4;)
              block  ;; label = @6
                local.get 4
                i32.load offset=76
                br_if 0 (;@6;)
                br 3 (;@3;)
              end
              local.get 4
              local.get 4
              i32.load offset=76
              i32.store offset=64
              local.get 4
              local.get 4
              i32.load offset=112
              local.get 4
              i32.load offset=64
              i32.add
              i32.store offset=60
              local.get 4
              i32.load offset=96
              local.get 4
              i32.load offset=88
              i32.const 3
              i32.shl
              i32.add
              local.get 4
              i32.load offset=64
              i32.store
              local.get 4
              i32.load offset=96
              local.get 4
              i32.load offset=88
              i32.const 3
              i32.shl
              i32.add
              local.get 4
              i32.load offset=92
              local.get 4
              i32.load offset=84
              i32.add
              i32.store offset=4
              local.get 4
              local.get 4
              i32.load offset=88
              i32.const 1
              i32.add
              i32.store offset=88
              local.get 4
              local.get 4
              i32.load offset=84
              local.get 4
              i32.load offset=64
              i32.add
              i32.store offset=84
              local.get 4
              local.get 4
              i32.load offset=68
              i32.const 1
              i32.add
              i32.store offset=68
              br 0 (;@5;)
            end
          end
        end
        local.get 4
        local.get 4
        i32.load offset=80
        i32.const 1
        i32.add
        i32.store offset=80
        br 0 (;@2;)
      end
    end
    local.get 4
    local.get 4
    i32.load offset=96
    i32.load
    i32.store offset=56
    local.get 4
    local.get 4
    i32.load offset=108
    i32.const 1
    i32.sub
    i32.store offset=52
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 4
          i32.load offset=52
          i32.const 0
          i32.ge_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 4
          local.get 4
          i32.load offset=96
          local.get 4
          i32.load offset=52
          i32.const 3
          i32.shl
          i32.add
          i32.load
          i32.store offset=48
          block  ;; label = @4
            local.get 4
            i32.load offset=48
            local.get 4
            i32.load offset=56
            i32.eq
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
          block  ;; label = @4
            local.get 4
            i32.load offset=48
            local.get 4
            i32.load offset=56
            i32.const 1
            i32.add
            i32.ne
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
          end
          local.get 4
          local.get 4
          i32.load offset=52
          i32.const -1
          i32.add
          i32.store offset=52
          br 0 (;@3;)
        end
      end
    end
    local.get 4
    local.get 4
    i32.load offset=52
    i32.const 1
    i32.add
    i32.store offset=52
    local.get 4
    local.get 4
    i32.load offset=56
    i32.store offset=44
    local.get 4
    i32.const 0
    i32.store offset=40
    local.get 4
    i32.const 0
    i32.store offset=36
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load offset=36
        local.get 4
        i32.load offset=44
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.const 0
        i32.store offset=32
        block  ;; label = @3
          loop  ;; label = @4
            local.get 4
            i32.load offset=32
            local.get 4
            i32.load offset=88
            i32.lt_s
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 4
            i32.load offset=140
            local.set 3
            local.get 4
            local.get 4
            i32.load offset=40
            local.tee 2
            i32.const 1
            i32.add
            i32.store offset=40
            local.get 4
            i32.load offset=96
            local.get 4
            i32.load offset=32
            i32.const 3
            i32.shl
            i32.add
            i32.load offset=4
            local.get 4
            i32.load offset=36
            i32.add
            local.get 3
            local.get 2
            i32.add
            i32.load8_u
            i32.store8
            local.get 4
            local.get 4
            i32.load offset=32
            i32.const 1
            i32.add
            i32.store offset=32
            br 0 (;@4;)
          end
        end
        local.get 4
        local.get 4
        i32.load offset=36
        i32.const 1
        i32.add
        i32.store offset=36
        br 0 (;@2;)
      end
    end
    local.get 4
    local.get 4
    i32.load offset=52
    i32.store offset=28
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load offset=28
        local.get 4
        i32.load offset=88
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.load offset=140
        local.set 3
        local.get 4
        local.get 4
        i32.load offset=40
        local.tee 2
        i32.const 1
        i32.add
        i32.store offset=40
        local.get 4
        i32.load offset=96
        local.get 4
        i32.load offset=28
        i32.const 3
        i32.shl
        i32.add
        i32.load offset=4
        local.get 4
        i32.load offset=44
        i32.add
        local.get 3
        local.get 2
        i32.add
        i32.load8_u
        i32.store8
        local.get 4
        local.get 4
        i32.load offset=28
        i32.const 1
        i32.add
        i32.store offset=28
        br 0 (;@2;)
      end
    end
    local.get 4
    local.get 4
    i32.load offset=96
    i32.load
    local.get 4
    i32.load offset=112
    i32.add
    i32.store offset=24
    local.get 4
    local.get 4
    i32.load offset=44
    i32.store offset=20
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load offset=20
        local.get 4
        i32.load offset=24
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.const 0
        i32.store offset=16
        block  ;; label = @3
          loop  ;; label = @4
            local.get 4
            i32.load offset=16
            local.get 4
            i32.load offset=88
            i32.lt_s
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 4
                i32.load offset=16
                local.get 4
                i32.load offset=52
                i32.lt_s
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i32.load offset=20
                local.set 3
                br 1 (;@5;)
              end
              local.get 4
              i32.load offset=20
              i32.const 1
              i32.add
              local.set 3
            end
            local.get 4
            local.get 3
            i32.store offset=12
            local.get 4
            i32.load offset=140
            local.set 3
            local.get 4
            local.get 4
            i32.load offset=40
            local.tee 2
            i32.const 1
            i32.add
            i32.store offset=40
            local.get 4
            i32.load offset=96
            local.get 4
            i32.load offset=16
            i32.const 3
            i32.shl
            i32.add
            i32.load offset=4
            local.get 4
            i32.load offset=12
            i32.add
            local.get 3
            local.get 2
            i32.add
            i32.load8_u
            i32.store8
            local.get 4
            local.get 4
            i32.load offset=16
            i32.const 1
            i32.add
            i32.store offset=16
            br 0 (;@4;)
          end
        end
        local.get 4
        local.get 4
        i32.load offset=20
        i32.const 1
        i32.add
        i32.store offset=20
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 4
    i32.load offset=108
    i32.store
    local.get 0
    local.get 4
    i32.load offset=96
    i32.store offset=4
    local.get 4
    i32.const 144
    i32.add
    global.set 0)
  (func $Decoder_correctErrors (type 20) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=28
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 2
    i32.store offset=20
    local.get 3
    local.get 3
    i32.load offset=24
    local.get 3
    i32.load offset=20
    i32.add
    i32.store offset=16
    local.get 3
    local.get 3
    i32.load offset=16
    i32.const 2
    i32.shl
    call $Memory_allocate
    i32.store offset=12
    local.get 3
    i32.const 0
    i32.store offset=8
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.load offset=8
        local.get 3
        i32.load offset=16
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=12
        local.get 3
        i32.load offset=8
        i32.const 2
        i32.shl
        i32.add
        local.get 3
        i32.load offset=28
        local.get 3
        i32.load offset=8
        i32.add
        i32.load8_u
        i32.const 24
        i32.shl
        i32.const 24
        i32.shr_s
        i32.const 255
        i32.and
        i32.store
        local.get 3
        local.get 3
        i32.load offset=8
        i32.const 1
        i32.add
        i32.store offset=8
        br 0 (;@2;)
      end
    end
    local.get 3
    local.get 3
    i32.load offset=16
    local.get 3
    i32.load offset=20
    i32.sub
    i32.store offset=4
    local.get 3
    i32.load offset=12
    local.get 3
    i32.load offset=16
    local.get 3
    i32.load offset=4
    call $ReedSolomonDecoder_decode
    local.get 3
    i32.const 0
    i32.store
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.load
        local.get 3
        i32.load offset=20
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=28
        local.get 3
        i32.load
        i32.add
        local.get 3
        i32.load offset=12
        local.get 3
        i32.load
        i32.const 2
        i32.shl
        i32.add
        i32.load
        i32.store8
        local.get 3
        local.get 3
        i32.load
        i32.const 1
        i32.add
        i32.store
        br 0 (;@2;)
      end
    end
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func $ReedSolomonDecoder_decode (type 20) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 240
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=236
    local.get 3
    local.get 1
    i32.store offset=232
    local.get 3
    local.get 2
    i32.store offset=228
    local.get 3
    i32.const 216
    i32.add
    local.get 3
    i32.load offset=236
    local.get 3
    i32.load offset=232
    call $new_GenericGFPoly
    local.get 3
    local.get 3
    i32.load offset=228
    i32.const 2
    i32.shl
    call $Memory_allocate
    i32.store offset=212
    local.get 3
    i32.const 1
    i32.store8 offset=211
    local.get 3
    i32.const 0
    i32.store offset=204
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.load offset=204
        local.get 3
        i32.load offset=228
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        i32.const 6480
        i32.const 12
        i32.add
        local.get 3
        i32.load offset=204
        i32.const 2
        i32.shl
        i32.add
        i32.load
        local.set 2
        local.get 3
        i32.const 8
        i32.add
        i32.const 8
        i32.add
        local.get 3
        i32.const 216
        i32.add
        i32.const 8
        i32.add
        i32.load
        i32.store
        local.get 3
        local.get 3
        i64.load offset=216
        i64.store offset=8
        local.get 3
        local.get 3
        i32.const 8
        i32.add
        local.get 2
        call $GenericGFPoly_evaluateAt
        i32.store offset=200
        local.get 3
        i32.load offset=212
        local.get 3
        i32.load offset=228
        i32.const 1
        i32.sub
        local.get 3
        i32.load offset=204
        i32.sub
        i32.const 2
        i32.shl
        i32.add
        local.get 3
        i32.load offset=200
        i32.store
        block  ;; label = @3
          local.get 3
          i32.load offset=200
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.const 0
          i32.store8 offset=211
        end
        local.get 3
        local.get 3
        i32.load offset=204
        i32.const 1
        i32.add
        i32.store offset=204
        br 0 (;@2;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load8_u offset=211
        i32.const 255
        i32.and
        i32.const 0
        i32.const 255
        i32.and
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      local.get 3
      i32.const 184
      i32.add
      local.get 3
      i32.load offset=212
      local.get 3
      i32.load offset=228
      call $new_GenericGFPoly
      local.get 3
      i32.const 144
      i32.add
      local.get 3
      i32.load offset=228
      i32.const 1
      call $GenericGF_buildMonomial
      local.get 3
      i32.load offset=228
      local.set 2
      local.get 3
      i32.const 40
      i32.add
      i32.const 8
      i32.add
      local.get 3
      i32.const 144
      i32.add
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 3
      local.get 3
      i64.load offset=144
      i64.store offset=40
      local.get 3
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      local.get 3
      i32.const 184
      i32.add
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 3
      local.get 3
      i64.load offset=184
      i64.store offset=24
      local.get 3
      i32.const 160
      i32.add
      local.get 3
      i32.const 40
      i32.add
      local.get 3
      i32.const 24
      i32.add
      local.get 2
      call $ReedSolomonDecoder_runEuclideanAlgorithm
      local.get 3
      i32.const 128
      i32.add
      local.tee 1
      local.get 3
      i32.const 160
      i32.add
      local.tee 2
      i64.load align=4
      i64.store align=4
      local.get 1
      i32.const 8
      i32.add
      local.get 2
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 3
      i32.const 112
      i32.add
      local.tee 1
      local.get 2
      i32.const 12
      i32.add
      local.tee 2
      i64.load align=4
      i64.store align=4
      local.get 1
      i32.const 8
      i32.add
      local.get 2
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 3
      i32.const 56
      i32.add
      i32.const 8
      i32.add
      local.get 3
      i32.const 128
      i32.add
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 3
      local.get 3
      i64.load offset=128
      i64.store offset=56
      local.get 3
      i32.const 104
      i32.add
      local.get 3
      i32.const 56
      i32.add
      call $ReedSolomonDecoder_findErrorLocations
      local.get 3
      i32.const 104
      i32.add
      drop
      local.get 3
      local.get 3
      i32.load offset=108
      i32.store offset=100
      local.get 3
      local.get 3
      i32.load offset=104
      i32.store offset=96
      local.get 3
      i32.load offset=100
      local.set 2
      local.get 3
      i32.load offset=96
      local.set 1
      local.get 3
      i32.const 72
      i32.add
      i32.const 8
      i32.add
      local.get 3
      i32.const 112
      i32.add
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 3
      local.get 3
      i64.load offset=112
      i64.store offset=72
      local.get 3
      local.get 3
      i32.const 72
      i32.add
      local.get 2
      local.get 1
      call $ReedSolomonDecoder_findErrorMagnitudes
      i32.store offset=92
      local.get 3
      i32.const 0
      i32.store offset=88
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load offset=88
          local.get 3
          i32.load offset=96
          i32.lt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          local.get 3
          i32.load offset=232
          i32.const 1
          i32.sub
          i32.const 6480
          i32.const 1036
          i32.add
          local.get 3
          i32.load offset=100
          local.get 3
          i32.load offset=88
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.sub
          i32.store offset=84
          block  ;; label = @4
            local.get 3
            i32.load offset=84
            i32.const 0
            i32.lt_s
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
          end
          local.get 3
          i32.load offset=236
          local.get 3
          i32.load offset=84
          i32.const 2
          i32.shl
          i32.add
          local.get 3
          i32.load offset=236
          local.get 3
          i32.load offset=84
          i32.const 2
          i32.shl
          i32.add
          i32.load
          local.get 3
          i32.load offset=92
          local.get 3
          i32.load offset=88
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.xor
          i32.store
          local.get 3
          local.get 3
          i32.load offset=88
          i32.const 1
          i32.add
          i32.store offset=88
          br 0 (;@3;)
        end
      end
    end
    local.get 3
    i32.const 240
    i32.add
    global.set 0)
  (func $new_GenericGFPoly (type 20) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 2
    i32.store offset=24
    block  ;; label = @1
      local.get 3
      i32.load offset=24
      br_if 0 (;@1;)
    end
    local.get 3
    local.get 3
    i32.load offset=24
    i32.store offset=20
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=20
        i32.const 1
        i32.gt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=28
        i32.load
        br_if 0 (;@2;)
        local.get 3
        i32.const 1
        i32.store offset=16
        loop  ;; label = @3
          i32.const 0
          local.set 2
          block  ;; label = @4
            local.get 3
            i32.load offset=16
            local.get 3
            i32.load offset=20
            i32.lt_s
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.load offset=28
            local.get 3
            i32.load offset=16
            i32.const 2
            i32.shl
            i32.add
            i32.load
            i32.const 0
            i32.eq
            local.set 2
          end
          block  ;; label = @4
            local.get 2
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 3
            i32.load offset=16
            i32.const 1
            i32.add
            i32.store offset=16
            br 1 (;@3;)
          end
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.load offset=16
            local.get 3
            i32.load offset=20
            i32.eq
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 0
            i32.load offset=8544
            i32.store offset=4
            local.get 0
            i32.const 0
            i32.load offset=8548
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 0
          local.get 3
          i32.load offset=20
          local.get 3
          i32.load offset=16
          i32.sub
          i32.store offset=8
          local.get 0
          local.get 3
          i32.load offset=24
          i32.const 2
          i32.shl
          call $Memory_allocate
          i32.store offset=4
          local.get 3
          i32.const 0
          i32.store offset=12
          block  ;; label = @4
            loop  ;; label = @5
              local.get 3
              i32.load offset=12
              local.get 0
              i32.load offset=8
              i32.lt_s
              i32.const 1
              i32.and
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              i32.load offset=4
              local.get 3
              i32.load offset=12
              i32.const 2
              i32.shl
              i32.add
              local.get 3
              i32.load offset=28
              local.get 3
              i32.load offset=12
              local.get 3
              i32.load offset=16
              i32.add
              i32.const 2
              i32.shl
              i32.add
              i32.load
              i32.store
              local.get 3
              local.get 3
              i32.load offset=12
              i32.const 1
              i32.add
              i32.store offset=12
              br 0 (;@5;)
            end
          end
        end
        br 1 (;@1;)
      end
      local.get 0
      local.get 3
      i32.load offset=28
      i32.store offset=4
      local.get 0
      local.get 3
      i32.load offset=24
      i32.store offset=8
    end
    local.get 0
    local.get 0
    i32.load offset=8
    i32.const 1
    i32.sub
    i32.store
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func $GenericGFPoly_evaluateAt (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=24
        br_if 0 (;@2;)
        local.get 2
        local.get 0
        i32.load offset=4
        local.get 0
        i32.load offset=8
        i32.const 1
        i32.sub
        i32.const 2
        i32.shl
        i32.add
        i32.load
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 2
      local.get 0
      i32.load offset=8
      i32.store offset=20
      block  ;; label = @2
        local.get 2
        i32.load offset=24
        i32.const 1
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 0
        i32.store offset=16
        local.get 2
        i32.const 0
        i32.store offset=12
        block  ;; label = @3
          loop  ;; label = @4
            local.get 2
            i32.load offset=12
            local.get 2
            i32.load offset=20
            i32.lt_s
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 2
            local.get 2
            i32.load offset=16
            local.get 0
            i32.load offset=4
            local.get 2
            i32.load offset=12
            i32.const 2
            i32.shl
            i32.add
            i32.load
            i32.xor
            i32.store offset=16
            local.get 2
            local.get 2
            i32.load offset=12
            i32.const 1
            i32.add
            i32.store offset=12
            br 0 (;@4;)
          end
        end
        local.get 2
        local.get 2
        i32.load offset=16
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 2
      local.get 0
      i32.load offset=4
      i32.load
      i32.store offset=8
      local.get 2
      i32.const 1
      i32.store offset=4
      block  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i32.load offset=4
          local.get 2
          i32.load offset=20
          i32.lt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 2
          local.get 2
          i32.load offset=24
          local.get 2
          i32.load offset=8
          call $GenericGF_multiply
          local.get 0
          i32.load offset=4
          local.get 2
          i32.load offset=4
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.xor
          i32.store offset=8
          local.get 2
          local.get 2
          i32.load offset=4
          i32.const 1
          i32.add
          i32.store offset=4
          br 0 (;@3;)
        end
      end
      local.get 2
      local.get 2
      i32.load offset=8
      i32.store offset=28
    end
    local.get 2
    i32.load offset=28
    local.set 0
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 0)
  (func $GenericGF_buildMonomial (type 20) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 2
    i32.store offset=8
    block  ;; label = @1
      local.get 3
      i32.load offset=12
      i32.const 0
      i32.lt_s
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=8
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.add
        i32.const 0
        i32.load offset=8548
        i32.store
        local.get 0
        i32.const 0
        i64.load offset=8540 align=4
        i64.store align=4
        br 1 (;@1;)
      end
      local.get 3
      local.get 3
      i32.load offset=12
      i32.const 1
      i32.add
      i32.const 2
      i32.shl
      call $Memory_allocate
      i32.store offset=4
      local.get 3
      i32.load offset=4
      local.get 3
      i32.load offset=8
      i32.store
      local.get 0
      local.get 3
      i32.load offset=4
      local.get 3
      i32.load offset=12
      i32.const 1
      i32.add
      call $new_GenericGFPoly
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func $ReedSolomonDecoder_runEuclideanAlgorithm (type 23) (param i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 464
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 0
    i32.store offset=460
    local.get 4
    local.get 3
    i32.store offset=456
    block  ;; label = @1
      local.get 1
      i32.load
      local.get 2
      i32.load
      i32.lt_s
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.const 440
      i32.add
      local.tee 0
      local.get 1
      i64.load align=4
      i64.store align=4
      local.get 0
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 1
      local.get 2
      i64.load align=4
      i64.store align=4
      local.get 1
      i32.const 8
      i32.add
      local.get 2
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 2
      local.get 0
      i64.load align=4
      i64.store align=4
      local.get 2
      i32.const 8
      i32.add
      local.get 0
      i32.const 8
      i32.add
      i32.load
      i32.store
    end
    local.get 4
    i32.const 424
    i32.add
    local.tee 0
    local.get 1
    i64.load align=4
    i64.store align=4
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 4
    i32.const 408
    i32.add
    local.tee 1
    local.get 2
    i64.load align=4
    i64.store align=4
    local.get 1
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 4
    i32.const 392
    i32.add
    local.tee 1
    i32.const 8
    i32.add
    i32.const 0
    i32.load offset=8548
    i32.store
    local.get 1
    i32.const 0
    i64.load offset=8540 align=4
    i64.store align=4
    local.get 4
    i32.const 376
    i32.add
    local.tee 1
    i32.const 8
    i32.add
    i32.const 0
    i32.load offset=8560
    i32.store
    local.get 1
    i32.const 0
    i64.load offset=8552 align=4
    i64.store align=4
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load offset=408
        local.get 4
        i32.load offset=456
        i32.const 2
        i32.div_s
        i32.ge_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.const 360
        i32.add
        local.tee 2
        local.get 4
        i32.const 424
        i32.add
        local.tee 1
        i64.load align=4
        i64.store align=4
        local.get 2
        i32.const 8
        i32.add
        local.get 1
        i32.const 8
        i32.add
        i32.load
        i32.store
        local.get 4
        i32.const 344
        i32.add
        local.tee 0
        local.get 4
        i32.const 392
        i32.add
        local.tee 2
        i64.load align=4
        i64.store align=4
        local.get 0
        i32.const 8
        i32.add
        local.get 2
        i32.const 8
        i32.add
        i32.load
        i32.store
        local.get 1
        local.get 4
        i32.const 408
        i32.add
        local.tee 0
        i64.load align=4
        i64.store align=4
        local.get 1
        i32.const 8
        i32.add
        local.get 0
        i32.const 8
        i32.add
        i32.load
        i32.store
        local.get 2
        local.get 4
        i32.const 376
        i32.add
        local.tee 1
        i64.load align=4
        i64.store align=4
        local.get 2
        i32.const 8
        i32.add
        local.get 1
        i32.const 8
        i32.add
        i32.load
        i32.store
        block  ;; label = @3
          local.get 4
          i32.load offset=428
          i32.load
          br_if 0 (;@3;)
        end
        local.get 4
        i32.const 408
        i32.add
        local.tee 1
        local.get 4
        i32.const 360
        i32.add
        local.tee 2
        i64.load align=4
        i64.store align=4
        local.get 1
        i32.const 8
        i32.add
        local.get 2
        i32.const 8
        i32.add
        i32.load
        i32.store
        local.get 4
        i32.const 328
        i32.add
        local.tee 1
        i32.const 8
        i32.add
        i32.const 0
        i32.load offset=8548
        i32.store
        local.get 1
        i32.const 0
        i64.load offset=8540 align=4
        i64.store align=4
        local.get 4
        local.get 4
        i32.load offset=428
        local.get 4
        i32.load offset=432
        i32.const 1
        i32.sub
        local.get 4
        i32.load offset=424
        i32.sub
        i32.const 2
        i32.shl
        i32.add
        i32.load
        i32.store offset=324
        local.get 4
        local.get 4
        i32.load offset=324
        call $GenericGF_inverse
        i32.store offset=320
        loop  ;; label = @3
          i32.const 0
          local.set 1
          block  ;; label = @4
            local.get 4
            i32.load offset=408
            local.get 4
            i32.load offset=424
            i32.ge_s
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.load offset=412
            i32.load
            i32.const 0
            i32.ne
            local.set 1
          end
          block  ;; label = @4
            local.get 1
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 4
            i32.load offset=408
            local.get 4
            i32.load offset=424
            i32.sub
            i32.store offset=316
            local.get 4
            local.get 4
            i32.load offset=412
            i32.load
            local.get 4
            i32.load offset=320
            call $GenericGF_multiply
            i32.store offset=312
            local.get 4
            i32.const 280
            i32.add
            local.get 4
            i32.load offset=316
            local.get 4
            i32.load offset=312
            call $GenericGF_buildMonomial
            local.get 4
            i32.const 16
            i32.add
            i32.const 8
            i32.add
            local.get 4
            i32.const 328
            i32.add
            i32.const 8
            i32.add
            i32.load
            i32.store
            local.get 4
            local.get 4
            i64.load offset=328
            i64.store offset=16
            local.get 4
            i32.const 8
            i32.add
            local.get 4
            i32.const 280
            i32.add
            i32.const 8
            i32.add
            i32.load
            i32.store
            local.get 4
            local.get 4
            i64.load offset=280
            i64.store
            local.get 4
            i32.const 296
            i32.add
            local.get 4
            i32.const 16
            i32.add
            local.get 4
            call $GenericGFPoly_addOrSubtract
            local.get 4
            i32.const 328
            i32.add
            local.tee 1
            local.get 4
            i32.const 296
            i32.add
            local.tee 2
            i64.load align=4
            i64.store align=4
            local.get 1
            i32.const 8
            i32.add
            local.get 2
            i32.const 8
            i32.add
            i32.load
            i32.store
            local.get 4
            i32.load offset=316
            local.set 1
            local.get 4
            i32.load offset=312
            local.set 2
            local.get 4
            i32.const 32
            i32.add
            i32.const 8
            i32.add
            local.get 4
            i32.const 424
            i32.add
            i32.const 8
            i32.add
            i32.load
            i32.store
            local.get 4
            local.get 4
            i64.load offset=424
            i64.store offset=32
            local.get 4
            i32.const 248
            i32.add
            local.get 4
            i32.const 32
            i32.add
            local.get 1
            local.get 2
            call $GenericGFPoly_multiplyByMonomial
            local.get 4
            i32.const 248
            i32.add
            drop
            local.get 4
            i32.const 64
            i32.add
            i32.const 8
            i32.add
            local.get 4
            i32.const 408
            i32.add
            i32.const 8
            i32.add
            i32.load
            i32.store
            local.get 4
            local.get 4
            i64.load offset=408
            i64.store offset=64
            local.get 4
            i32.const 48
            i32.add
            i32.const 8
            i32.add
            local.get 4
            i32.const 248
            i32.add
            i32.const 8
            i32.add
            i32.load
            i32.store
            local.get 4
            local.get 4
            i64.load offset=248
            i64.store offset=48
            local.get 4
            i32.const 264
            i32.add
            local.get 4
            i32.const 64
            i32.add
            local.get 4
            i32.const 48
            i32.add
            call $GenericGFPoly_addOrSubtract
            local.get 4
            i32.const 408
            i32.add
            local.tee 1
            local.get 4
            i32.const 264
            i32.add
            local.tee 2
            i64.load align=4
            i64.store align=4
            local.get 1
            i32.const 8
            i32.add
            local.get 2
            i32.const 8
            i32.add
            i32.load
            i32.store
            br 1 (;@3;)
          end
        end
        local.get 4
        i32.const 96
        i32.add
        i32.const 8
        i32.add
        local.get 4
        i32.const 328
        i32.add
        i32.const 8
        i32.add
        i32.load
        i32.store
        local.get 4
        local.get 4
        i64.load offset=328
        i64.store offset=96
        local.get 4
        i32.const 80
        i32.add
        i32.const 8
        i32.add
        local.get 4
        i32.const 392
        i32.add
        i32.const 8
        i32.add
        i32.load
        i32.store
        local.get 4
        local.get 4
        i64.load offset=392
        i64.store offset=80
        local.get 4
        i32.const 216
        i32.add
        local.get 4
        i32.const 96
        i32.add
        local.get 4
        i32.const 80
        i32.add
        call $GenericGFPoly_multiplyPoly
        local.get 4
        i32.const 216
        i32.add
        drop
        local.get 4
        i32.const 128
        i32.add
        i32.const 8
        i32.add
        local.get 4
        i32.const 216
        i32.add
        i32.const 8
        i32.add
        i32.load
        i32.store
        local.get 4
        local.get 4
        i64.load offset=216
        i64.store offset=128
        local.get 4
        i32.const 112
        i32.add
        i32.const 8
        i32.add
        local.get 4
        i32.const 344
        i32.add
        i32.const 8
        i32.add
        i32.load
        i32.store
        local.get 4
        local.get 4
        i64.load offset=344
        i64.store offset=112
        local.get 4
        i32.const 232
        i32.add
        local.get 4
        i32.const 128
        i32.add
        local.get 4
        i32.const 112
        i32.add
        call $GenericGFPoly_addOrSubtract
        local.get 4
        i32.const 376
        i32.add
        local.tee 1
        local.get 4
        i32.const 232
        i32.add
        local.tee 2
        i64.load align=4
        i64.store align=4
        local.get 1
        i32.const 8
        i32.add
        local.get 2
        i32.const 8
        i32.add
        i32.load
        i32.store
        block  ;; label = @3
          local.get 4
          i32.load offset=408
          local.get 4
          i32.load offset=424
          i32.ge_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
        end
        br 0 (;@2;)
      end
    end
    local.get 4
    local.get 4
    i32.load offset=380
    local.get 4
    i32.load offset=384
    i32.const 1
    i32.sub
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store offset=212
    block  ;; label = @1
      local.get 4
      i32.load offset=212
      br_if 0 (;@1;)
    end
    local.get 4
    local.get 4
    i32.load offset=212
    call $GenericGF_inverse
    i32.store offset=208
    local.get 4
    i32.load offset=460
    local.set 1
    local.get 4
    i32.load offset=208
    local.set 2
    local.get 4
    i32.const 144
    i32.add
    i32.const 8
    i32.add
    local.get 4
    i32.const 376
    i32.add
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 4
    local.get 4
    i64.load offset=376
    i64.store offset=144
    local.get 4
    i32.const 192
    i32.add
    local.get 4
    i32.const 144
    i32.add
    local.get 2
    call $GenericGFPoly_multiplyScalar
    local.get 1
    local.get 4
    i32.const 192
    i32.add
    local.tee 2
    i64.load align=4
    i64.store align=4
    local.get 1
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 4
    i32.load offset=460
    local.set 1
    local.get 4
    i32.load offset=208
    local.set 2
    local.get 4
    i32.const 160
    i32.add
    i32.const 8
    i32.add
    local.get 4
    i32.const 408
    i32.add
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 4
    local.get 4
    i64.load offset=408
    i64.store offset=160
    local.get 4
    i32.const 176
    i32.add
    local.get 4
    i32.const 160
    i32.add
    local.get 2
    call $GenericGFPoly_multiplyScalar
    local.get 1
    i32.const 12
    i32.add
    local.tee 1
    local.get 4
    i32.const 176
    i32.add
    local.tee 2
    i64.load align=4
    i64.store align=4
    local.get 1
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 4
    i32.const 464
    i32.add
    global.set 0)
  (func $ReedSolomonDecoder_findErrorLocations (type 9) (param i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.load
    i32.store offset=28
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=28
        i32.const 1
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 4
        call $Memory_allocate
        i32.store offset=4
        local.get 0
        i32.load offset=4
        local.get 1
        i32.load offset=4
        i32.load
        i32.store
        local.get 0
        i32.const 1
        i32.store
        br 1 (;@1;)
      end
      local.get 0
      local.get 2
      i32.load offset=28
      i32.const 2
      i32.shl
      call $Memory_allocate
      i32.store offset=4
      local.get 0
      local.get 2
      i32.load offset=28
      i32.store
      local.get 2
      i32.const 0
      i32.store offset=24
      local.get 2
      i32.const 1
      i32.store offset=20
      loop  ;; label = @2
        i32.const 0
        local.set 3
        block  ;; label = @3
          local.get 2
          i32.load offset=20
          i32.const 0
          i32.load offset=6484
          i32.lt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=24
          local.get 2
          i32.load offset=28
          i32.lt_s
          local.set 3
        end
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=20
          local.set 3
          local.get 2
          i32.const 8
          i32.add
          i32.const 8
          i32.add
          local.get 1
          i32.const 8
          i32.add
          i32.load
          i32.store
          local.get 2
          local.get 1
          i64.load align=4
          i64.store offset=8
          block  ;; label = @4
            local.get 2
            i32.const 8
            i32.add
            local.get 3
            call $GenericGFPoly_evaluateAt
            br_if 0 (;@4;)
            local.get 2
            i32.load offset=20
            call $GenericGF_inverse
            local.set 3
            local.get 0
            i32.load offset=4
            local.get 2
            i32.load offset=24
            i32.const 2
            i32.shl
            i32.add
            local.get 3
            i32.store
            local.get 2
            local.get 2
            i32.load offset=24
            i32.const 1
            i32.add
            i32.store offset=24
          end
          local.get 2
          local.get 2
          i32.load offset=20
          i32.const 1
          i32.add
          i32.store offset=20
          br 1 (;@2;)
        end
      end
      block  ;; label = @2
        local.get 2
        i32.load offset=24
        local.get 2
        i32.load offset=28
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func $ReedSolomonDecoder_findErrorMagnitudes (type 10) (param i32 i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.store offset=60
    local.get 3
    local.get 2
    i32.store offset=56
    local.get 3
    local.get 3
    i32.load offset=56
    i32.store offset=52
    local.get 3
    local.get 3
    i32.load offset=52
    i32.const 2
    i32.shl
    call $Memory_allocate
    i32.store offset=48
    local.get 3
    i32.const 0
    i32.store offset=44
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.load offset=44
        local.get 3
        i32.load offset=52
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        local.get 3
        i32.load offset=60
        local.get 3
        i32.load offset=44
        i32.const 2
        i32.shl
        i32.add
        i32.load
        call $GenericGF_inverse
        i32.store offset=40
        local.get 3
        i32.const 1
        i32.store offset=36
        local.get 3
        i32.const 0
        i32.store offset=32
        block  ;; label = @3
          loop  ;; label = @4
            local.get 3
            i32.load offset=32
            local.get 3
            i32.load offset=52
            i32.lt_s
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            block  ;; label = @5
              local.get 3
              i32.load offset=44
              local.get 3
              i32.load offset=32
              i32.ne
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              local.get 3
              i32.load offset=60
              local.get 3
              i32.load offset=32
              i32.const 2
              i32.shl
              i32.add
              i32.load
              local.get 3
              i32.load offset=40
              call $GenericGF_multiply
              i32.store offset=28
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.load offset=28
                  i32.const 1
                  i32.and
                  br_if 0 (;@7;)
                  local.get 3
                  i32.load offset=28
                  i32.const 1
                  i32.or
                  local.set 1
                  br 1 (;@6;)
                end
                local.get 3
                i32.load offset=28
                i32.const -2
                i32.and
                local.set 1
              end
              local.get 3
              local.get 1
              i32.store offset=24
              local.get 3
              local.get 3
              i32.load offset=36
              local.get 3
              i32.load offset=24
              call $GenericGF_multiply
              i32.store offset=36
            end
            local.get 3
            local.get 3
            i32.load offset=32
            i32.const 1
            i32.add
            i32.store offset=32
            br 0 (;@4;)
          end
        end
        local.get 3
        i32.load offset=40
        local.set 1
        local.get 3
        i32.const 8
        i32.add
        i32.const 8
        i32.add
        local.get 0
        i32.const 8
        i32.add
        i32.load
        i32.store
        local.get 3
        local.get 0
        i64.load align=4
        i64.store offset=8
        local.get 3
        i32.const 8
        i32.add
        local.get 1
        call $GenericGFPoly_evaluateAt
        local.get 3
        i32.load offset=36
        call $GenericGF_inverse
        call $GenericGF_multiply
        local.set 1
        local.get 3
        i32.load offset=48
        local.get 3
        i32.load offset=44
        i32.const 2
        i32.shl
        i32.add
        local.get 1
        i32.store
        local.get 3
        local.get 3
        i32.load offset=44
        i32.const 1
        i32.add
        i32.store offset=44
        br 0 (;@2;)
      end
    end
    local.get 3
    i32.load offset=48
    local.set 0
    local.get 3
    i32.const 64
    i32.add
    global.set 0
    local.get 0)
  (func $GenericGF_inverse (type 5) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    block  ;; label = @1
      local.get 1
      i32.load offset=12
      br_if 0 (;@1;)
    end
    i32.const 6480
    i32.const 12
    i32.add
    i32.const 0
    i32.load offset=6484
    i32.const 6480
    i32.const 1036
    i32.add
    local.get 1
    i32.load offset=12
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.sub
    i32.const 1
    i32.sub
    i32.const 2
    i32.shl
    i32.add
    i32.load)
  (func $GenericGF_multiply (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=8
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=4
          br_if 1 (;@2;)
        end
        local.get 2
        i32.const 0
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 2
      i32.const 6480
      i32.const 12
      i32.add
      i32.const 6480
      i32.const 1036
      i32.add
      local.tee 1
      local.get 2
      i32.load offset=8
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get 1
      local.get 2
      i32.load offset=4
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.add
      i32.const 0
      i32.load offset=6484
      i32.const 1
      i32.sub
      i32.rem_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.store offset=12
    end
    local.get 2
    i32.load offset=12)
  (func $GenericGFPoly_addOrSubtract (type 20) (param i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        i32.load
        br_if 0 (;@2;)
        local.get 0
        local.get 2
        i64.load align=4
        i64.store align=4
        local.get 0
        i32.const 8
        i32.add
        local.get 2
        i32.const 8
        i32.add
        i32.load
        i32.store
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 2
        i32.load offset=4
        i32.load
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i64.load align=4
        i64.store align=4
        local.get 0
        i32.const 8
        i32.add
        local.get 1
        i32.const 8
        i32.add
        i32.load
        i32.store
        br 1 (;@1;)
      end
      local.get 3
      i32.const 48
      i32.add
      local.tee 4
      local.get 1
      i64.load align=4
      i64.store align=4
      local.get 4
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 3
      i32.const 32
      i32.add
      local.tee 1
      local.get 2
      i64.load align=4
      i64.store align=4
      local.get 1
      i32.const 8
      i32.add
      local.get 2
      i32.const 8
      i32.add
      i32.load
      i32.store
      block  ;; label = @2
        local.get 3
        i32.load offset=56
        local.get 3
        i32.load offset=40
        i32.gt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.const 16
        i32.add
        local.tee 1
        local.get 3
        i32.const 48
        i32.add
        local.tee 2
        i64.load align=4
        i64.store align=4
        local.get 1
        i32.const 8
        i32.add
        local.get 2
        i32.const 8
        i32.add
        i32.load
        i32.store
        local.get 2
        local.get 3
        i32.const 32
        i32.add
        local.tee 4
        i64.load align=4
        i64.store align=4
        local.get 2
        i32.const 8
        i32.add
        local.get 4
        i32.const 8
        i32.add
        i32.load
        i32.store
        local.get 4
        local.get 1
        i64.load align=4
        i64.store align=4
        local.get 4
        i32.const 8
        i32.add
        local.get 1
        i32.const 8
        i32.add
        i32.load
        i32.store
      end
      local.get 3
      local.get 3
      i32.load offset=40
      i32.const 2
      i32.shl
      call $Memory_allocate
      i32.store offset=12
      local.get 3
      local.get 3
      i32.load offset=40
      local.get 3
      i32.load offset=56
      i32.sub
      i32.store offset=8
      local.get 3
      i32.const 0
      i32.store offset=4
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load offset=4
          local.get 3
          i32.load offset=8
          i32.lt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=12
          local.get 3
          i32.load offset=4
          i32.const 2
          i32.shl
          i32.add
          local.get 3
          i32.load offset=36
          local.get 3
          i32.load offset=4
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.store
          local.get 3
          local.get 3
          i32.load offset=4
          i32.const 1
          i32.add
          i32.store offset=4
          br 0 (;@3;)
        end
      end
      local.get 3
      local.get 3
      i32.load offset=8
      i32.store
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load
          local.get 3
          i32.load offset=40
          i32.lt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=12
          local.get 3
          i32.load
          i32.const 2
          i32.shl
          i32.add
          local.get 3
          i32.load offset=52
          local.get 3
          i32.load
          local.get 3
          i32.load offset=8
          i32.sub
          i32.const 2
          i32.shl
          i32.add
          i32.load
          local.get 3
          i32.load offset=36
          local.get 3
          i32.load
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.xor
          i32.store
          local.get 3
          local.get 3
          i32.load
          i32.const 1
          i32.add
          i32.store
          br 0 (;@3;)
        end
      end
      local.get 0
      local.get 3
      i32.load offset=12
      local.get 3
      i32.load offset=40
      call $new_GenericGFPoly
    end
    local.get 3
    i32.const 64
    i32.add
    global.set 0)
  (func $GenericGFPoly_multiplyByMonomial (type 23) (param i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 2
    i32.store offset=28
    local.get 4
    local.get 3
    i32.store offset=24
    block  ;; label = @1
      local.get 4
      i32.load offset=28
      i32.const 0
      i32.lt_s
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.load offset=24
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.add
        i32.const 0
        i32.load offset=8548
        i32.store
        local.get 0
        i32.const 0
        i64.load offset=8540 align=4
        i64.store align=4
        br 1 (;@1;)
      end
      local.get 4
      local.get 1
      i32.load offset=8
      i32.store offset=20
      local.get 4
      local.get 4
      i32.load offset=20
      local.get 4
      i32.load offset=28
      i32.add
      i32.const 2
      i32.shl
      call $Memory_allocate
      i32.store offset=16
      local.get 4
      i32.const 0
      i32.store offset=12
      block  ;; label = @2
        loop  ;; label = @3
          local.get 4
          i32.load offset=12
          local.get 4
          i32.load offset=20
          i32.lt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          i32.load offset=4
          local.get 4
          i32.load offset=12
          i32.const 2
          i32.shl
          i32.add
          i32.load
          local.get 4
          i32.load offset=24
          call $GenericGF_multiply
          local.set 2
          local.get 4
          i32.load offset=16
          local.get 4
          i32.load offset=12
          i32.const 2
          i32.shl
          i32.add
          local.get 2
          i32.store
          local.get 4
          local.get 4
          i32.load offset=12
          i32.const 1
          i32.add
          i32.store offset=12
          br 0 (;@3;)
        end
      end
      local.get 0
      local.get 4
      i32.load offset=16
      local.get 4
      i32.load offset=20
      local.get 4
      i32.load offset=28
      i32.add
      call $new_GenericGFPoly
    end
    local.get 4
    i32.const 32
    i32.add
    global.set 0)
  (func $GenericGFPoly_multiplyPoly (type 20) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=4
          i32.load
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=4
          i32.load
          br_if 1 (;@2;)
        end
        local.get 0
        i32.const 8
        i32.add
        i32.const 0
        i32.load offset=8548
        i32.store
        local.get 0
        i32.const 0
        i64.load offset=8540 align=4
        i64.store align=4
        br 1 (;@1;)
      end
      local.get 3
      local.get 1
      i32.load offset=4
      i32.store offset=44
      local.get 3
      local.get 1
      i32.load offset=8
      i32.store offset=40
      local.get 3
      local.get 2
      i32.load offset=4
      i32.store offset=36
      local.get 3
      local.get 2
      i32.load offset=8
      i32.store offset=32
      local.get 3
      local.get 3
      i32.load offset=40
      local.get 3
      i32.load offset=32
      i32.add
      i32.const 1
      i32.sub
      i32.store offset=28
      local.get 3
      local.get 3
      i32.load offset=28
      i32.const 2
      i32.shl
      call $Memory_allocate
      i32.store offset=24
      local.get 3
      i32.const 0
      i32.store offset=20
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load offset=20
          local.get 3
          i32.load offset=40
          i32.lt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          local.get 3
          i32.load offset=44
          local.get 3
          i32.load offset=20
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.store offset=16
          local.get 3
          i32.const 0
          i32.store offset=12
          block  ;; label = @4
            loop  ;; label = @5
              local.get 3
              i32.load offset=12
              local.get 3
              i32.load offset=32
              i32.lt_s
              i32.const 1
              i32.and
              i32.eqz
              br_if 1 (;@4;)
              local.get 3
              i32.load offset=24
              local.get 3
              i32.load offset=20
              local.get 3
              i32.load offset=12
              i32.add
              i32.const 2
              i32.shl
              i32.add
              i32.load
              local.set 1
              local.get 3
              i32.load offset=16
              local.get 3
              i32.load offset=36
              local.get 3
              i32.load offset=12
              i32.const 2
              i32.shl
              i32.add
              i32.load
              call $GenericGF_multiply
              local.set 2
              local.get 3
              i32.load offset=24
              local.get 3
              i32.load offset=20
              local.get 3
              i32.load offset=12
              i32.add
              i32.const 2
              i32.shl
              i32.add
              local.get 1
              local.get 2
              i32.xor
              i32.store
              local.get 3
              local.get 3
              i32.load offset=12
              i32.const 1
              i32.add
              i32.store offset=12
              br 0 (;@5;)
            end
          end
          local.get 3
          local.get 3
          i32.load offset=20
          i32.const 1
          i32.add
          i32.store offset=20
          br 0 (;@3;)
        end
      end
      local.get 0
      local.get 3
      i32.load offset=24
      local.get 3
      i32.load offset=28
      call $new_GenericGFPoly
    end
    local.get 3
    i32.const 48
    i32.add
    global.set 0)
  (func $GenericGFPoly_multiplyScalar (type 20) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 2
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=12
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.add
        i32.const 0
        i32.load offset=8548
        i32.store
        local.get 0
        i32.const 0
        i64.load offset=8540 align=4
        i64.store align=4
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 3
        i32.load offset=12
        i32.const 1
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i64.load align=4
        i64.store align=4
        local.get 0
        i32.const 8
        i32.add
        local.get 1
        i32.const 8
        i32.add
        i32.load
        i32.store
        br 1 (;@1;)
      end
      local.get 3
      local.get 1
      i32.load offset=8
      i32.store offset=8
      local.get 3
      local.get 3
      i32.load offset=8
      i32.const 2
      i32.shl
      call $Memory_allocate
      i32.store offset=4
      local.get 3
      i32.const 0
      i32.store
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load
          local.get 3
          i32.load offset=8
          i32.lt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          i32.load offset=4
          local.get 3
          i32.load
          i32.const 2
          i32.shl
          i32.add
          i32.load
          local.get 3
          i32.load offset=12
          call $GenericGF_multiply
          local.set 2
          local.get 3
          i32.load offset=4
          local.get 3
          i32.load
          i32.const 2
          i32.shl
          i32.add
          local.get 2
          i32.store
          local.get 3
          local.get 3
          i32.load
          i32.const 1
          i32.add
          i32.store
          br 0 (;@3;)
        end
      end
      local.get 0
      local.get 3
      i32.load offset=4
      local.get 3
      i32.load offset=8
      call $new_GenericGFPoly
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func $BitMatrixParser_copyBit (type 10) (param i32 i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 2
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        i32.const 1364
        local.get 3
        i32.load offset=12
        local.get 3
        i32.load offset=8
        call $BitMatrix_get
        i32.const 24
        i32.shl
        i32.const 24
        i32.shr_s
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=4
        i32.const 1
        i32.shl
        i32.const 1
        i32.or
        local.set 2
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=4
      i32.const 1
      i32.shl
      local.set 2
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    local.get 2)
  (func $DataMask_unmaskBitMatrix (type 20) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 2
    i32.store offset=24
    local.get 3
    i32.const 8576
    local.get 3
    i32.load offset=24
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store offset=20
    local.get 3
    i32.const 0
    i32.store offset=16
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.load offset=16
        local.get 3
        i32.load offset=28
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.const 0
        i32.store offset=12
        block  ;; label = @3
          loop  ;; label = @4
            local.get 3
            i32.load offset=12
            local.get 3
            i32.load offset=28
            i32.lt_u
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            block  ;; label = @5
              local.get 3
              i32.load offset=16
              local.get 3
              i32.load offset=12
              local.get 3
              i32.load offset=20
              call_indirect (type 0)
              i32.const 255
              i32.and
              i32.const 0
              i32.const 255
              i32.and
              i32.ne
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              local.get 3
              i32.load offset=12
              local.get 3
              i32.load offset=16
              call $BitMatrix_flip
            end
            local.get 3
            local.get 3
            i32.load offset=12
            i32.const 1
            i32.add
            i32.store offset=12
            br 0 (;@4;)
          end
        end
        local.get 3
        local.get 3
        i32.load offset=16
        i32.const 1
        i32.add
        i32.store offset=16
        br 0 (;@2;)
      end
    end
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func $DataMask_isMasked000 (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=8
    i32.add
    i32.const 1
    i32.and
    i32.const 0
    i32.eq
    i32.const 1
    i32.and
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s)
  (func $DataMask_isMasked001 (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.load offset=12
    i32.const 1
    i32.and
    i32.const 0
    i32.eq
    i32.const 1
    i32.and
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s)
  (func $DataMask_isMasked010 (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.load offset=8
    i32.const 3
    i32.rem_u
    i32.const 0
    i32.eq
    i32.const 1
    i32.and
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s)
  (func $DataMask_isMasked011 (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=8
    i32.add
    i32.const 3
    i32.rem_u
    i32.const 0
    i32.eq
    i32.const 1
    i32.and
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s)
  (func $DataMask_isMasked100 (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.load offset=12
    i32.const 1
    i32.shr_u
    local.get 2
    i32.load offset=8
    i32.const 3
    i32.div_u
    i32.add
    i32.const 1
    i32.and
    i32.const 0
    i32.eq
    i32.const 1
    i32.and
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s)
  (func $DataMask_isMasked101 (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=8
    i32.mul
    i32.const 6
    i32.rem_u
    i32.const 0
    i32.eq
    i32.const 1
    i32.and
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s)
  (func $DataMask_isMasked110 (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=8
    i32.mul
    i32.const 6
    i32.rem_u
    i32.const 3
    i32.lt_u
    i32.const 1
    i32.and
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s)
  (func $DataMask_isMasked111 (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=8
    i32.add
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=8
    i32.mul
    i32.const 3
    i32.rem_u
    i32.add
    i32.const 1
    i32.and
    i32.const 0
    i32.eq
    i32.const 1
    i32.and
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s)
  (table (;0;) 9 9 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 74144))
  (global (;1;) i32 (i32.const 74144))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "get_int" (func $get_int))
  (export "getBitMap" (func $getBitMap))
  (export "setImageSize" (func $setImageSize))
  (export "getImageSize" (func $getImageSize))
  (export "imageToBitmap" (func $imageToBitmap))
  (export "get_size" (func $get_size))
  (export "get_bytes" (func $get_bytes))
  (export "getVersionNumber" (func $getVersionNumber))
  (export "getECLevelBits" (func $getECLevelBits))
  (export "decode" (func $decode))
  (elem (;0;) (i32.const 1) $DataMask_isMasked000 $DataMask_isMasked001 $DataMask_isMasked010 $DataMask_isMasked011 $DataMask_isMasked100 $DataMask_isMasked101 $DataMask_isMasked110 $DataMask_isMasked111)
  (data (;0;) (i32.const 1024) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
  (data (;1;) (i32.const 1408) "\01\00\00\00\1a\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00\01\00\00\00\13\00\00\00\00\00\00\00\00\00\00\00\0a\00\00\00\01\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0d\00\00\00\01\00\00\00\0d\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\01\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00,\00\00\00\02\00\00\00\80\14\00\00\0a\00\00\00\01\00\00\00\22\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\01\00\00\00\1c\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\01\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\1c\00\00\00\01\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00F\00\00\00\02\00\00\00\88\14\00\00\0f\00\00\00\01\00\00\007\00\00\00\00\00\00\00\00\00\00\00\1a\00\00\00\01\00\00\00,\00\00\00\00\00\00\00\00\00\00\00$\00\00\00\02\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00,\00\00\00\02\00\00\00\0d\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00d\00\00\00\02\00\00\00\90\14\00\00\14\00\00\00\01\00\00\00P\00\00\00\00\00\00\00\00\00\00\00$\00\00\00\02\00\00\00 \00\00\00\00\00\00\00\00\00\00\004\00\00\00\02\00\00\00\18\00\00\00\00\00\00\00\00\00\00\00@\00\00\00\04\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\86\00\00\00\02\00\00\00\98\14\00\00\1a\00\00\00\01\00\00\00l\00\00\00\00\00\00\00\00\00\00\000\00\00\00\02\00\00\00+\00\00\00\00\00\00\00\00\00\00\00H\00\00\00\02\00\00\00\0f\00\00\00\02\00\00\00\10\00\00\00X\00\00\00\02\00\00\00\0b\00\00\00\02\00\00\00\0c\00\00\00\06\00\00\00\ac\00\00\00\02\00\00\00\a0\14\00\00$\00\00\00\02\00\00\00D\00\00\00\00\00\00\00\00\00\00\00@\00\00\00\04\00\00\00\1b\00\00\00\00\00\00\00\00\00\00\00`\00\00\00\04\00\00\00\13\00\00\00\00\00\00\00\00\00\00\00p\00\00\00\04\00\00\00\0f\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00\c4\00\00\00\03\00\00\00\a8\14\00\00(\00\00\00\02\00\00\00N\00\00\00\00\00\00\00\00\00\00\00H\00\00\00\04\00\00\00\1f\00\00\00\00\00\00\00\00\00\00\00l\00\00\00\02\00\00\00\0e\00\00\00\04\00\00\00\0f\00\00\00\82\00\00\00\04\00\00\00\0d\00\00\00\01\00\00\00\0e\00\00\00\08\00\00\00\f2\00\00\00\03\00\00\00\b4\14\00\000\00\00\00\02\00\00\00a\00\00\00\00\00\00\00\00\00\00\00X\00\00\00\02\00\00\00&\00\00\00\02\00\00\00'\00\00\00\84\00\00\00\04\00\00\00\12\00\00\00\02\00\00\00\13\00\00\00\9c\00\00\00\04\00\00\00\0e\00\00\00\02\00\00\00\0f\00\00\00\09\00\00\00$\01\00\00\03\00\00\00\c0\14\00\00<\00\00\00\02\00\00\00t\00\00\00\00\00\00\00\00\00\00\00n\00\00\00\03\00\00\00$\00\00\00\02\00\00\00%\00\00\00\a0\00\00\00\04\00\00\00\10\00\00\00\04\00\00\00\11\00\00\00\c0\00\00\00\04\00\00\00\0c\00\00\00\04\00\00\00\0d\00\00\00\0a\00\00\00Z\01\00\00\03\00\00\00\cc\14\00\00H\00\00\00\02\00\00\00D\00\00\00\02\00\00\00E\00\00\00\82\00\00\00\04\00\00\00+\00\00\00\01\00\00\00,\00\00\00\c0\00\00\00\06\00\00\00\13\00\00\00\02\00\00\00\14\00\00\00\e0\00\00\00\06\00\00\00\0f\00\00\00\02\00\00\00\10\00\00\00\0b\00\00\00\94\01\00\00\03\00\00\00\d8\14\00\00P\00\00\00\04\00\00\00Q\00\00\00\00\00\00\00\00\00\00\00\96\00\00\00\01\00\00\002\00\00\00\04\00\00\003\00\00\00\e0\00\00\00\04\00\00\00\16\00\00\00\04\00\00\00\17\00\00\00\08\01\00\00\03\00\00\00\0c\00\00\00\08\00\00\00\0d\00\00\00\0c\00\00\00\d2\01\00\00\03\00\00\00\e4\14\00\00`\00\00\00\02\00\00\00\5c\00\00\00\02\00\00\00]\00\00\00\b0\00\00\00\06\00\00\00$\00\00\00\02\00\00\00%\00\00\00\04\01\00\00\04\00\00\00\14\00\00\00\06\00\00\00\15\00\00\004\01\00\00\07\00\00\00\0e\00\00\00\04\00\00\00\0f\00\00\00\0d\00\00\00\14\02\00\00\03\00\00\00\f0\14\00\00h\00\00\00\04\00\00\00k\00\00\00\00\00\00\00\00\00\00\00\c6\00\00\00\08\00\00\00%\00\00\00\01\00\00\00&\00\00\00 \01\00\00\08\00\00\00\14\00\00\00\04\00\00\00\15\00\00\00`\01\00\00\0c\00\00\00\0b\00\00\00\04\00\00\00\0c\00\00\00\0e\00\00\00E\02\00\00\04\00\00\00\fc\14\00\00x\00\00\00\03\00\00\00s\00\00\00\01\00\00\00t\00\00\00\d8\00\00\00\04\00\00\00(\00\00\00\05\00\00\00)\00\00\00@\01\00\00\0b\00\00\00\10\00\00\00\05\00\00\00\11\00\00\00\80\01\00\00\0b\00\00\00\0c\00\00\00\05\00\00\00\0d\00\00\00\0f\00\00\00\8f\02\00\00\04\00\00\00\0c\15\00\00\84\00\00\00\05\00\00\00W\00\00\00\01\00\00\00X\00\00\00\f0\00\00\00\05\00\00\00)\00\00\00\05\00\00\00*\00\00\00h\01\00\00\05\00\00\00\18\00\00\00\07\00\00\00\19\00\00\00\b0\01\00\00\0b\00\00\00\0c\00\00\00\07\00\00\00\0d\00\00\00\10\00\00\00\dd\02\00\00\04\00\00\00\1c\15\00\00\90\00\00\00\05\00\00\00b\00\00\00\01\00\00\00c\00\00\00\18\01\00\00\07\00\00\00-\00\00\00\03\00\00\00.\00\00\00\98\01\00\00\0f\00\00\00\13\00\00\00\02\00\00\00\14\00\00\00\e0\01\00\00\03\00\00\00\0f\00\00\00\0d\00\00\00\10\00\00\00\11\00\00\00/\03\00\00\04\00\00\00,\15\00\00\a8\00\00\00\01\00\00\00k\00\00\00\05\00\00\00l\00\00\004\01\00\00\0a\00\00\00.\00\00\00\01\00\00\00/\00\00\00\c0\01\00\00\01\00\00\00\16\00\00\00\0f\00\00\00\17\00\00\00\14\02\00\00\02\00\00\00\0e\00\00\00\11\00\00\00\0f\00\00\00\12\00\00\00\85\03\00\00\04\00\00\00<\15\00\00\a8\00\00\00\05\00\00\00x\00\00\00\01\00\00\00y\00\00\004\01\00\00\09\00\00\00+\00\00\00\04\00\00\00,\00\00\00\c0\01\00\00\11\00\00\00\16\00\00\00\01\00\00\00\17\00\00\00\14\02\00\00\02\00\00\00\0e\00\00\00\13\00\00\00\0f\00\00\00\13\00\00\00\df\03\00\00\04\00\00\00L\15\00\00\c4\00\00\00\03\00\00\00q\00\00\00\04\00\00\00r\00\00\00l\01\00\00\03\00\00\00,\00\00\00\0b\00\00\00-\00\00\00\22\02\00\00\11\00\00\00\15\00\00\00\04\00\00\00\16\00\00\00\8a\02\00\00\09\00\00\00\0d\00\00\00\10\00\00\00\0e\00\00\00\14\00\00\00=\04\00\00\04\00\00\00\5c\15\00\00\e0\00\00\00\03\00\00\00k\00\00\00\05\00\00\00l\00\00\00\a0\01\00\00\03\00\00\00)\00\00\00\0d\00\00\00*\00\00\00X\02\00\00\0f\00\00\00\18\00\00\00\05\00\00\00\19\00\00\00\bc\02\00\00\0f\00\00\00\0f\00\00\00\0a\00\00\00\10\00\00\00\15\00\00\00\84\04\00\00\05\00\00\00l\15\00\00\e0\00\00\00\04\00\00\00t\00\00\00\04\00\00\00u\00\00\00\ba\01\00\00\11\00\00\00*\00\00\00\00\00\00\00\00\00\00\00\84\02\00\00\11\00\00\00\16\00\00\00\06\00\00\00\17\00\00\00\ee\02\00\00\13\00\00\00\10\00\00\00\06\00\00\00\11\00\00\00\16\00\00\00\ea\04\00\00\05\00\00\00\80\15\00\00\fc\00\00\00\02\00\00\00o\00\00\00\07\00\00\00p\00\00\00\dc\01\00\00\11\00\00\00.\00\00\00\00\00\00\00\00\00\00\00\b2\02\00\00\07\00\00\00\18\00\00\00\10\00\00\00\19\00\00\000\03\00\00\22\00\00\00\0d\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00T\05\00\00\05\00\00\00\94\15\00\00\0e\01\00\00\04\00\00\00y\00\00\00\05\00\00\00z\00\00\00\f8\01\00\00\04\00\00\00/\00\00\00\0e\00\00\000\00\00\00\ee\02\00\00\0b\00\00\00\18\00\00\00\0e\00\00\00\19\00\00\00\84\03\00\00\10\00\00\00\0f\00\00\00\0e\00\00\00\10\00\00\00\18\00\00\00\c2\05\00\00\05\00\00\00\a8\15\00\00,\01\00\00\06\00\00\00u\00\00\00\04\00\00\00v\00\00\000\02\00\00\06\00\00\00-\00\00\00\0e\00\00\00.\00\00\00*\03\00\00\0b\00\00\00\18\00\00\00\10\00\00\00\19\00\00\00\c0\03\00\00\1e\00\00\00\10\00\00\00\02\00\00\00\11\00\00\00\19\00\00\004\06\00\00\05\00\00\00\bc\15\00\008\01\00\00\08\00\00\00j\00\00\00\04\00\00\00k\00\00\00L\02\00\00\08\00\00\00/\00\00\00\0d\00\00\000\00\00\00f\03\00\00\07\00\00\00\18\00\00\00\16\00\00\00\19\00\00\00\1a\04\00\00\16\00\00\00\0f\00\00\00\0d\00\00\00\10\00\00\00\1a\00\00\00\aa\06\00\00\05\00\00\00\d0\15\00\00P\01\00\00\0a\00\00\00r\00\00\00\02\00\00\00s\00\00\00\84\02\00\00\13\00\00\00.\00\00\00\04\00\00\00/\00\00\00\b8\03\00\00\1c\00\00\00\16\00\00\00\06\00\00\00\17\00\00\00V\04\00\00!\00\00\00\10\00\00\00\04\00\00\00\11\00\00\00\1b\00\00\00$\07\00\00\05\00\00\00\e4\15\00\00h\01\00\00\08\00\00\00z\00\00\00\04\00\00\00{\00\00\00\bc\02\00\00\16\00\00\00-\00\00\00\03\00\00\00.\00\00\00\fc\03\00\00\08\00\00\00\17\00\00\00\1a\00\00\00\18\00\00\00\b0\04\00\00\0c\00\00\00\0f\00\00\00\1c\00\00\00\10\00\00\00\1c\00\00\00\81\07\00\00\06\00\00\00\f8\15\00\00\ea\01\00\00\03\00\00\00u\00\00\00\0a\00\00\00v\00\00\00\d8\02\00\00\03\00\00\00-\00\00\00\17\00\00\00.\00\00\00\1a\04\00\00\04\00\00\00\18\00\00\00\1f\00\00\00\19\00\00\00\ec\04\00\00\0b\00\00\00\0f\00\00\00\1f\00\00\00\10\00\00\00\1d\00\00\00\03\08\00\00\06\00\00\00\10\16\00\00\a4\01\00\00\07\00\00\00t\00\00\00\07\00\00\00u\00\00\00\10\03\00\00\15\00\00\00-\00\00\00\07\00\00\00.\00\00\00t\04\00\00\01\00\00\00\17\00\00\00%\00\00\00\18\00\00\00F\05\00\00\13\00\00\00\0f\00\00\00\1a\00\00\00\10\00\00\00\1e\00\00\00\89\08\00\00\06\00\00\00(\16\00\00\c2\01\00\00\05\00\00\00s\00\00\00\0a\00\00\00t\00\00\00,\03\00\00\13\00\00\00/\00\00\00\0a\00\00\000\00\00\00\b0\04\00\00\0f\00\00\00\18\00\00\00\19\00\00\00\19\00\00\00\a0\05\00\00\17\00\00\00\0f\00\00\00\19\00\00\00\10\00\00\00\1f\00\00\00\13\09\00\00\06\00\00\00@\16\00\00\e0\01\00\00\0d\00\00\00s\00\00\00\03\00\00\00t\00\00\00d\03\00\00\02\00\00\00.\00\00\00\1d\00\00\00/\00\00\00\0a\05\00\00*\00\00\00\18\00\00\00\01\00\00\00\19\00\00\00\fa\05\00\00\17\00\00\00\0f\00\00\00\1c\00\00\00\10\00\00\00 \00\00\00\a1\09\00\00\06\00\00\00X\16\00\00\fe\01\00\00\11\00\00\00s\00\00\00\00\00\00\00\00\00\00\00\9c\03\00\00\0a\00\00\00.\00\00\00\17\00\00\00/\00\00\00F\05\00\00\0a\00\00\00\18\00\00\00#\00\00\00\19\00\00\00T\06\00\00\13\00\00\00\0f\00\00\00#\00\00\00\10\00\00\00!\00\00\003\0a\00\00\06\00\00\00p\16\00\00\1c\02\00\00\11\00\00\00s\00\00\00\01\00\00\00t\00\00\00\d4\03\00\00\0e\00\00\00.\00\00\00\15\00\00\00/\00\00\00\a0\05\00\00\1d\00\00\00\18\00\00\00\13\00\00\00\19\00\00\00\ae\06\00\00\0b\00\00\00\0f\00\00\00.\00\00\00\10\00\00\00\22\00\00\00\c9\0a\00\00\06\00\00\00\88\16\00\00:\02\00\00\0d\00\00\00s\00\00\00\06\00\00\00t\00\00\00\0c\04\00\00\0e\00\00\00.\00\00\00\17\00\00\00/\00\00\00\fa\05\00\00,\00\00\00\18\00\00\00\07\00\00\00\19\00\00\00\08\07\00\00;\00\00\00\10\00\00\00\01\00\00\00\11\00\00\00#\00\00\00<\0b\00\00\07\00\00\00\a0\16\00\00:\02\00\00\0c\00\00\00y\00\00\00\07\00\00\00z\00\00\00(\04\00\00\0c\00\00\00/\00\00\00\1a\00\00\000\00\00\006\06\00\00'\00\00\00\18\00\00\00\0e\00\00\00\19\00\00\00b\07\00\00\16\00\00\00\0f\00\00\00)\00\00\00\10\00\00\00$\00\00\00\da\0b\00\00\07\00\00\00\bc\16\00\00X\02\00\00\06\00\00\00y\00\00\00\0e\00\00\00z\00\00\00`\04\00\00\06\00\00\00/\00\00\00\22\00\00\000\00\00\00\90\06\00\00.\00\00\00\18\00\00\00\0a\00\00\00\19\00\00\00\bc\07\00\00\02\00\00\00\0f\00\00\00@\00\00\00\10\00\00\00%\00\00\00|\0c\00\00\07\00\00\00\d8\16\00\00v\02\00\00\11\00\00\00z\00\00\00\04\00\00\00{\00\00\00\b4\04\00\00\1d\00\00\00.\00\00\00\0e\00\00\00/\00\00\00\ea\06\00\001\00\00\00\18\00\00\00\0a\00\00\00\19\00\00\004\08\00\00\18\00\00\00\0f\00\00\00.\00\00\00\10\00\00\00&\00\00\00\22\0d\00\00\07\00\00\00\f4\16\00\00\94\02\00\00\04\00\00\00z\00\00\00\12\00\00\00{\00\00\00\ec\04\00\00\0d\00\00\00.\00\00\00 \00\00\00/\00\00\00D\07\00\000\00\00\00\18\00\00\00\0e\00\00\00\19\00\00\00\ac\08\00\00*\00\00\00\0f\00\00\00 \00\00\00\10\00\00\00'\00\00\00\cc\0d\00\00\07\00\00\00\10\17\00\00\d0\02\00\00\14\00\00\00u\00\00\00\04\00\00\00v\00\00\00$\05\00\00(\00\00\00/\00\00\00\07\00\00\000\00\00\00\9e\07\00\00+\00\00\00\18\00\00\00\16\00\00\00\19\00\00\00\06\09\00\00\0a\00\00\00\0f\00\00\00C\00\00\00\10\00\00\00(\00\00\00z\0e\00\00\07\00\00\00,\17\00\00\ee\02\00\00\13\00\00\00v\00\00\00\06\00\00\00w\00\00\00\5c\05\00\00\12\00\00\00/\00\00\00\1f\00\00\000\00\00\00\f8\07\00\00\22\00\00\00\18\00\00\00\22\00\00\00\19\00\00\00~\09\00\00\14\00\00\00\0f\00\00\00=\00\00\00\10\00\00\00\06\00\00\00\12\00\00\00\06\00\00\00\16\00\00\00\06\00\00\00\1a\00\00\00\06\00\00\00\1e\00\00\00\06\00\00\00\22\00\00\00\06\00\00\00\16\00\00\00&\00\00\00\06\00\00\00\18\00\00\00*\00\00\00\06\00\00\00\1a\00\00\00.\00\00\00\06\00\00\00\1c\00\00\002\00\00\00\06\00\00\00\1e\00\00\006\00\00\00\06\00\00\00 \00\00\00:\00\00\00\06\00\00\00\22\00\00\00>\00\00\00\06\00\00\00\1a\00\00\00.\00\00\00B\00\00\00\06\00\00\00\1a\00\00\000\00\00\00F\00\00\00\06\00\00\00\1a\00\00\002\00\00\00J\00\00\00\06\00\00\00\1e\00\00\006\00\00\00N\00\00\00\06\00\00\00\1e\00\00\008\00\00\00R\00\00\00\06\00\00\00\1e\00\00\00:\00\00\00V\00\00\00\06\00\00\00\22\00\00\00>\00\00\00Z\00\00\00\06\00\00\00\1c\00\00\002\00\00\00H\00\00\00^\00\00\00\06\00\00\00\1a\00\00\002\00\00\00J\00\00\00b\00\00\00\06\00\00\00\1e\00\00\006\00\00\00N\00\00\00f\00\00\00\06\00\00\00\1c\00\00\006\00\00\00P\00\00\00j\00\00\00\06\00\00\00 \00\00\00:\00\00\00T\00\00\00n\00\00\00\06\00\00\00\1e\00\00\00:\00\00\00V\00\00\00r\00\00\00\06\00\00\00\22\00\00\00>\00\00\00Z\00\00\00v\00\00\00\06\00\00\00\1a\00\00\002\00\00\00J\00\00\00b\00\00\00z\00\00\00\06\00\00\00\1e\00\00\006\00\00\00N\00\00\00f\00\00\00~\00\00\00\06\00\00\00\1a\00\00\004\00\00\00N\00\00\00h\00\00\00\82\00\00\00\06\00\00\00\1e\00\00\008\00\00\00R\00\00\00l\00\00\00\86\00\00\00\06\00\00\00\22\00\00\00<\00\00\00V\00\00\00p\00\00\00\8a\00\00\00\06\00\00\00\1e\00\00\00:\00\00\00V\00\00\00r\00\00\00\8e\00\00\00\06\00\00\00\22\00\00\00>\00\00\00Z\00\00\00v\00\00\00\92\00\00\00\06\00\00\00\1e\00\00\006\00\00\00N\00\00\00f\00\00\00~\00\00\00\96\00\00\00\06\00\00\00\18\00\00\002\00\00\00L\00\00\00f\00\00\00\80\00\00\00\9a\00\00\00\06\00\00\00\1c\00\00\006\00\00\00P\00\00\00j\00\00\00\84\00\00\00\9e\00\00\00\06\00\00\00 \00\00\00:\00\00\00T\00\00\00n\00\00\00\88\00\00\00\a2\00\00\00\06\00\00\00\1a\00\00\006\00\00\00R\00\00\00n\00\00\00\8a\00\00\00\a6\00\00\00\06\00\00\00\1e\00\00\00:\00\00\00V\00\00\00r\00\00\00\8e\00\00\00\aa\00\00\00\00\00\00\00\00\00\00\00\94|\00\00\bc\85\00\00\99\9a\00\00\d3\a4\00\00\f6\bb\00\00b\c7\00\00G\d8\00\00\0d\e6\00\00(\f9\00\00x\0b\01\00]\14\01\00\17*\01\0025\01\00\a6I\01\00\83V\01\00\c9h\01\00\ecw\01\00\c4\8e\01\00\e1\91\01\00\ab\af\01\00\8e\b0\01\00\1a\cc\01\00?\d3\01\00u\ed\01\00P\f2\01\00\d5\09\02\00\f0\16\02\00\ba(\02\00\9f7\02\00\0bK\02\00.T\02\00dj\02\00Au\02\00i\8c\02\00\a0!\01\00\00\00\02\00\12T\00\00\00\00\00\00%Q\00\00\01\00\00\00|^\00\00\02\00\00\00K[\00\00\03\00\00\00\f9E\00\00\04\00\00\00\ce@\00\00\05\00\00\00\97O\00\00\06\00\00\00\a0J\00\00\07\00\00\00\c4w\00\00\08\00\00\00\f3r\00\00\09\00\00\00\aa}\00\00\0a\00\00\00\9dx\00\00\0b\00\00\00/f\00\00\0c\00\00\00\18c\00\00\0d\00\00\00Al\00\00\0e\00\00\00vi\00\00\0f\00\00\00\89\16\00\00\10\00\00\00\be\13\00\00\11\00\00\00\e7\1c\00\00\12\00\00\00\d0\19\00\00\13\00\00\00b\07\00\00\14\00\00\00U\02\00\00\15\00\00\00\0c\0d\00\00\16\00\00\00;\08\00\00\17\00\00\00_5\00\00\18\00\00\00h0\00\00\19\00\00\001?\00\00\1a\00\00\00\06:\00\00\1b\00\00\00\b4$\00\00\1c\00\00\00\83!\00\00\1d\00\00\00\da.\00\00\1e\00\00\00\ed+\00\00\1f\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\01\00\00\00\02\00\00\00\02\00\00\00\03\00\00\00\01\00\00\00\02\00\00\00\02\00\00\00\03\00\00\00\02\00\00\00\03\00\00\00\03\00\00\00\04\00\00\00\01\00\00\00\00\00\00\00M\00\00\00\00\00\00\00\01\00\00\00L\00\00\00\03\00\00\00\02\00\00\00H\00\00\00\02\00\00\00\03\00\00\00Q\00\00\00\1d\01\00\00\00\01\00\00\00\00\00\00\01\00\00\00\02\00\00\00\04\00\00\00\08\00\00\00\10\00\00\00 \00\00\00@\00\00\00\80\00\00\00\1d\00\00\00:\00\00\00t\00\00\00\e8\00\00\00\cd\00\00\00\87\00\00\00\13\00\00\00&\00\00\00L\00\00\00\98\00\00\00-\00\00\00Z\00\00\00\b4\00\00\00u\00\00\00\ea\00\00\00\c9\00\00\00\8f\00\00\00\03\00\00\00\06\00\00\00\0c\00\00\00\18\00\00\000\00\00\00`\00\00\00\c0\00\00\00\9d\00\00\00'\00\00\00N\00\00\00\9c\00\00\00%\00\00\00J\00\00\00\94\00\00\005\00\00\00j\00\00\00\d4\00\00\00\b5\00\00\00w\00\00\00\ee\00\00\00\c1\00\00\00\9f\00\00\00#\00\00\00F\00\00\00\8c\00\00\00\05\00\00\00\0a\00\00\00\14\00\00\00(\00\00\00P\00\00\00\a0\00\00\00]\00\00\00\ba\00\00\00i\00\00\00\d2\00\00\00\b9\00\00\00o\00\00\00\de\00\00\00\a1\00\00\00_\00\00\00\be\00\00\00a\00\00\00\c2\00\00\00\99\00\00\00/\00\00\00^\00\00\00\bc\00\00\00e\00\00\00\ca\00\00\00\89\00\00\00\0f\00\00\00\1e\00\00\00<\00\00\00x\00\00\00\f0\00\00\00\fd\00\00\00\e7\00\00\00\d3\00\00\00\bb\00\00\00k\00\00\00\d6\00\00\00\b1\00\00\00\7f\00\00\00\fe\00\00\00\e1\00\00\00\df\00\00\00\a3\00\00\00[\00\00\00\b6\00\00\00q\00\00\00\e2\00\00\00\d9\00\00\00\af\00\00\00C\00\00\00\86\00\00\00\11\00\00\00\22\00\00\00D\00\00\00\88\00\00\00\0d\00\00\00\1a\00\00\004\00\00\00h\00\00\00\d0\00\00\00\bd\00\00\00g\00\00\00\ce\00\00\00\81\00\00\00\1f\00\00\00>\00\00\00|\00\00\00\f8\00\00\00\ed\00\00\00\c7\00\00\00\93\00\00\00;\00\00\00v\00\00\00\ec\00\00\00\c5\00\00\00\97\00\00\003\00\00\00f\00\00\00\cc\00\00\00\85\00\00\00\17\00\00\00.\00\00\00\5c\00\00\00\b8\00\00\00m\00\00\00\da\00\00\00\a9\00\00\00O\00\00\00\9e\00\00\00!\00\00\00B\00\00\00\84\00\00\00\15\00\00\00*\00\00\00T\00\00\00\a8\00\00\00M\00\00\00\9a\00\00\00)\00\00\00R\00\00\00\a4\00\00\00U\00\00\00\aa\00\00\00I\00\00\00\92\00\00\009\00\00\00r\00\00\00\e4\00\00\00\d5\00\00\00\b7\00\00\00s\00\00\00\e6\00\00\00\d1\00\00\00\bf\00\00\00c\00\00\00\c6\00\00\00\91\00\00\00?\00\00\00~\00\00\00\fc\00\00\00\e5\00\00\00\d7\00\00\00\b3\00\00\00{\00\00\00\f6\00\00\00\f1\00\00\00\ff\00\00\00\e3\00\00\00\db\00\00\00\ab\00\00\00K\00\00\00\96\00\00\001\00\00\00b\00\00\00\c4\00\00\00\95\00\00\007\00\00\00n\00\00\00\dc\00\00\00\a5\00\00\00W\00\00\00\ae\00\00\00A\00\00\00\82\00\00\00\19\00\00\002\00\00\00d\00\00\00\c8\00\00\00\8d\00\00\00\07\00\00\00\0e\00\00\00\1c\00\00\008\00\00\00p\00\00\00\e0\00\00\00\dd\00\00\00\a7\00\00\00S\00\00\00\a6\00\00\00Q\00\00\00\a2\00\00\00Y\00\00\00\b2\00\00\00y\00\00\00\f2\00\00\00\f9\00\00\00\ef\00\00\00\c3\00\00\00\9b\00\00\00+\00\00\00V\00\00\00\ac\00\00\00E\00\00\00\8a\00\00\00\09\00\00\00\12\00\00\00$\00\00\00H\00\00\00\90\00\00\00=\00\00\00z\00\00\00\f4\00\00\00\f5\00\00\00\f7\00\00\00\f3\00\00\00\fb\00\00\00\eb\00\00\00\cb\00\00\00\8b\00\00\00\0b\00\00\00\16\00\00\00,\00\00\00X\00\00\00\b0\00\00\00}\00\00\00\fa\00\00\00\e9\00\00\00\cf\00\00\00\83\00\00\00\1b\00\00\006\00\00\00l\00\00\00\d8\00\00\00\ad\00\00\00G\00\00\00\8e\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\19\00\00\00\02\00\00\002\00\00\00\1a\00\00\00\c6\00\00\00\03\00\00\00\df\00\00\003\00\00\00\ee\00\00\00\1b\00\00\00h\00\00\00\c7\00\00\00K\00\00\00\04\00\00\00d\00\00\00\e0\00\00\00\0e\00\00\004\00\00\00\8d\00\00\00\ef\00\00\00\81\00\00\00\1c\00\00\00\c1\00\00\00i\00\00\00\f8\00\00\00\c8\00\00\00\08\00\00\00L\00\00\00q\00\00\00\05\00\00\00\8a\00\00\00e\00\00\00/\00\00\00\e1\00\00\00$\00\00\00\0f\00\00\00!\00\00\005\00\00\00\93\00\00\00\8e\00\00\00\da\00\00\00\f0\00\00\00\12\00\00\00\82\00\00\00E\00\00\00\1d\00\00\00\b5\00\00\00\c2\00\00\00}\00\00\00j\00\00\00'\00\00\00\f9\00\00\00\b9\00\00\00\c9\00\00\00\9a\00\00\00\09\00\00\00x\00\00\00M\00\00\00\e4\00\00\00r\00\00\00\a6\00\00\00\06\00\00\00\bf\00\00\00\8b\00\00\00b\00\00\00f\00\00\00\dd\00\00\000\00\00\00\fd\00\00\00\e2\00\00\00\98\00\00\00%\00\00\00\b3\00\00\00\10\00\00\00\91\00\00\00\22\00\00\00\88\00\00\006\00\00\00\d0\00\00\00\94\00\00\00\ce\00\00\00\8f\00\00\00\96\00\00\00\db\00\00\00\bd\00\00\00\f1\00\00\00\d2\00\00\00\13\00\00\00\5c\00\00\00\83\00\00\008\00\00\00F\00\00\00@\00\00\00\1e\00\00\00B\00\00\00\b6\00\00\00\a3\00\00\00\c3\00\00\00H\00\00\00~\00\00\00n\00\00\00k\00\00\00:\00\00\00(\00\00\00T\00\00\00\fa\00\00\00\85\00\00\00\ba\00\00\00=\00\00\00\ca\00\00\00^\00\00\00\9b\00\00\00\9f\00\00\00\0a\00\00\00\15\00\00\00y\00\00\00+\00\00\00N\00\00\00\d4\00\00\00\e5\00\00\00\ac\00\00\00s\00\00\00\f3\00\00\00\a7\00\00\00W\00\00\00\07\00\00\00p\00\00\00\c0\00\00\00\f7\00\00\00\8c\00\00\00\80\00\00\00c\00\00\00\0d\00\00\00g\00\00\00J\00\00\00\de\00\00\00\ed\00\00\001\00\00\00\c5\00\00\00\fe\00\00\00\18\00\00\00\e3\00\00\00\a5\00\00\00\99\00\00\00w\00\00\00&\00\00\00\b8\00\00\00\b4\00\00\00|\00\00\00\11\00\00\00D\00\00\00\92\00\00\00\d9\00\00\00#\00\00\00 \00\00\00\89\00\00\00.\00\00\007\00\00\00?\00\00\00\d1\00\00\00[\00\00\00\95\00\00\00\bc\00\00\00\cf\00\00\00\cd\00\00\00\90\00\00\00\87\00\00\00\97\00\00\00\b2\00\00\00\dc\00\00\00\fc\00\00\00\be\00\00\00a\00\00\00\f2\00\00\00V\00\00\00\d3\00\00\00\ab\00\00\00\14\00\00\00*\00\00\00]\00\00\00\9e\00\00\00\84\00\00\00<\00\00\009\00\00\00S\00\00\00G\00\00\00m\00\00\00A\00\00\00\a2\00\00\00\1f\00\00\00-\00\00\00C\00\00\00\d8\00\00\00\b7\00\00\00{\00\00\00\a4\00\00\00v\00\00\00\c4\00\00\00\17\00\00\00I\00\00\00\ec\00\00\00\7f\00\00\00\0c\00\00\00o\00\00\00\f6\00\00\00l\00\00\00\a1\00\00\00;\00\00\00R\00\00\00)\00\00\00\9d\00\00\00U\00\00\00\aa\00\00\00\fb\00\00\00`\00\00\00\86\00\00\00\b1\00\00\00\bb\00\00\00\cc\00\00\00>\00\00\00Z\00\00\00\cb\00\00\00Y\00\00\00_\00\00\00\b0\00\00\00\9c\00\00\00\a9\00\00\00\a0\00\00\00Q\00\00\00\0b\00\00\00\f5\00\00\00\16\00\00\00\eb\00\00\00z\00\00\00u\00\00\00,\00\00\00\d7\00\00\00O\00\00\00\ae\00\00\00\d5\00\00\00\e9\00\00\00\e6\00\00\00\e7\00\00\00\ad\00\00\00\e8\00\00\00t\00\00\00\d6\00\00\00\f4\00\00\00\ea\00\00\00\a8\00\00\00P\00\00\00X\00\00\00\af\00\00\00\00\00\00\00P\05\00\00\01\00\00\00\01\00\00\00x!\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00"))
