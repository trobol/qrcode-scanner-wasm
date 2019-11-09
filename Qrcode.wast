(module
  (type (;0;) (func (param f32) (result f32)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param f32 f32)))
  (type (;3;) (func))
  (type (;4;) (func (param i32 i32) (result f32)))
  (type (;5;) (func (param i32) (result f32)))
  (type (;6;) (func (param i32) (result i32)))
  (type (;7;) (func (param i32 f32 f32 f32 i32)))
  (type (;8;) (func (param i32 i32 f32 f32 f32)))
  (type (;9;) (func (param i32 f32 f32 f32) (result i32)))
  (type (;10;) (func (result i32)))
  (type (;11;) (func (param i32 i32) (result i32)))
  (type (;12;) (func (param i32 i32)))
  (type (;13;) (func (param i32 i32 i32) (result i32)))
  (type (;14;) (func (param i32 i32 i32 i32) (result f32)))
  (type (;15;) (func (param f32 f32 f32 i32) (result i32)))
  (type (;16;) (func (param f32)))
  (type (;17;) (func (param f32 f32) (result f32)))
  (type (;18;) (func (param f32) (result i32)))
  (type (;19;) (func (param f32 f32 f32 f32) (result f32)))
  (type (;20;) (func (param i32 i32 i32) (result f32)))
  (type (;21;) (func (param i32 i32 i32 f32) (result i32)))
  (type (;22;) (func (param f32 i32 i32 f32) (result i32)))
  (type (;23;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;24;) (func (param i32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32)))
  (type (;25;) (func (param i32 f32 f32 f32 f32 f32 f32 f32 f32)))
  (type (;26;) (func (param i32 i32 i32)))
  (type (;27;) (func (param i32 f32 f32 f32 f32 f32 f32 f32 f32 f32)))
  (import "env" "memory" (memory (;0;) 2))
  (import "env" "fsqrt" (func $fsqrt (type 0)))
  (import "env" "printNum" (func $printNum (type 1)))
  (import "env" "drawDot" (func $drawDot (type 2)))
  (func $__wasm_call_ctors (type 3))
  (func $FinderPattern_distance (type 4) (param i32 i32) (result f32)
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
    call $fsqrt
    local.set 3
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 3)
  (func $get_posX (type 5) (param i32) (result f32)
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
  (func $get_posY (type 5) (param i32) (result f32)
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
  (func $get_estimatedModuleSize (type 5) (param i32) (result f32)
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
  (func $get_count (type 6) (param i32) (result i32)
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
  (func $createFinderPattern (type 7) (param i32 f32 f32 f32 i32)
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
  (func $combineEstimate (type 8) (param i32 i32 f32 f32 f32)
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
  (func $aboutEquals (type 9) (param i32 f32 f32 f32) (result i32)
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
  (func $fabs (type 0) (param f32) (result f32)
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
  (func $get_int (type 6) (param i32) (result i32)
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
  (func $get_bits (type 10) (result i32)
    i32.const 0
    i32.load offset=1044)
  (func $get_size (type 10) (result i32)
    i32.const 0
    i32.load offset=1032)
  (func $setImageSize (type 11) (param i32 i32) (result i32)
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
    i32.store offset=1052
    i32.const 0
    local.get 2
    i32.load offset=8
    i32.store offset=1056
    i32.const 0
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=8
    i32.mul
    i32.const 2
    i32.shl
    i32.store offset=1060
    i32.const 0
    i32.const 0
    i32.load offset=1376
    i32.const 0
    i32.load offset=1060
    i32.const 2
    i32.shl
    i32.add
    i32.store offset=1044
    i32.const 0
    i32.load offset=1376)
  (func $getImageSize (type 10) (result i32)
    i32.const 0
    i32.load offset=1060)
  (func $imageToBitmap (type 3)
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
        i32.load offset=1056
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
            i32.load offset=1052
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
            i32.load offset=1052
            local.get 0
            i32.load offset=56
            i32.mul
            i32.const 2
            i32.shl
            i32.add
            i32.store offset=60
            i32.const 0
            i32.load offset=1376
            local.get 0
            i32.load offset=60
            i32.const 2
            i32.shl
            i32.add
            i32.const 0
            i32.load offset=1376
            local.get 0
            i32.load offset=60
            i32.const 2
            i32.shl
            i32.add
            i32.load
            i32.const 33
            i32.mul
            i32.const 0
            i32.load offset=1376
            local.get 0
            i32.load offset=60
            i32.const 1
            i32.add
            i32.const 2
            i32.shl
            i32.add
            i32.load
            i32.const 34
            i32.mul
            i32.add
            i32.const 0
            i32.load offset=1376
            local.get 0
            i32.load offset=60
            i32.const 2
            i32.add
            i32.const 2
            i32.shl
            i32.add
            i32.load
            i32.const 33
            i32.mul
            i32.add
            i32.const 100
            i32.div_u
            i32.store
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
    i32.load offset=1052
    local.get 0
    i32.load offset=48
    i32.div_u
    i32.store offset=44
    local.get 0
    i32.const 0
    i32.load offset=1056
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
                    i32.load offset=1376
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
                    i32.load offset=1052
                    i32.mul
                    i32.add
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.load
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
                    i32.load offset=1052
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
                        i32.load offset=1376
                        local.get 0
                        i32.load offset=28
                        i32.const 2
                        i32.shl
                        i32.add
                        i32.load
                        local.get 0
                        i32.load offset=24
                        i32.gt_u
                        i32.const 1
                        i32.and
                        i32.eqz
                        br_if 0 (;@10;)
                        i32.const 0
                        i32.load offset=1376
                        local.get 0
                        i32.load offset=28
                        i32.const 2
                        i32.shl
                        i32.add
                        i32.const 255
                        i32.store
                        i32.const 0
                        i32.load offset=1376
                        local.get 0
                        i32.load offset=28
                        i32.const 1
                        i32.add
                        i32.const 2
                        i32.shl
                        i32.add
                        i32.const 255
                        i32.store
                        i32.const 0
                        i32.load offset=1376
                        local.get 0
                        i32.load offset=28
                        i32.const 2
                        i32.add
                        i32.const 2
                        i32.shl
                        i32.add
                        i32.const 255
                        i32.store
                        br 1 (;@9;)
                      end
                      i32.const 0
                      i32.load offset=1376
                      local.get 0
                      i32.load offset=28
                      i32.const 2
                      i32.shl
                      i32.add
                      i32.const 0
                      i32.store
                      i32.const 0
                      i32.load offset=1376
                      local.get 0
                      i32.load offset=28
                      i32.const 1
                      i32.add
                      i32.const 2
                      i32.shl
                      i32.add
                      i32.const 0
                      i32.store
                      i32.const 0
                      i32.load offset=1376
                      local.get 0
                      i32.load offset=28
                      i32.const 2
                      i32.add
                      i32.const 2
                      i32.shl
                      i32.add
                      i32.const 0
                      i32.store
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
  (func $decode (type 3)
    i32.const 0
    i32.const 0
    i32.store offset=1268
    call $findFinderPatterns
    call $processFinderPatternInfo
    i32.const 0
    i32.load offset=1032
    call $printNum
    i32.const 0
    i32.load offset=1036
    call $printNum)
  (func $findFinderPatterns (type 3)
    (local i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    i32.const 0
    i32.store offset=1264
    local.get 0
    i32.const 0
    i32.store offset=60
    local.get 0
    i32.const 0
    i32.load offset=1056
    i32.store offset=56
    local.get 0
    i32.const 0
    i32.load offset=1052
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
        i32.lt_s
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
                block  ;; label = @7
                  local.get 0
                  i32.load offset=12
                  local.get 0
                  i32.load offset=20
                  call $getBitmapPixel
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
                            i32.store offset=8
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 0
                                i32.load offset=8
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 0
                                i32.const 2
                                i32.store offset=24
                                block  ;; label = @15
                                  block  ;; label = @16
                                    i32.const 0
                                    i32.load offset=1264
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 0
                                    call $haveMultiplyConfirmedCenters
                                    i32.store offset=28
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
                i32.store
                block  ;; label = @7
                  local.get 0
                  i32.load
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  local.get 0
                  i32.load offset=32
                  i32.store offset=24
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=1264
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 0
                    call $haveMultiplyConfirmedCenters
                    i32.store offset=28
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
  (func $processFinderPatternInfo (type 3)
    (local i32 i32 i32 i32 f32)
    global.get 0
    i32.const 176
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 160
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
    i32.const 144
    i32.add
    local.tee 2
    i32.const 8
    i32.add
    i32.const 0
    i64.load offset=1096
    i64.store align=4
    local.get 2
    i32.const 0
    i64.load offset=1088
    i64.store align=4
    local.get 0
    i32.const 128
    i32.add
    local.tee 3
    i32.const 8
    i32.add
    i32.const 0
    i64.load offset=1112
    i64.store align=4
    local.get 3
    i32.const 0
    i64.load offset=1104
    i64.store align=4
    local.get 0
    local.get 2
    local.get 3
    local.get 1
    call $calculateModuleSize
    f32.store offset=124
    block  ;; label = @1
      local.get 0
      f32.load offset=124
      f32.const 0x1p+0 (;=1;)
      f32.lt
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 0
    i32.const 144
    i32.add
    local.get 0
    i32.const 128
    i32.add
    local.get 0
    i32.const 160
    i32.add
    local.get 0
    f32.load offset=124
    call $computeDimension
    i32.store offset=120
    local.get 0
    i32.load offset=120
    call $printNum
    local.get 0
    local.get 0
    i32.load offset=120
    call $getProvisionalVersionForDimension
    i32.store offset=116
    local.get 0
    i32.load offset=116
    i32.load
    call $printNum
    local.get 0
    i32.load offset=116
    i32.load offset=8
    call $printNum
    local.get 0
    local.get 0
    i32.load offset=116
    call $getDimensionForVersion
    i32.const 7
    i32.sub
    i32.store offset=112
    local.get 0
    i32.load offset=112
    call $printNum
    local.get 0
    i32.const 0
    i32.store offset=108
    block  ;; label = @1
      local.get 0
      i32.load offset=116
      i32.load offset=8
      i32.const 0
      i32.gt_s
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 100
      call $printNum
      local.get 0
      local.get 0
      f32.load offset=128
      local.get 0
      f32.load offset=144
      f32.sub
      local.get 0
      f32.load offset=160
      f32.add
      f32.store offset=104
      local.get 0
      local.get 0
      f32.load offset=132
      local.get 0
      f32.load offset=148
      f32.sub
      local.get 0
      f32.load offset=164
      f32.add
      f32.store offset=100
      local.get 0
      f32.const 0x1p+0 (;=1;)
      f32.const 0x1.8p+1 (;=3;)
      local.get 0
      i32.load offset=112
      f32.convert_i32_s
      f32.div
      f32.sub
      f32.store offset=96
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          f32.load offset=144
          local.get 0
          f32.load offset=96
          local.get 0
          f32.load offset=104
          local.get 0
          f32.load offset=144
          f32.sub
          f32.mul
          f32.add
          local.tee 4
          f32.abs
          f32.const 0x1p+31 (;=2.14748e+09;)
          f32.lt
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.trunc_f32_s
          local.set 1
          br 1 (;@2;)
        end
        i32.const -2147483648
        local.set 1
      end
      local.get 0
      local.get 1
      i32.store offset=92
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          f32.load offset=144
          local.get 0
          f32.load offset=96
          local.get 0
          f32.load offset=100
          local.get 0
          f32.load offset=144
          f32.sub
          f32.mul
          f32.add
          local.tee 4
          f32.abs
          f32.const 0x1p+31 (;=2.14748e+09;)
          f32.lt
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.trunc_f32_s
          local.set 1
          br 1 (;@2;)
        end
        i32.const -2147483648
        local.set 1
      end
      local.get 0
      local.get 1
      i32.store offset=88
      local.get 0
      i32.const 4
      i32.store offset=84
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            local.get 0
            i32.load offset=84
            i32.const 16
            i32.le_s
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            local.get 0
            f32.load offset=124
            local.get 0
            i32.load offset=92
            local.get 0
            i32.load offset=88
            local.get 0
            i32.load offset=84
            f32.convert_i32_s
            call $findAlignmentInRegion
            i32.store offset=108
            block  ;; label = @5
              local.get 0
              i32.load offset=108
              i32.const 0
              i32.ne
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              br 3 (;@2;)
            end
            local.get 0
            local.get 0
            i32.load offset=84
            i32.const 1
            i32.shl
            i32.store offset=84
            br 0 (;@4;)
          end
        end
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=108
        i32.const 0
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 4000
        call $printNum
      end
    end
    i32.const 80
    call $printNum
    local.get 0
    i32.load offset=108
    call $printNum
    local.get 0
    i32.const 48
    i32.add
    local.get 0
    i32.const 144
    i32.add
    local.get 0
    i32.const 128
    i32.add
    local.get 0
    i32.const 160
    i32.add
    local.get 0
    i32.load offset=108
    local.get 0
    i32.load offset=120
    call $Detector_createTransform
    local.get 0
    i32.load offset=120
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    i32.const 32
    i32.add
    local.get 0
    i32.const 48
    i32.add
    i32.const 32
    i32.add
    i32.load
    i32.store
    local.get 0
    i32.const 8
    i32.add
    i32.const 24
    i32.add
    local.get 0
    i32.const 48
    i32.add
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.const 48
    i32.add
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 0
    i32.const 48
    i32.add
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 0
    i64.load offset=48
    i64.store offset=8
    local.get 1
    local.get 0
    i32.const 8
    i32.add
    call $Detector_sampleGrid
    i32.const 0
    local.get 0
    f32.load offset=160
    f32.store offset=1272
    i32.const 0
    local.get 0
    f32.load offset=164
    f32.store offset=1276
    i32.const 0
    local.get 0
    f32.load offset=144
    f32.store offset=1280
    i32.const 0
    local.get 0
    f32.load offset=148
    f32.store offset=1284
    i32.const 0
    local.get 0
    f32.load offset=128
    f32.store offset=1288
    i32.const 0
    local.get 0
    f32.load offset=132
    f32.store offset=1292
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=108
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.get 0
        i32.load offset=108
        f32.load
        f32.store offset=1296
        i32.const 0
        local.get 0
        i32.load offset=108
        f32.load offset=4
        f32.store offset=1300
        br 1 (;@1;)
      end
      i32.const 0
      i32.const 0
      f32.convert_i32_s
      local.tee 4
      f32.store offset=1296
      i32.const 0
      local.get 4
      f32.store offset=1300
    end
    local.get 0
    i32.const 176
    i32.add
    global.set 0)
  (func $getBitmapPixel (type 11) (param i32 i32) (result i32)
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
    i32.const 1
    i32.const 0
    i32.load offset=1376
    local.get 2
    i32.load offset=12
    i32.const 2
    i32.shl
    i32.const 0
    i32.load offset=1052
    local.get 2
    i32.load offset=8
    i32.mul
    i32.const 2
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load
    select)
  (func $BitMatrix_setDimension (type 1) (param i32)
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
    i32.store offset=1024
    i32.const 0
    local.get 1
    i32.load offset=12
    i32.store offset=1028
    i32.const 0
    local.get 1
    i32.load offset=12
    i32.const 5
    i32.shr_s
    i32.store offset=1040
    block  ;; label = @1
      local.get 1
      i32.load offset=12
      i32.const 31
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      i32.load offset=1040
      i32.const 1
      i32.add
      i32.store offset=1040
    end
    i32.const 0
    i32.const 0
    i32.load offset=1040
    i32.const 0
    i32.load offset=1028
    i32.mul
    i32.store offset=1032
    i32.const 0
    i32.const 0
    i32.load offset=1044
    i32.const 0
    i32.load offset=1032
    i32.const 2
    i32.shl
    i32.add
    i32.store offset=1048
    i32.const 0
    local.get 1
    i32.load offset=12
    i32.const 1
    i32.shl
    i32.store offset=1036
    local.get 1
    i32.const 0
    i32.store offset=8
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.load offset=8
        i32.const 0
        i32.load offset=1032
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        i32.load offset=1044
        local.get 1
        i32.load offset=8
        i32.const 2
        i32.shl
        i32.add
        i32.const 0
        i32.store
        local.get 1
        local.get 1
        i32.load offset=8
        i32.const 1
        i32.add
        i32.store offset=8
        br 0 (;@2;)
      end
    end)
  (func $BitMatrix_set (type 12) (param i32 i32)
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
    i32.load offset=8
    i32.const 0
    i32.load offset=1040
    i32.mul
    local.get 2
    i32.load offset=12
    i32.const 5
    i32.shr_s
    i32.add
    i32.store offset=4
    i32.const 0
    i32.load offset=1044
    local.get 2
    i32.load offset=4
    i32.const 2
    i32.shl
    i32.add
    local.tee 1
    local.get 1
    i32.load
    i32.const 1
    local.get 2
    i32.load offset=12
    i32.const 31
    i32.and
    i32.shl
    i32.or
    i32.store)
  (func $throw (type 3))
  (func $get_pattern (type 6) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    i32.const 1072
    local.get 1
    i32.load offset=12
    i32.const 4
    i32.shl
    i32.add)
  (func $orderBestPatterns (type 3)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 1072
    i32.const 1072
    i32.const 16
    i32.add
    local.tee 1
    call $FinderPattern_distance
    f32.store offset=76
    local.get 0
    local.get 1
    i32.const 1072
    i32.const 32
    i32.add
    local.tee 2
    call $FinderPattern_distance
    f32.store offset=72
    local.get 0
    i32.const 1072
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
          i64.load offset=1112
          i64.store align=4
          local.get 1
          i32.const 0
          i64.load offset=1104
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
    i64.store offset=1072 align=4
    i32.const 0
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store offset=1080 align=4
    i32.const 0
    local.get 0
    i32.const 48
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
    i32.const 32
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
    local.get 0
    i32.const 80
    i32.add
    global.set 0)
  (func $foundPatternCross (type 6) (param i32) (result i32)
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
        i32.lt_s
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
        local.get 1
        f32.load offset=12
        local.get 1
        i32.load offset=24
        i32.load offset=12
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
  (func $handlePossibleCenter (type 13) (param i32 i32 i32) (result i32)
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
          i32.store offset=44
          local.get 3
          i32.const 0
          i32.load offset=1268
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
                  i32.const 1072
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
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 3
                  i32.load offset=36
                  local.set 1
                  local.get 3
                  i32.const 16
                  i32.add
                  local.tee 2
                  i32.const 1072
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
                  i32.const 1072
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
                  i32.store offset=44
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
            i32.load offset=44
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
          i32.store offset=76
          br 2 (;@1;)
        end
      end
      local.get 3
      i32.const 0
      i32.store offset=76
    end
    local.get 3
    i32.load offset=76
    local.set 2
    local.get 3
    i32.const 80
    i32.add
    global.set 0
    local.get 2)
  (func $haveMultiplyConfirmedCenters (type 10) (result i32)
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
    i32.load offset=1268
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
          i32.const 1072
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
          i32.const 1072
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
          i32.const 1072
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
  (func $findRowSkip (type 10) (result i32)
    (local i32 f32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 0
    i32.load offset=1268
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
            i32.const 1072
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
              i32.store offset=1264
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 1072
                  local.get 0
                  i32.load offset=4
                  i32.const 4
                  i32.shl
                  i32.add
                  f32.load
                  i32.const 1072
                  local.get 0
                  i32.load
                  i32.const 4
                  i32.shl
                  i32.add
                  f32.load
                  f32.sub
                  call $fabs
                  i32.const 1072
                  local.get 0
                  i32.load offset=4
                  i32.const 4
                  i32.shl
                  i32.add
                  f32.load offset=4
                  i32.const 1072
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
  (func $selectBestPatterns (type 3)
    (local i32 f32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 0
    i32.load offset=1268
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
          i32.const 1072
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
      call $fsqrt
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
      loop  ;; label = @2
        i32.const 0
        local.set 2
        block  ;; label = @3
          local.get 0
          i32.load offset=28
          i32.const 0
          i32.load offset=1268
          i32.lt_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1268
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
            i32.const 1072
            local.get 0
            i32.load offset=28
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
            i32.load offset=28
            i32.store offset=24
            block  ;; label = @5
              loop  ;; label = @6
                local.get 0
                i32.load offset=24
                i32.const 0
                i32.load offset=1268
                i32.const 1
                i32.sub
                i32.lt_u
                i32.const 1
                i32.and
                i32.eqz
                br_if 1 (;@5;)
                i32.const 1072
                local.get 0
                i32.load offset=24
                i32.const 4
                i32.shl
                i32.add
                local.tee 2
                i32.const 1072
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
            i32.load offset=1268
            i32.const -1
            i32.add
            i32.store offset=1268
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
      i32.load offset=1268
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
          i32.load offset=1268
          i32.lt_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.const 1072
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
      i32.load offset=1268
      f32.convert_i32_u
      f32.div
      f32.store offset=8
      local.get 0
      f32.load offset=8
      call $sortCenterComparator
      i32.const 0
      i32.const 3
      i32.store offset=1268
    end
    local.get 0
    i32.const 64
    i32.add
    global.set 0)
  (func $centerFromEnd (type 4) (param i32 i32) (result f32)
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
  (func $crossCheckVertical (type 14) (param i32 i32 i32 i32) (result f32)
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
    i32.load offset=1056
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
  (func $crossCheckHorizontal (type 14) (param i32 i32 i32 i32) (result f32)
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
    i32.load offset=1052
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
  (func $addPossibleCenter (type 15) (param f32 f32 f32 i32) (result i32)
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
    i32.const 1072
    i32.const 0
    i32.load offset=1268
    i32.const 4
    i32.shl
    i32.add
    local.get 4
    f32.load offset=24
    f32.store
    i32.const 1072
    i32.const 0
    i32.load offset=1268
    i32.const 4
    i32.shl
    i32.add
    local.get 4
    f32.load offset=20
    f32.store offset=4
    i32.const 1072
    i32.const 0
    i32.load offset=1268
    i32.const 4
    i32.shl
    i32.add
    local.get 4
    f32.load offset=16
    f32.store offset=8
    i32.const 1072
    i32.const 0
    i32.load offset=1268
    i32.const 4
    i32.shl
    i32.add
    local.get 4
    i32.load offset=12
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1268
        i32.const 10
        i32.gt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.const 1072
        i32.const 0
        i32.load offset=1268
        i32.const 4
        i32.shl
        i32.add
        i32.store offset=28
        br 1 (;@1;)
      end
      i32.const 0
      i32.const 0
      i32.load offset=1268
      local.tee 3
      i32.const 1
      i32.add
      i32.store offset=1268
      local.get 4
      i32.const 1072
      local.get 3
      i32.const 4
      i32.shl
      i32.add
      i32.store offset=28
    end
    local.get 4
    i32.load offset=28)
  (func $sortPossibleCenters (type 16) (param f32)
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
        i32.load offset=1268
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
            i32.load offset=1268
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
            i32.const 1072
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
            i32.const 1072
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
              i32.const 1072
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
              i32.const 1072
              local.get 1
              i32.load offset=16
              i32.const 4
              i32.shl
              i32.add
              local.tee 3
              i32.const 1072
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
              i32.const 1072
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
  (func $max (type 11) (param i32 i32) (result i32)
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
  (func $sortCenterComparator (type 16) (param f32)
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
        i32.load offset=1268
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
            i32.load offset=1268
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
                i32.const 1072
                local.get 1
                i32.load offset=16
                i32.const 4
                i32.shl
                i32.add
                i32.load offset=12
                i32.const 1072
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
                i32.const 1072
                local.get 1
                i32.load offset=16
                i32.const 4
                i32.shl
                i32.add
                i32.load offset=12
                i32.const 1072
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
              i32.const 1072
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
              i32.const 1072
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
              f32.store offset=4
              local.get 1
              local.get 1
              f32.load offset=8
              local.get 1
              f32.load offset=4
              f32.lt
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
              i32.const 1072
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
              i32.const 1072
              local.get 1
              i32.load offset=16
              i32.const 4
              i32.shl
              i32.add
              local.tee 3
              i32.const 1072
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
              i32.const 1072
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
  (func $abs (type 6) (param i32) (result i32)
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
  (func $fmax (type 17) (param f32 f32) (result f32)
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
  (func $min (type 11) (param i32 i32) (result i32)
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
        i32.lt_s
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
  (func $fmin (type 17) (param f32 f32) (result f32)
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
        f32.lt
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
  (func $round (type 18) (param f32) (result i32)
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
  (func $distance (type 19) (param f32 f32 f32 f32) (result f32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
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
    call $fsqrt
    local.set 3
    local.get 4
    i32.const 32
    i32.add
    global.set 0
    local.get 3)
  (func $calculateModuleSize (type 20) (param i32 i32 i32) (result f32)
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
  (func $computeDimension (type 21) (param i32 i32 i32 f32) (result i32)
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
    call $round
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
    call $round
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
  (func $getProvisionalVersionForDimension (type 6) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store offset=12
    block  ;; label = @1
      local.get 1
      i32.load offset=12
      i32.const 4
      i32.rem_s
      i32.const 1
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 123
      call $printNum
    end
    local.get 1
    i32.load offset=12
    i32.const 17
    i32.sub
    i32.const 2
    i32.shr_s
    call $getVersionForNumber
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func $getDimensionForVersion (type 6) (param i32) (result i32)
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
  (func $findAlignmentInRegion (type 22) (param f32 i32 i32 f32) (result i32)
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
    call $max
    i32.store offset=24
    local.get 4
    i32.const 0
    i32.load offset=1052
    i32.const 1
    i32.sub
    local.get 4
    i32.load offset=40
    local.get 4
    i32.load offset=28
    i32.add
    call $min
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
      i32.const 320
      call $printNum
    end
    local.get 4
    i32.const 0
    local.get 4
    i32.load offset=36
    local.get 4
    i32.load offset=28
    i32.sub
    call $max
    i32.store offset=16
    local.get 4
    i32.const 0
    i32.load offset=1056
    i32.const 1
    i32.sub
    local.get 4
    i32.load offset=36
    local.get 4
    i32.load offset=28
    i32.add
    call $min
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
      i32.const 350
      call $printNum
    end
    i32.const 0
    local.get 4
    i32.load offset=24
    i32.store offset=1360
    i32.const 0
    local.get 4
    i32.load offset=16
    i32.store offset=1368
    i32.const 0
    local.get 4
    i32.load offset=20
    local.get 4
    i32.load offset=24
    i32.sub
    i32.store offset=1364
    i32.const 0
    local.get 4
    i32.load offset=12
    local.get 4
    i32.load offset=16
    i32.sub
    i32.store offset=1372
    i32.const 0
    local.get 4
    f32.load offset=44
    f32.store offset=1304
    call $AlignmentPatternFinder_find
    local.set 2
    local.get 4
    i32.const 48
    i32.add
    global.set 0
    local.get 2)
  (func $Detector_createTransform (type 23) (param i32 i32 i32 i32 i32 i32)
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
  (func $Detector_sampleGrid (type 12) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.store offset=44
    local.get 2
    i32.load offset=44
    local.set 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 32
    i32.add
    local.get 1
    i32.const 32
    i32.add
    i32.load
    i32.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 24
    i32.add
    local.get 1
    i32.const 24
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
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
    i64.store offset=8
    local.get 0
    local.get 2
    i32.const 8
    i32.add
    call $GridSampler_sampleGrid
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func $calculateModuleSizeOneWay (type 4) (param i32 i32) (result f32)
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
  (func $AlignmentPatternFinder_find (type 10) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 0
    global.set 0
    i32.const 40
    call $printNum
    i32.const 0
    i32.const 0
    i32.store offset=1308
    local.get 0
    i32.const 0
    i32.load offset=1360
    i32.const 0
    i32.load offset=1364
    i32.add
    i32.store offset=56
    local.get 0
    i32.const 0
    i32.load offset=1368
    i32.const 0
    i32.load offset=1372
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
          i32.load offset=1372
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
          i32.load offset=1360
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
              i32.const 0
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
        i32.load offset=1308
        i32.const 0
        i32.gt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 1312
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
  (func $PerspectiveTransform_quadrilateralToQuadrilateral (type 24) (param i32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32)
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
  (func $GridSampler_sampleGrid (type 12) (param i32 i32)
    (local i32 f32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.store offset=60
    local.get 2
    i32.load offset=60
    call $BitMatrix_setDimension
    local.get 2
    i32.const 0
    i32.store offset=56
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=56
        local.get 2
        i32.load offset=60
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.const 0
        i32.load offset=1036
        i32.store offset=52
        local.get 2
        local.get 2
        i32.load offset=56
        f32.convert_i32_s
        f32.const 0x1p-1 (;=0.5;)
        f32.add
        f32.store offset=48
        local.get 2
        i32.const 0
        i32.store offset=44
        block  ;; label = @3
          loop  ;; label = @4
            local.get 2
            i32.load offset=44
            local.get 2
            i32.load offset=52
            i32.lt_s
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            i32.const 0
            i32.load offset=1048
            local.get 2
            i32.load offset=44
            i32.const 2
            i32.shl
            i32.add
            local.get 2
            i32.load offset=44
            i32.const 1
            i32.shr_s
            f32.convert_i32_s
            f32.const 0x1p-1 (;=0.5;)
            f32.add
            f32.store
            i32.const 0
            i32.load offset=1048
            local.get 2
            i32.load offset=44
            i32.const 1
            i32.add
            i32.const 2
            i32.shl
            i32.add
            local.get 2
            f32.load offset=48
            f32.store
            local.get 2
            local.get 2
            i32.load offset=44
            i32.const 2
            i32.add
            i32.store offset=44
            br 0 (;@4;)
          end
        end
        local.get 2
        i32.const 32
        i32.add
        local.get 1
        i32.const 32
        i32.add
        i32.load
        i32.store
        local.get 2
        i32.const 24
        i32.add
        local.get 1
        i32.const 24
        i32.add
        i64.load align=4
        i64.store
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
        call $PerspectiveTransform_transformPoints
        local.get 2
        i32.const 0
        i32.store offset=40
        block  ;; label = @3
          loop  ;; label = @4
            local.get 2
            i32.load offset=40
            local.get 2
            i32.load offset=52
            i32.lt_u
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            i32.const 0
            i32.load offset=1048
            local.get 2
            i32.load offset=40
            i32.const 2
            i32.shl
            i32.add
            f32.load
            i32.const 0
            i32.load offset=1048
            local.get 2
            i32.load offset=40
            i32.const 1
            i32.add
            i32.const 2
            i32.shl
            i32.add
            f32.load
            call $drawDot
            local.get 2
            local.get 2
            i32.load offset=40
            i32.const 2
            i32.add
            i32.store offset=40
            br 0 (;@4;)
          end
        end
        call $GridSampler_checkAndNudgePoints
        local.get 2
        i32.const 0
        i32.store offset=36
        block  ;; label = @3
          loop  ;; label = @4
            local.get 2
            i32.load offset=36
            local.get 2
            i32.load offset=52
            i32.lt_s
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=1048
                local.get 2
                i32.load offset=36
                i32.const 2
                i32.shl
                i32.add
                f32.load
                local.tee 3
                f32.abs
                f32.const 0x1p+31 (;=2.14748e+09;)
                f32.lt
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
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
            local.set 4
            i32.const 0
            i32.load offset=1052
            local.set 5
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=1048
                local.get 2
                i32.load offset=36
                i32.const 1
                i32.add
                i32.const 2
                i32.shl
                i32.add
                f32.load
                local.tee 3
                f32.abs
                f32.const 0x1p+31 (;=2.14748e+09;)
                f32.lt
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                i32.trunc_f32_s
                local.set 0
                br 1 (;@5;)
              end
              i32.const -2147483648
              local.set 0
            end
            block  ;; label = @5
              local.get 4
              local.get 5
              local.get 0
              i32.mul
              i32.const 2
              i32.shl
              i32.add
              i32.const 0
              i32.load offset=1060
              i32.gt_u
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              i32.const 310
              call $printNum
            end
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=1048
                local.get 2
                i32.load offset=36
                i32.const 2
                i32.shl
                i32.add
                f32.load
                local.tee 3
                f32.abs
                f32.const 0x1p+31 (;=2.14748e+09;)
                f32.lt
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                i32.trunc_f32_s
                local.set 0
                br 1 (;@5;)
              end
              i32.const -2147483648
              local.set 0
            end
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=1048
                local.get 2
                i32.load offset=36
                i32.const 1
                i32.add
                i32.const 2
                i32.shl
                i32.add
                f32.load
                local.tee 3
                f32.abs
                f32.const 0x1p+31 (;=2.14748e+09;)
                f32.lt
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                i32.trunc_f32_s
                local.set 4
                br 1 (;@5;)
              end
              i32.const -2147483648
              local.set 4
            end
            block  ;; label = @5
              local.get 0
              local.get 4
              call $getBitmapPixel
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=36
              i32.const 1
              i32.shr_s
              local.get 2
              i32.load offset=56
              call $BitMatrix_set
            end
            local.get 2
            local.get 2
            i32.load offset=36
            i32.const 2
            i32.add
            i32.store offset=36
            br 0 (;@4;)
          end
        end
        local.get 2
        local.get 2
        i32.load offset=56
        i32.const 1
        i32.add
        i32.store offset=56
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 64
    i32.add
    global.set 0)
  (func $sizeOfBlackWhiteBlackRunBothWays (type 14) (param i32 i32 i32 i32) (result f32)
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
        i32.load offset=1052
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
        i32.load offset=1052
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
        i32.load offset=1052
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
        i32.load offset=1056
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
        i32.load offset=1056
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
        i32.load offset=1056
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
  (func $sizeOfBlackWhiteBlackRun (type 14) (param i32 i32 i32 i32) (result f32)
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
    call $abs
    local.get 4
    i32.load offset=64
    local.get 4
    i32.load offset=72
    i32.sub
    call $abs
    i32.gt_s
    i32.const 1
    i32.and
    i32.store offset=56
    block  ;; label = @1
      local.get 4
      i32.load offset=56
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
    call $abs
    i32.store offset=48
    local.get 4
    local.get 4
    i32.load offset=60
    local.get 4
    i32.load offset=68
    i32.sub
    call $abs
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
                i32.load offset=56
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
                i32.load offset=56
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
                call $distance
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
        call $distance
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
  (func $getVersionForNumber (type 6) (param i32) (result i32)
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
        i32.const 1
        i32.lt_s
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=12
        i32.const 40
        i32.gt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
      end
    end
    i32.const 1392
    local.get 1
    i32.load offset=12
    i32.const 1
    i32.sub
    i32.const 96
    i32.mul
    i32.add)
  (func $AlignmentPatternFinder_centerFromEnd (type 4) (param i32 i32) (result f32)
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
  (func $AlignmentPatternFinder_foundPatternCross (type 6) (param i32) (result i32)
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
    f32.load offset=1304
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
            f32.load offset=1304
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
            call $fabs
            local.get 1
            f32.load offset=4
            f32.ge
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 0
            i32.store offset=12
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
  (func $AlignmentPatternFinder_crossCheckVertical (type 14) (param i32 i32 i32 i32) (result f32)
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
    i32.load offset=1056
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
        call $fabs
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
  (func $AlignmentPatternFinder_handlePossibleCenter (type 13) (param i32 i32 i32) (result i32)
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
        i32.load offset=1308
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
            i32.const 1312
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
              i32.eqz
              br_if 0 (;@5;)
              i32.const 900
              call $printNum
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
        i32.const 1312
        i32.const 0
        i32.load offset=1308
        i32.const 12
        i32.mul
        i32.add
        local.get 3
        f32.load offset=24
        f32.store
        i32.const 1312
        i32.const 0
        i32.load offset=1308
        i32.const 12
        i32.mul
        i32.add
        local.get 3
        f32.load offset=20
        f32.store offset=4
        i32.const 1312
        i32.const 0
        i32.load offset=1308
        i32.const 12
        i32.mul
        i32.add
        local.get 3
        f32.load offset=16
        f32.store offset=8
        i32.const 0
        i32.const 0
        i32.load offset=1308
        i32.const 1
        i32.add
        i32.store offset=1308
      end
      i32.const 200
      call $printNum
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
  (func $AlignmentPattern_aboutEquals (type 9) (param i32 f32 f32 f32) (result i32)
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
  (func $AlignmentPattern_combineEstimate (type 9) (param i32 f32 f32 f32) (result i32)
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
  (func $PerspectiveTransform_transformPoints (type 1) (param i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    i32.const 0
    i32.load offset=1036
    i32.store offset=28
    local.get 1
    i32.const 0
    i32.store offset=24
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.load offset=24
        local.get 1
        i32.load offset=28
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const 0
        i32.load offset=1048
        local.get 1
        i32.load offset=24
        i32.const 2
        i32.shl
        i32.add
        f32.load
        f32.store offset=20
        local.get 1
        i32.const 0
        i32.load offset=1048
        local.get 1
        i32.load offset=24
        i32.const 1
        i32.add
        i32.const 2
        i32.shl
        i32.add
        f32.load
        f32.store offset=16
        local.get 1
        local.get 0
        f32.load offset=8
        local.get 1
        f32.load offset=20
        f32.mul
        local.get 0
        f32.load offset=20
        local.get 1
        f32.load offset=16
        f32.mul
        f32.add
        local.get 0
        f32.load offset=32
        f32.add
        f32.store offset=12
        i32.const 0
        i32.load offset=1048
        local.get 1
        i32.load offset=24
        i32.const 2
        i32.shl
        i32.add
        local.get 0
        f32.load
        local.get 1
        f32.load offset=20
        f32.mul
        local.get 0
        f32.load offset=12
        local.get 1
        f32.load offset=16
        f32.mul
        f32.add
        local.get 0
        f32.load offset=24
        f32.add
        local.get 1
        f32.load offset=12
        f32.div
        f32.store
        i32.const 0
        i32.load offset=1048
        local.get 1
        i32.load offset=24
        i32.const 1
        i32.add
        i32.const 2
        i32.shl
        i32.add
        local.get 0
        f32.load offset=4
        local.get 1
        f32.load offset=20
        f32.mul
        local.get 0
        f32.load offset=16
        local.get 1
        f32.load offset=16
        f32.mul
        f32.add
        local.get 0
        f32.load offset=28
        f32.add
        local.get 1
        f32.load offset=12
        f32.div
        f32.store
        local.get 1
        local.get 1
        i32.load offset=24
        i32.const 2
        i32.add
        i32.store offset=24
        br 0 (;@2;)
      end
    end)
  (func $GridSampler_checkAndNudgePoints (type 3)
    (local i32 f32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    i32.const 0
    i32.load offset=1024
    i32.store offset=28
    local.get 0
    i32.const 0
    i32.load offset=1028
    i32.store offset=24
    local.get 0
    i32.const 0
    i32.store offset=20
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.load offset=20
        i32.const 0
        i32.load offset=1036
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1048
            local.get 0
            i32.load offset=20
            i32.const 2
            i32.shl
            i32.add
            f32.load
            local.tee 1
            f32.abs
            f32.const 0x1p+31 (;=2.14748e+09;)
            f32.lt
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.trunc_f32_s
            local.set 2
            br 1 (;@3;)
          end
          i32.const -2147483648
          local.set 2
        end
        local.get 0
        local.get 2
        i32.store offset=16
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1048
            local.get 0
            i32.load offset=20
            i32.const 1
            i32.add
            i32.const 2
            i32.shl
            i32.add
            f32.load
            local.tee 1
            f32.abs
            f32.const 0x1p+31 (;=2.14748e+09;)
            f32.lt
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.trunc_f32_s
            local.set 2
            br 1 (;@3;)
          end
          i32.const -2147483648
          local.set 2
        end
        local.get 0
        local.get 2
        i32.store offset=12
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=16
            i32.const -1
            i32.lt_s
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=16
            local.get 0
            i32.load offset=28
            i32.gt_s
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=12
            i32.const -1
            i32.lt_s
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=12
            local.get 0
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
            local.get 0
            i32.load offset=16
            i32.const -1
            i32.eq
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            i32.load offset=1048
            local.get 0
            i32.load offset=20
            i32.const 2
            i32.shl
            i32.add
            i32.const 0
            f32.convert_i32_s
            f32.store
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 0
            i32.load offset=16
            local.get 0
            i32.load offset=28
            i32.eq
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            i32.load offset=1048
            local.get 0
            i32.load offset=20
            i32.const 2
            i32.shl
            i32.add
            local.get 0
            i32.load offset=28
            i32.const 1
            i32.sub
            f32.convert_i32_s
            f32.store
          end
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=12
            i32.const -1
            i32.eq
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            i32.load offset=1048
            local.get 0
            i32.load offset=20
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
            local.get 0
            i32.load offset=12
            local.get 0
            i32.load offset=24
            i32.eq
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            i32.load offset=1048
            local.get 0
            i32.load offset=20
            i32.const 1
            i32.add
            i32.const 2
            i32.shl
            i32.add
            local.get 0
            i32.load offset=24
            i32.const 1
            i32.sub
            f32.convert_i32_s
            f32.store
          end
        end
        local.get 0
        local.get 0
        i32.load offset=20
        i32.const 2
        i32.add
        i32.store offset=20
        br 0 (;@2;)
      end
    end)
  (func $PerspectiveTransform_quadrilateralToSquare (type 25) (param i32 f32 f32 f32 f32 f32 f32 f32 f32)
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
  (func $PerspectiveTransform_squareToQuadrilateral (type 25) (param i32 f32 f32 f32 f32 f32 f32 f32 f32)
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
  (func $PerspectiveTransform_times (type 26) (param i32 i32 i32)
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
  (func $PerspectiveTransform_buildAjoint (type 12) (param i32 i32)
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
  (func $new_PerspectiveTransform (type 27) (param i32 f32 f32 f32 f32 f32 f32 f32 f32 f32)
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
  (table (;0;) 1 1 funcref)
  (global (;0;) (mut i32) (i32.const 71488))
  (global (;1;) i32 (i32.const 5944))
  (global (;2;) i32 (i32.const 1024))
  (global (;3;) i32 (i32.const 71488))
  (global (;4;) i32 (i32.const 1024))
  (global (;5;) i32 (i32.const 1052))
  (global (;6;) i32 (i32.const 1056))
  (global (;7;) i32 (i32.const 1060))
  (global (;8;) i32 (i32.const 1376))
  (global (;9;) i32 (i32.const 1024))
  (global (;10;) i32 (i32.const 1268))
  (global (;11;) i32 (i32.const 1264))
  (global (;12;) i32 (i32.const 1072))
  (global (;13;) i32 (i32.const 1272))
  (global (;14;) i32 (i32.const 1360))
  (global (;15;) i32 (i32.const 1368))
  (global (;16;) i32 (i32.const 1364))
  (global (;17;) i32 (i32.const 1372))
  (global (;18;) i32 (i32.const 1304))
  (global (;19;) i32 (i32.const 1392))
  (global (;20;) i32 (i32.const 1308))
  (global (;21;) i32 (i32.const 1312))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "__data_end" (global 1))
  (export "__global_base" (global 2))
  (export "__heap_base" (global 3))
  (export "__dso_handle" (global 4))
  (export "FinderPattern_distance" (func $FinderPattern_distance))
  (export "get_posX" (func $get_posX))
  (export "get_posY" (func $get_posY))
  (export "get_estimatedModuleSize" (func $get_estimatedModuleSize))
  (export "get_count" (func $get_count))
  (export "createFinderPattern" (func $createFinderPattern))
  (export "combineEstimate" (func $combineEstimate))
  (export "aboutEquals" (func $aboutEquals))
  (export "fabs" (func $fabs))
  (export "get_int" (func $get_int))
  (export "get_bits" (func $get_bits))
  (export "get_size" (func $get_size))
  (export "setImageSize" (func $setImageSize))
  (export "getImageSize" (func $getImageSize))
  (export "imageToBitmap" (func $imageToBitmap))
  (export "decode" (func $decode))
  (export "findFinderPatterns" (func $findFinderPatterns))
  (export "processFinderPatternInfo" (func $processFinderPatternInfo))
  (export "getBitmapPixel" (func $getBitmapPixel))
  (export "BitMatrix_setDimension" (func $BitMatrix_setDimension))
  (export "BitMatrix_set" (func $BitMatrix_set))
  (export "imageWidth" (global 5))
  (export "imageHeight" (global 6))
  (export "imageSize" (global 7))
  (export "image" (global 8))
  (export "BitMatrix" (global 9))
  (export "possibleCentersSize" (global 10))
  (export "throw" (func $throw))
  (export "get_pattern" (func $get_pattern))
  (export "orderBestPatterns" (func $orderBestPatterns))
  (export "foundPatternCross" (func $foundPatternCross))
  (export "handlePossibleCenter" (func $handlePossibleCenter))
  (export "findRowSkip" (func $findRowSkip))
  (export "haveMultiplyConfirmedCenters" (func $haveMultiplyConfirmedCenters))
  (export "centerFromEnd" (func $centerFromEnd))
  (export "crossCheckVertical" (func $crossCheckVertical))
  (export "crossCheckHorizontal" (func $crossCheckHorizontal))
  (export "addPossibleCenter" (func $addPossibleCenter))
  (export "abs" (func $abs))
  (export "sortPossibleCenters" (func $sortPossibleCenters))
  (export "sortCenterComparator" (func $sortCenterComparator))
  (export "selectBestPatterns" (func $selectBestPatterns))
  (export "max" (func $max))
  (export "hasSkipped" (global 11))
  (export "possibleCenters" (global 12))
  (export "fmax" (func $fmax))
  (export "min" (func $min))
  (export "fmin" (func $fmin))
  (export "round" (func $round))
  (export "distance" (func $distance))
  (export "calculateModuleSize" (func $calculateModuleSize))
  (export "computeDimension" (func $computeDimension))
  (export "getProvisionalVersionForDimension" (func $getProvisionalVersionForDimension))
  (export "getDimensionForVersion" (func $getDimensionForVersion))
  (export "findAlignmentInRegion" (func $findAlignmentInRegion))
  (export "Detector_createTransform" (func $Detector_createTransform))
  (export "Detector_sampleGrid" (func $Detector_sampleGrid))
  (export "calculateModuleSizeOneWay" (func $calculateModuleSizeOneWay))
  (export "sizeOfBlackWhiteBlackRunBothWays" (func $sizeOfBlackWhiteBlackRunBothWays))
  (export "AlignmentPatternFinder_find" (func $AlignmentPatternFinder_find))
  (export "sizeOfBlackWhiteBlackRun" (func $sizeOfBlackWhiteBlackRun))
  (export "PerspectiveTransform_quadrilateralToQuadrilateral" (func $PerspectiveTransform_quadrilateralToQuadrilateral))
  (export "GridSampler_sampleGrid" (func $GridSampler_sampleGrid))
  (export "DetectorResult" (global 13))
  (export "AlignmentPatternFinder_startX" (global 14))
  (export "AlignmentPatternFinder_startY" (global 15))
  (export "AlignmentPatternFinder_width" (global 16))
  (export "AlignmentPatternFinder_height" (global 17))
  (export "AlignmentPatternFinder_moduleSize" (global 18))
  (export "getVersionForNumber" (func $getVersionForNumber))
  (export "VERSIONS" (global 19))
  (export "AlignmentPatternFinder_centerFromEnd" (func $AlignmentPatternFinder_centerFromEnd))
  (export "AlignmentPatternFinder_foundPatternCross" (func $AlignmentPatternFinder_foundPatternCross))
  (export "AlignmentPatternFinder_crossCheckVertical" (func $AlignmentPatternFinder_crossCheckVertical))
  (export "AlignmentPatternFinder_handlePossibleCenter" (func $AlignmentPatternFinder_handlePossibleCenter))
  (export "AlignmentPattern_aboutEquals" (func $AlignmentPattern_aboutEquals))
  (export "AlignmentPattern_combineEstimate" (func $AlignmentPattern_combineEstimate))
  (export "AlignmentPatternFinder_possibleCentersSize" (global 20))
  (export "AlignmentPatternFinder_possibleCenters" (global 21))
  (export "PerspectiveTransform_transformPoints" (func $PerspectiveTransform_transformPoints))
  (export "GridSampler_checkAndNudgePoints" (func $GridSampler_checkAndNudgePoints))
  (export "PerspectiveTransform_quadrilateralToSquare" (func $PerspectiveTransform_quadrilateralToSquare))
  (export "PerspectiveTransform_squareToQuadrilateral" (func $PerspectiveTransform_squareToQuadrilateral))
  (export "PerspectiveTransform_times" (func $PerspectiveTransform_times))
  (export "new_PerspectiveTransform" (func $new_PerspectiveTransform))
  (export "PerspectiveTransform_buildAjoint" (func $PerspectiveTransform_buildAjoint))
  (data (;0;) (i32.const 1024) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
  (data (;1;) (i32.const 1376) "@\17\01\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00\01\00\00\00\13\00\00\00\00\00\00\00\00\00\00\00\0a\00\00\00\01\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0d\00\00\00\01\00\00\00\0d\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\01\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00,\00\00\00\02\00\00\00p\14\00\00\0a\00\00\00\01\00\00\00\22\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\01\00\00\00\1c\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\01\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\1c\00\00\00\01\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00F\00\00\00\02\00\00\00x\14\00\00\0f\00\00\00\01\00\00\007\00\00\00\00\00\00\00\00\00\00\00\1a\00\00\00\01\00\00\00,\00\00\00\00\00\00\00\00\00\00\00$\00\00\00\02\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00,\00\00\00\02\00\00\00\0d\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00d\00\00\00\02\00\00\00\80\14\00\00\14\00\00\00\01\00\00\00P\00\00\00\00\00\00\00\00\00\00\00$\00\00\00\02\00\00\00 \00\00\00\00\00\00\00\00\00\00\004\00\00\00\02\00\00\00\18\00\00\00\00\00\00\00\00\00\00\00@\00\00\00\04\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\86\00\00\00\02\00\00\00\88\14\00\00\1a\00\00\00\01\00\00\00l\00\00\00\00\00\00\00\00\00\00\000\00\00\00\02\00\00\00+\00\00\00\00\00\00\00\00\00\00\00H\00\00\00\02\00\00\00\0f\00\00\00\02\00\00\00\10\00\00\00X\00\00\00\02\00\00\00\0b\00\00\00\02\00\00\00\0c\00\00\00\06\00\00\00\ac\00\00\00\02\00\00\00\90\14\00\00$\00\00\00\02\00\00\00D\00\00\00\00\00\00\00\00\00\00\00@\00\00\00\04\00\00\00\1b\00\00\00\00\00\00\00\00\00\00\00`\00\00\00\04\00\00\00\13\00\00\00\00\00\00\00\00\00\00\00p\00\00\00\04\00\00\00\0f\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00\c4\00\00\00\03\00\00\00\98\14\00\00(\00\00\00\02\00\00\00N\00\00\00\00\00\00\00\00\00\00\00H\00\00\00\04\00\00\00\1f\00\00\00\00\00\00\00\00\00\00\00l\00\00\00\02\00\00\00\0e\00\00\00\04\00\00\00\0f\00\00\00\82\00\00\00\04\00\00\00\0d\00\00\00\01\00\00\00\0e\00\00\00\08\00\00\00\f2\00\00\00\03\00\00\00\a4\14\00\000\00\00\00\02\00\00\00a\00\00\00\00\00\00\00\00\00\00\00X\00\00\00\02\00\00\00&\00\00\00\02\00\00\00'\00\00\00\84\00\00\00\04\00\00\00\12\00\00\00\02\00\00\00\13\00\00\00\9c\00\00\00\04\00\00\00\0e\00\00\00\02\00\00\00\0f\00\00\00\09\00\00\00$\01\00\00\03\00\00\00\b0\14\00\00<\00\00\00\02\00\00\00t\00\00\00\00\00\00\00\00\00\00\00n\00\00\00\03\00\00\00$\00\00\00\02\00\00\00%\00\00\00\a0\00\00\00\04\00\00\00\10\00\00\00\04\00\00\00\11\00\00\00\c0\00\00\00\04\00\00\00\0c\00\00\00\04\00\00\00\0d\00\00\00\0a\00\00\00Z\01\00\00\03\00\00\00\bc\14\00\00H\00\00\00\02\00\00\00D\00\00\00\02\00\00\00E\00\00\00\82\00\00\00\04\00\00\00+\00\00\00\01\00\00\00,\00\00\00\c0\00\00\00\06\00\00\00\13\00\00\00\02\00\00\00\14\00\00\00\e0\00\00\00\06\00\00\00\0f\00\00\00\02\00\00\00\10\00\00\00\0b\00\00\00\94\01\00\00\03\00\00\00\c8\14\00\00P\00\00\00\04\00\00\00Q\00\00\00\00\00\00\00\00\00\00\00\96\00\00\00\01\00\00\002\00\00\00\04\00\00\003\00\00\00\e0\00\00\00\04\00\00\00\16\00\00\00\04\00\00\00\17\00\00\00\08\01\00\00\03\00\00\00\0c\00\00\00\08\00\00\00\0d\00\00\00\0c\00\00\00\d2\01\00\00\03\00\00\00\d4\14\00\00`\00\00\00\02\00\00\00\5c\00\00\00\02\00\00\00]\00\00\00\b0\00\00\00\06\00\00\00$\00\00\00\02\00\00\00%\00\00\00\04\01\00\00\04\00\00\00\14\00\00\00\06\00\00\00\15\00\00\004\01\00\00\07\00\00\00\0e\00\00\00\04\00\00\00\0f\00\00\00\0d\00\00\00\14\02\00\00\03\00\00\00\e0\14\00\00h\00\00\00\04\00\00\00k\00\00\00\00\00\00\00\00\00\00\00\c6\00\00\00\08\00\00\00%\00\00\00\01\00\00\00&\00\00\00 \01\00\00\08\00\00\00\14\00\00\00\04\00\00\00\15\00\00\00`\01\00\00\0c\00\00\00\0b\00\00\00\04\00\00\00\0c\00\00\00\0e\00\00\00E\02\00\00\04\00\00\00\ec\14\00\00x\00\00\00\03\00\00\00s\00\00\00\01\00\00\00t\00\00\00\d8\00\00\00\04\00\00\00(\00\00\00\05\00\00\00)\00\00\00@\01\00\00\0b\00\00\00\10\00\00\00\05\00\00\00\11\00\00\00\80\01\00\00\0b\00\00\00\0c\00\00\00\05\00\00\00\0d\00\00\00\0f\00\00\00\8f\02\00\00\04\00\00\00\fc\14\00\00\84\00\00\00\05\00\00\00W\00\00\00\01\00\00\00X\00\00\00\f0\00\00\00\05\00\00\00)\00\00\00\05\00\00\00*\00\00\00h\01\00\00\05\00\00\00\18\00\00\00\07\00\00\00\19\00\00\00\b0\01\00\00\0b\00\00\00\0c\00\00\00\07\00\00\00\0d\00\00\00\10\00\00\00\dd\02\00\00\04\00\00\00\0c\15\00\00\90\00\00\00\05\00\00\00b\00\00\00\01\00\00\00c\00\00\00\18\01\00\00\07\00\00\00-\00\00\00\03\00\00\00.\00\00\00\98\01\00\00\0f\00\00\00\13\00\00\00\02\00\00\00\14\00\00\00\e0\01\00\00\03\00\00\00\0f\00\00\00\0d\00\00\00\10\00\00\00\11\00\00\00/\03\00\00\04\00\00\00\1c\15\00\00\a8\00\00\00\01\00\00\00k\00\00\00\05\00\00\00l\00\00\004\01\00\00\0a\00\00\00.\00\00\00\01\00\00\00/\00\00\00\c0\01\00\00\01\00\00\00\16\00\00\00\0f\00\00\00\17\00\00\00\14\02\00\00\02\00\00\00\0e\00\00\00\11\00\00\00\0f\00\00\00\12\00\00\00\85\03\00\00\04\00\00\00,\15\00\00\a8\00\00\00\05\00\00\00x\00\00\00\01\00\00\00y\00\00\004\01\00\00\09\00\00\00+\00\00\00\04\00\00\00,\00\00\00\c0\01\00\00\11\00\00\00\16\00\00\00\01\00\00\00\17\00\00\00\14\02\00\00\02\00\00\00\0e\00\00\00\13\00\00\00\0f\00\00\00\13\00\00\00\df\03\00\00\04\00\00\00<\15\00\00\c4\00\00\00\03\00\00\00q\00\00\00\04\00\00\00r\00\00\00l\01\00\00\03\00\00\00,\00\00\00\0b\00\00\00-\00\00\00\22\02\00\00\11\00\00\00\15\00\00\00\04\00\00\00\16\00\00\00\8a\02\00\00\09\00\00\00\0d\00\00\00\10\00\00\00\0e\00\00\00\14\00\00\00=\04\00\00\04\00\00\00L\15\00\00\e0\00\00\00\03\00\00\00k\00\00\00\05\00\00\00l\00\00\00\a0\01\00\00\03\00\00\00)\00\00\00\0d\00\00\00*\00\00\00X\02\00\00\0f\00\00\00\18\00\00\00\05\00\00\00\19\00\00\00\bc\02\00\00\0f\00\00\00\0f\00\00\00\0a\00\00\00\10\00\00\00\15\00\00\00\84\04\00\00\05\00\00\00\5c\15\00\00\e0\00\00\00\04\00\00\00t\00\00\00\04\00\00\00u\00\00\00\ba\01\00\00\11\00\00\00*\00\00\00\00\00\00\00\00\00\00\00\84\02\00\00\11\00\00\00\16\00\00\00\06\00\00\00\17\00\00\00\ee\02\00\00\13\00\00\00\10\00\00\00\06\00\00\00\11\00\00\00\16\00\00\00\ea\04\00\00\05\00\00\00p\15\00\00\fc\00\00\00\02\00\00\00o\00\00\00\07\00\00\00p\00\00\00\dc\01\00\00\11\00\00\00.\00\00\00\00\00\00\00\00\00\00\00\b2\02\00\00\07\00\00\00\18\00\00\00\10\00\00\00\19\00\00\000\03\00\00\22\00\00\00\0d\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00T\05\00\00\05\00\00\00\84\15\00\00\0e\01\00\00\04\00\00\00y\00\00\00\05\00\00\00z\00\00\00\f8\01\00\00\04\00\00\00/\00\00\00\0e\00\00\000\00\00\00\ee\02\00\00\0b\00\00\00\18\00\00\00\0e\00\00\00\19\00\00\00\84\03\00\00\10\00\00\00\0f\00\00\00\0e\00\00\00\10\00\00\00\18\00\00\00\c2\05\00\00\05\00\00\00\98\15\00\00,\01\00\00\06\00\00\00u\00\00\00\04\00\00\00v\00\00\000\02\00\00\06\00\00\00-\00\00\00\0e\00\00\00.\00\00\00*\03\00\00\0b\00\00\00\18\00\00\00\10\00\00\00\19\00\00\00\c0\03\00\00\1e\00\00\00\10\00\00\00\02\00\00\00\11\00\00\00\19\00\00\004\06\00\00\05\00\00\00\ac\15\00\008\01\00\00\08\00\00\00j\00\00\00\04\00\00\00k\00\00\00L\02\00\00\08\00\00\00/\00\00\00\0d\00\00\000\00\00\00f\03\00\00\07\00\00\00\18\00\00\00\16\00\00\00\19\00\00\00\1a\04\00\00\16\00\00\00\0f\00\00\00\0d\00\00\00\10\00\00\00\1a\00\00\00\aa\06\00\00\05\00\00\00\c0\15\00\00P\01\00\00\0a\00\00\00r\00\00\00\02\00\00\00s\00\00\00\84\02\00\00\13\00\00\00.\00\00\00\04\00\00\00/\00\00\00\b8\03\00\00\1c\00\00\00\16\00\00\00\06\00\00\00\17\00\00\00V\04\00\00!\00\00\00\10\00\00\00\04\00\00\00\11\00\00\00\1b\00\00\00$\07\00\00\05\00\00\00\d4\15\00\00h\01\00\00\08\00\00\00z\00\00\00\04\00\00\00{\00\00\00\bc\02\00\00\16\00\00\00-\00\00\00\03\00\00\00.\00\00\00\fc\03\00\00\08\00\00\00\17\00\00\00\1a\00\00\00\18\00\00\00\b0\04\00\00\0c\00\00\00\0f\00\00\00\1c\00\00\00\10\00\00\00\1c\00\00\00\81\07\00\00\06\00\00\00\e8\15\00\00\ea\01\00\00\03\00\00\00u\00\00\00\0a\00\00\00v\00\00\00\d8\02\00\00\03\00\00\00-\00\00\00\17\00\00\00.\00\00\00\1a\04\00\00\04\00\00\00\18\00\00\00\1f\00\00\00\19\00\00\00\ec\04\00\00\0b\00\00\00\0f\00\00\00\1f\00\00\00\10\00\00\00\1d\00\00\00\03\08\00\00\06\00\00\00\00\16\00\00\a4\01\00\00\07\00\00\00t\00\00\00\07\00\00\00u\00\00\00\10\03\00\00\15\00\00\00-\00\00\00\07\00\00\00.\00\00\00t\04\00\00\01\00\00\00\17\00\00\00%\00\00\00\18\00\00\00F\05\00\00\13\00\00\00\0f\00\00\00\1a\00\00\00\10\00\00\00\1e\00\00\00\89\08\00\00\06\00\00\00\18\16\00\00\c2\01\00\00\05\00\00\00s\00\00\00\0a\00\00\00t\00\00\00,\03\00\00\13\00\00\00/\00\00\00\0a\00\00\000\00\00\00\b0\04\00\00\0f\00\00\00\18\00\00\00\19\00\00\00\19\00\00\00\a0\05\00\00\17\00\00\00\0f\00\00\00\19\00\00\00\10\00\00\00\1f\00\00\00\13\09\00\00\06\00\00\000\16\00\00\e0\01\00\00\0d\00\00\00s\00\00\00\03\00\00\00t\00\00\00d\03\00\00\02\00\00\00.\00\00\00\1d\00\00\00/\00\00\00\0a\05\00\00*\00\00\00\18\00\00\00\01\00\00\00\19\00\00\00\fa\05\00\00\17\00\00\00\0f\00\00\00\1c\00\00\00\10\00\00\00 \00\00\00\a1\09\00\00\06\00\00\00H\16\00\00\fe\01\00\00\11\00\00\00s\00\00\00\00\00\00\00\00\00\00\00\9c\03\00\00\0a\00\00\00.\00\00\00\17\00\00\00/\00\00\00F\05\00\00\0a\00\00\00\18\00\00\00#\00\00\00\19\00\00\00T\06\00\00\13\00\00\00\0f\00\00\00#\00\00\00\10\00\00\00!\00\00\003\0a\00\00\06\00\00\00`\16\00\00\1c\02\00\00\11\00\00\00s\00\00\00\01\00\00\00t\00\00\00\d4\03\00\00\0e\00\00\00.\00\00\00\15\00\00\00/\00\00\00\a0\05\00\00\1d\00\00\00\18\00\00\00\13\00\00\00\19\00\00\00\ae\06\00\00\0b\00\00\00\0f\00\00\00.\00\00\00\10\00\00\00\22\00\00\00\c9\0a\00\00\06\00\00\00x\16\00\00:\02\00\00\0d\00\00\00s\00\00\00\06\00\00\00t\00\00\00\0c\04\00\00\0e\00\00\00.\00\00\00\17\00\00\00/\00\00\00\fa\05\00\00,\00\00\00\18\00\00\00\07\00\00\00\19\00\00\00\08\07\00\00;\00\00\00\10\00\00\00\01\00\00\00\11\00\00\00#\00\00\00<\0b\00\00\07\00\00\00\90\16\00\00:\02\00\00\0c\00\00\00y\00\00\00\07\00\00\00z\00\00\00(\04\00\00\0c\00\00\00/\00\00\00\1a\00\00\000\00\00\006\06\00\00'\00\00\00\18\00\00\00\0e\00\00\00\19\00\00\00b\07\00\00\16\00\00\00\0f\00\00\00)\00\00\00\10\00\00\00$\00\00\00\da\0b\00\00\07\00\00\00\ac\16\00\00X\02\00\00\06\00\00\00y\00\00\00\0e\00\00\00z\00\00\00`\04\00\00\06\00\00\00/\00\00\00\22\00\00\000\00\00\00\90\06\00\00.\00\00\00\18\00\00\00\0a\00\00\00\19\00\00\00\bc\07\00\00\02\00\00\00\0f\00\00\00@\00\00\00\10\00\00\00%\00\00\00|\0c\00\00\07\00\00\00\c8\16\00\00v\02\00\00\11\00\00\00z\00\00\00\04\00\00\00{\00\00\00\b4\04\00\00\1d\00\00\00.\00\00\00\0e\00\00\00/\00\00\00\ea\06\00\001\00\00\00\18\00\00\00\0a\00\00\00\19\00\00\004\08\00\00\18\00\00\00\0f\00\00\00.\00\00\00\10\00\00\00&\00\00\00\22\0d\00\00\07\00\00\00\e4\16\00\00\94\02\00\00\04\00\00\00z\00\00\00\12\00\00\00{\00\00\00\ec\04\00\00\0d\00\00\00.\00\00\00 \00\00\00/\00\00\00D\07\00\000\00\00\00\18\00\00\00\0e\00\00\00\19\00\00\00\ac\08\00\00*\00\00\00\0f\00\00\00 \00\00\00\10\00\00\00'\00\00\00\cc\0d\00\00\07\00\00\00\00\17\00\00\d0\02\00\00\14\00\00\00u\00\00\00\04\00\00\00v\00\00\00$\05\00\00(\00\00\00/\00\00\00\07\00\00\000\00\00\00\9e\07\00\00+\00\00\00\18\00\00\00\16\00\00\00\19\00\00\00\06\09\00\00\0a\00\00\00\0f\00\00\00C\00\00\00\10\00\00\00(\00\00\00z\0e\00\00\07\00\00\00\1c\17\00\00\ee\02\00\00\13\00\00\00v\00\00\00\06\00\00\00w\00\00\00\5c\05\00\00\12\00\00\00/\00\00\00\1f\00\00\000\00\00\00\f8\07\00\00\22\00\00\00\18\00\00\00\22\00\00\00\19\00\00\00~\09\00\00\14\00\00\00\0f\00\00\00=\00\00\00\10\00\00\00\06\00\00\00\12\00\00\00\06\00\00\00\16\00\00\00\06\00\00\00\1a\00\00\00\06\00\00\00\1e\00\00\00\06\00\00\00\22\00\00\00\06\00\00\00\16\00\00\00&\00\00\00\06\00\00\00\18\00\00\00*\00\00\00\06\00\00\00\1a\00\00\00.\00\00\00\06\00\00\00\1c\00\00\002\00\00\00\06\00\00\00\1e\00\00\006\00\00\00\06\00\00\00 \00\00\00:\00\00\00\06\00\00\00\22\00\00\00>\00\00\00\06\00\00\00\1a\00\00\00.\00\00\00B\00\00\00\06\00\00\00\1a\00\00\000\00\00\00F\00\00\00\06\00\00\00\1a\00\00\002\00\00\00J\00\00\00\06\00\00\00\1e\00\00\006\00\00\00N\00\00\00\06\00\00\00\1e\00\00\008\00\00\00R\00\00\00\06\00\00\00\1e\00\00\00:\00\00\00V\00\00\00\06\00\00\00\22\00\00\00>\00\00\00Z\00\00\00\06\00\00\00\1c\00\00\002\00\00\00H\00\00\00^\00\00\00\06\00\00\00\1a\00\00\002\00\00\00J\00\00\00b\00\00\00\06\00\00\00\1e\00\00\006\00\00\00N\00\00\00f\00\00\00\06\00\00\00\1c\00\00\006\00\00\00P\00\00\00j\00\00\00\06\00\00\00 \00\00\00:\00\00\00T\00\00\00n\00\00\00\06\00\00\00\1e\00\00\00:\00\00\00V\00\00\00r\00\00\00\06\00\00\00\22\00\00\00>\00\00\00Z\00\00\00v\00\00\00\06\00\00\00\1a\00\00\002\00\00\00J\00\00\00b\00\00\00z\00\00\00\06\00\00\00\1e\00\00\006\00\00\00N\00\00\00f\00\00\00~\00\00\00\06\00\00\00\1a\00\00\004\00\00\00N\00\00\00h\00\00\00\82\00\00\00\06\00\00\00\1e\00\00\008\00\00\00R\00\00\00l\00\00\00\86\00\00\00\06\00\00\00\22\00\00\00<\00\00\00V\00\00\00p\00\00\00\8a\00\00\00\06\00\00\00\1e\00\00\00:\00\00\00V\00\00\00r\00\00\00\8e\00\00\00\06\00\00\00\22\00\00\00>\00\00\00Z\00\00\00v\00\00\00\92\00\00\00\06\00\00\00\1e\00\00\006\00\00\00N\00\00\00f\00\00\00~\00\00\00\96\00\00\00\06\00\00\00\18\00\00\002\00\00\00L\00\00\00f\00\00\00\80\00\00\00\9a\00\00\00\06\00\00\00\1c\00\00\006\00\00\00P\00\00\00j\00\00\00\84\00\00\00\9e\00\00\00\06\00\00\00 \00\00\00:\00\00\00T\00\00\00n\00\00\00\88\00\00\00\a2\00\00\00\06\00\00\00\1a\00\00\006\00\00\00R\00\00\00n\00\00\00\8a\00\00\00\a6\00\00\00\06\00\00\00\1e\00\00\00:\00\00\00V\00\00\00r\00\00\00\8e\00\00\00\aa\00\00\00"))
