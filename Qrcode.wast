(module
  (type (;0;) (func))
  (type (;1;) (func (param i32 f32 f32 f32 i32)))
  (type (;2;) (func (param i32 i32 f32 f32 f32)))
  (type (;3;) (func (param i32 f32 f32 f32) (result i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (result i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32) (result f32)))
  (type (;8;) (func (param i32) (result i32)))
  (type (;9;) (func (param i32 i32) (result f32)))
  (type (;10;) (func (param f32 f32 f32 i32) (result i32)))
  (type (;11;) (func (param f32) (result f32)))
  (import "env" "memory" (memory (;0;) 2))
  (func $__wasm_call_ctors (type 0))
  (func $createFinderPattern (type 1) (param i32 f32 f32 f32 i32)
    local.get 0
    local.get 4
    i32.store offset=12
    local.get 0
    local.get 3
    f32.store offset=8
    local.get 0
    local.get 2
    f32.store offset=4
    local.get 0
    local.get 1
    f32.store)
  (func $combineEstimate (type 2) (param i32 i32 f32 f32 f32)
    (local i32 f32)
    local.get 1
    local.get 0
    i32.load offset=12
    i32.const 1
    i32.add
    local.tee 5
    i32.store offset=12
    local.get 1
    local.get 0
    f32.load offset=4
    local.get 0
    i32.load offset=12
    f32.convert_i32_u
    local.tee 6
    f32.mul
    local.get 2
    f32.add
    local.get 5
    f32.convert_i32_u
    local.tee 2
    f32.div
    f32.store
    local.get 1
    local.get 0
    f32.load offset=8
    local.get 6
    f32.mul
    local.get 4
    f32.add
    local.get 2
    f32.div
    f32.store offset=8)
  (func $aboutEquals (type 3) (param i32 f32 f32 f32) (result i32)
    (local i32)
    i32.const 0
    local.set 4
    block  ;; label = @1
      local.get 2
      local.get 0
      f32.load offset=4
      f32.sub
      local.tee 2
      f32.neg
      local.get 2
      local.get 2
      f32.const 0x0p+0 (;=0;)
      f32.lt
      select
      local.get 1
      f32.le
      i32.const 1
      i32.xor
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      f32.load
      f32.sub
      local.tee 2
      f32.neg
      local.get 2
      local.get 2
      f32.const 0x0p+0 (;=0;)
      f32.lt
      select
      local.get 1
      f32.le
      i32.const 1
      i32.xor
      br_if 0 (;@1;)
      i32.const 1
      local.set 4
      local.get 1
      local.get 0
      f32.load offset=8
      local.tee 3
      f32.sub
      local.tee 2
      f32.neg
      local.get 2
      local.get 2
      f32.const 0x0p+0 (;=0;)
      f32.lt
      select
      local.tee 2
      f32.const 0x1p+0 (;=1;)
      f32.le
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      f32.le
      local.set 4
    end
    local.get 4)
  (func $setImageSize (type 4) (param i32 i32) (result i32)
    i32.const 0
    local.get 1
    i32.store offset=1028
    i32.const 0
    local.get 0
    i32.store offset=1024
    i32.const 0
    local.get 1
    local.get 0
    i32.mul
    local.tee 0
    i32.store offset=1040
    i32.const 0
    local.get 0
    i32.const 2
    i32.shl
    local.tee 0
    i32.store offset=1032
    i32.const 0
    i32.const 0
    i32.load offset=1120
    local.tee 1
    local.get 0
    i32.add
    i32.store offset=1036
    local.get 1)
  (func $getImageSize (type 5) (result i32)
    i32.const 0
    i32.load offset=1032)
  (func $decode (type 0))
  (func $imageToBitmap (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 0
    i32.load offset=1024
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1028
        local.tee 1
        br_if 0 (;@2;)
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      local.set 2
      i32.const 0
      local.set 3
      loop  ;; label = @2
        i32.const 0
        local.set 4
        block  ;; label = @3
          local.get 2
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 4
          loop  ;; label = @4
            i32.const 0
            i32.load offset=1120
            local.tee 1
            local.get 4
            local.get 3
            local.get 2
            i32.mul
            i32.add
            i32.const 2
            i32.shl
            local.tee 2
            i32.add
            local.tee 0
            local.get 1
            local.get 2
            i32.const 2
            i32.or
            local.tee 5
            i32.add
            i32.load8_u
            local.get 0
            i32.load8_u
            i32.add
            i32.const 33
            i32.mul
            local.get 1
            local.get 2
            i32.const 1
            i32.or
            local.tee 0
            i32.add
            i32.load8_u
            i32.const 34
            i32.mul
            i32.add
            i32.const 100
            i32.div_u
            i32.store8
            i32.const 0
            i32.load offset=1120
            local.tee 1
            local.get 0
            i32.add
            local.get 1
            local.get 2
            i32.add
            i32.load8_u
            i32.store8
            i32.const 0
            i32.load offset=1120
            local.tee 1
            local.get 5
            i32.add
            local.get 1
            local.get 2
            i32.add
            i32.load8_u
            i32.store8
            local.get 4
            i32.const 1
            i32.add
            local.tee 4
            i32.const 0
            i32.load offset=1024
            local.tee 2
            i32.lt_u
            br_if 0 (;@4;)
          end
          i32.const 0
          i32.load offset=1028
          local.set 1
          local.get 2
          local.set 0
          local.get 2
          local.set 4
        end
        local.get 4
        local.set 2
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        local.get 1
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 1
    i32.const 2
    i32.shr_u
    local.tee 6
    i32.eqz
    local.get 0
    i32.const 2
    i32.shr_u
    local.tee 5
    i32.eqz
    i32.or
    local.set 7
    local.get 6
    i32.const 3
    i32.mul
    local.set 8
    local.get 6
    i32.const 1
    i32.shl
    local.set 9
    i32.const 0
    local.set 10
    i32.const 0
    local.set 11
    loop  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=1024
        local.set 12
        i32.const 0
        i32.load offset=1120
        local.get 10
        i32.add
        local.set 13
        i32.const 255
        local.set 1
        i32.const 0
        local.set 14
        i32.const 0
        local.set 0
        loop  ;; label = @3
          local.get 13
          local.set 4
          local.get 5
          local.set 3
          loop  ;; label = @4
            local.get 4
            i32.load8_u
            local.tee 2
            local.get 0
            local.get 0
            local.get 2
            i32.lt_u
            select
            local.set 0
            local.get 2
            local.get 1
            local.get 1
            local.get 2
            i32.gt_u
            select
            local.set 1
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            local.get 3
            i32.const -1
            i32.add
            local.tee 3
            br_if 0 (;@4;)
          end
          local.get 13
          local.get 12
          i32.add
          local.set 13
          local.get 14
          i32.const 1
          i32.add
          local.tee 14
          local.get 6
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 7
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.add
        i32.const 1
        i32.shr_u
        local.set 3
        i32.const 0
        local.set 0
        loop  ;; label = @3
          i32.const 0
          local.set 2
          loop  ;; label = @4
            i32.const 0
            i32.load offset=1120
            local.get 10
            local.get 2
            i32.add
            local.get 0
            i32.const 0
            i32.load offset=1024
            i32.mul
            i32.add
            i32.const 2
            i32.shl
            local.tee 4
            i32.add
            local.tee 1
            i32.const -1
            i32.const 0
            local.get 3
            local.get 1
            i32.load8_u
            i32.lt_u
            select
            local.tee 1
            i32.store8
            i32.const 0
            i32.load offset=1120
            local.get 4
            i32.const 1
            i32.or
            i32.add
            local.get 1
            i32.store8
            i32.const 0
            i32.load offset=1120
            local.get 4
            i32.const 2
            i32.or
            i32.add
            local.get 1
            i32.store8
            local.get 5
            local.get 2
            i32.const 1
            i32.add
            local.tee 2
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 0
          i32.const 1
          i32.add
          local.tee 0
          local.get 6
          i32.ne
          br_if 0 (;@3;)
        end
        i32.const 0
        local.set 14
        i32.const 0
        i32.load offset=1120
        local.get 10
        local.get 6
        i32.const 0
        i32.load offset=1024
        local.tee 12
        i32.mul
        i32.add
        i32.add
        local.set 13
        i32.const 255
        local.set 1
        i32.const 0
        local.set 0
        loop  ;; label = @3
          local.get 13
          local.set 4
          local.get 5
          local.set 3
          loop  ;; label = @4
            local.get 4
            i32.load8_u
            local.tee 2
            local.get 0
            local.get 0
            local.get 2
            i32.lt_u
            select
            local.set 0
            local.get 2
            local.get 1
            local.get 1
            local.get 2
            i32.gt_u
            select
            local.set 1
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            local.get 3
            i32.const -1
            i32.add
            local.tee 3
            br_if 0 (;@4;)
          end
          local.get 13
          local.get 12
          i32.add
          local.set 13
          local.get 14
          i32.const 1
          i32.add
          local.tee 14
          local.get 6
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 0
        local.get 1
        i32.add
        i32.const 1
        i32.shr_u
        local.set 3
        i32.const 0
        local.set 13
        local.get 6
        local.set 0
        loop  ;; label = @3
          i32.const 0
          local.set 2
          loop  ;; label = @4
            i32.const 0
            i32.load offset=1120
            local.get 10
            local.get 2
            i32.add
            local.get 0
            i32.const 0
            i32.load offset=1024
            i32.mul
            i32.add
            i32.const 2
            i32.shl
            local.tee 4
            i32.add
            local.tee 1
            i32.const -1
            i32.const 0
            local.get 3
            local.get 1
            i32.load8_u
            i32.lt_u
            select
            local.tee 1
            i32.store8
            i32.const 0
            i32.load offset=1120
            local.get 4
            i32.const 1
            i32.or
            i32.add
            local.get 1
            i32.store8
            i32.const 0
            i32.load offset=1120
            local.get 4
            i32.const 2
            i32.or
            i32.add
            local.get 1
            i32.store8
            local.get 5
            local.get 2
            i32.const 1
            i32.add
            local.tee 2
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 13
          i32.const 1
          i32.add
          local.tee 13
          local.get 6
          i32.ne
          br_if 0 (;@3;)
        end
        i32.const 0
        local.set 14
        i32.const 0
        i32.load offset=1120
        local.get 10
        local.get 9
        i32.const 0
        i32.load offset=1024
        local.tee 12
        i32.mul
        i32.add
        i32.add
        local.set 13
        i32.const 255
        local.set 1
        i32.const 0
        local.set 0
        loop  ;; label = @3
          local.get 13
          local.set 4
          local.get 5
          local.set 3
          loop  ;; label = @4
            local.get 4
            i32.load8_u
            local.tee 2
            local.get 0
            local.get 0
            local.get 2
            i32.lt_u
            select
            local.set 0
            local.get 2
            local.get 1
            local.get 1
            local.get 2
            i32.gt_u
            select
            local.set 1
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            local.get 3
            i32.const -1
            i32.add
            local.tee 3
            br_if 0 (;@4;)
          end
          local.get 13
          local.get 12
          i32.add
          local.set 13
          local.get 14
          i32.const 1
          i32.add
          local.tee 14
          local.get 6
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 0
        local.get 1
        i32.add
        i32.const 1
        i32.shr_u
        local.set 3
        i32.const 0
        local.set 13
        local.get 9
        local.set 0
        loop  ;; label = @3
          i32.const 0
          local.set 2
          loop  ;; label = @4
            i32.const 0
            i32.load offset=1120
            local.get 10
            local.get 2
            i32.add
            local.get 0
            i32.const 0
            i32.load offset=1024
            i32.mul
            i32.add
            i32.const 2
            i32.shl
            local.tee 4
            i32.add
            local.tee 1
            i32.const -1
            i32.const 0
            local.get 3
            local.get 1
            i32.load8_u
            i32.lt_u
            select
            local.tee 1
            i32.store8
            i32.const 0
            i32.load offset=1120
            local.get 4
            i32.const 1
            i32.or
            i32.add
            local.get 1
            i32.store8
            i32.const 0
            i32.load offset=1120
            local.get 4
            i32.const 2
            i32.or
            i32.add
            local.get 1
            i32.store8
            local.get 5
            local.get 2
            i32.const 1
            i32.add
            local.tee 2
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 13
          i32.const 1
          i32.add
          local.tee 13
          local.get 6
          i32.ne
          br_if 0 (;@3;)
        end
        i32.const 0
        local.set 14
        i32.const 0
        i32.load offset=1120
        local.get 10
        local.get 8
        i32.const 0
        i32.load offset=1024
        local.tee 12
        i32.mul
        i32.add
        i32.add
        local.set 13
        i32.const 255
        local.set 1
        i32.const 0
        local.set 0
        loop  ;; label = @3
          local.get 13
          local.set 4
          local.get 5
          local.set 3
          loop  ;; label = @4
            local.get 4
            i32.load8_u
            local.tee 2
            local.get 0
            local.get 0
            local.get 2
            i32.lt_u
            select
            local.set 0
            local.get 2
            local.get 1
            local.get 1
            local.get 2
            i32.gt_u
            select
            local.set 1
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            local.get 3
            i32.const -1
            i32.add
            local.tee 3
            br_if 0 (;@4;)
          end
          local.get 13
          local.get 12
          i32.add
          local.set 13
          local.get 14
          i32.const 1
          i32.add
          local.tee 14
          local.get 6
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 0
        local.get 1
        i32.add
        i32.const 1
        i32.shr_u
        local.set 3
        i32.const 0
        local.set 13
        local.get 8
        local.set 0
        loop  ;; label = @3
          i32.const 0
          local.set 2
          loop  ;; label = @4
            i32.const 0
            i32.load offset=1120
            local.get 10
            local.get 2
            i32.add
            local.get 0
            i32.const 0
            i32.load offset=1024
            i32.mul
            i32.add
            i32.const 2
            i32.shl
            local.tee 4
            i32.add
            local.tee 1
            i32.const -1
            i32.const 0
            local.get 3
            local.get 1
            i32.load8_u
            i32.lt_u
            select
            local.tee 1
            i32.store8
            i32.const 0
            i32.load offset=1120
            local.get 4
            i32.const 1
            i32.or
            i32.add
            local.get 1
            i32.store8
            i32.const 0
            i32.load offset=1120
            local.get 4
            i32.const 2
            i32.or
            i32.add
            local.get 1
            i32.store8
            local.get 5
            local.get 2
            i32.const 1
            i32.add
            local.tee 2
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 13
          i32.const 1
          i32.add
          local.tee 13
          local.get 6
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 10
      local.get 5
      i32.add
      local.set 10
      local.get 11
      i32.const 1
      i32.add
      local.tee 11
      i32.const 4
      i32.ne
      br_if 0 (;@1;)
    end)
  (func $findFinderPattern (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 f32 f32 i32 f32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    block  ;; label = @1
      i32.const 0
      i32.load offset=1028
      local.tee 1
      i32.const 3
      i32.mul
      i32.const 228
      i32.div_u
      local.tee 2
      i32.const 3
      local.get 2
      i32.const 3
      i32.gt_u
      select
      local.tee 3
      i32.const -1
      i32.add
      local.tee 4
      local.get 1
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=1024
      local.tee 5
      i32.const -1
      i32.add
      local.set 6
      local.get 0
      i32.const 16
      i32.add
      local.set 7
      loop  ;; label = @2
        i32.const 0
        local.set 8
        local.get 7
        i32.const 0
        i32.store
        local.get 0
        i64.const 0
        i64.store offset=8
        local.get 0
        i64.const 0
        i64.store
        block  ;; label = @3
          local.get 5
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 9
          i32.const 0
          local.set 8
          i32.const 0
          local.set 2
          i32.const 0
          local.set 10
          loop  ;; label = @4
            local.get 10
            i32.const 1
            i32.and
            local.set 11
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1120
                      i32.const 0
                      i32.load offset=1024
                      local.get 4
                      i32.mul
                      local.get 2
                      i32.add
                      i32.add
                      i32.load8_u
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 10
                      local.get 11
                      i32.add
                      local.tee 10
                      i32.const 2
                      i32.shl
                      i32.add
                      local.tee 11
                      local.get 11
                      i32.load
                      i32.const 1
                      i32.add
                      i32.store
                      br 1 (;@8;)
                    end
                    local.get 11
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 10
                      i32.const 4
                      i32.ne
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        local.get 9
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 0
                        i32.load offset=4
                        local.tee 10
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 0
                        i32.load offset=8
                        local.tee 11
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 0
                        i32.load offset=12
                        local.tee 12
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 0
                        i32.load offset=16
                        local.tee 13
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 10
                        local.get 9
                        i32.add
                        local.get 11
                        i32.add
                        local.get 12
                        i32.add
                        local.get 13
                        i32.add
                        local.tee 14
                        i32.const 7
                        i32.lt_s
                        br_if 0 (;@10;)
                        local.get 14
                        f32.convert_i32_s
                        f32.const 0x1.cp+2 (;=7;)
                        f32.div
                        local.tee 15
                        local.get 9
                        f32.convert_i32_s
                        f32.sub
                        local.tee 16
                        f32.neg
                        local.get 16
                        local.get 16
                        f32.const 0x0p+0 (;=0;)
                        f32.lt
                        select
                        local.get 15
                        f32.const 0x1p-1 (;=0.5;)
                        f32.mul
                        local.tee 16
                        f32.lt
                        i32.const 1
                        i32.xor
                        br_if 0 (;@10;)
                        local.get 15
                        local.get 10
                        f32.convert_i32_s
                        f32.sub
                        local.tee 17
                        f32.neg
                        local.get 17
                        local.get 17
                        f32.const 0x0p+0 (;=0;)
                        f32.lt
                        select
                        local.get 16
                        f32.lt
                        i32.const 1
                        i32.xor
                        br_if 0 (;@10;)
                        local.get 15
                        f32.const 0x1.8p+1 (;=3;)
                        f32.mul
                        local.get 11
                        f32.convert_i32_s
                        f32.sub
                        local.tee 17
                        f32.neg
                        local.get 17
                        local.get 17
                        f32.const 0x0p+0 (;=0;)
                        f32.lt
                        select
                        local.get 16
                        f32.const 0x1.8p+1 (;=3;)
                        f32.mul
                        f32.lt
                        i32.const 1
                        i32.xor
                        br_if 0 (;@10;)
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 15
                            local.get 12
                            f32.convert_i32_s
                            f32.sub
                            local.tee 17
                            f32.abs
                            f32.const 0x1p+31 (;=2.14748e+09;)
                            f32.lt
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 17
                            i32.trunc_f32_s
                            local.set 10
                            br 1 (;@11;)
                          end
                          i32.const -2147483648
                          local.set 10
                        end
                        local.get 16
                        local.get 10
                        local.get 10
                        i32.const 31
                        i32.shr_s
                        local.tee 9
                        i32.add
                        local.get 9
                        i32.xor
                        f32.convert_i32_s
                        f32.gt
                        i32.eqz
                        br_if 0 (;@10;)
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 15
                            local.get 13
                            f32.convert_i32_s
                            f32.sub
                            local.tee 15
                            f32.abs
                            f32.const 0x1p+31 (;=2.14748e+09;)
                            f32.lt
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 15
                            i32.trunc_f32_s
                            local.set 10
                            br 1 (;@11;)
                          end
                          i32.const -2147483648
                          local.set 10
                        end
                        local.get 16
                        local.get 10
                        local.get 10
                        i32.const 31
                        i32.shr_s
                        local.tee 9
                        i32.add
                        local.get 9
                        i32.xor
                        f32.convert_i32_s
                        f32.gt
                        i32.const 1
                        i32.xor
                        br_if 0 (;@10;)
                        block  ;; label = @11
                          local.get 0
                          local.get 4
                          local.get 2
                          call $handlePossibleCenter
                          br_if 0 (;@11;)
                          local.get 2
                          i32.const 1
                          i32.add
                          local.set 10
                          i32.const 0
                          i32.load offset=1120
                          i32.const 0
                          i32.load offset=1024
                          local.get 4
                          i32.mul
                          i32.add
                          local.set 11
                          loop  ;; label = @12
                            local.get 10
                            local.tee 2
                            local.get 5
                            i32.ge_u
                            br_if 6 (;@6;)
                            local.get 2
                            i32.const 1
                            i32.add
                            local.set 10
                            local.get 11
                            local.get 2
                            i32.add
                            i32.load8_u
                            i32.eqz
                            br_if 0 (;@12;)
                            br 6 (;@6;)
                          end
                        end
                        i32.const 0
                        i32.load offset=1048
                        local.set 9
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1044
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 2
                          local.set 3
                          block  ;; label = @12
                            local.get 9
                            br_if 0 (;@12;)
                            i32.const 0
                            local.set 8
                            br 6 (;@6;)
                          end
                          f32.const 0x0p+0 (;=0;)
                          local.set 15
                          i32.const 0
                          local.set 12
                          i32.const 1064
                          local.set 10
                          local.get 9
                          local.set 11
                          loop  ;; label = @12
                            block  ;; label = @13
                              local.get 10
                              i32.const 4
                              i32.add
                              i32.load
                              i32.const 2
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 12
                              i32.const 1
                              i32.add
                              local.set 12
                              local.get 15
                              local.get 10
                              f32.load
                              f32.add
                              local.set 15
                            end
                            local.get 10
                            i32.const 16
                            i32.add
                            local.set 10
                            local.get 11
                            i32.const -1
                            i32.add
                            local.tee 11
                            i32.eqz
                            br_if 5 (;@7;)
                            br 0 (;@12;)
                          end
                        end
                        i32.const 2
                        local.set 3
                        local.get 9
                        i32.const 2
                        i32.lt_u
                        br_if 4 (;@6;)
                        i32.const 0
                        local.set 12
                        i32.const 1056
                        local.set 10
                        block  ;; label = @11
                          loop  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 10
                                i32.const 12
                                i32.add
                                i32.load
                                i32.const 2
                                i32.ge_u
                                br_if 0 (;@14;)
                                local.get 12
                                local.set 13
                                br 1 (;@13;)
                              end
                              local.get 10
                              local.set 13
                              local.get 12
                              br_if 2 (;@11;)
                            end
                            local.get 10
                            i32.const 16
                            i32.add
                            local.set 10
                            local.get 13
                            local.set 12
                            local.get 9
                            i32.const -1
                            i32.add
                            local.tee 9
                            br_if 0 (;@12;)
                            br 6 (;@6;)
                          end
                        end
                        i32.const 0
                        i32.const 1
                        i32.store offset=1044
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 12
                            f32.load
                            local.get 10
                            f32.load
                            f32.sub
                            local.tee 16
                            f32.neg
                            local.get 16
                            local.get 16
                            f32.const 0x0p+0 (;=0;)
                            f32.lt
                            select
                            local.get 12
                            f32.load offset=4
                            local.get 10
                            i32.const 4
                            i32.add
                            f32.load
                            f32.sub
                            local.tee 16
                            f32.neg
                            local.get 16
                            local.get 16
                            f32.const 0x0p+0 (;=0;)
                            f32.lt
                            select
                            f32.sub
                            local.tee 16
                            f32.abs
                            f32.const 0x1p+31 (;=2.14748e+09;)
                            f32.lt
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 16
                            i32.trunc_f32_s
                            local.set 10
                            br 1 (;@11;)
                          end
                          i32.const -2147483648
                          local.set 10
                        end
                        i32.const 2
                        local.set 3
                        local.get 10
                        i32.const 2
                        i32.div_s
                        local.tee 10
                        local.get 11
                        i32.le_u
                        br_if 4 (;@6;)
                        local.get 4
                        local.get 11
                        i32.sub
                        local.get 10
                        i32.add
                        i32.const -2
                        i32.add
                        local.set 4
                        local.get 6
                        local.set 2
                        br 4 (;@6;)
                      end
                      local.get 0
                      local.get 0
                      i64.load offset=8
                      i64.store
                      local.get 0
                      i32.load offset=16
                      local.set 10
                      local.get 0
                      i64.const 1
                      i64.store offset=12 align=4
                      local.get 0
                      local.get 10
                      i32.store offset=8
                      i32.const 3
                      local.set 10
                      br 1 (;@8;)
                    end
                    local.get 0
                    local.get 10
                    i32.const 1
                    i32.add
                    local.tee 10
                    i32.const 2
                    i32.shl
                    i32.add
                    local.tee 11
                    local.get 11
                    i32.load
                    i32.const 1
                    i32.add
                    i32.store
                  end
                  block  ;; label = @8
                    local.get 0
                    i32.load
                    local.tee 9
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 9
                    br 3 (;@5;)
                  end
                  local.get 0
                  i32.load offset=4
                  local.tee 11
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 0
                  i32.load offset=8
                  local.tee 12
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 0
                  i32.load offset=12
                  local.tee 13
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 0
                  i32.load offset=16
                  local.tee 14
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 11
                  local.get 9
                  i32.add
                  local.get 12
                  i32.add
                  local.get 13
                  i32.add
                  local.get 14
                  i32.add
                  local.tee 18
                  i32.const 7
                  i32.lt_s
                  br_if 2 (;@5;)
                  local.get 18
                  f32.convert_i32_s
                  f32.const 0x1.cp+2 (;=7;)
                  f32.div
                  local.tee 15
                  local.get 9
                  f32.convert_i32_s
                  f32.sub
                  local.tee 16
                  f32.neg
                  local.get 16
                  local.get 16
                  f32.const 0x0p+0 (;=0;)
                  f32.lt
                  select
                  local.get 15
                  f32.const 0x1p-1 (;=0.5;)
                  f32.mul
                  local.tee 16
                  f32.lt
                  i32.const 1
                  i32.xor
                  br_if 2 (;@5;)
                  local.get 15
                  local.get 11
                  f32.convert_i32_s
                  f32.sub
                  local.tee 17
                  f32.neg
                  local.get 17
                  local.get 17
                  f32.const 0x0p+0 (;=0;)
                  f32.lt
                  select
                  local.get 16
                  f32.lt
                  i32.const 1
                  i32.xor
                  br_if 2 (;@5;)
                  local.get 15
                  f32.const 0x1.8p+1 (;=3;)
                  f32.mul
                  local.get 12
                  f32.convert_i32_s
                  f32.sub
                  local.tee 17
                  f32.neg
                  local.get 17
                  local.get 17
                  f32.const 0x0p+0 (;=0;)
                  f32.lt
                  select
                  local.get 16
                  f32.const 0x1.8p+1 (;=3;)
                  f32.mul
                  f32.lt
                  i32.const 1
                  i32.xor
                  br_if 2 (;@5;)
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 15
                      local.get 13
                      f32.convert_i32_s
                      f32.sub
                      local.tee 17
                      f32.abs
                      f32.const 0x1p+31 (;=2.14748e+09;)
                      f32.lt
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 17
                      i32.trunc_f32_s
                      local.set 11
                      br 1 (;@8;)
                    end
                    i32.const -2147483648
                    local.set 11
                  end
                  local.get 16
                  local.get 11
                  local.get 11
                  i32.const 31
                  i32.shr_s
                  local.tee 12
                  i32.add
                  local.get 12
                  i32.xor
                  f32.convert_i32_s
                  f32.gt
                  i32.eqz
                  br_if 2 (;@5;)
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 15
                      local.get 14
                      f32.convert_i32_s
                      f32.sub
                      local.tee 15
                      f32.abs
                      f32.const 0x1p+31 (;=2.14748e+09;)
                      f32.lt
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 15
                      i32.trunc_f32_s
                      local.set 11
                      br 1 (;@8;)
                    end
                    i32.const -2147483648
                    local.set 11
                  end
                  local.get 16
                  local.get 11
                  local.get 11
                  i32.const 31
                  i32.shr_s
                  local.tee 12
                  i32.add
                  local.get 12
                  i32.xor
                  f32.convert_i32_s
                  f32.gt
                  i32.const 1
                  i32.xor
                  br_if 2 (;@5;)
                  local.get 0
                  local.get 4
                  local.get 5
                  call $handlePossibleCenter
                  i32.eqz
                  br_if 2 (;@5;)
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=1044
                    i32.eqz
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 8
                    i32.const 0
                    i32.load offset=1048
                    local.tee 13
                    i32.eqz
                    br_if 0 (;@8;)
                    f32.const 0x0p+0 (;=0;)
                    local.set 15
                    i32.const 0
                    local.set 14
                    i32.const 1064
                    local.set 11
                    local.get 13
                    local.set 12
                    loop  ;; label = @9
                      block  ;; label = @10
                        local.get 11
                        i32.const 4
                        i32.add
                        i32.load
                        i32.const 2
                        i32.lt_u
                        br_if 0 (;@10;)
                        local.get 14
                        i32.const 1
                        i32.add
                        local.set 14
                        local.get 15
                        local.get 11
                        f32.load
                        f32.add
                        local.set 15
                      end
                      local.get 11
                      i32.const 16
                      i32.add
                      local.set 11
                      local.get 12
                      i32.const -1
                      i32.add
                      local.tee 12
                      br_if 0 (;@9;)
                    end
                    i32.const 0
                    local.set 8
                    local.get 14
                    i32.const 3
                    i32.lt_s
                    br_if 0 (;@8;)
                    local.get 15
                    local.get 13
                    f32.convert_i32_u
                    f32.div
                    local.set 19
                    f32.const 0x0p+0 (;=0;)
                    local.set 17
                    i32.const 1064
                    local.set 11
                    loop  ;; label = @9
                      local.get 17
                      local.get 11
                      f32.load
                      local.get 19
                      f32.sub
                      local.tee 16
                      f32.neg
                      local.get 16
                      local.get 16
                      f32.const 0x0p+0 (;=0;)
                      f32.lt
                      select
                      f32.add
                      local.set 17
                      local.get 11
                      i32.const 16
                      i32.add
                      local.set 11
                      local.get 13
                      i32.const -1
                      i32.add
                      local.tee 13
                      br_if 0 (;@9;)
                    end
                    local.get 17
                    local.get 15
                    f32.const 0x1.99999ap-5 (;=0.05;)
                    f32.mul
                    f32.le
                    local.set 8
                  end
                  local.get 9
                  local.set 3
                  br 2 (;@5;)
                end
                i32.const 0
                local.set 8
                local.get 12
                i32.const 3
                i32.lt_s
                br_if 0 (;@6;)
                local.get 15
                local.get 9
                f32.convert_i32_u
                f32.div
                local.set 19
                f32.const 0x0p+0 (;=0;)
                local.set 17
                i32.const 1064
                local.set 10
                loop  ;; label = @7
                  local.get 17
                  local.get 10
                  f32.load
                  local.get 19
                  f32.sub
                  local.tee 16
                  f32.neg
                  local.get 16
                  local.get 16
                  f32.const 0x0p+0 (;=0;)
                  f32.lt
                  select
                  f32.add
                  local.set 17
                  local.get 10
                  i32.const 16
                  i32.add
                  local.set 10
                  local.get 9
                  i32.const -1
                  i32.add
                  local.tee 9
                  br_if 0 (;@7;)
                end
                local.get 17
                local.get 15
                f32.const 0x1.99999ap-5 (;=0.05;)
                f32.mul
                f32.le
                local.set 8
              end
              i32.const 0
              local.set 9
              local.get 7
              i32.const 0
              i32.store
              local.get 0
              i64.const 0
              i64.store offset=8
              local.get 0
              i64.const 0
              i64.store
              i32.const 0
              local.set 10
            end
            local.get 2
            i32.const 1
            i32.add
            local.tee 2
            local.get 5
            i32.lt_u
            br_if 0 (;@4;)
          end
        end
        local.get 3
        local.get 4
        i32.add
        local.tee 4
        local.get 1
        i32.ge_u
        br_if 1 (;@1;)
        local.get 8
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 0
    i32.const 32
    i32.add
    global.set 0)
  (func $handlePossibleCenter (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 f32 i32 f32 f32 f32 f32 f32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        local.get 0
        i32.load offset=8
        local.tee 3
        i32.sub
        f32.convert_i32_s
        local.get 0
        i32.load offset=4
        local.tee 4
        f32.convert_i32_s
        f32.const -0x1p-1 (;=-0.5;)
        f32.mul
        f32.add
        local.tee 5
        f32.const 0x1p+32 (;=4.29497e+09;)
        f32.lt
        local.get 5
        f32.const 0x0p+0 (;=0;)
        f32.ge
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.trunc_f32_u
        local.set 2
        br 1 (;@1;)
      end
      i32.const 0
      local.set 2
    end
    i32.const 0
    local.set 6
    block  ;; label = @1
      local.get 1
      local.get 2
      local.get 3
      local.get 4
      local.get 0
      i32.load
      i32.add
      local.get 3
      i32.add
      local.get 0
      i32.load offset=12
      i32.add
      local.get 0
      i32.load offset=16
      i32.add
      local.tee 0
      call $crossCheckVertical
      local.tee 7
      f32.const 0x1p+22 (;=4.1943e+06;)
      f32.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 7
          f32.const 0x1p+32 (;=4.29497e+09;)
          f32.lt
          local.get 7
          f32.const 0x0p+0 (;=0;)
          f32.ge
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          i32.trunc_f32_u
          local.set 1
          br 1 (;@2;)
        end
        i32.const 0
        local.set 1
      end
      local.get 2
      local.get 1
      local.get 3
      local.get 0
      call $crossCheckHorizontal
      local.tee 8
      f32.const 0x1p+22 (;=4.1943e+06;)
      f32.eq
      br_if 0 (;@1;)
      local.get 0
      f32.convert_i32_s
      f32.const 0x1.cp+2 (;=7;)
      f32.div
      local.set 9
      i32.const 0
      local.set 0
      block  ;; label = @2
        i32.const 0
        i32.load offset=1048
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1056
        local.set 0
        local.get 2
        local.set 3
        loop  ;; label = @3
          block  ;; label = @4
            local.get 7
            local.get 0
            i32.const 4
            i32.add
            f32.load
            local.tee 10
            f32.sub
            local.tee 5
            f32.neg
            local.get 5
            local.get 5
            f32.const 0x0p+0 (;=0;)
            f32.lt
            select
            local.get 9
            f32.le
            i32.const 1
            i32.xor
            br_if 0 (;@4;)
            local.get 8
            local.get 0
            f32.load
            f32.sub
            local.tee 5
            f32.neg
            local.get 5
            local.get 5
            f32.const 0x0p+0 (;=0;)
            f32.lt
            select
            local.get 9
            f32.le
            i32.const 1
            i32.xor
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 9
              local.get 0
              i32.const 8
              i32.add
              f32.load
              local.tee 11
              f32.sub
              local.tee 5
              f32.neg
              local.get 5
              local.get 5
              f32.const 0x0p+0 (;=0;)
              f32.lt
              select
              local.tee 5
              f32.const 0x1p+0 (;=1;)
              f32.le
              br_if 0 (;@5;)
              local.get 5
              local.get 11
              f32.le
              i32.const 1
              i32.xor
              br_if 1 (;@4;)
            end
            i32.const 1
            local.set 6
            local.get 0
            i32.const 12
            i32.add
            local.tee 3
            local.get 3
            i32.load
            i32.const 1
            i32.add
            local.tee 3
            i32.store
            local.get 0
            i32.const 8
            i32.add
            local.get 11
            local.get 3
            f32.convert_i32_u
            local.tee 5
            f32.mul
            local.get 9
            f32.add
            local.get 5
            f32.div
            f32.store
            local.get 0
            local.get 10
            local.get 5
            f32.mul
            local.get 7
            f32.add
            local.get 5
            f32.div
            f32.store
            br 3 (;@1;)
          end
          local.get 0
          i32.const 16
          i32.add
          local.set 0
          local.get 3
          i32.const -1
          i32.add
          local.tee 3
          br_if 0 (;@3;)
        end
        local.get 2
        local.set 0
      end
      i32.const 0
      local.get 0
      i32.const 1
      i32.add
      i32.store offset=1048
      local.get 0
      i32.const 4
      i32.shl
      local.tee 0
      i32.const 1068
      i32.add
      i32.const 0
      i32.store
      local.get 0
      i32.const 1064
      i32.add
      local.get 9
      f32.store
      local.get 0
      i32.const 1060
      i32.add
      local.get 7
      f32.store
      local.get 0
      i32.const 1056
      i32.add
      local.get 8
      f32.store
      i32.const 1
      return
    end
    local.get 6)
  (func $crossCheckVertical (type 7) (param i32 i32 i32 i32) (result f32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=1028
      local.set 4
      i32.const 0
      i32.const 0
      i32.load offset=1024
      local.tee 5
      i32.const 2
      i32.shl
      i32.sub
      local.set 6
      i32.const 0
      i32.load offset=1120
      local.tee 7
      local.get 1
      local.get 5
      local.get 0
      i32.mul
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.set 8
      local.get 0
      local.set 9
      i32.const 0
      local.set 10
      block  ;; label = @2
        loop  ;; label = @3
          local.get 10
          local.get 2
          i32.gt_s
          local.tee 11
          br_if 1 (;@2;)
          local.get 8
          i32.load8_u
          i32.const 255
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 8
          local.get 6
          i32.add
          local.set 8
          local.get 10
          i32.const 1
          i32.add
          local.set 10
          local.get 9
          i32.const 0
          i32.gt_s
          local.set 11
          local.get 9
          i32.const -1
          i32.add
          local.set 9
          local.get 11
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 11
      br_if 0 (;@1;)
      i32.const 0
      local.set 11
      block  ;; label = @2
        local.get 9
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 9
        i32.const 1
        i32.add
        local.set 9
        i32.const 0
        local.set 11
        loop  ;; label = @3
          local.get 11
          local.get 2
          i32.gt_s
          br_if 1 (;@2;)
          local.get 8
          i32.load8_u
          i32.const 255
          i32.and
          br_if 1 (;@2;)
          local.get 8
          local.get 6
          i32.add
          local.set 8
          local.get 11
          i32.const 1
          i32.add
          local.set 11
          local.get 9
          i32.const -1
          i32.add
          local.tee 9
          i32.const 0
          i32.gt_s
          br_if 0 (;@3;)
        end
      end
      local.get 11
      local.get 2
      i32.gt_s
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 1
          i32.add
          local.tee 12
          local.get 4
          i32.lt_s
          br_if 0 (;@3;)
          local.get 10
          local.set 11
          br 1 (;@2;)
        end
        local.get 7
        local.get 5
        local.get 12
        i32.mul
        i32.const 2
        i32.shl
        local.get 1
        i32.const 2
        i32.shl
        i32.add
        i32.add
        local.set 9
        local.get 5
        i32.const 2
        i32.shl
        local.set 6
        local.get 12
        local.get 4
        i32.sub
        local.set 0
        i32.const 0
        local.set 8
        block  ;; label = @3
          loop  ;; label = @4
            local.get 10
            local.get 8
            i32.add
            local.tee 11
            local.get 2
            i32.gt_s
            br_if 1 (;@3;)
            local.get 9
            i32.load8_u
            i32.const 255
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 9
            local.get 6
            i32.add
            local.set 9
            local.get 0
            local.get 8
            i32.const 1
            i32.add
            local.tee 8
            i32.add
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        local.get 12
        local.get 8
        i32.add
        local.set 12
      end
      local.get 11
      local.get 2
      i32.gt_s
      br_if 0 (;@1;)
      local.get 4
      local.get 12
      i32.eq
      br_if 0 (;@1;)
      local.get 4
      local.get 12
      i32.le_s
      br_if 0 (;@1;)
      local.get 5
      i32.const 2
      i32.shl
      local.set 9
      local.get 4
      local.get 12
      i32.sub
      local.set 11
      local.get 7
      local.get 1
      local.get 12
      local.get 5
      i32.mul
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.set 10
      i32.const 0
      local.set 8
      loop  ;; label = @2
        local.get 8
        local.get 2
        i32.gt_s
        br_if 1 (;@1;)
        local.get 10
        i32.load8_u
        i32.const 255
        i32.and
        br_if 1 (;@1;)
        local.get 10
        local.get 9
        i32.add
        local.set 10
        local.get 11
        local.get 8
        i32.const 1
        i32.add
        local.tee 8
        i32.ne
        br_if 0 (;@2;)
      end
    end
    f32.const 0x1p+22 (;=4.1943e+06;))
  (func $crossCheckHorizontal (type 7) (param i32 i32 i32 i32) (result f32)
    (local f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 f32 f32 f32)
    f32.const 0x1p+22 (;=4.1943e+06;)
    local.set 4
    block  ;; label = @1
      local.get 0
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=1120
      local.tee 5
      local.get 0
      i32.const 0
      i32.load offset=1024
      local.tee 6
      local.get 1
      i32.mul
      local.tee 7
      i32.add
      local.tee 8
      i32.const 2
      i32.shl
      i32.add
      local.set 1
      i32.const 1
      local.set 9
      i32.const 0
      local.set 10
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load8_u
            br_if 0 (;@4;)
            local.get 0
            local.get 10
            i32.sub
            local.tee 11
            i32.const 0
            i32.lt_s
            br_if 3 (;@1;)
            i32.const 0
            local.set 12
            i32.const 0
            local.set 9
            loop  ;; label = @5
              local.get 1
              i32.load8_u
              br_if 3 (;@2;)
              local.get 9
              local.get 2
              i32.gt_s
              br_if 3 (;@2;)
              local.get 1
              i32.const -4
              i32.add
              local.set 1
              local.get 9
              i32.const 1
              i32.add
              local.set 9
              local.get 11
              local.get 12
              i32.add
              local.set 13
              local.get 12
              i32.const -1
              i32.add
              local.set 12
              local.get 13
              i32.const 0
              i32.gt_s
              br_if 0 (;@5;)
              br 4 (;@1;)
            end
          end
          local.get 1
          i32.const -4
          i32.add
          local.set 1
          local.get 10
          i32.const 1
          i32.add
          local.set 10
          local.get 0
          local.get 9
          i32.const -1
          i32.add
          local.tee 9
          i32.add
          i32.const 0
          i32.gt_s
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 9
      local.get 2
      i32.gt_s
      br_if 0 (;@1;)
      i32.const 0
      local.set 13
      block  ;; label = @2
        local.get 11
        local.get 12
        i32.add
        local.tee 11
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 11
        i32.const 1
        i32.add
        local.set 11
        i32.const 0
        local.set 13
        loop  ;; label = @3
          local.get 1
          i32.load8_u
          i32.eqz
          br_if 1 (;@2;)
          local.get 13
          local.get 2
          i32.gt_s
          br_if 1 (;@2;)
          local.get 1
          i32.const -4
          i32.add
          local.set 1
          local.get 13
          i32.const 1
          i32.add
          local.set 13
          local.get 11
          i32.const -1
          i32.add
          local.tee 11
          i32.const 0
          i32.gt_s
          br_if 0 (;@3;)
        end
      end
      local.get 13
      local.get 2
      i32.gt_s
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.const 1
        i32.add
        local.tee 14
        local.get 6
        i32.ge_s
        br_if 0 (;@2;)
        local.get 14
        local.get 6
        i32.sub
        local.set 11
        local.get 8
        i32.const 2
        i32.shl
        local.get 5
        i32.add
        i32.const 4
        i32.add
        local.set 1
        i32.const 0
        local.set 0
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i32.load8_u
            i32.eqz
            br_if 1 (;@3;)
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 11
            local.get 0
            i32.const -1
            i32.add
            local.tee 0
            i32.ne
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        local.get 14
        local.get 0
        i32.sub
        local.set 14
        local.get 10
        local.get 0
        i32.sub
        local.set 10
      end
      local.get 14
      local.get 6
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      local.set 1
      block  ;; label = @2
        local.get 14
        local.get 6
        i32.ge_s
        br_if 0 (;@2;)
        local.get 14
        local.get 6
        i32.sub
        local.set 11
        local.get 5
        local.get 14
        local.get 7
        i32.add
        i32.const 2
        i32.shl
        i32.add
        local.set 0
        i32.const 0
        local.set 1
        block  ;; label = @3
          loop  ;; label = @4
            local.get 0
            i32.load8_u
            br_if 1 (;@3;)
            local.get 1
            local.get 2
            i32.ge_s
            br_if 1 (;@3;)
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            local.get 11
            local.get 1
            i32.const 1
            i32.add
            local.tee 1
            i32.add
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        local.get 14
        local.get 1
        i32.add
        local.set 14
      end
      local.get 14
      local.get 6
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.ge_s
      br_if 0 (;@1;)
      i32.const 0
      local.set 0
      block  ;; label = @2
        local.get 14
        local.get 6
        i32.ge_s
        br_if 0 (;@2;)
        local.get 14
        local.get 6
        i32.sub
        local.set 8
        local.get 5
        local.get 14
        local.get 7
        i32.add
        i32.const 2
        i32.shl
        i32.add
        local.set 11
        i32.const 0
        local.set 0
        block  ;; label = @3
          loop  ;; label = @4
            local.get 11
            i32.load8_u
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            local.get 2
            i32.ge_s
            br_if 1 (;@3;)
            local.get 11
            i32.const 4
            i32.add
            local.set 11
            local.get 8
            local.get 0
            i32.const 1
            i32.add
            local.tee 0
            i32.add
            br_if 0 (;@4;)
          end
          local.get 6
          local.set 14
          br 1 (;@2;)
        end
        local.get 14
        local.get 0
        i32.add
        local.set 14
      end
      local.get 0
      local.get 2
      i32.ge_s
      br_if 0 (;@1;)
      local.get 13
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 10
      local.get 1
      i32.add
      local.get 13
      i32.add
      local.get 0
      i32.add
      local.tee 2
      i32.sub
      local.get 12
      i32.add
      local.get 2
      local.get 3
      i32.sub
      local.get 12
      i32.sub
      local.tee 11
      local.get 11
      i32.const 0
      i32.lt_s
      select
      i32.const 5
      i32.mul
      local.get 3
      i32.ge_s
      br_if 0 (;@1;)
      local.get 12
      i32.eqz
      br_if 0 (;@1;)
      local.get 10
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 12
      i32.sub
      local.tee 12
      i32.const 7
      i32.lt_s
      br_if 0 (;@1;)
      local.get 12
      f32.convert_i32_s
      f32.const 0x1.cp+2 (;=7;)
      f32.div
      local.tee 15
      local.get 13
      f32.convert_i32_s
      f32.sub
      local.tee 16
      f32.neg
      local.get 16
      local.get 16
      f32.const 0x0p+0 (;=0;)
      f32.lt
      select
      local.get 15
      f32.const 0x1p-1 (;=0.5;)
      f32.mul
      local.tee 16
      f32.lt
      i32.const 1
      i32.xor
      br_if 0 (;@1;)
      local.get 15
      local.get 9
      f32.convert_i32_s
      local.tee 17
      f32.sub
      local.tee 18
      f32.neg
      local.get 18
      local.get 18
      f32.const 0x0p+0 (;=0;)
      f32.lt
      select
      local.get 16
      f32.lt
      i32.const 1
      i32.xor
      br_if 0 (;@1;)
      local.get 15
      f32.const 0x1.8p+1 (;=3;)
      f32.mul
      local.get 10
      f32.convert_i32_s
      f32.sub
      local.tee 18
      f32.neg
      local.get 18
      local.get 18
      f32.const 0x0p+0 (;=0;)
      f32.lt
      select
      local.get 16
      f32.const 0x1.8p+1 (;=3;)
      f32.mul
      f32.lt
      i32.const 1
      i32.xor
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 15
          local.get 1
          f32.convert_i32_s
          f32.sub
          local.tee 18
          f32.abs
          f32.const 0x1p+31 (;=2.14748e+09;)
          f32.lt
          i32.eqz
          br_if 0 (;@3;)
          local.get 18
          i32.trunc_f32_s
          local.set 1
          br 1 (;@2;)
        end
        i32.const -2147483648
        local.set 1
      end
      local.get 16
      local.get 1
      local.get 1
      i32.const 31
      i32.shr_s
      local.tee 9
      i32.add
      local.get 9
      i32.xor
      f32.convert_i32_s
      f32.gt
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 15
          local.get 0
          f32.convert_i32_s
          f32.sub
          local.tee 15
          f32.abs
          f32.const 0x1p+31 (;=2.14748e+09;)
          f32.lt
          i32.eqz
          br_if 0 (;@3;)
          local.get 15
          i32.trunc_f32_s
          local.set 1
          br 1 (;@2;)
        end
        i32.const -2147483648
        local.set 1
      end
      local.get 16
      local.get 1
      local.get 1
      i32.const 31
      i32.shr_s
      local.tee 9
      i32.add
      local.get 9
      i32.xor
      f32.convert_i32_s
      f32.gt
      i32.const 1
      i32.xor
      br_if 0 (;@1;)
      local.get 14
      local.get 10
      i32.sub
      f32.convert_i32_s
      local.get 17
      f32.const -0x1p-1 (;=-0.5;)
      f32.mul
      f32.add
      local.set 4
    end
    local.get 4)
  (func $foundPatternCross (type 8) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 f32 f32 f32)
    i32.const 0
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=8
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=12
      local.tee 5
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=16
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 5
      local.get 4
      local.get 3
      local.get 2
      i32.add
      i32.add
      i32.add
      i32.add
      local.tee 6
      i32.const 7
      i32.lt_s
      br_if 0 (;@1;)
      local.get 6
      f32.convert_i32_s
      f32.const 0x1.cp+2 (;=7;)
      f32.div
      local.tee 7
      local.get 2
      f32.convert_i32_s
      f32.sub
      local.tee 8
      f32.neg
      local.get 8
      local.get 8
      f32.const 0x0p+0 (;=0;)
      f32.lt
      select
      local.get 7
      f32.const 0x1p-1 (;=0.5;)
      f32.mul
      local.tee 8
      f32.lt
      i32.const 1
      i32.xor
      br_if 0 (;@1;)
      local.get 7
      local.get 3
      f32.convert_i32_s
      f32.sub
      local.tee 9
      f32.neg
      local.get 9
      local.get 9
      f32.const 0x0p+0 (;=0;)
      f32.lt
      select
      local.get 8
      f32.lt
      i32.const 1
      i32.xor
      br_if 0 (;@1;)
      local.get 7
      f32.const 0x1.8p+1 (;=3;)
      f32.mul
      local.get 4
      f32.convert_i32_s
      f32.sub
      local.tee 9
      f32.neg
      local.get 9
      local.get 9
      f32.const 0x0p+0 (;=0;)
      f32.lt
      select
      local.get 8
      f32.const 0x1.8p+1 (;=3;)
      f32.mul
      f32.lt
      i32.const 1
      i32.xor
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 7
          local.get 5
          f32.convert_i32_s
          f32.sub
          local.tee 9
          f32.abs
          f32.const 0x1p+31 (;=2.14748e+09;)
          f32.lt
          i32.eqz
          br_if 0 (;@3;)
          local.get 9
          i32.trunc_f32_s
          local.set 2
          br 1 (;@2;)
        end
        i32.const -2147483648
        local.set 2
      end
      local.get 8
      local.get 2
      local.get 2
      i32.const 31
      i32.shr_s
      local.tee 3
      i32.add
      local.get 3
      i32.xor
      f32.convert_i32_s
      f32.gt
      i32.const 1
      i32.xor
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 7
          local.get 0
          f32.convert_i32_s
          f32.sub
          local.tee 7
          f32.abs
          f32.const 0x1p+31 (;=2.14748e+09;)
          f32.lt
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          i32.trunc_f32_s
          local.set 0
          br 1 (;@2;)
        end
        i32.const -2147483648
        local.set 0
      end
      local.get 8
      local.get 0
      local.get 0
      i32.const 31
      i32.shr_s
      local.tee 1
      i32.add
      local.get 1
      i32.xor
      f32.convert_i32_s
      f32.gt
      local.set 1
    end
    local.get 1)
  (func $findRowSkip (type 5) (result i32)
    (local i32 i32 i32 i32 f32)
    i32.const 0
    local.set 0
    block  ;; label = @1
      i32.const 0
      i32.load offset=1048
      local.tee 1
      i32.const 2
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      local.set 2
      i32.const 1056
      local.set 0
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 12
              i32.add
              i32.load
              i32.const 2
              i32.ge_u
              br_if 0 (;@5;)
              local.get 2
              local.set 3
              br 1 (;@4;)
            end
            local.get 0
            local.set 3
            local.get 2
            br_if 2 (;@2;)
          end
          local.get 0
          i32.const 16
          i32.add
          local.set 0
          local.get 3
          local.set 2
          local.get 1
          i32.const -1
          i32.add
          local.tee 1
          br_if 0 (;@3;)
        end
        i32.const 0
        return
      end
      i32.const 0
      i32.const 1
      i32.store offset=1044
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          f32.load
          local.get 0
          f32.load
          f32.sub
          local.tee 4
          f32.neg
          local.get 4
          local.get 4
          f32.const 0x0p+0 (;=0;)
          f32.lt
          select
          local.get 2
          f32.load offset=4
          local.get 0
          i32.const 4
          i32.add
          f32.load
          f32.sub
          local.tee 4
          f32.neg
          local.get 4
          local.get 4
          f32.const 0x0p+0 (;=0;)
          f32.lt
          select
          f32.sub
          local.tee 4
          f32.abs
          f32.const 0x1p+31 (;=2.14748e+09;)
          f32.lt
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.trunc_f32_s
          local.set 0
          br 1 (;@2;)
        end
        i32.const -2147483648
        local.set 0
      end
      local.get 0
      i32.const 2
      i32.div_s
      local.set 0
    end
    local.get 0)
  (func $haveMultiplyConfirmedCenters (type 5) (result i32)
    (local i32 i32 f32 i32 i32 f32 f32 f32)
    i32.const 0
    local.set 0
    block  ;; label = @1
      i32.const 0
      i32.load offset=1048
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      f32.const 0x0p+0 (;=0;)
      local.set 2
      i32.const 0
      local.set 3
      i32.const 1064
      local.set 0
      local.get 1
      local.set 4
      loop  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 4
          i32.add
          i32.load
          i32.const 2
          i32.lt_u
          br_if 0 (;@3;)
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 2
          local.get 0
          f32.load
          f32.add
          local.set 2
        end
        local.get 0
        i32.const 16
        i32.add
        local.set 0
        local.get 4
        i32.const -1
        i32.add
        local.tee 4
        br_if 0 (;@2;)
      end
      i32.const 0
      local.set 0
      local.get 3
      i32.const 3
      i32.lt_s
      br_if 0 (;@1;)
      local.get 2
      local.get 1
      f32.convert_i32_u
      f32.div
      local.set 5
      i32.const 1064
      local.set 0
      f32.const 0x0p+0 (;=0;)
      local.set 6
      loop  ;; label = @2
        local.get 6
        local.get 0
        f32.load
        local.get 5
        f32.sub
        local.tee 7
        f32.neg
        local.get 7
        local.get 7
        f32.const 0x0p+0 (;=0;)
        f32.lt
        select
        f32.add
        local.set 6
        local.get 0
        i32.const 16
        i32.add
        local.set 0
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        br_if 0 (;@2;)
      end
      local.get 6
      local.get 2
      f32.const 0x1.99999ap-5 (;=0.05;)
      f32.mul
      f32.le
      local.set 0
    end
    local.get 0)
  (func $centerFromEnd (type 9) (param i32 i32) (result f32)
    local.get 1
    local.get 0
    i32.load offset=8
    i32.sub
    f32.convert_i32_s
    local.get 0
    i32.load offset=4
    f32.convert_i32_s
    f32.const -0x1p-1 (;=-0.5;)
    f32.mul
    f32.add)
  (func $addPossibleCenter (type 10) (param f32 f32 f32 i32) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=1048
    local.tee 4
    i32.const 1
    i32.add
    i32.store offset=1048
    local.get 4
    i32.const 4
    i32.shl
    local.tee 4
    i32.const 1068
    i32.add
    local.get 3
    i32.store
    local.get 4
    i32.const 1064
    i32.add
    local.get 2
    f32.store
    local.get 4
    i32.const 1060
    i32.add
    local.get 1
    f32.store
    local.get 4
    i32.const 1056
    i32.add
    local.tee 4
    local.get 0
    f32.store
    local.get 4)
  (func $abs (type 8) (param i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    i32.const 31
    i32.shr_s
    local.tee 1
    i32.add
    local.get 1
    i32.xor)
  (func $fabs (type 11) (param f32) (result f32)
    local.get 0
    f32.neg
    local.get 0
    local.get 0
    f32.const 0x0p+0 (;=0;)
    f32.lt
    select)
  (table (;0;) 1 1 funcref)
  (global (;0;) (mut i32) (i32.const 66672))
  (global (;1;) i32 (i32.const 1124))
  (global (;2;) i32 (i32.const 1024))
  (global (;3;) i32 (i32.const 66672))
  (global (;4;) i32 (i32.const 1024))
  (global (;5;) i32 (i32.const 1024))
  (global (;6;) i32 (i32.const 1028))
  (global (;7;) i32 (i32.const 1032))
  (global (;8;) i32 (i32.const 1120))
  (global (;9;) i32 (i32.const 1040))
  (global (;10;) i32 (i32.const 1036))
  (global (;11;) i32 (i32.const 1044))
  (global (;12;) i32 (i32.const 1048))
  (global (;13;) i32 (i32.const 1056))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "__data_end" (global 1))
  (export "__global_base" (global 2))
  (export "__heap_base" (global 3))
  (export "__dso_handle" (global 4))
  (export "createFinderPattern" (func $createFinderPattern))
  (export "combineEstimate" (func $combineEstimate))
  (export "aboutEquals" (func $aboutEquals))
  (export "fabs" (func $fabs))
  (export "setImageSize" (func $setImageSize))
  (export "getImageSize" (func $getImageSize))
  (export "decode" (func $decode))
  (export "imageToBitmap" (func $imageToBitmap))
  (export "imageWidth" (global 5))
  (export "imageHeight" (global 6))
  (export "imageSize" (global 7))
  (export "image" (global 8))
  (export "bitmapSize" (global 9))
  (export "bitmapIndex" (global 10))
  (export "findFinderPattern" (func $findFinderPattern))
  (export "foundPatternCross" (func $foundPatternCross))
  (export "handlePossibleCenter" (func $handlePossibleCenter))
  (export "findRowSkip" (func $findRowSkip))
  (export "haveMultiplyConfirmedCenters" (func $haveMultiplyConfirmedCenters))
  (export "abs" (func $abs))
  (export "centerFromEnd" (func $centerFromEnd))
  (export "crossCheckVertical" (func $crossCheckVertical))
  (export "crossCheckHorizontal" (func $crossCheckHorizontal))
  (export "addPossibleCenter" (func $addPossibleCenter))
  (export "hasSkipped" (global 11))
  (export "possibleCentersSize" (global 12))
  (export "possibleCenters" (global 13))
  (data (;0;) (i32.const 1024) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
  (data (;1;) (i32.const 1120) "p\04\01\00"))
