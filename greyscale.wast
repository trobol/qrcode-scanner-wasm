(module
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (result i32)))
  (import "env" "memory" (memory (;0;) 2))
  (func $__wasm_call_ctors (type 0))
  (func $setImageSize (type 1) (param i32 i32) (result i32)
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
    i32.load offset=1044
    local.tee 1
    local.get 0
    i32.add
    i32.store offset=1036
    local.get 1)
  (func $getImageSize (type 2) (result i32)
    i32.const 0
    i32.load offset=1032)
  (func $imageToBitmap (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 0
    i32.load offset=1024
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=1028
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 2
          i32.const 1
          local.set 3
          i32.const 2
          local.set 4
          i32.const 33
          local.set 5
          i32.const 34
          local.set 6
          i32.const 100
          local.set 7
          local.get 0
          local.set 8
          i32.const 0
          local.set 9
          i32.const 0
          local.set 10
          br 1 (;@2;)
        end
        i32.const 0
        local.set 1
        i32.const 0
        local.set 11
        br 1 (;@1;)
      end
      i32.const 1
      local.set 11
    end
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 11
                br_table 0 (;@6;) 1 (;@5;) 1 (;@5;)
              end
              i32.const 2
              local.set 16
              local.get 1
              i32.const 2
              i32.shr_u
              local.tee 17
              i32.eqz
              local.get 0
              i32.const 2
              i32.shr_u
              local.tee 18
              i32.eqz
              i32.or
              local.set 19
              local.get 17
              i32.const 3
              i32.mul
              local.set 20
              i32.const 1
              local.set 21
              local.get 17
              i32.const 1
              i32.shl
              local.set 22
              i32.const 4
              local.set 23
              i32.const -1
              local.set 24
              i32.const 0
              local.set 25
              i32.const 0
              local.set 26
              i32.const 1
              local.set 10
              br 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 10
                      br_table 0 (;@9;) 1 (;@8;) 1 (;@8;)
                    end
                    i32.const 0
                    local.set 11
                    block  ;; label = @9
                      local.get 8
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 0
                      local.set 12
                      loop  ;; label = @10
                        local.get 2
                        i32.load offset=1044
                        local.tee 13
                        local.get 12
                        local.get 9
                        local.get 8
                        i32.mul
                        i32.add
                        local.get 4
                        i32.shl
                        local.tee 11
                        i32.add
                        local.tee 14
                        local.get 13
                        local.get 11
                        local.get 4
                        i32.or
                        local.tee 15
                        i32.add
                        i32.load8_u
                        local.get 14
                        i32.load8_u
                        i32.add
                        local.get 5
                        i32.mul
                        local.get 13
                        local.get 11
                        local.get 3
                        i32.or
                        local.tee 14
                        i32.add
                        i32.load8_u
                        local.get 6
                        i32.mul
                        i32.add
                        local.get 7
                        i32.div_u
                        i32.store8
                        local.get 2
                        i32.load offset=1044
                        local.tee 13
                        local.get 14
                        i32.add
                        local.get 13
                        local.get 11
                        i32.add
                        i32.load8_u
                        i32.store8
                        local.get 2
                        i32.load offset=1044
                        local.tee 13
                        local.get 15
                        i32.add
                        local.get 13
                        local.get 11
                        i32.add
                        i32.load8_u
                        i32.store8
                        local.get 12
                        local.get 3
                        i32.add
                        local.tee 12
                        local.get 2
                        i32.load offset=1024
                        local.tee 8
                        i32.lt_u
                        br_if 0 (;@10;)
                      end
                      local.get 2
                      i32.load offset=1028
                      local.set 1
                      local.get 8
                      local.set 0
                      local.get 8
                      local.set 11
                    end
                    local.get 11
                    local.set 8
                    local.get 9
                    local.get 3
                    i32.add
                    local.tee 9
                    local.get 1
                    i32.lt_u
                    br_if 1 (;@7;)
                    br 2 (;@6;)
                  end
                  local.get 17
                  i32.eqz
                  br_if 5 (;@2;)
                  local.get 18
                  i32.eqz
                  br_if 5 (;@2;)
                  i32.const 0
                  i32.load offset=1024
                  local.set 27
                  i32.const 0
                  i32.load offset=1044
                  local.get 25
                  i32.add
                  local.set 10
                  i32.const 255
                  local.set 13
                  i32.const 0
                  local.set 28
                  i32.const 0
                  local.set 14
                  i32.const 0
                  local.set 11
                  br 4 (;@3;)
                end
                i32.const 0
                local.set 10
                br 1 (;@5;)
              end
              i32.const 0
              local.set 11
              br 4 (;@1;)
            end
            i32.const 1
            local.set 11
            br 3 (;@1;)
          end
          i32.const 1
          local.set 11
          br 2 (;@1;)
        end
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 11
                                          br_table 0 (;@19;) 1 (;@18;) 2 (;@17;) 3 (;@16;) 4 (;@15;) 5 (;@14;) 6 (;@13;) 7 (;@12;) 7 (;@12;)
                                        end
                                        local.get 10
                                        local.set 12
                                        local.get 18
                                        local.set 15
                                        loop  ;; label = @19
                                          local.get 12
                                          i32.load8_u
                                          local.tee 11
                                          local.get 14
                                          local.get 14
                                          local.get 11
                                          i32.lt_u
                                          select
                                          local.set 14
                                          local.get 11
                                          local.get 13
                                          local.get 13
                                          local.get 11
                                          i32.gt_u
                                          select
                                          local.set 13
                                          local.get 12
                                          local.get 21
                                          i32.add
                                          local.set 12
                                          local.get 15
                                          local.get 24
                                          i32.add
                                          local.tee 15
                                          br_if 0 (;@19;)
                                        end
                                        local.get 10
                                        local.get 27
                                        i32.add
                                        local.set 10
                                        local.get 28
                                        local.get 21
                                        i32.add
                                        local.tee 28
                                        local.get 17
                                        i32.ne
                                        br_if 7 (;@11;)
                                        local.get 19
                                        br_if 16 (;@2;)
                                        local.get 14
                                        local.get 13
                                        i32.add
                                        local.get 21
                                        i32.shr_u
                                        local.set 29
                                        i32.const 0
                                        local.set 30
                                        i32.const 1
                                        local.set 11
                                        br 15 (;@3;)
                                      end
                                      i32.const 0
                                      local.set 11
                                      loop  ;; label = @18
                                        i32.const 0
                                        i32.load offset=1044
                                        local.get 25
                                        local.get 11
                                        i32.add
                                        local.get 30
                                        i32.const 0
                                        i32.load offset=1024
                                        i32.mul
                                        i32.add
                                        local.get 16
                                        i32.shl
                                        local.tee 12
                                        i32.add
                                        local.tee 15
                                        local.get 24
                                        i32.const 0
                                        local.get 29
                                        local.get 15
                                        i32.load8_u
                                        i32.lt_u
                                        select
                                        local.tee 15
                                        i32.store8
                                        i32.const 0
                                        i32.load offset=1044
                                        local.get 12
                                        local.get 21
                                        i32.or
                                        i32.add
                                        local.get 15
                                        i32.store8
                                        i32.const 0
                                        i32.load offset=1044
                                        local.get 12
                                        local.get 16
                                        i32.or
                                        i32.add
                                        local.get 15
                                        i32.store8
                                        local.get 18
                                        local.get 11
                                        local.get 21
                                        i32.add
                                        local.tee 11
                                        i32.ne
                                        br_if 0 (;@18;)
                                      end
                                      local.get 30
                                      local.get 21
                                      i32.add
                                      local.tee 30
                                      local.get 17
                                      i32.ne
                                      br_if 7 (;@10;)
                                      i32.const 0
                                      local.set 31
                                      i32.const 0
                                      i32.load offset=1044
                                      local.get 25
                                      local.get 17
                                      i32.const 0
                                      i32.load offset=1024
                                      local.tee 32
                                      i32.mul
                                      i32.add
                                      i32.add
                                      local.set 33
                                      i32.const 255
                                      local.set 34
                                      i32.const 0
                                      local.set 35
                                      i32.const 2
                                      local.set 11
                                      br 14 (;@3;)
                                    end
                                    local.get 33
                                    local.set 12
                                    local.get 18
                                    local.set 15
                                    loop  ;; label = @17
                                      local.get 12
                                      i32.load8_u
                                      local.tee 11
                                      local.get 35
                                      local.get 35
                                      local.get 11
                                      i32.lt_u
                                      select
                                      local.set 35
                                      local.get 11
                                      local.get 34
                                      local.get 34
                                      local.get 11
                                      i32.gt_u
                                      select
                                      local.set 34
                                      local.get 12
                                      local.get 21
                                      i32.add
                                      local.set 12
                                      local.get 15
                                      local.get 24
                                      i32.add
                                      local.tee 15
                                      br_if 0 (;@17;)
                                    end
                                    local.get 33
                                    local.get 32
                                    i32.add
                                    local.set 33
                                    local.get 31
                                    local.get 21
                                    i32.add
                                    local.tee 31
                                    local.get 17
                                    i32.ne
                                    br_if 7 (;@9;)
                                    local.get 35
                                    local.get 34
                                    i32.add
                                    local.get 21
                                    i32.shr_u
                                    local.set 36
                                    i32.const 0
                                    local.set 37
                                    local.get 17
                                    local.set 38
                                    i32.const 3
                                    local.set 11
                                    br 13 (;@3;)
                                  end
                                  i32.const 0
                                  local.set 11
                                  loop  ;; label = @16
                                    i32.const 0
                                    i32.load offset=1044
                                    local.get 25
                                    local.get 11
                                    i32.add
                                    local.get 38
                                    i32.const 0
                                    i32.load offset=1024
                                    i32.mul
                                    i32.add
                                    local.get 16
                                    i32.shl
                                    local.tee 12
                                    i32.add
                                    local.tee 15
                                    local.get 24
                                    i32.const 0
                                    local.get 36
                                    local.get 15
                                    i32.load8_u
                                    i32.lt_u
                                    select
                                    local.tee 15
                                    i32.store8
                                    i32.const 0
                                    i32.load offset=1044
                                    local.get 12
                                    local.get 21
                                    i32.or
                                    i32.add
                                    local.get 15
                                    i32.store8
                                    i32.const 0
                                    i32.load offset=1044
                                    local.get 12
                                    local.get 16
                                    i32.or
                                    i32.add
                                    local.get 15
                                    i32.store8
                                    local.get 18
                                    local.get 11
                                    local.get 21
                                    i32.add
                                    local.tee 11
                                    i32.ne
                                    br_if 0 (;@16;)
                                  end
                                  local.get 38
                                  local.get 21
                                  i32.add
                                  local.set 38
                                  local.get 37
                                  local.get 21
                                  i32.add
                                  local.tee 37
                                  local.get 17
                                  i32.ne
                                  br_if 7 (;@8;)
                                  i32.const 0
                                  local.set 39
                                  i32.const 0
                                  i32.load offset=1044
                                  local.get 25
                                  local.get 22
                                  i32.const 0
                                  i32.load offset=1024
                                  local.tee 40
                                  i32.mul
                                  i32.add
                                  i32.add
                                  local.set 41
                                  i32.const 255
                                  local.set 42
                                  i32.const 0
                                  local.set 43
                                  i32.const 4
                                  local.set 11
                                  br 12 (;@3;)
                                end
                                local.get 41
                                local.set 12
                                local.get 18
                                local.set 15
                                loop  ;; label = @15
                                  local.get 12
                                  i32.load8_u
                                  local.tee 11
                                  local.get 43
                                  local.get 43
                                  local.get 11
                                  i32.lt_u
                                  select
                                  local.set 43
                                  local.get 11
                                  local.get 42
                                  local.get 42
                                  local.get 11
                                  i32.gt_u
                                  select
                                  local.set 42
                                  local.get 12
                                  local.get 21
                                  i32.add
                                  local.set 12
                                  local.get 15
                                  local.get 24
                                  i32.add
                                  local.tee 15
                                  br_if 0 (;@15;)
                                end
                                local.get 41
                                local.get 40
                                i32.add
                                local.set 41
                                local.get 39
                                local.get 21
                                i32.add
                                local.tee 39
                                local.get 17
                                i32.ne
                                br_if 7 (;@7;)
                                local.get 43
                                local.get 42
                                i32.add
                                local.get 21
                                i32.shr_u
                                local.set 44
                                i32.const 0
                                local.set 45
                                local.get 22
                                local.set 46
                                i32.const 5
                                local.set 11
                                br 11 (;@3;)
                              end
                              i32.const 0
                              local.set 11
                              loop  ;; label = @14
                                i32.const 0
                                i32.load offset=1044
                                local.get 25
                                local.get 11
                                i32.add
                                local.get 46
                                i32.const 0
                                i32.load offset=1024
                                i32.mul
                                i32.add
                                local.get 16
                                i32.shl
                                local.tee 12
                                i32.add
                                local.tee 15
                                local.get 24
                                i32.const 0
                                local.get 44
                                local.get 15
                                i32.load8_u
                                i32.lt_u
                                select
                                local.tee 15
                                i32.store8
                                i32.const 0
                                i32.load offset=1044
                                local.get 12
                                local.get 21
                                i32.or
                                i32.add
                                local.get 15
                                i32.store8
                                i32.const 0
                                i32.load offset=1044
                                local.get 12
                                local.get 16
                                i32.or
                                i32.add
                                local.get 15
                                i32.store8
                                local.get 18
                                local.get 11
                                local.get 21
                                i32.add
                                local.tee 11
                                i32.ne
                                br_if 0 (;@14;)
                              end
                              local.get 46
                              local.get 21
                              i32.add
                              local.set 46
                              local.get 45
                              local.get 21
                              i32.add
                              local.tee 45
                              local.get 17
                              i32.ne
                              br_if 7 (;@6;)
                              i32.const 0
                              local.set 47
                              i32.const 0
                              i32.load offset=1044
                              local.get 25
                              local.get 20
                              i32.const 0
                              i32.load offset=1024
                              local.tee 48
                              i32.mul
                              i32.add
                              i32.add
                              local.set 49
                              i32.const 255
                              local.set 50
                              i32.const 0
                              local.set 51
                              i32.const 6
                              local.set 11
                              br 10 (;@3;)
                            end
                            local.get 49
                            local.set 12
                            local.get 18
                            local.set 15
                            loop  ;; label = @13
                              local.get 12
                              i32.load8_u
                              local.tee 11
                              local.get 51
                              local.get 51
                              local.get 11
                              i32.lt_u
                              select
                              local.set 51
                              local.get 11
                              local.get 50
                              local.get 50
                              local.get 11
                              i32.gt_u
                              select
                              local.set 50
                              local.get 12
                              local.get 21
                              i32.add
                              local.set 12
                              local.get 15
                              local.get 24
                              i32.add
                              local.tee 15
                              br_if 0 (;@13;)
                            end
                            local.get 49
                            local.get 48
                            i32.add
                            local.set 49
                            local.get 47
                            local.get 21
                            i32.add
                            local.tee 47
                            local.get 17
                            i32.ne
                            br_if 7 (;@5;)
                            local.get 51
                            local.get 50
                            i32.add
                            local.get 21
                            i32.shr_u
                            local.set 52
                            i32.const 0
                            local.set 53
                            local.get 20
                            local.set 54
                            i32.const 7
                            local.set 11
                            br 9 (;@3;)
                          end
                          i32.const 0
                          local.set 11
                          loop  ;; label = @12
                            i32.const 0
                            i32.load offset=1044
                            local.get 25
                            local.get 11
                            i32.add
                            local.get 54
                            i32.const 0
                            i32.load offset=1024
                            i32.mul
                            i32.add
                            local.get 16
                            i32.shl
                            local.tee 12
                            i32.add
                            local.tee 15
                            local.get 24
                            i32.const 0
                            local.get 52
                            local.get 15
                            i32.load8_u
                            i32.lt_u
                            select
                            local.tee 15
                            i32.store8
                            i32.const 0
                            i32.load offset=1044
                            local.get 12
                            local.get 21
                            i32.or
                            i32.add
                            local.get 15
                            i32.store8
                            i32.const 0
                            i32.load offset=1044
                            local.get 12
                            local.get 16
                            i32.or
                            i32.add
                            local.get 15
                            i32.store8
                            local.get 18
                            local.get 11
                            local.get 21
                            i32.add
                            local.tee 11
                            i32.ne
                            br_if 0 (;@12;)
                          end
                          local.get 54
                          local.get 21
                          i32.add
                          local.set 54
                          local.get 53
                          local.get 21
                          i32.add
                          local.tee 53
                          local.get 17
                          i32.ne
                          br_if 7 (;@4;)
                          br 9 (;@2;)
                        end
                        i32.const 0
                        local.set 11
                        br 7 (;@3;)
                      end
                      i32.const 1
                      local.set 11
                      br 6 (;@3;)
                    end
                    i32.const 2
                    local.set 11
                    br 5 (;@3;)
                  end
                  i32.const 3
                  local.set 11
                  br 4 (;@3;)
                end
                i32.const 4
                local.set 11
                br 3 (;@3;)
              end
              i32.const 5
              local.set 11
              br 2 (;@3;)
            end
            i32.const 6
            local.set 11
            br 1 (;@3;)
          end
          i32.const 7
          local.set 11
          br 0 (;@3;)
        end
      end
      local.get 25
      local.get 18
      i32.add
      local.set 25
      block  ;; label = @2
        local.get 26
        local.get 21
        i32.add
        local.tee 26
        local.get 23
        i32.ne
        br_if 0 (;@2;)
        return
      end
      i32.const 1
      local.set 10
      i32.const 1
      local.set 11
      br 0 (;@1;)
    end)
  (table (;0;) 1 1 funcref)
  (global (;0;) (mut i32) (i32.const 66592))
  (global (;1;) i32 (i32.const 66592))
  (global (;2;) i32 (i32.const 1048))
  (global (;3;) i32 (i32.const 1024))
  (global (;4;) i32 (i32.const 1024))
  (global (;5;) i32 (i32.const 1028))
  (global (;6;) i32 (i32.const 1032))
  (global (;7;) i32 (i32.const 1044))
  (global (;8;) i32 (i32.const 1040))
  (global (;9;) i32 (i32.const 1036))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "__dso_handle" (global 3))
  (export "setImageSize" (func $setImageSize))
  (export "getImageSize" (func $getImageSize))
  (export "imageToBitmap" (func $imageToBitmap))
  (export "imageWidth" (global 4))
  (export "imageHeight" (global 5))
  (export "imageSize" (global 6))
  (export "imageIndex" (global 7))
  (export "bitmapSize" (global 8))
  (export "bitmapIndex" (global 9))
  (data (;0;) (i32.const 1024) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
  (data (;1;) (i32.const 1044) " \04\01\00"))
