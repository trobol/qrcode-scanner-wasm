(module
  (type (;0;) (func))
  (type (;1;) (func (param i32) (result f32)))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (param i32 f32 f32 f32 i32)))
  (type (;4;) (func (param i32 i32 f32 f32 f32)))
  (type (;5;) (func (param i32 f32 f32 f32) (result i32)))
  (type (;6;) (func (param f32) (result f32)))
  (type (;7;) (func (param i32 i32) (result i32)))
  (type (;8;) (func (result i32)))
  (type (;9;) (func (param i32 i32) (result f32)))
  (type (;10;) (func (param i32 i32 i32) (result i32)))
  (type (;11;) (func (param i32 i32 i32 i32) (result f32)))
  (type (;12;) (func (param f32 f32 f32 i32) (result i32)))
  (type (;13;) (func (param f32)))
  (type (;14;) (func (param f32 f32) (result f32)))
  (import "env" "memory" (memory (;0;) 2))
  (func $__wasm_call_ctors (type 0))
  (func $get_posX (type 1) (param i32) (result f32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    f32.load)
  (func $get_posY (type 1) (param i32) (result f32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    f32.load offset=4)
  (func $get_estimatedModuleSize (type 1) (param i32) (result f32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    f32.load offset=8)
  (func $get_count (type 2) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    i32.load offset=12)
  (func $createFinderPattern (type 3) (param i32 f32 f32 f32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 5
    local.get 0
    i32.store offset=28
    local.get 5
    local.get 1
    f32.store offset=24
    local.get 5
    local.get 2
    f32.store offset=20
    local.get 5
    local.get 3
    f32.store offset=16
    local.get 5
    local.get 4
    i32.store offset=12
    local.get 5
    i32.load offset=28
    local.get 5
    f32.load offset=24
    f32.store
    local.get 5
    i32.load offset=28
    local.get 5
    f32.load offset=20
    f32.store offset=4
    local.get 5
    i32.load offset=28
    local.get 5
    f32.load offset=16
    f32.store offset=8
    local.get 5
    i32.load offset=28
    local.get 5
    i32.load offset=12
    i32.store offset=12)
  (func $combineEstimate (type 4) (param i32 i32 f32 f32 f32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 5
    local.get 0
    i32.store offset=28
    local.get 5
    local.get 1
    i32.store offset=24
    local.get 5
    local.get 2
    f32.store offset=20
    local.get 5
    local.get 3
    f32.store offset=16
    local.get 5
    local.get 4
    f32.store offset=12
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    i32.load offset=12
    i32.const 1
    i32.add
    i32.store offset=12
    local.get 5
    i32.load offset=24
    local.tee 1
    local.get 5
    i32.load offset=28
    local.tee 0
    i32.load offset=12
    f32.convert_i32_u
    local.get 0
    f32.load
    f32.mul
    local.get 5
    f32.load offset=16
    f32.add
    local.get 1
    i32.load offset=12
    f32.convert_i32_u
    f32.div
    f32.store
    local.get 5
    i32.load offset=24
    local.tee 1
    local.get 5
    i32.load offset=28
    local.tee 0
    i32.load offset=12
    f32.convert_i32_u
    local.get 0
    f32.load offset=4
    f32.mul
    local.get 5
    f32.load offset=20
    f32.add
    local.get 1
    i32.load offset=12
    f32.convert_i32_u
    f32.div
    f32.store
    local.get 5
    i32.load offset=24
    local.get 5
    i32.load offset=28
    local.tee 1
    i32.load offset=12
    f32.convert_i32_u
    local.get 1
    f32.load offset=8
    f32.mul
    local.get 5
    f32.load offset=12
    f32.add
    local.get 5
    i32.load offset=24
    i32.load offset=12
    f32.convert_i32_u
    f32.div
    f32.store offset=8)
  (func $aboutEquals (type 5) (param i32 f32 f32 f32) (result i32)
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
        call $fabs
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
        call $fabs
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
        call $fabs
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
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 4
      i32.const 0
      i32.store offset=28
    end
    local.get 4
    i32.load offset=28
    local.set 0
    local.get 4
    i32.const 32
    i32.add
    global.set 0
    local.get 0)
  (func $fabs (type 6) (param f32) (result f32)
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
        i32.const 0
        f32.convert_i32_s
        f32.lt
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        f32.load offset=12
        f32.neg
        local.set 0
        br 1 (;@1;)
      end
      local.get 1
      f32.load offset=12
      local.set 0
    end
    local.get 0)
  (func $setImageSize (type 7) (param i32 i32) (result i32)
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
    local.get 2
    i32.load offset=12
    i32.store offset=1024
    i32.const 0
    local.get 2
    i32.load offset=8
    i32.store offset=1028
    i32.const 0
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=8
    i32.mul
    i32.const 2
    i32.shl
    i32.store offset=1032
    i32.const 0
    i32.const 0
    i32.load offset=1128
    i32.const 0
    i32.load offset=1032
    i32.add
    i32.store offset=1036
    i32.const 0
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=8
    i32.mul
    i32.store offset=1040
    i32.const 0
    i32.load offset=1128)
  (func $getImageSize (type 8) (result i32)
    i32.const 0
    i32.load offset=1032)
  (func $imageToBitmap (type 0)
    (local i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 0
    i32.const 0
    i32.store offset=56
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.load offset=56
        i32.const 0
        i32.load offset=1028
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 0
        i32.store offset=52
        block  ;; label = @3
          loop  ;; label = @4
            local.get 0
            i32.load offset=52
            i32.const 0
            i32.load offset=1024
            i32.lt_u
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            local.get 0
            i32.load offset=52
            i32.const 2
            i32.shl
            i32.const 0
            i32.load offset=1024
            local.get 0
            i32.load offset=56
            i32.mul
            i32.const 2
            i32.shl
            i32.add
            i32.store offset=60
            i32.const 0
            i32.load offset=1128
            local.get 0
            i32.load offset=60
            i32.add
            i32.const 0
            i32.load offset=1128
            local.get 0
            i32.load offset=60
            i32.add
            i32.load8_u
            i32.const 255
            i32.and
            i32.const 33
            i32.mul
            i32.const 0
            i32.load offset=1128
            local.get 0
            i32.load offset=60
            i32.const 1
            i32.add
            i32.add
            i32.load8_u
            i32.const 255
            i32.and
            i32.const 34
            i32.mul
            i32.add
            i32.const 0
            i32.load offset=1128
            local.get 0
            i32.load offset=60
            i32.const 2
            i32.add
            i32.add
            i32.load8_u
            i32.const 255
            i32.and
            i32.const 33
            i32.mul
            i32.add
            i32.const 100
            i32.div_s
            i32.store8
            i32.const 0
            i32.load offset=1128
            local.get 0
            i32.load offset=60
            i32.const 1
            i32.add
            i32.add
            i32.const 0
            i32.load offset=1128
            local.get 0
            i32.load offset=60
            i32.add
            i32.load8_u
            i32.store8
            i32.const 0
            i32.load offset=1128
            local.get 0
            i32.load offset=60
            i32.const 2
            i32.add
            i32.add
            i32.const 0
            i32.load offset=1128
            local.get 0
            i32.load offset=60
            i32.add
            i32.load8_u
            i32.store8
            local.get 0
            local.get 0
            i32.load offset=52
            i32.const 1
            i32.add
            i32.store offset=52
            br 0 (;@4;)
          end
        end
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
    i32.const 4
    i32.store offset=48
    local.get 0
    i32.const 0
    i32.load offset=1024
    local.get 0
    i32.load offset=48
    i32.div_u
    i32.store offset=44
    local.get 0
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.load offset=48
    i32.div_u
    i32.store offset=40
    local.get 0
    i32.const 0
    i32.store offset=20
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.load offset=20
        local.get 0
        i32.load offset=48
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 0
        i32.store offset=16
        block  ;; label = @3
          loop  ;; label = @4
            local.get 0
            i32.load offset=16
            local.get 0
            i32.load offset=48
            i32.lt_u
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            i32.const 255
            i32.store offset=36
            local.get 0
            i32.const 0
            i32.store offset=32
            local.get 0
            i32.const 0
            i32.store offset=8
            block  ;; label = @5
              loop  ;; label = @6
                local.get 0
                i32.load offset=8
                local.get 0
                i32.load offset=40
                i32.lt_u
                i32.const 1
                i32.and
                i32.eqz
                br_if 1 (;@5;)
                local.get 0
                i32.const 0
                i32.store offset=12
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 0
                    i32.load offset=12
                    local.get 0
                    i32.load offset=44
                    i32.lt_u
                    i32.const 1
                    i32.and
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 0
                    i32.const 0
                    i32.load offset=1128
                    local.get 0
                    i32.load offset=44
                    local.get 0
                    i32.load offset=20
                    i32.mul
                    local.get 0
                    i32.load offset=12
                    i32.add
                    local.get 0
                    i32.load offset=40
                    local.get 0
                    i32.load offset=16
                    i32.mul
                    local.get 0
                    i32.load offset=8
                    i32.add
                    i32.const 0
                    i32.load offset=1024
                    i32.mul
                    i32.add
                    i32.add
                    i32.load8_u
                    i32.const 255
                    i32.and
                    i32.store offset=28
                    block  ;; label = @9
                      local.get 0
                      i32.load offset=28
                      local.get 0
                      i32.load offset=36
                      i32.lt_u
                      i32.const 1
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 0
                      i32.load offset=28
                      i32.store offset=36
                    end
                    block  ;; label = @9
                      local.get 0
                      i32.load offset=28
                      local.get 0
                      i32.load offset=32
                      i32.gt_u
                      i32.const 1
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 0
                      i32.load offset=28
                      i32.store offset=32
                    end
                    local.get 0
                    local.get 0
                    i32.load offset=12
                    i32.const 1
                    i32.add
                    i32.store offset=12
                    br 0 (;@8;)
                  end
                end
                local.get 0
                local.get 0
                i32.load offset=8
                i32.const 1
                i32.add
                i32.store offset=8
                br 0 (;@6;)
              end
            end
            local.get 0
            local.get 0
            i32.load offset=36
            local.get 0
            i32.load offset=32
            i32.add
            i32.const 1
            i32.shr_u
            i32.store offset=24
            local.get 0
            i32.const 0
            i32.store offset=8
            block  ;; label = @5
              loop  ;; label = @6
                local.get 0
                i32.load offset=8
                local.get 0
                i32.load offset=40
                i32.lt_u
                i32.const 1
                i32.and
                i32.eqz
                br_if 1 (;@5;)
                local.get 0
                i32.const 0
                i32.store offset=12
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 0
                    i32.load offset=12
                    local.get 0
                    i32.load offset=44
                    i32.lt_u
                    i32.const 1
                    i32.and
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 0
                    local.get 0
                    i32.load offset=44
                    local.get 0
                    i32.load offset=20
                    i32.mul
                    local.get 0
                    i32.load offset=12
                    i32.add
                    i32.const 2
                    i32.shl
                    i32.const 0
                    i32.load offset=1024
                    local.get 0
                    i32.load offset=40
                    local.get 0
                    i32.load offset=16
                    i32.mul
                    local.get 0
                    i32.load offset=8
                    i32.add
                    i32.mul
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.store offset=28
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1128
                        local.get 0
                        i32.load offset=28
                        i32.add
                        i32.load8_u
                        i32.const 255
                        i32.and
                        local.get 0
                        i32.load offset=24
                        i32.gt_u
                        i32.const 1
                        i32.and
                        i32.eqz
                        br_if 0 (;@10;)
                        i32.const 0
                        i32.load offset=1128
                        local.get 0
                        i32.load offset=28
                        i32.add
                        i32.const 255
                        i32.store8
                        i32.const 0
                        i32.load offset=1128
                        local.get 0
                        i32.load offset=28
                        i32.const 1
                        i32.add
                        i32.add
                        i32.const 255
                        i32.store8
                        i32.const 0
                        i32.load offset=1128
                        local.get 0
                        i32.load offset=28
                        i32.const 2
                        i32.add
                        i32.add
                        i32.const 255
                        i32.store8
                        br 1 (;@9;)
                      end
                      i32.const 0
                      i32.load offset=1128
                      local.get 0
                      i32.load offset=28
                      i32.add
                      i32.const 0
                      i32.store8
                      i32.const 0
                      i32.load offset=1128
                      local.get 0
                      i32.load offset=28
                      i32.const 1
                      i32.add
                      i32.add
                      i32.const 0
                      i32.store8
                      i32.const 0
                      i32.load offset=1128
                      local.get 0
                      i32.load offset=28
                      i32.const 2
                      i32.add
                      i32.add
                      i32.const 0
                      i32.store8
                    end
                    local.get 0
                    local.get 0
                    i32.load offset=12
                    i32.const 1
                    i32.add
                    i32.store offset=12
                    br 0 (;@8;)
                  end
                end
                local.get 0
                local.get 0
                i32.load offset=8
                i32.const 1
                i32.add
                i32.store offset=8
                br 0 (;@6;)
              end
            end
            local.get 0
            local.get 0
            i32.load offset=16
            i32.const 1
            i32.add
            i32.store offset=16
            br 0 (;@4;)
          end
        end
        local.get 0
        local.get 0
        i32.load offset=20
        i32.const 1
        i32.add
        i32.store offset=20
        br 0 (;@2;)
      end
    end)
  (func $decode (type 0)
    call $imageToBitmap
    call $findFinderPatterns)
  (func $findFinderPatterns (type 0)
    (local i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 0
    i32.store offset=60
    local.get 0
    i32.const 0
    i32.load offset=1028
    i32.store offset=56
    local.get 0
    i32.const 0
    i32.load offset=1024
    i32.store offset=52
    local.get 0
    i32.const 0
    i32.store offset=28
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
        i32.lt_u
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=60
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
        i32.load offset=28
        i32.const 0
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
                local.get 0
                i32.load offset=12
                local.get 0
                i32.load offset=20
                call $getBitmapPixel
                i32.eqz
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 0
                  i32.load offset=16
                  i32.const 1
                  i32.and
                  i32.const 1
                  i32.eq
                  i32.const 1
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
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
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 0
                i32.load offset=16
                i32.const 1
                i32.and
                br_if 0 (;@6;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load offset=16
                    i32.const 4
                    i32.eq
                    i32.const 1
                    i32.and
                    i32.eqz
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        i32.const 32
                        i32.add
                        call $foundPatternCross
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 0
                        local.get 0
                        i32.const 32
                        i32.add
                        local.get 0
                        i32.load offset=20
                        local.get 0
                        i32.load offset=12
                        call $handlePossibleCenter
                        i32.store offset=8
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.load offset=8
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 0
                            i32.const 2
                            i32.store offset=24
                            block  ;; label = @13
                              block  ;; label = @14
                                i32.const 0
                                i32.load offset=1120
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 0
                                call $haveMultiplyConfirmedCenters
                                i32.store offset=28
                                br 1 (;@13;)
                              end
                              local.get 0
                              call $findRowSkip
                              i32.store offset=4
                              block  ;; label = @14
                                local.get 0
                                i32.load offset=4
                                local.get 0
                                i32.load offset=40
                                i32.gt_u
                                i32.const 1
                                i32.and
                                i32.eqz
                                br_if 0 (;@14;)
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
                            br 1 (;@11;)
                          end
                          loop  ;; label = @12
                            local.get 0
                            local.get 0
                            i32.load offset=12
                            i32.const 1
                            i32.add
                            i32.store offset=12
                            i32.const 0
                            local.set 1
                            block  ;; label = @13
                              local.get 0
                              i32.load offset=12
                              local.get 0
                              i32.load offset=52
                              i32.lt_u
                              i32.const 1
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.load offset=1128
                              local.get 0
                              i32.load offset=12
                              local.get 0
                              i32.load offset=20
                              i32.const 0
                              i32.load offset=1024
                              i32.mul
                              i32.add
                              i32.add
                              i32.load8_u
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
                            local.get 1
                            i32.const 1
                            i32.and
                            br_if 0 (;@12;)
                          end
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
                        br 1 (;@9;)
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
                    br 1 (;@7;)
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
              end
            end
            block  ;; label = @5
              local.get 0
              i32.const 32
              i32.add
              call $foundPatternCross
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              local.get 0
              i32.const 32
              i32.add
              local.get 0
              i32.load offset=20
              local.get 0
              i32.load offset=52
              call $handlePossibleCenter
              i32.store
              block  ;; label = @6
                local.get 0
                i32.load
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                local.get 0
                i32.load offset=32
                i32.store offset=24
                block  ;; label = @7
                  i32.const 0
                  i32.load offset=1120
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  call $haveMultiplyConfirmedCenters
                  i32.store offset=28
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
  (func $throw (type 0))
  (func $get_pattern (type 2) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    i32.const 1056
    local.get 1
    i32.load offset=12
    i32.const 4
    i32.shl
    i32.add)
  (func $getBitmapPixel (type 7) (param i32 i32) (result i32)
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
    i32.load offset=1128
    local.get 2
    i32.load offset=12
    i32.const 2
    i32.shl
    i32.const 0
    i32.load offset=1024
    local.get 2
    i32.load offset=8
    i32.mul
    i32.const 2
    i32.shl
    i32.add
    i32.add
    i32.load8_u
    i32.const 255
    i32.and
    i32.const 0
    i32.gt_s
    i32.const -1
    i32.xor
    i32.const 1
    i32.and)
  (func $distance (type 9) (param i32 i32) (result f32)
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
    block  ;; label = @1
      block  ;; label = @2
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
    local.get 1
    call $sqrt
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1
    f32.convert_i32_s)
  (func $sqrt (type 2) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.const 1
    i32.store offset=8
    local.get 1
    i32.const 0
    i32.store offset=4
    loop  ;; label = @1
      local.get 1
      local.get 1
      i32.load offset=12
      local.get 1
      i32.load offset=8
      i32.div_s
      i32.store
      local.get 1
      local.get 1
      i32.load
      local.get 1
      i32.load offset=8
      i32.add
      i32.const 2
      i32.div_s
      i32.store offset=8
      i32.const 0
      local.set 0
      block  ;; label = @2
        local.get 1
        i32.load offset=8
        local.get 1
        i32.load offset=8
        i32.mul
        local.get 1
        i32.load offset=12
        local.get 1
        i32.load offset=4
        i32.sub
        i32.ge_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=8
        local.get 1
        i32.load offset=8
        i32.mul
        local.get 1
        i32.load offset=12
        local.get 1
        i32.load offset=4
        i32.add
        i32.le_s
        local.set 0
      end
      local.get 0
      i32.const -1
      i32.xor
      i32.const 1
      i32.and
      br_if 0 (;@1;)
    end
    local.get 1
    i32.load offset=8)
  (func $orderBestPatterns (type 0)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 1056
    i32.const 1056
    i32.const 16
    i32.add
    local.tee 1
    call $distance
    f32.store offset=76
    local.get 0
    local.get 1
    i32.const 1056
    i32.const 32
    i32.add
    local.tee 2
    call $distance
    f32.store offset=72
    local.get 0
    i32.const 1056
    local.get 2
    call $distance
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
        i64.load offset=1064
        i64.store align=4
        local.get 1
        i32.const 0
        i64.load offset=1056
        i64.store align=4
        local.get 0
        i32.const 32
        i32.add
        local.tee 1
        i32.const 8
        i32.add
        i32.const 0
        i64.load offset=1080
        i64.store align=4
        local.get 1
        i32.const 0
        i64.load offset=1072
        i64.store align=4
        local.get 0
        i32.const 16
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
          i64.load offset=1080
          i64.store align=4
          local.get 1
          i32.const 0
          i64.load offset=1072
          i64.store align=4
          local.get 0
          i32.const 32
          i32.add
          local.tee 1
          i32.const 8
          i32.add
          i32.const 0
          i64.load offset=1064
          i64.store align=4
          local.get 1
          i32.const 0
          i64.load offset=1056
          i64.store align=4
          local.get 0
          i32.const 16
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
          br 1 (;@2;)
        end
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
        i64.load offset=1064
        i64.store align=4
        local.get 1
        i32.const 0
        i64.load offset=1056
        i64.store align=4
        local.get 0
        i32.const 16
        i32.add
        local.tee 1
        i32.const 8
        i32.add
        i32.const 0
        i64.load offset=1080
        i64.store align=4
        local.get 1
        i32.const 0
        i64.load offset=1072
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
    i64.store offset=1056 align=4
    i32.const 0
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store offset=1064 align=4
    i32.const 0
    local.get 0
    i32.const 48
    i32.add
    local.tee 1
    i64.load align=4
    i64.store offset=1072 align=4
    i32.const 0
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store offset=1080 align=4
    i32.const 0
    local.get 0
    i32.const 32
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
    local.get 0
    i32.const 80
    i32.add
    global.set 0)
  (func $foundPatternCross (type 2) (param i32) (result i32)
    (local i32 f32 i32)
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
            i32.store offset=28
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
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 0
        i32.store offset=28
        br 1 (;@1;)
      end
      i32.const 0
      local.set 0
      local.get 1
      local.get 1
      i32.load offset=20
      f32.convert_i32_u
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
        call $fabs
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
        call $fabs
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
        call $fabs
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
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            f32.load offset=12
            local.get 1
            i32.load offset=24
            i32.load offset=12
            f32.convert_i32_s
            f32.sub
            local.tee 2
            f32.abs
            f32.const 0x1p+31 (;=2.14748e+09;)
            f32.lt
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.trunc_f32_s
            local.set 3
            br 1 (;@3;)
          end
          i32.const -2147483648
          local.set 3
        end
        local.get 3
        call $abs
        f32.convert_i32_s
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
        call $fabs
        local.get 1
        f32.load offset=8
        f32.lt
        local.set 0
      end
      local.get 1
      local.get 0
      i32.const 1
      i32.and
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
  (func $handlePossibleCenter (type 10) (param i32 i32 i32) (result i32)
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
    i32.store offset=28
    local.get 3
    local.get 3
    i32.load offset=40
    local.get 3
    i32.load offset=32
    call $centerFromEnd
    f32.store offset=24
    local.get 3
    i32.load offset=36
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        f32.load offset=24
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
    i32.load offset=40
    i32.load offset=8
    local.get 3
    i32.load offset=28
    call $crossCheckVertical
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
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            f32.load offset=24
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
            f32.load offset=20
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
        i32.load offset=40
        i32.load offset=8
        local.get 3
        i32.load offset=28
        call $crossCheckHorizontal
        f32.store offset=24
        block  ;; label = @3
          local.get 3
          f32.load offset=24
          f32.const 0x1p+22 (;=4.1943e+06;)
          f32.ne
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 3
          i32.load offset=28
          f32.convert_i32_s
          f32.const 0x1.cp+2 (;=7;)
          f32.div
          f32.store offset=16
          local.get 3
          i32.const 0
          i32.store offset=12
          local.get 3
          i32.const 0
          i32.load offset=1124
          i32.store offset=8
          local.get 3
          i32.const 0
          i32.store offset=4
          block  ;; label = @4
            block  ;; label = @5
              loop  ;; label = @6
                local.get 3
                i32.load offset=4
                local.get 3
                i32.load offset=8
                i32.lt_u
                i32.const 1
                i32.and
                i32.eqz
                br_if 1 (;@5;)
                block  ;; label = @7
                  i32.const 1056
                  local.get 3
                  i32.load offset=4
                  i32.const 4
                  i32.shl
                  i32.add
                  local.get 3
                  f32.load offset=16
                  local.get 3
                  f32.load offset=20
                  local.get 3
                  f32.load offset=24
                  call $aboutEquals
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 1056
                  local.get 3
                  i32.load offset=4
                  i32.const 4
                  i32.shl
                  i32.add
                  i32.const 1056
                  local.get 3
                  i32.load offset=4
                  i32.const 4
                  i32.shl
                  i32.add
                  local.get 3
                  f32.load offset=20
                  local.get 3
                  f32.load offset=24
                  local.get 3
                  f32.load offset=16
                  call $combineEstimate
                  local.get 3
                  i32.const 1
                  i32.store offset=12
                  br 3 (;@4;)
                end
                local.get 3
                local.get 3
                i32.load offset=4
                i32.const 1
                i32.add
                i32.store offset=4
                br 0 (;@6;)
              end
            end
          end
          block  ;; label = @4
            local.get 3
            i32.load offset=12
            br_if 0 (;@4;)
            local.get 3
            local.get 3
            f32.load offset=24
            local.get 3
            f32.load offset=20
            local.get 3
            f32.load offset=16
            i32.const 0
            call $addPossibleCenter
            i32.store
          end
          local.get 3
          i32.const 1
          i32.store offset=44
          br 2 (;@1;)
        end
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
  (func $haveMultiplyConfirmedCenters (type 8) (result i32)
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
    i32.load offset=1124
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
          i32.const 1056
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
          i32.const 1056
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
        i32.store offset=28
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
          i32.const 1056
          local.get 0
          i32.load
          i32.const 4
          i32.shl
          i32.add
          f32.load offset=8
          local.get 0
          f32.load offset=8
          f32.sub
          call $fabs
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
      i32.store offset=28
    end
    local.get 0
    i32.load offset=28
    local.set 1
    local.get 0
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func $findRowSkip (type 8) (result i32)
    (local i32 f32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 0
    i32.load offset=1124
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
            i32.const 1056
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
                i32.const 0
                i32.eq
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.const 1056
                local.get 0
                i32.load
                i32.const 4
                i32.shl
                i32.add
                i32.store offset=4
                br 1 (;@5;)
              end
              i32.const 0
              i32.const 1
              i32.store offset=1120
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.load offset=4
                  f32.load
                  i32.const 1056
                  local.get 0
                  i32.load
                  i32.const 4
                  i32.shl
                  i32.add
                  f32.load
                  f32.sub
                  call $fabs
                  local.get 0
                  i32.load offset=4
                  f32.load offset=4
                  i32.const 1056
                  local.get 0
                  i32.load
                  i32.const 4
                  i32.shl
                  i32.add
                  f32.load offset=4
                  f32.sub
                  call $fabs
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
  (func $selectBestPatterns (type 0)
    (local i32 f32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 0
    i32.load offset=1124
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
      call $throw
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
          i32.const 1056
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
      block  ;; label = @2
        block  ;; label = @3
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
      local.get 0
      local.get 2
      call $sqrt
      f32.convert_i32_s
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
      call $max
      f32.convert_i32_s
      f32.store offset=32
      local.get 0
      i32.const 0
      i32.store offset=28
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 0
      i32.const 0
      i32.store offset=20
      loop  ;; label = @2
        i32.const 0
        local.set 2
        block  ;; label = @3
          local.get 0
          i32.load offset=20
          i32.const 0
          i32.load offset=1124
          i32.lt_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1124
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
            i32.const 1056
            local.get 0
            i32.load offset=20
            i32.const 4
            i32.shl
            i32.add
            f32.load offset=8
            local.get 0
            f32.load offset=40
            f32.sub
            call $fabs
            local.get 0
            f32.load offset=32
            f32.gt
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 0
            i32.load offset=20
            i32.store offset=16
            block  ;; label = @5
              loop  ;; label = @6
                local.get 0
                i32.load offset=16
                i32.const 0
                i32.load offset=1124
                i32.const 1
                i32.sub
                i32.lt_u
                i32.const 1
                i32.and
                i32.eqz
                br_if 1 (;@5;)
                i32.const 1056
                local.get 0
                i32.load offset=16
                i32.const 4
                i32.shl
                i32.add
                local.tee 2
                i32.const 1056
                local.get 0
                i32.load offset=16
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
                i32.load offset=16
                i32.const 1
                i32.add
                i32.store offset=16
                br 0 (;@6;)
              end
            end
            i32.const 0
            i32.const 0
            i32.load offset=1124
            i32.const -1
            i32.add
            i32.store offset=1124
            local.get 0
            local.get 0
            i32.load offset=20
            i32.const -1
            i32.add
            i32.store offset=20
          end
          local.get 0
          local.get 0
          i32.load offset=20
          i32.const 1
          i32.add
          i32.store offset=20
          br 1 (;@2;)
        end
      end
    end
    block  ;; label = @1
      i32.const 0
      i32.load offset=1124
      i32.const 3
      i32.gt_u
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      f32.convert_i32_s
      f32.store offset=12
      local.get 0
      i32.const 0
      i32.store offset=8
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load offset=8
          i32.const 0
          i32.load offset=1124
          i32.lt_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.const 1056
          local.get 0
          i32.load offset=8
          i32.const 4
          i32.shl
          i32.add
          f32.load offset=8
          f32.store offset=4
          local.get 0
          local.get 0
          f32.load offset=12
          local.get 0
          f32.load offset=4
          f32.add
          f32.store offset=12
          local.get 0
          local.get 0
          i32.load offset=8
          i32.const 1
          i32.add
          i32.store offset=8
          br 0 (;@3;)
        end
      end
      local.get 0
      local.get 0
      f32.load offset=12
      i32.const 0
      i32.load offset=1124
      f32.convert_i32_u
      f32.div
      f32.store
      local.get 0
      f32.load
      call $sortCenterComparator
      i32.const 0
      i32.const 3
      i32.store offset=1124
    end
    local.get 0
    i32.const 64
    i32.add
    global.set 0)
  (func $abs (type 2) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=12
        i32.const 0
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.get 1
        i32.load offset=12
        i32.sub
        local.set 1
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=12
      local.set 1
    end
    local.get 1)
  (func $centerFromEnd (type 9) (param i32 i32) (result f32)
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
    i32.load offset=1028
    i32.store offset=40
    local.get 4
    i32.const 16
    i32.add
    local.tee 3
    i64.const 0
    i64.store
    local.get 3
    i32.const 16
    i32.add
    i32.const 0
    i32.store
    local.get 3
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    local.get 4
    local.get 4
    i32.load offset=56
    i32.store offset=12
    loop  ;; label = @1
      i32.const 0
      local.set 3
      block  ;; label = @2
        local.get 4
        i32.load offset=12
        i32.const 0
        i32.ge_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.load offset=52
        local.get 4
        i32.load offset=12
        call $getBitmapPixel
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
        i32.load offset=12
        i32.const -1
        i32.add
        i32.store offset=12
        br 1 (;@1;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.load offset=12
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
          i32.load offset=12
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
          i32.load offset=12
          call $getBitmapPixel
          i32.eqz
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
          i32.load offset=12
          i32.const -1
          i32.add
          i32.store offset=12
          br 1 (;@2;)
        end
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.load offset=12
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
          i32.load offset=12
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
          i32.load offset=12
          call $getBitmapPixel
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
          i32.load offset=12
          i32.const -1
          i32.add
          i32.store offset=12
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
      i32.store offset=12
      loop  ;; label = @2
        i32.const 0
        local.set 3
        block  ;; label = @3
          local.get 4
          i32.load offset=12
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
          i32.load offset=12
          call $getBitmapPixel
          i32.eqz
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
          i32.load offset=12
          i32.const 1
          i32.add
          i32.store offset=12
          br 1 (;@2;)
        end
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.load offset=12
          local.get 4
          i32.load offset=40
          i32.eq
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
          i32.load offset=12
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
          i32.load offset=12
          call $getBitmapPixel
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=24
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
          i32.load offset=24
          i32.const 1
          i32.add
          i32.store offset=24
          local.get 4
          local.get 4
          i32.load offset=12
          i32.const 1
          i32.add
          i32.store offset=12
          br 1 (;@2;)
        end
      end
      block  ;; label = @2
        local.get 4
        i32.load offset=24
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
      i32.load offset=16
      local.get 4
      i32.load offset=20
      i32.add
      local.get 4
      i32.load offset=24
      i32.add
      i32.store offset=8
      block  ;; label = @2
        local.get 4
        i32.load offset=8
        local.get 4
        i32.load offset=44
        i32.sub
        call $abs
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
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.const 16
          i32.add
          local.get 4
          i32.load offset=12
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
    i32.load offset=1024
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
        call $abs
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
    i32.const 16
    i32.sub
    local.tee 4
    local.get 0
    f32.store offset=12
    local.get 4
    local.get 1
    f32.store offset=8
    local.get 4
    local.get 2
    f32.store offset=4
    local.get 4
    local.get 3
    i32.store
    i32.const 1056
    i32.const 0
    i32.load offset=1124
    i32.const 4
    i32.shl
    i32.add
    local.get 4
    f32.load offset=12
    f32.store
    i32.const 1056
    i32.const 0
    i32.load offset=1124
    i32.const 4
    i32.shl
    i32.add
    local.get 4
    f32.load offset=8
    f32.store offset=4
    i32.const 1056
    i32.const 0
    i32.load offset=1124
    i32.const 4
    i32.shl
    i32.add
    local.get 4
    f32.load offset=4
    f32.store offset=8
    i32.const 1056
    i32.const 0
    i32.load offset=1124
    i32.const 4
    i32.shl
    i32.add
    local.get 4
    i32.load
    i32.store offset=12
    i32.const 0
    i32.const 0
    i32.load offset=1124
    local.tee 4
    i32.const 1
    i32.add
    i32.store offset=1124
    i32.const 1056
    local.get 4
    i32.const 4
    i32.shl
    i32.add)
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
        i32.load offset=1124
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
            i32.load offset=1124
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
            i32.const 1056
            local.get 1
            i32.load offset=16
            i32.const 4
            i32.shl
            i32.add
            f32.load offset=8
            local.get 1
            f32.load offset=44
            f32.sub
            call $fabs
            f32.store offset=12
            local.get 1
            i32.const 1056
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
            call $fabs
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
              i32.const 1056
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
              i32.const 1056
              local.get 1
              i32.load offset=16
              i32.const 4
              i32.shl
              i32.add
              local.tee 3
              i32.const 1056
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
              i32.const 1056
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
  (func $max (type 7) (param i32 i32) (result i32)
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
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=12
        local.get 2
        i32.load offset=8
        i32.gt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=12
        local.set 2
        br 1 (;@1;)
      end
      local.get 2
      i32.load offset=8
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
        i32.load offset=1124
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
            i32.load offset=1124
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
            i32.store offset=12
            block  ;; label = @5
              block  ;; label = @6
                i32.const 1056
                local.get 1
                i32.load offset=16
                i32.const 4
                i32.shl
                i32.add
                i32.load offset=12
                i32.const 1056
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
                i32.const 1056
                local.get 1
                i32.load offset=16
                i32.const 4
                i32.shl
                i32.add
                i32.load offset=12
                i32.const 1056
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
                i32.store offset=12
                br 1 (;@5;)
              end
              local.get 1
              i32.const 1056
              local.get 1
              i32.load offset=16
              i32.const 4
              i32.shl
              i32.add
              f32.load offset=8
              local.get 1
              f32.load offset=44
              f32.sub
              call $fabs
              f32.store offset=8
              local.get 1
              i32.const 1056
              local.get 1
              i32.load offset=16
              i32.const 4
              i32.shl
              i32.add
              f32.load offset=8
              local.get 1
              f32.load offset=44
              f32.sub
              call $fabs
              f32.store offset=4
              local.get 1
              local.get 1
              f32.load offset=8
              local.get 1
              f32.load offset=4
              f32.gt
              i32.const 1
              i32.and
              i32.store offset=12
            end
            block  ;; label = @5
              local.get 1
              i32.load offset=12
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.const 24
              i32.add
              local.tee 2
              i32.const 1056
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
              i32.const 1056
              local.get 1
              i32.load offset=16
              i32.const 4
              i32.shl
              i32.add
              local.tee 3
              i32.const 1056
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
              i32.const 1056
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
  (func $fmax (type 14) (param f32 f32) (result f32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    f32.store offset=12
    local.get 2
    local.get 1
    f32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        f32.load offset=12
        local.get 2
        f32.load offset=8
        f32.gt
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        f32.load offset=12
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      f32.load offset=8
      local.set 1
    end
    local.get 1)
  (func $fsqrt (type 6) (param f32) (result f32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    f32.store offset=12
    local.get 1
    f32.const 0x1p+0 (;=1;)
    f32.store offset=8
    local.get 1
    f32.const 0x1.0624dep-10 (;=0.001;)
    f32.store offset=4
    loop  ;; label = @1
      local.get 1
      local.get 1
      f32.load offset=12
      local.get 1
      f32.load offset=8
      f32.div
      f32.store
      local.get 1
      local.get 1
      f32.load
      local.get 1
      f32.load offset=8
      f32.add
      f32.const 0x1p+1 (;=2;)
      f32.div
      f32.store offset=8
      i32.const 0
      local.set 2
      block  ;; label = @2
        local.get 1
        f32.load offset=8
        local.get 1
        f32.load offset=8
        f32.mul
        local.get 1
        f32.load offset=12
        local.get 1
        f32.load offset=4
        f32.sub
        f32.ge
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        f32.load offset=8
        local.get 1
        f32.load offset=8
        f32.mul
        local.get 1
        f32.load offset=12
        local.get 1
        f32.load offset=4
        f32.add
        f32.le
        local.set 2
      end
      local.get 2
      i32.const -1
      i32.xor
      i32.const 1
      i32.and
      br_if 0 (;@1;)
    end
    local.get 1
    f32.load offset=8)
  (table (;0;) 1 1 funcref)
  (global (;0;) (mut i32) (i32.const 66672))
  (global (;1;) i32 (i32.const 1132))
  (global (;2;) i32 (i32.const 1024))
  (global (;3;) i32 (i32.const 66672))
  (global (;4;) i32 (i32.const 1024))
  (global (;5;) i32 (i32.const 1024))
  (global (;6;) i32 (i32.const 1028))
  (global (;7;) i32 (i32.const 1032))
  (global (;8;) i32 (i32.const 1128))
  (global (;9;) i32 (i32.const 1040))
  (global (;10;) i32 (i32.const 1036))
  (global (;11;) i32 (i32.const 1120))
  (global (;12;) i32 (i32.const 1124))
  (global (;13;) i32 (i32.const 1056))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "__data_end" (global 1))
  (export "__global_base" (global 2))
  (export "__heap_base" (global 3))
  (export "__dso_handle" (global 4))
  (export "get_posX" (func $get_posX))
  (export "get_posY" (func $get_posY))
  (export "get_estimatedModuleSize" (func $get_estimatedModuleSize))
  (export "get_count" (func $get_count))
  (export "createFinderPattern" (func $createFinderPattern))
  (export "combineEstimate" (func $combineEstimate))
  (export "aboutEquals" (func $aboutEquals))
  (export "fabs" (func $fabs))
  (export "setImageSize" (func $setImageSize))
  (export "getImageSize" (func $getImageSize))
  (export "imageToBitmap" (func $imageToBitmap))
  (export "decode" (func $decode))
  (export "findFinderPatterns" (func $findFinderPatterns))
  (export "imageWidth" (global 5))
  (export "imageHeight" (global 6))
  (export "imageSize" (global 7))
  (export "image" (global 8))
  (export "bitmapSize" (global 9))
  (export "bitmapIndex" (global 10))
  (export "throw" (func $throw))
  (export "get_pattern" (func $get_pattern))
  (export "getBitmapPixel" (func $getBitmapPixel))
  (export "distance" (func $distance))
  (export "sqrt" (func $sqrt))
  (export "orderBestPatterns" (func $orderBestPatterns))
  (export "foundPatternCross" (func $foundPatternCross))
  (export "handlePossibleCenter" (func $handlePossibleCenter))
  (export "findRowSkip" (func $findRowSkip))
  (export "haveMultiplyConfirmedCenters" (func $haveMultiplyConfirmedCenters))
  (export "abs" (func $abs))
  (export "centerFromEnd" (func $centerFromEnd))
  (export "crossCheckVertical" (func $crossCheckVertical))
  (export "crossCheckHorizontal" (func $crossCheckHorizontal))
  (export "addPossibleCenter" (func $addPossibleCenter))
  (export "sortPossibleCenters" (func $sortPossibleCenters))
  (export "sortCenterComparator" (func $sortCenterComparator))
  (export "selectBestPatterns" (func $selectBestPatterns))
  (export "max" (func $max))
  (export "hasSkipped" (global 11))
  (export "possibleCentersSize" (global 12))
  (export "possibleCenters" (global 13))
  (export "fmax" (func $fmax))
  (export "fsqrt" (func $fsqrt))
  (data (;0;) (i32.const 1024) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
  (data (;1;) (i32.const 1128) "p\04\01\00"))
