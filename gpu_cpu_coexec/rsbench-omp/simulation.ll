
; __CLANG_OFFLOAD_BUNDLE____START__ openmp-amdgcn-amd-amdhsa-gfx906
; ModuleID = 'simulation.c'
source_filename = "simulation.c"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.DeviceEnvironmentTy = type { i32, i32, i32, i32 }
%"struct.(anonymous namespace)::SharedMemorySmartStackTy" = type { [2048 x i8], [1024 x i8] }
%"struct.(anonymous namespace)::TeamStateTy" = type { %"struct.(anonymous namespace)::ICVStateTy", i32, i8* }
%"struct.(anonymous namespace)::ICVStateTy" = type { i32, i32, i32, i32, i32, i32 }
%"struct.(anonymous namespace)::ThreadStateTy" = type { %"struct.(anonymous namespace)::ICVStateTy", %"struct.(anonymous namespace)::ThreadStateTy"* }
%struct.Input = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SimulationData = type { i32*, i64, i32*, i64, %struct.Pole*, i64, %struct.Window*, i64, double*, i64, i32*, i64, i32*, i64, double*, i64, i32, i32, i32, double*, i64, i32*, i64 }
%struct.Pole = type { %struct.RSComplex, %struct.RSComplex, %struct.RSComplex, %struct.RSComplex, i16 }
%struct.RSComplex = type { double, double }
%struct.Window = type { double, double, double, i32, i32 }

@__omp_offloading_58_22e45de_run_event_based_simulation_l32_exec_mode = weak addrspace(1) constant i8 2
@constinit = private unnamed_addr constant [10 x double] [double 0x3FD1A75DA77B03AC, double 2.245740e-01, double 0x3FC467B51AFF5FC7, double 0x3FB94228EF6278F1, double 0x3FAB42D0E001DDD1, double 0x3F99A74553C72771, double 0x3F850C5AAC48F3BA, double 0x3F6E1D7984F391AA, double 0x3F52C8BE8F0B3A0A, double 3.117570e-04], align 16
@constinit.2 = private unnamed_addr constant [10 x double] [double -1.000000e+00, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00], align 16
@constinit.3 = private unnamed_addr constant [10 x double] [double 0x4023BD3CBC48F10B, double 0x4043BD3CDDD6E04C, double 0x405634E4649906CD, double 0x4063BD3D07C84B5E, double 0x406ED7AEE631F8A1, double 0x407634E48E8A71DE, double 0x407E39C504816F00, double 0x4083BD3CD35A8588, double 0x4088FB810624DD2F, double 0x408ED7AEE631F8A1], align 16
@omptarget_device_environment = weak protected addrspace(4) global %struct.DeviceEnvironmentTy undef, align 4
@.str.12 = private unnamed_addr addrspace(4) constant [47 x i8] c"ValueRAII initialization with wrong old value!\00", align 1
@_ZN12_GLOBAL__N_122SharedMemorySmartStackE = internal addrspace(3) global %"struct.(anonymous namespace)::SharedMemorySmartStackTy" undef, align 16
@_ZN12_GLOBAL__N_19TeamStateE = internal unnamed_addr addrspace(3) global %"struct.(anonymous namespace)::TeamStateTy" undef, align 8
@_ZN12_GLOBAL__N_112ThreadStatesE = internal unnamed_addr addrspace(3) global [1024 x %"struct.(anonymous namespace)::ThreadStateTy"*] undef, align 16
@__omp_rtl_debug_kind = weak_odr hidden local_unnamed_addr addrspace(1) constant i32 0
@__omp_rtl_assume_teams_oversubscription = weak_odr hidden local_unnamed_addr addrspace(1) constant i32 0
@__omp_rtl_assume_threads_oversubscription = weak_odr hidden local_unnamed_addr addrspace(1) constant i32 0
@llvm.used = appending addrspace(1) global [2 x i8*] [i8* bitcast (void ()* @_ZN4_OMP9keepAliveEv to i8*), i8* addrspacecast (i8 addrspace(4)* bitcast (%struct.DeviceEnvironmentTy addrspace(4)* @omptarget_device_environment to i8 addrspace(4)*) to i8*)], section "llvm.metadata"
@llvm.compiler.used = appending addrspace(1) global [1 x i8*] [i8* addrspacecast (i8 addrspace(1)* @__omp_offloading_58_22e45de_run_event_based_simulation_l32_exec_mode to i8*)], section "llvm.metadata"

; Function Attrs: alwaysinline convergent norecurse nounwind
define weak amdgpu_kernel void @__omp_offloading_58_22e45de_run_event_based_simulation_l32(%struct.Input* noundef nonnull align 4 dereferenceable(44) %input, %struct.SimulationData* noundef nonnull align 8 dereferenceable(176) %data, i64* noundef %verification, i32* noundef nonnull align 4 dereferenceable(4) %offloaded_to_device) local_unnamed_addr #0 {
entry:
  %0 = alloca [4 x %struct.RSComplex], align 16
  %1 = alloca [4 x %struct.RSComplex], align 16
  %2 = alloca [4 x %struct.RSComplex], align 16
  %3 = alloca [4 x %struct.RSComplex], align 16
  %ParallelTeamSizeRAII.sroa.2.i.i = alloca i32, align 8, addrspace(5)
  %ActiveLevelRAII.i.i.sroa.3 = alloca i32, align 8, addrspace(5)
  %LevelRAII.i.i.sroa.4 = alloca i32, align 8, addrspace(5)
  %offloaded_to_device.global = addrspacecast i32* %offloaded_to_device to i32 addrspace(1)*
  %data.global = addrspacecast %struct.SimulationData* %data to %struct.SimulationData addrspace(1)*
  %input.global = addrspacecast %struct.Input* %input to %struct.Input addrspace(1)*
  %4 = tail call i32 @llvm.amdgcn.workitem.id.x() #20, !range !8
  %5 = tail call i32 @llvm.amdgcn.workgroup.id.x() #20
  %6 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #20
  %7 = getelementptr i8, i8 addrspace(4)* %6, i64 12
  %8 = bitcast i8 addrspace(4)* %7 to i32 addrspace(4)*
  %9 = load i32, i32 addrspace(4)* %8, align 4, !invariant.load !9
  %10 = getelementptr i8, i8 addrspace(4)* %6, i64 4
  %11 = bitcast i8 addrspace(4)* %10 to i16 addrspace(4)*
  %12 = load i16, i16 addrspace(4)* %11, align 4, !range !10, !invariant.load !9
  %conv.i.i8.i.i.i.i = zext i16 %12 to i32
  %mul.i.i9.i.i.i.i1 = mul i32 %5, %conv.i.i8.i.i.i.i
  %sub.i.i10.i.i.i.i = sub i32 %9, %mul.i.i9.i.i.i.i1
  %cmp.i.i.i2 = icmp eq i32 %4, 0
  br i1 %cmp.i.i.i2, label %if.then.i.i3, label %_ZN4_OMP5state4initEb.exit.critedge.i

if.then.i.i3:                                     ; preds = %entry
  %cmp.i.i11.i.i.i.i = icmp ult i32 %sub.i.i10.i.i.i.i, %conv.i.i8.i.i.i.i
  %cond.i.i12.i.i.i.i = select i1 %cmp.i.i11.i.i.i.i, i32 %sub.i.i10.i.i.i.i, i32 %conv.i.i8.i.i.i.i
  store i8 0, i8 addrspace(3)* getelementptr inbounds (%"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 0), align 16, !tbaa !11
  store i32 %cond.i.i12.i.i.i.i, i32 addrspace(3)* getelementptr inbounds (%"struct.(anonymous namespace)::TeamStateTy", %"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE, i32 0, i32 0, i32 0), align 8, !tbaa !14
  store i32 0, i32 addrspace(3)* getelementptr inbounds (%"struct.(anonymous namespace)::TeamStateTy", %"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE, i32 0, i32 0, i32 1), align 4, !tbaa !19
  store i32 0, i32 addrspace(3)* getelementptr inbounds (%"struct.(anonymous namespace)::TeamStateTy", %"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE, i32 0, i32 0, i32 2), align 8, !tbaa !20
  store i32 1, i32 addrspace(3)* getelementptr inbounds (%"struct.(anonymous namespace)::TeamStateTy", %"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE, i32 0, i32 0, i32 3), align 4, !tbaa !21
  store i32 1, i32 addrspace(3)* getelementptr inbounds (%"struct.(anonymous namespace)::TeamStateTy", %"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE, i32 0, i32 0, i32 4), align 8, !tbaa !22
  store i32 1, i32 addrspace(3)* getelementptr inbounds (%"struct.(anonymous namespace)::TeamStateTy", %"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE, i32 0, i32 0, i32 5), align 4, !tbaa !23
  store i32 1, i32 addrspace(3)* getelementptr inbounds (%"struct.(anonymous namespace)::TeamStateTy", %"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE, i32 0, i32 1), align 8, !tbaa !24
  br label %__kmpc_target_init.exit

_ZN4_OMP5state4initEb.exit.critedge.i:            ; preds = %entry
  %arrayidx.i.i.c.i = getelementptr %"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 %4
  store i8 0, i8 addrspace(3)* %arrayidx.i.i.c.i, align 1, !tbaa !11
  br label %__kmpc_target_init.exit

__kmpc_target_init.exit:                          ; preds = %if.then.i.i3, %_ZN4_OMP5state4initEb.exit.critedge.i
  %arrayidx6.i.i = getelementptr inbounds [1024 x %"struct.(anonymous namespace)::ThreadStateTy"*], [1024 x %"struct.(anonymous namespace)::ThreadStateTy"*] addrspace(3)* @_ZN12_GLOBAL__N_112ThreadStatesE, i32 0, i32 %4
  store %"struct.(anonymous namespace)::ThreadStateTy"* null, %"struct.(anonymous namespace)::ThreadStateTy"* addrspace(3)* %arrayidx6.i.i, align 8, !tbaa !25
  tail call fastcc void @_ZN4_OMP11synchronize14threadsAlignedEv() #21
  %lookups.i = getelementptr inbounds %struct.Input, %struct.Input addrspace(1)* %input.global, i64 0, i32 2
  %13 = load i32, i32 addrspace(1)* %lookups.i, align 4, !tbaa !26
  %sub2.i = add nsw i32 %13, -1
  %cmp.i = icmp sgt i32 %13, 0
  br i1 %cmp.i, label %omp.precond.then.i, label %__omp_outlined__.exit

omp.precond.then.i:                               ; preds = %__kmpc_target_init.exit
  %cmp.i.i.i.i = icmp ult i32 %sub.i.i10.i.i.i.i, %conv.i.i8.i.i.i.i
  %cond.i.i.i.i = select i1 %cmp.i.i.i.i, i32 %sub.i.i10.i.i.i.i, i32 %conv.i.i8.i.i.i.i
  %cmp17.i.i.not.i = icmp eq i32 %cond.i.i.i.i, 0
  %div.i.i9.i.i.i.i = udiv i32 %9, %conv.i.i8.i.i.i.i
  %mul.i.i10.i.i.i.i = mul i32 %div.i.i9.i.i.i.i, %conv.i.i8.i.i.i.i
  %cmp.i.i11.i.i19.i.i = icmp ult i32 %mul.i.i10.i.i.i.i, %9
  %conv2.i.i12.i.i.i.i = zext i1 %cmp.i.i11.i.i19.i.i to i32
  %add.i.i13.i.i.i.i = add i32 %div.i.i9.i.i.i.i, %conv2.i.i12.i.i.i.i
  br i1 %cmp17.i.i.not.i, label %sw.bb22.i.i.i, label %if.then18.i.i.i

if.then18.i.i.i:                                  ; preds = %omp.precond.then.i
  %mul.i67.i.i.i = mul nsw i32 %add.i.i13.i.i.i.i, %cond.i.i.i.i
  %mul1.i68.i.i.i = mul nsw i32 %cond.i.i.i.i, %5
  br label %__kmpc_distribute_static_init_4.exit.i

sw.bb22.i.i.i:                                    ; preds = %omp.precond.then.i
  %cmp4.i.i29.i.i = icmp ult i32 %5, %add.i.i13.i.i.i.i
  tail call void @llvm.assume(i1 noundef %cmp4.i.i29.i.i) #20
  %div.i79.i.i.i = sdiv i32 %13, %add.i.i13.i.i.i.i
  %mul.i80.i.i.i = mul nsw i32 %div.i79.i.i.i, %add.i.i13.i.i.i.i
  %sub1.i81.i.i.i = sub nsw i32 %13, %mul.i80.i.i.i
  %cmp.i82.i.i.i = icmp sgt i32 %sub1.i81.i.i.i, %5
  br i1 %cmp.i82.i.i.i, label %if.then.i86.i.i.i, label %if.else.i90.i.i.i

if.then.i86.i.i.i:                                ; preds = %sw.bb22.i.i.i
  %inc.i83.i.i.i = add nsw i32 %div.i79.i.i.i, 1
  %mul2.i84.i.i.i = mul nsw i32 %inc.i83.i.i.i, %5
  br label %__kmpc_distribute_static_init_4.exit.i

if.else.i90.i.i.i:                                ; preds = %sw.bb22.i.i.i
  %mul4.i87.i.i.i = mul nsw i32 %div.i79.i.i.i, %5
  %add6.i89.i.i.i = add i32 %sub1.i81.i.i.i, %mul4.i87.i.i.i
  br label %__kmpc_distribute_static_init_4.exit.i

__kmpc_distribute_static_init_4.exit.i:           ; preds = %if.else.i90.i.i.i, %if.then.i86.i.i.i, %if.then18.i.i.i
  %cond.i.i.i.sink.i = phi i32 [ %cond.i.i.i.i, %if.then18.i.i.i ], [ %inc.i83.i.i.i, %if.then.i86.i.i.i ], [ %div.i79.i.i.i, %if.else.i90.i.i.i ]
  %mul1.i68.i.i.sink.i = phi i32 [ %mul1.i68.i.i.i, %if.then18.i.i.i ], [ %mul2.i84.i.i.i, %if.then.i86.i.i.i ], [ %add6.i89.i.i.i, %if.else.i90.i.i.i ]
  %stride.0.i.i.i = phi i32 [ %mul.i67.i.i.i, %if.then18.i.i.i ], [ %13, %if.then.i86.i.i.i ], [ %13, %if.else.i90.i.i.i ]
  %add2.i70.i.i.i = add nsw i32 %cond.i.i.i.sink.i, -1
  %sub.i71.i.i.i = add i32 %add2.i70.i.i.i, %mul1.i68.i.i.sink.i
  %div.i.i.i.rhs.trunc.i.i.i = trunc i32 %cond.i.i.i.i to i16
  %arrayidx.i.i.i.i.i = getelementptr %"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 %4
  %14 = bitcast %"struct.(anonymous namespace)::ThreadStateTy"* addrspace(3)* %arrayidx6.i.i to i8* addrspace(3)*
  %num_nucs.i.i.i = getelementptr inbounds %struct.SimulationData, %struct.SimulationData addrspace(1)* %data.global, i64 0, i32 10
  %mats.i.i.i = getelementptr inbounds %struct.SimulationData, %struct.SimulationData addrspace(1)* %data.global, i64 0, i32 12
  %max_num_nucs.i.i.i = getelementptr inbounds %struct.SimulationData, %struct.SimulationData addrspace(1)* %data.global, i64 0, i32 16
  %concs.i.i.i = getelementptr inbounds %struct.SimulationData, %struct.SimulationData addrspace(1)* %data.global, i64 0, i32 14
  %n_windows.i.i.i = getelementptr inbounds %struct.SimulationData, %struct.SimulationData addrspace(1)* %data.global, i64 0, i32 2
  %pseudo_K0RS.i.i.i = getelementptr inbounds %struct.SimulationData, %struct.SimulationData addrspace(1)* %data.global, i64 0, i32 8
  %windows.i.i.i = getelementptr inbounds %struct.SimulationData, %struct.SimulationData addrspace(1)* %data.global, i64 0, i32 6
  %poles.i.i.i = getelementptr inbounds %struct.SimulationData, %struct.SimulationData addrspace(1)* %data.global, i64 0, i32 4
  %max_num_windows.i.i.i = getelementptr inbounds %struct.SimulationData, %struct.SimulationData addrspace(1)* %data.global, i64 0, i32 18
  %max_num_poles.i.i.i = getelementptr inbounds %struct.SimulationData, %struct.SimulationData addrspace(1)* %data.global, i64 0, i32 17
  %15 = getelementptr inbounds %struct.Input, %struct.Input addrspace(1)* %input.global, i64 0, i32 6
  %16 = getelementptr inbounds %struct.Input, %struct.Input addrspace(1)* %input.global, i64 0, i32 7
  %17 = bitcast [4 x %struct.RSComplex]* %2 to i8*
  %r.i.i16.i.i.i.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %2, i64 0, i64 0, i32 0
  %i33.i.i19.i.i.i.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %2, i64 0, i64 0, i32 1
  %r.1.i.i28.i.i.i.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %2, i64 0, i64 1, i32 0
  %i33.1.i.i31.i.i.i.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %2, i64 0, i64 1, i32 1
  %r.2.i.i43.i.i.i.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %2, i64 0, i64 2, i32 0
  %i33.2.i.i46.i.i.i.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %2, i64 0, i64 2, i32 1
  %r.3.i.i59.i.i.i.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %2, i64 0, i64 3, i32 0
  %i33.3.i.i62.i.i.i.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %2, i64 0, i64 3, i32 1
  %18 = bitcast [4 x %struct.RSComplex]* %3 to i8*
  %r.i.i.i.i.i.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %3, i64 0, i64 0, i32 0
  %i33.i.i.i.i.i.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %3, i64 0, i64 0, i32 1
  %r.1.i.i.i.i.i.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %3, i64 0, i64 1, i32 0
  %i33.1.i.i.i.i.i.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %3, i64 0, i64 1, i32 1
  %r.2.i.i.i.i.i.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %3, i64 0, i64 2, i32 0
  %i33.2.i.i.i.i.i.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %3, i64 0, i64 2, i32 1
  %r.3.i.i.i.i.i.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %3, i64 0, i64 3, i32 0
  %i33.3.i.i.i.i.i.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %3, i64 0, i64 3, i32 1
  %ParallelTeamSizeRAII.sroa.2.i.i.0.i.i.0.i.0.i.0..sroa_cast = addrspacecast i32 addrspace(5)* %ParallelTeamSizeRAII.sroa.2.i.i to i32*
  %cond-lvalue.i.i.i = select i1 %cmp.i.i.i2, i32* addrspacecast (i32 addrspace(3)* getelementptr inbounds (%"struct.(anonymous namespace)::TeamStateTy", %"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE, i32 0, i32 1) to i32*), i32* %ParallelTeamSizeRAII.sroa.2.i.i.0.i.i.0.i.0.i.0..sroa_cast
  %ActiveLevelRAII.i.i.sroa.3.0..sroa_cast = addrspacecast i32 addrspace(5)* %ActiveLevelRAII.i.i.sroa.3 to i32*
  %LevelRAII.i.i.sroa.4.0..sroa_cast = addrspacecast i32 addrspace(5)* %LevelRAII.i.i.sroa.4 to i32*
  %19 = bitcast [4 x %struct.RSComplex]* %0 to i8*
  %r.i.i16.i.i.i60.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %0, i64 0, i64 0, i32 0
  %i33.i.i19.i.i.i61.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %0, i64 0, i64 0, i32 1
  %r.1.i.i28.i.i.i62.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %0, i64 0, i64 1, i32 0
  %i33.1.i.i31.i.i.i63.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %0, i64 0, i64 1, i32 1
  %r.2.i.i43.i.i.i64.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %0, i64 0, i64 2, i32 0
  %i33.2.i.i46.i.i.i65.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %0, i64 0, i64 2, i32 1
  %r.3.i.i59.i.i.i66.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %0, i64 0, i64 3, i32 0
  %i33.3.i.i62.i.i.i67.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %0, i64 0, i64 3, i32 1
  %20 = bitcast [4 x %struct.RSComplex]* %1 to i8*
  %r.i.i.i.i.i68.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %1, i64 0, i64 0, i32 0
  %i33.i.i.i.i.i69.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %1, i64 0, i64 0, i32 1
  %r.1.i.i.i.i.i70.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %1, i64 0, i64 1, i32 0
  %i33.1.i.i.i.i.i71.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %1, i64 0, i64 1, i32 1
  %r.2.i.i.i.i.i72.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %1, i64 0, i64 2, i32 0
  %i33.2.i.i.i.i.i73.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %1, i64 0, i64 2, i32 1
  %r.3.i.i.i.i.i74.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %1, i64 0, i64 3, i32 0
  %i33.3.i.i.i.i.i75.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %1, i64 0, i64 3, i32 1
  %cmp5539.i = icmp slt i32 %mul1.i68.i.i.sink.i, %13
  br i1 %cmp5539.i, label %omp.inner.for.body.preheader.i, label %__omp_outlined__.exit

omp.inner.for.body.preheader.i:                   ; preds = %__kmpc_distribute_static_init_4.exit.i
  %cmp4.i = icmp sgt i32 %sub.i71.i.i.i, %sub2.i
  %cond.i = select i1 %cmp4.i, i32 %sub2.i, i32 %sub.i71.i.i.i
  %ParallelTeamSizeRAII.sroa.2.i.i.0.i.i.0.i.0.i.0..sroa_cast53 = bitcast i32 addrspace(5)* %ParallelTeamSizeRAII.sroa.2.i.i to i8 addrspace(5)*
  %ActiveLevelRAII.i.i.sroa.3.0..sroa_cast50 = bitcast i32 addrspace(5)* %ActiveLevelRAII.i.i.sroa.3 to i8 addrspace(5)*
  %ActiveLevelRAII.i.i.sroa.3.0..sroa_cast52 = bitcast i32 addrspace(5)* %ActiveLevelRAII.i.i.sroa.3 to i8 addrspace(5)*
  %LevelRAII.i.i.sroa.4.0..sroa_cast46 = bitcast i32 addrspace(5)* %LevelRAII.i.i.sroa.4 to i8 addrspace(5)*
  %LevelRAII.i.i.sroa.4.0..sroa_cast49 = bitcast i32 addrspace(5)* %LevelRAII.i.i.sroa.4 to i8 addrspace(5)*
  %LevelRAII.i.i.sroa.4.0..sroa_cast47 = bitcast i32 addrspace(5)* %LevelRAII.i.i.sroa.4 to i8 addrspace(5)*
  %LevelRAII.i.i.sroa.4.0..sroa_cast48 = bitcast i32 addrspace(5)* %LevelRAII.i.i.sroa.4 to i8 addrspace(5)*
  %ActiveLevelRAII.i.i.sroa.3.0..sroa_cast51 = bitcast i32 addrspace(5)* %ActiveLevelRAII.i.i.sroa.3 to i8 addrspace(5)*
  br label %omp.inner.for.body.i

omp.inner.for.body.i:                             ; preds = %__kmpc_parallel_51.exit.i, %omp.inner.for.body.preheader.i
  %21 = phi %"struct.(anonymous namespace)::ThreadStateTy"* [ %326, %__kmpc_parallel_51.exit.i ], [ null, %omp.inner.for.body.preheader.i ]
  %storemerge541.i = phi i32 [ %cond13.i, %__kmpc_parallel_51.exit.i ], [ %cond.i, %omp.inner.for.body.preheader.i ]
  %.omp.comb.lb.0540.i = phi i32 [ %add7.i, %__kmpc_parallel_51.exit.i ], [ %mul1.i68.i.i.sink.i, %omp.inner.for.body.preheader.i ]
  %22 = zext i32 %storemerge541.i to i64
  %tobool.not.i43.i.i.i = icmp eq %"struct.(anonymous namespace)::ThreadStateTy"* %21, null
  %23 = bitcast %"struct.(anonymous namespace)::ThreadStateTy"* %21 to i8*
  br i1 %tobool.not.i43.i.i.i, label %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit.i.i, label %if.then.i44.i.i.i, !prof !31

if.then.i44.i.i.i:                                ; preds = %omp.inner.for.body.i
  br label %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit.i.i

_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit.i.i: ; preds = %if.then.i44.i.i.i, %omp.inner.for.body.i
  %.pn.i45.i.i.i = phi i8* [ %23, %if.then.i44.i.i.i ], [ addrspacecast (i8 addrspace(3)* bitcast (%"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE to i8 addrspace(3)*) to i8*), %omp.inner.for.body.i ]
  %retval.0.in.i.i.i.i = getelementptr inbounds i8, i8* %.pn.i45.i.i.i, i64 4
  %retval.0.i46.i.i.i = bitcast i8* %retval.0.in.i.i.i.i to i32*
  %24 = load i32, i32* %retval.0.i46.i.i.i, align 4, !tbaa !32
  %tobool2.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool2.not.i.i, label %cond.false.i.i.i, label %if.then.i.i, !prof !31

if.then.i.i:                                      ; preds = %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit.i.i
  %div.i.i.i1.i.i.i = udiv i16 2048, %div.i.i.i.rhs.trunc.i.i.i
  %25 = and i16 %div.i.i.i1.i.i.i, 4080
  %sub.i.i.i.i.i.i.i = zext i16 %25 to i32
  %26 = load i8, i8 addrspace(3)* %arrayidx.i.i.i.i.i, align 1, !tbaa !11
  %mul.i1.i.i.i.i.i = mul nuw nsw i32 %4, %sub.i.i.i.i.i.i.i
  %conv.i.i.i.i.i.i = zext i8 %26 to i32
  %add.i2.i.i.i.i.i = add nuw nsw i32 %mul.i1.i.i.i.i.i, %conv.i.i.i.i.i.i
  %arrayidx3.i.i.i.i.i.i = getelementptr inbounds %"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 0, i32 %add.i2.i.i.i.i.i
  %27 = addrspacecast i8 addrspace(3)* %arrayidx3.i.i.i.i.i.i to i8*
  %conv14.i.i.i.i.i = add i8 %26, 32
  store i8 %conv14.i.i.i.i.i, i8 addrspace(3)* %arrayidx.i.i.i.i.i, align 1, !tbaa !11
  %28 = select i1 %tobool.not.i43.i.i.i, i8* addrspacecast (i8 addrspace(3)* bitcast (%"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE to i8 addrspace(3)*) to i8*), i8* %23
  tail call void @llvm.memcpy.p3i8.p0i8.i64(i8 addrspace(3)* noundef align 8 dereferenceable(24) dereferenceable_or_null(3072) %arrayidx3.i.i.i.i.i.i, i8* noundef nonnull align 8 dereferenceable(24) %28, i64 24, i1 false) #20, !tbaa.struct !33
  %PreviousThreadState.i.i.i.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i.i.i, i32 24
  %29 = bitcast i8 addrspace(3)* %PreviousThreadState.i.i.i.i to %"struct.(anonymous namespace)::ThreadStateTy"* addrspace(3)*
  store %"struct.(anonymous namespace)::ThreadStateTy"* %21, %"struct.(anonymous namespace)::ThreadStateTy"* addrspace(3)* %29, align 8, !tbaa !34
  store i8* %27, i8* addrspace(3)* %14, align 8, !tbaa !25
  %30 = load i32, i32 addrspace(3)* getelementptr inbounds (%"struct.(anonymous namespace)::TeamStateTy", %"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE, i32 0, i32 0, i32 1), align 4, !tbaa !19
  %cmp.i49.i.i.i = icmp eq i32 %30, 0
  %31 = bitcast i8 addrspace(3)* %arrayidx3.i.i.i.i.i.i to %"struct.(anonymous namespace)::ThreadStateTy" addrspace(3)*
  %32 = addrspacecast %"struct.(anonymous namespace)::ThreadStateTy" addrspace(3)* %31 to %"struct.(anonymous namespace)::ThreadStateTy"*
  br i1 %cmp.i49.i.i.i, label %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit2.i.i, label %if.end.i53.i.i.i, !prof !31

if.end.i53.i.i.i:                                 ; preds = %if.then.i.i
  %retval.0.in.i69.i.phi.trans.insert.i.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i.i.i, i32 4
  %retval.0.i70.i.phi.trans.insert.i.i = bitcast i8 addrspace(3)* %retval.0.in.i69.i.phi.trans.insert.i.i to i32 addrspace(3)*
  %.pre.i.i = load i32, i32 addrspace(3)* %retval.0.i70.i.phi.trans.insert.i.i, align 4, !tbaa !32
  %phi.bo.i.i = add i32 %.pre.i.i, 1
  br label %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit2.i.i

_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit2.i.i: ; preds = %if.then.i.i, %if.end.i53.i.i.i
  %33 = phi i32 [ %phi.bo.i.i, %if.end.i53.i.i.i ], [ 1, %if.then.i.i ]
  %.pn.i68.i.i.i = phi i8 addrspace(3)* [ %arrayidx3.i.i.i.i.i.i, %if.end.i53.i.i.i ], [ bitcast (%"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE to i8 addrspace(3)*), %if.then.i.i ]
  %retval.0.in.i69.i.i.i = getelementptr inbounds i8, i8 addrspace(3)* %.pn.i68.i.i.i, i32 4
  %retval.0.i70.i.i.i = bitcast i8 addrspace(3)* %retval.0.in.i69.i.i.i to i32 addrspace(3)*
  store i32 %33, i32 addrspace(3)* %retval.0.i70.i.i.i, align 4, !tbaa !32
  %34 = load i32, i32 addrspace(1)* %lookups.i, align 4, !tbaa !26
  %cmp.i.i.i = icmp sgt i32 %34, 0
  br i1 %cmp.i.i.i, label %omp.precond.then.i.i.i, label %_ZN12_GLOBAL__N_115invokeMicrotaskEiiPvPS0_l.exit.i

omp.precond.then.i.i.i:                           ; preds = %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit2.i.i
  br i1 icmp eq (%"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* addrspacecast (%"struct.(anonymous namespace)::SharedMemorySmartStackTy"* null to %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)*), %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE), label %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE1EEcvjEv.exit.i.i.i.i.i.i, label %if.then.i44.i.i.i.i.i.i.i.i.i, !prof !31

if.then.i44.i.i.i.i.i.i.i.i.i:                    ; preds = %omp.precond.then.i.i.i
  br label %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE1EEcvjEv.exit.i.i.i.i.i.i

_ZN4_OMP5state5ValueIjLNS0_9ValueKindE1EEcvjEv.exit.i.i.i.i.i.i: ; preds = %if.then.i44.i.i.i.i.i.i.i.i.i, %omp.precond.then.i.i.i
  %.pn.i45.i.pn.i.i.i.i.i.i.i.i = phi i8 addrspace(3)* [ %arrayidx3.i.i.i.i.i.i, %if.then.i44.i.i.i.i.i.i.i.i.i ], [ bitcast (%"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE to i8 addrspace(3)*), %omp.precond.then.i.i.i ]
  %retval.0.i.in.i.i.i.i.i.i.i.i = getelementptr inbounds i8, i8 addrspace(3)* %.pn.i45.i.pn.i.i.i.i.i.i.i.i, i32 4
  %retval.0.i.i.i.i.i.i.i.i.i = bitcast i8 addrspace(3)* %retval.0.i.in.i.i.i.i.i.i.i.i to i32 addrspace(3)*
  %35 = load i32, i32 addrspace(3)* %retval.0.i.i.i.i.i.i.i.i.i, align 4, !tbaa !32, !range !36
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %35, 0
  br i1 %cmp.i.i.i.i.i.i.i, label %omp_get_thread_num.exit.i.i.i.i, label %if.end.i.i.i.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE1EEcvjEv.exit.i.i.i.i.i.i
  br i1 icmp eq (%"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* addrspacecast (%"struct.(anonymous namespace)::SharedMemorySmartStackTy"* null to %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)*), %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE), label %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE1EEcvjEv.exit.i.i.i.i.i.i.i.i, label %if.then.i44.i.i.i.i.i.i.i.i.i.i.i, !prof !31

if.then.i44.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %if.end.i.i.i.i.i.i.i
  br label %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE1EEcvjEv.exit.i.i.i.i.i.i.i.i

_ZN4_OMP5state5ValueIjLNS0_9ValueKindE1EEcvjEv.exit.i.i.i.i.i.i.i.i: ; preds = %if.then.i44.i.i.i.i.i.i.i.i.i.i.i, %if.end.i.i.i.i.i.i.i
  %.pn.i45.i.pn.i.i.i.i.i.i.i.i.i.i = phi i8 addrspace(3)* [ %arrayidx3.i.i.i.i.i.i, %if.then.i44.i.i.i.i.i.i.i.i.i.i.i ], [ bitcast (%"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE to i8 addrspace(3)*), %if.end.i.i.i.i.i.i.i ]
  %retval.0.i.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, i8 addrspace(3)* %.pn.i45.i.pn.i.i.i.i.i.i.i.i.i.i, i32 4
  %retval.0.i.i.i.i.i.i.i.i.i.i.i = bitcast i8 addrspace(3)* %retval.0.i.in.i.i.i.i.i.i.i.i.i.i to i32 addrspace(3)*
  %36 = load i32, i32 addrspace(3)* %retval.0.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !32, !range !36
  %cmp2.i.i.i.i.i.i.i = icmp ult i32 %36, %35
  br i1 %cmp2.i.i.i.i.i.i.i, label %omp_get_thread_num.exit.i.i.i.i, label %if.end4.i.i.i.i.i.i.i, !prof !37

if.end4.i.i.i.i.i.i.i:                            ; preds = %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE1EEcvjEv.exit.i.i.i.i.i.i.i.i
  br i1 icmp eq (%"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* addrspacecast (%"struct.(anonymous namespace)::SharedMemorySmartStackTy"* null to %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)*), %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE), label %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE2EEcvjEv.exit.i.i.i.i.i.i.i, label %if.then.i75.i.i.i.i.i.i.i.i.i.i, !prof !31

if.then.i75.i.i.i.i.i.i.i.i.i.i:                  ; preds = %if.end4.i.i.i.i.i.i.i
  br label %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE2EEcvjEv.exit.i.i.i.i.i.i.i

_ZN4_OMP5state5ValueIjLNS0_9ValueKindE2EEcvjEv.exit.i.i.i.i.i.i.i: ; preds = %if.then.i75.i.i.i.i.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.i
  %.pn.i76.i.pn.i.i.i.i.i.i.i.i.i = phi i8 addrspace(3)* [ %arrayidx3.i.i.i.i.i.i, %if.then.i75.i.i.i.i.i.i.i.i.i.i ], [ bitcast (%"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE to i8 addrspace(3)*), %if.end4.i.i.i.i.i.i.i ]
  %retval.0.i.in.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, i8 addrspace(3)* %.pn.i76.i.pn.i.i.i.i.i.i.i.i.i, i32 8
  %retval.0.i.i.i.i.i.i.i.i.i.i = bitcast i8 addrspace(3)* %retval.0.i.in.i.i.i.i.i.i.i.i.i to i32 addrspace(3)*
  %37 = load i32, i32 addrspace(3)* %retval.0.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !32
  %cmp6.not.i.i.i.i.i.i.i = icmp eq i32 %37, %35
  %Val.DefaultVal.i.i.i.i.i.i.i = select i1 %cmp6.not.i.i.i.i.i.i.i, i32 %4, i32 0, !prof !31
  br label %omp_get_thread_num.exit.i.i.i.i

omp_get_thread_num.exit.i.i.i.i:                  ; preds = %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE2EEcvjEv.exit.i.i.i.i.i.i.i, %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE1EEcvjEv.exit.i.i.i.i.i.i.i.i, %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE1EEcvjEv.exit.i.i.i.i.i.i
  %retval.2.i.i.i.i.i.i.i = phi i32 [ 0, %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE1EEcvjEv.exit.i.i.i.i.i.i ], [ %Val.DefaultVal.i.i.i.i.i.i.i, %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE2EEcvjEv.exit.i.i.i.i.i.i.i ], [ -1, %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE1EEcvjEv.exit.i.i.i.i.i.i.i.i ]
  br i1 icmp eq (%"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* addrspacecast (%"struct.(anonymous namespace)::SharedMemorySmartStackTy"* null to %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)*), %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE), label %__kmpc_for_static_init_4.exit.i.i.i, label %if.then.i44.i.i.i.i.i10.i.i.i.i, !prof !31

if.then.i44.i.i.i.i.i10.i.i.i.i:                  ; preds = %omp_get_thread_num.exit.i.i.i.i
  br label %__kmpc_for_static_init_4.exit.i.i.i

__kmpc_for_static_init_4.exit.i.i.i:              ; preds = %if.then.i44.i.i.i.i.i10.i.i.i.i, %omp_get_thread_num.exit.i.i.i.i
  %.pn.i45.i.pn.i.i.i.i11.i.i.i.i = phi i8 addrspace(3)* [ %arrayidx3.i.i.i.i.i.i, %if.then.i44.i.i.i.i.i10.i.i.i.i ], [ bitcast (%"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE to i8 addrspace(3)*), %omp_get_thread_num.exit.i.i.i.i ]
  %retval.0.i.in.i.i.i.i12.i.i.i.i = getelementptr inbounds i8, i8 addrspace(3)* %.pn.i45.i.pn.i.i.i.i11.i.i.i.i, i32 4
  %retval.0.i.i.i.i.i13.i.i.i.i = bitcast i8 addrspace(3)* %retval.0.i.in.i.i.i.i12.i.i.i.i to i32 addrspace(3)*
  %38 = load i32, i32 addrspace(3)* %retval.0.i.i.i.i.i13.i.i.i.i, align 4, !tbaa !32, !range !36
  %cmp.i15.i.i.i.i = icmp ugt i32 %38, 1
  %39 = load i32, i32 addrspace(3)* getelementptr inbounds (%"struct.(anonymous namespace)::TeamStateTy", %"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE, i32 0, i32 1), align 8
  %spec.select.i16.i.i.i.i = select i1 %cmp.i15.i.i.i.i, i32 1, i32 %39
  %add.i.i.i.i.i.i = add nsw i32 %retval.2.i.i.i.i.i.i.i, %.omp.comb.lb.0540.i
  %conv577.i.i.i = sext i32 %add.i.i.i.i.i.i to i64
  %cmp6.not78.i.i.i = icmp ugt i64 %conv577.i.i.i, %22
  br i1 %cmp6.not78.i.i.i, label %_ZN12_GLOBAL__N_115invokeMicrotaskEiiPvPS0_l.exit.i, label %omp.inner.for.body.i.i.i

omp.inner.for.body.i.i.i:                         ; preds = %__kmpc_for_static_init_4.exit.i.i.i, %if.end26.i.i.i
  %conv580.i.i.i = phi i64 [ %conv5.i.i.i, %if.end26.i.i.i ], [ %conv577.i.i.i, %__kmpc_for_static_init_4.exit.i.i.i ]
  %indvars.i.i.i = trunc i64 %conv580.i.i.i to i32
  %mul8.i.i.i = shl nsw i32 %indvars.i.i.i, 1
  %conv9.i.i.i = sext i32 %mul8.i.i.i to i64
  %rem.i.i.i.i = and i64 %conv9.i.i.i, 9223372036854775806
  %cmp.not1.i.i.i.i = icmp eq i64 %rem.i.i.i.i, 0
  br i1 %cmp.not1.i.i.i.i, label %fast_forward_LCG.internalized.exit.i.i.i, label %while.body.i.i.i.i

while.body.i.i.i.i:                               ; preds = %omp.inner.for.body.i.i.i, %if.end.i.i.i3.i
  %c_new.06.i.i.i.i = phi i64 [ %c_new.1.i.i.i.i, %if.end.i.i.i3.i ], [ 0, %omp.inner.for.body.i.i.i ]
  %a_new.05.i.i.i.i = phi i64 [ %a_new.1.i.i.i.i, %if.end.i.i.i3.i ], [ 1, %omp.inner.for.body.i.i.i ]
  %c.04.i.i.i.i = phi i64 [ %mul3.i.i.i.i, %if.end.i.i.i3.i ], [ 1, %omp.inner.for.body.i.i.i ]
  %a.03.i.i.i.i = phi i64 [ %mul4.i.i.i.i, %if.end.i.i.i3.i ], [ 2806196910506780709, %omp.inner.for.body.i.i.i ]
  %n.addr.02.i.i.i.i = phi i64 [ %shr.i.i.i.i, %if.end.i.i.i3.i ], [ %rem.i.i.i.i, %omp.inner.for.body.i.i.i ]
  %and.i.i.i.i = and i64 %n.addr.02.i.i.i.i, 1
  %tobool.not.i.i.i.i = icmp eq i64 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i3.i, label %if.then.i.i.i2.i

if.then.i.i.i2.i:                                 ; preds = %while.body.i.i.i.i
  %mul.i.i.i1.i = mul i64 %a.03.i.i.i.i, %a_new.05.i.i.i.i
  %mul1.i.i.i.i = mul i64 %a.03.i.i.i.i, %c_new.06.i.i.i.i
  %add.i.i.i.i = add i64 %mul1.i.i.i.i, %c.04.i.i.i.i
  br label %if.end.i.i.i3.i

if.end.i.i.i3.i:                                  ; preds = %if.then.i.i.i2.i, %while.body.i.i.i.i
  %a_new.1.i.i.i.i = phi i64 [ %mul.i.i.i1.i, %if.then.i.i.i2.i ], [ %a_new.05.i.i.i.i, %while.body.i.i.i.i ]
  %c_new.1.i.i.i.i = phi i64 [ %add.i.i.i.i, %if.then.i.i.i2.i ], [ %c_new.06.i.i.i.i, %while.body.i.i.i.i ]
  %add2.i.i.i.i = add i64 %a.03.i.i.i.i, 1
  %mul3.i.i.i.i = mul i64 %add2.i.i.i.i, %c.04.i.i.i.i
  %mul4.i.i.i.i = mul i64 %a.03.i.i.i.i, %a.03.i.i.i.i
  %shr.i.i.i.i = lshr i64 %n.addr.02.i.i.i.i, 1
  %cmp.not.i.i.i.i = icmp ult i64 %n.addr.02.i.i.i.i, 2
  br i1 %cmp.not.i.i.i.i, label %fast_forward_LCG.internalized.exit.i.i.i, label %while.body.i.i.i.i

fast_forward_LCG.internalized.exit.i.i.i:         ; preds = %if.end.i.i.i3.i, %omp.inner.for.body.i.i.i
  %a_new.0.lcssa.i.i.i.i = phi i64 [ 1, %omp.inner.for.body.i.i.i ], [ %a_new.1.i.i.i.i, %if.end.i.i.i3.i ]
  %c_new.0.lcssa.i.i.i.i = phi i64 [ 0, %omp.inner.for.body.i.i.i ], [ %c_new.1.i.i.i.i, %if.end.i.i.i3.i ]
  %mul5.i.i.i.i = mul i64 %a_new.0.lcssa.i.i.i.i, 1070
  %add6.i.i.i.i = add i64 %mul5.i.i.i.i, %c_new.0.lcssa.i.i.i.i
  %rem7.i.i.i.i = and i64 %add6.i.i.i.i, 9223372036854775807
  %mul.i51.i.i.i = mul i64 %rem7.i.i.i.i, 2806196910506780709
  %add.i52.i.i.i = add i64 %mul.i51.i.i.i, 1
  %rem.i53.i.i.i = and i64 %add.i52.i.i.i, 9223372036854775807
  %conv.i.i.i4.i = uitofp i64 %rem.i53.i.i.i to double
  %div.i.i.i.i = fmul double %conv.i.i.i4.i, 0x3C00000000000000
  %mul.i.i.i.i.i = mul i64 %rem.i53.i.i.i, 2806196910506780709
  %add.i.i.i.i.i = add i64 %mul.i.i.i.i.i, 1
  %rem.i.i.i.i.i = and i64 %add.i.i.i.i.i, 9223372036854775807
  %conv.i.i.i.i.i = uitofp i64 %rem.i.i.i.i.i to double
  %div.i.i.i.i.i = fmul double %conv.i.i.i.i.i, 0x3C00000000000000
  %cmp17.1.i.i.i.i = fcmp olt double %div.i.i.i.i.i, 5.200000e-02
  br i1 %cmp17.1.i.i.i.i, label %pick_mat.internalized.exit.i.i.i, label %for.cond.cleanup14.2.i.i.i.i

for.cond.cleanup14.2.i.i.i.i:                     ; preds = %fast_forward_LCG.internalized.exit.i.i.i
  %cmp17.2.i.i.i.i = fcmp olt double %div.i.i.i.i.i, 3.270000e-01
  br i1 %cmp17.2.i.i.i.i, label %pick_mat.internalized.exit.i.i.i, label %for.cond.cleanup14.3.i.i.i.i

for.cond.cleanup14.3.i.i.i.i:                     ; preds = %for.cond.cleanup14.2.i.i.i.i
  %cmp17.3.i.i.i.i = fcmp olt double %div.i.i.i.i.i, 4.610000e-01
  br i1 %cmp17.3.i.i.i.i, label %pick_mat.internalized.exit.i.i.i, label %for.cond.cleanup14.4.i.i.i.i

for.cond.cleanup14.4.i.i.i.i:                     ; preds = %for.cond.cleanup14.3.i.i.i.i
  %cmp17.4.i.i.i.i = fcmp olt double %div.i.i.i.i.i, 0x3FE3AE147AE147AF
  br i1 %cmp17.4.i.i.i.i, label %pick_mat.internalized.exit.i.i.i, label %for.cond.cleanup14.5.i.i.i.i

for.cond.cleanup14.5.i.i.i.i:                     ; preds = %for.cond.cleanup14.4.i.i.i.i
  %cmp17.5.i.i.i.i = fcmp olt double %div.i.i.i.i.i, 6.790000e-01
  br i1 %cmp17.5.i.i.i.i, label %pick_mat.internalized.exit.i.i.i, label %for.cond.cleanup14.6.i.i.i.i

for.cond.cleanup14.6.i.i.i.i:                     ; preds = %for.cond.cleanup14.5.i.i.i.i
  %cmp17.6.i.i.i.i = fcmp olt double %div.i.i.i.i.i, 0x3FE7D70A3D70A3D8
  br i1 %cmp17.6.i.i.i.i, label %pick_mat.internalized.exit.i.i.i, label %for.cond.cleanup14.7.i.i.i.i

for.cond.cleanup14.7.i.i.i.i:                     ; preds = %for.cond.cleanup14.6.i.i.i.i
  %cmp17.7.i.i.i.i = fcmp olt double %div.i.i.i.i.i, 8.000000e-01
  br i1 %cmp17.7.i.i.i.i, label %pick_mat.internalized.exit.i.i.i, label %for.cond.cleanup14.8.i.i.i.i

for.cond.cleanup14.8.i.i.i.i:                     ; preds = %for.cond.cleanup14.7.i.i.i.i
  %cmp17.8.i.i.i.i = fcmp olt double %div.i.i.i.i.i, 8.080000e-01
  br i1 %cmp17.8.i.i.i.i, label %pick_mat.internalized.exit.i.i.i, label %for.cond.cleanup14.9.i.i.i.i

for.cond.cleanup14.9.i.i.i.i:                     ; preds = %for.cond.cleanup14.8.i.i.i.i
  %cmp17.9.i.i.i.i = fcmp olt double %div.i.i.i.i.i, 0x3FEA5604189374BD
  br i1 %cmp17.9.i.i.i.i, label %pick_mat.internalized.exit.i.i.i, label %for.cond.cleanup14.10.i.i.i.i

for.cond.cleanup14.10.i.i.i.i:                    ; preds = %for.cond.cleanup14.9.i.i.i.i
  %cmp17.10.i.i.i.i = fcmp olt double %div.i.i.i.i.i, 0x3FEB22D0E560418A
  br i1 %cmp17.10.i.i.i.i, label %pick_mat.internalized.exit.i.i.i, label %for.cond.cleanup14.11.i.i.i.i

for.cond.cleanup14.11.i.i.i.i:                    ; preds = %for.cond.cleanup14.10.i.i.i.i
  %cmp17.11.i.i.i.i = fcmp olt double %div.i.i.i.i.i, 0x3FEB8D4FDF3B645B
  br i1 %cmp17.11.i.i.i.i, label %pick_mat.internalized.exit.i.i.i, label %for.inc18.11.i.i.i.i

for.inc18.11.i.i.i.i:                             ; preds = %for.cond.cleanup14.11.i.i.i.i
  br label %pick_mat.internalized.exit.i.i.i

pick_mat.internalized.exit.i.i.i:                 ; preds = %for.inc18.11.i.i.i.i, %for.cond.cleanup14.11.i.i.i.i, %for.cond.cleanup14.10.i.i.i.i, %for.cond.cleanup14.9.i.i.i.i, %for.cond.cleanup14.8.i.i.i.i, %for.cond.cleanup14.7.i.i.i.i, %for.cond.cleanup14.6.i.i.i.i, %for.cond.cleanup14.5.i.i.i.i, %for.cond.cleanup14.4.i.i.i.i, %for.cond.cleanup14.3.i.i.i.i, %for.cond.cleanup14.2.i.i.i.i, %fast_forward_LCG.internalized.exit.i.i.i
  %spec.select.i.i.i.i = phi i32 [ 1, %fast_forward_LCG.internalized.exit.i.i.i ], [ 2, %for.cond.cleanup14.2.i.i.i.i ], [ 3, %for.cond.cleanup14.3.i.i.i.i ], [ 4, %for.cond.cleanup14.4.i.i.i.i ], [ 5, %for.cond.cleanup14.5.i.i.i.i ], [ 6, %for.cond.cleanup14.6.i.i.i.i ], [ 7, %for.cond.cleanup14.7.i.i.i.i ], [ 8, %for.cond.cleanup14.8.i.i.i.i ], [ 9, %for.cond.cleanup14.9.i.i.i.i ], [ 10, %for.cond.cleanup14.10.i.i.i.i ], [ 11, %for.cond.cleanup14.11.i.i.i.i ], [ 0, %for.inc18.11.i.i.i.i ]
  %40 = load i32*, i32* addrspace(1)* %num_nucs.i.i.i, align 8, !tbaa !38
  %41 = load i32*, i32* addrspace(1)* %mats.i.i.i, align 8, !tbaa !42
  %42 = load i32, i32 addrspace(1)* %max_num_nucs.i.i.i, align 8, !tbaa !43
  %43 = load double*, double* addrspace(1)* %concs.i.i.i, align 8, !tbaa !44
  %44 = load i32*, i32* addrspace(1)* %n_windows.i.i.i, align 8, !tbaa !45
  %45 = load double*, double* addrspace(1)* %pseudo_K0RS.i.i.i, align 8, !tbaa !46
  %46 = load %struct.Window*, %struct.Window* addrspace(1)* %windows.i.i.i, align 8, !tbaa !47
  %47 = load %struct.Pole*, %struct.Pole* addrspace(1)* %poles.i.i.i, align 8, !tbaa !48
  %48 = load i32, i32 addrspace(1)* %max_num_windows.i.i.i, align 8, !tbaa !49
  %49 = load i32, i32 addrspace(1)* %max_num_poles.i.i.i, align 4, !tbaa !50
  %50 = load i32, i32 addrspace(1)* %15, align 4
  %51 = load i32, i32 addrspace(1)* %16, align 4
  %idxprom4.i70.i.i.i = zext i32 %spec.select.i.i.i.i to i64
  %arrayidx5.i.i.i.i = getelementptr inbounds i32, i32* %40, i64 %idxprom4.i70.i.i.i
  %mul.i54.i.i.i = mul nsw i32 %42, %spec.select.i.i.i.i
  %cmp12.i.i.i.i = icmp eq i32 %51, 1
  %52 = tail call double @llvm.fmuladd.f64(double %div.i.i.i.i, double %div.i.i.i.i, double noundef 0.000000e+00) #22
  %53 = load i32, i32* %arrayidx5.i.i.i.i, align 4, !tbaa !51
  %cmp6102.i.i.i.i = icmp sgt i32 %53, 0
  br i1 %cmp6102.i.i.i.i, label %for.body9.i.i.i.i, label %calculate_macro_xs.internalized.exit.i.i.i

for.body9.i.i.i.i:                                ; preds = %pick_mat.internalized.exit.i.i.i, %if.end.i62.i.i.i
  %54 = phi double [ %170, %if.end.i62.i.i.i ], [ 0.000000e+00, %pick_mat.internalized.exit.i.i.i ]
  %55 = phi double [ %169, %if.end.i62.i.i.i ], [ 0.000000e+00, %pick_mat.internalized.exit.i.i.i ]
  %56 = phi double [ %168, %if.end.i62.i.i.i ], [ 0.000000e+00, %pick_mat.internalized.exit.i.i.i ]
  %57 = phi double [ %167, %if.end.i62.i.i.i ], [ 0.000000e+00, %pick_mat.internalized.exit.i.i.i ]
  %i2.0103.i.i.i.i = phi i32 [ %inc31.i.i.i.i, %if.end.i62.i.i.i ], [ 0, %pick_mat.internalized.exit.i.i.i ]
  %add.i55.i.i.i = add nsw i32 %i2.0103.i.i.i.i, %mul.i54.i.i.i
  %idxprom10.i.i.i.i = sext i32 %add.i55.i.i.i to i64
  %arrayidx11.i.i.i.i = getelementptr inbounds i32, i32* %41, i64 %idxprom10.i.i.i.i
  %58 = load i32, i32* %arrayidx11.i.i.i.i, align 4, !tbaa !51
  br i1 %cmp12.i.i.i.i, label %if.then.i60.i.i.i, label %if.else.i.i.i.i

if.then.i60.i.i.i:                                ; preds = %for.body9.i.i.i.i
  call void @llvm.lifetime.start.p0i8(i64 noundef 64, i8* noundef %18) #20
  %idxprom.i.i.i.i.i = sext i32 %58 to i64
  %arrayidx.i.i.i.i5.i = getelementptr inbounds i32, i32* %44, i64 %idxprom.i.i.i.i.i
  %59 = load i32, i32* %arrayidx.i.i.i.i5.i, align 4, !tbaa !51
  %conv.i.i56.i.i.i = sitofp i32 %59 to double
  %div.i.i57.i.i.i = fdiv double 1.000000e+00, %conv.i.i56.i.i.i
  %div2.i.i.i.i.i = fdiv double %div.i.i.i.i, %div.i.i57.i.i.i
  %conv3.i.i.i.i.i = fptosi double %div2.i.i.i.i.i to i32
  %cmp.i.i.i.i6.i = icmp eq i32 %59, %conv3.i.i.i.i.i
  %dec.i.i.i.i.i = sext i1 %cmp.i.i.i.i6.i to i32
  %mul.i.i.i.i.i.i = mul nsw i32 %58, %50
  %idxprom.i.i.i.i.i.i = sext i32 %mul.i.i.i.i.i.i to i64
  %arrayidx.i.i.i.i.i.i = getelementptr inbounds double, double* %45, i64 %idxprom.i.i.i.i.i.i
  %60 = load double, double* %arrayidx.i.i.i.i.i.i, align 8, !tbaa !52
  %call.i.i.i.i.i.i.i = tail call double @__ocml_sqrt_f64(double noundef %div.i.i.i.i) #23
  %mul2.i.i.i.i.i.i = fmul double %60, %call.i.i.i.i.i.i.i
  %mul25.i.i.i.i.i.i = fmul double %mul2.i.i.i.i.i.i, 2.000000e+00
  %call.i4.i.i.i.i.i.i = tail call double @__ocml_cos_f64(double noundef %mul25.i.i.i.i.i.i) #24
  store double %call.i4.i.i.i.i.i.i, double* %r.i.i.i.i.i.i, align 16, !tbaa !54
  %call.i5.i.i.i.i.i.i = tail call double @__ocml_sin_f64(double noundef %mul25.i.i.i.i.i.i) #24
  %fneg30.i.i.i.i.i.i = fneg double %call.i5.i.i.i.i.i.i
  store double %fneg30.i.i.i.i.i.i, double* %i33.i.i.i.i.i.i, align 8, !tbaa !56
  %add.1.i.i.i.i.i.i = add nsw i32 %mul.i.i.i.i.i.i, 1
  %idxprom.1.i.i.i.i.i.i = sext i32 %add.1.i.i.i.i.i.i to i64
  %arrayidx.1.i.i.i.i.i.i = getelementptr inbounds double, double* %45, i64 %idxprom.1.i.i.i.i.i.i
  %61 = load double, double* %arrayidx.1.i.i.i.i.i.i, align 8, !tbaa !52
  %mul2.1.i.i.i.i.i.i = fmul double %call.i.i.i.i.i.i.i, %61
  %call.i1.1.i.i.i.i.i.i = tail call double @__ocml_atan_f64(double noundef %mul2.1.i.i.i.i.i.i) #23
  %sub.1.i.i.i.i.i.i = fadd double %mul2.1.i.i.i.i.i.i, %call.i1.1.i.i.i.i.i.i
  %mul25.1.i.i.i.i.i.i = fmul double %sub.1.i.i.i.i.i.i, 2.000000e+00
  %call.i4.1.i.i.i.i.i.i = tail call double @__ocml_cos_f64(double noundef %mul25.1.i.i.i.i.i.i) #24
  store double %call.i4.1.i.i.i.i.i.i, double* %r.1.i.i.i.i.i.i, align 16, !tbaa !54
  %call.i5.1.i.i.i.i.i.i = tail call double @__ocml_sin_f64(double noundef %mul25.1.i.i.i.i.i.i) #24
  %fneg30.1.i.i.i.i.i.i = fneg double %call.i5.1.i.i.i.i.i.i
  store double %fneg30.1.i.i.i.i.i.i, double* %i33.1.i.i.i.i.i.i, align 8, !tbaa !56
  %add.2.i.i.i.i.i.i = add nsw i32 %mul.i.i.i.i.i.i, 2
  %idxprom.2.i.i.i.i.i.i = sext i32 %add.2.i.i.i.i.i.i to i64
  %arrayidx.2.i.i.i.i.i.i = getelementptr inbounds double, double* %45, i64 %idxprom.2.i.i.i.i.i.i
  %62 = load double, double* %arrayidx.2.i.i.i.i.i.i, align 8, !tbaa !52
  %mul2.2.i.i.i.i.i.i = fmul double %call.i.i.i.i.i.i.i, %62
  %mul7.2.i.i.i.i.i.i = fmul double %mul2.2.i.i.i.i.i.i, 3.000000e+00
  %neg.2.i.i.i.i.i.i = fneg double %mul2.2.i.i.i.i.i.i
  %63 = tail call double @llvm.fmuladd.f64(double %neg.2.i.i.i.i.i.i, double %mul2.2.i.i.i.i.i.i, double noundef 3.000000e+00) #20
  %div.2.i.i.i.i.i.i = fdiv double %mul7.2.i.i.i.i.i.i, %63
  %call.i2.2.i.i.i.i.i.i = tail call double @__ocml_atan_f64(double noundef %div.2.i.i.i.i.i.i) #23
  %sub10.2.i.i.i.i.i.i = fsub double %mul2.2.i.i.i.i.i.i, %call.i2.2.i.i.i.i.i.i
  %mul25.2.i.i.i.i.i.i = fmul double %sub10.2.i.i.i.i.i.i, 2.000000e+00
  %call.i4.2.i.i.i.i.i.i = tail call double @__ocml_cos_f64(double noundef %mul25.2.i.i.i.i.i.i) #24
  store double %call.i4.2.i.i.i.i.i.i, double* %r.2.i.i.i.i.i.i, align 16, !tbaa !54
  %call.i5.2.i.i.i.i.i.i = tail call double @__ocml_sin_f64(double noundef %mul25.2.i.i.i.i.i.i) #24
  %fneg30.2.i.i.i.i.i.i = fneg double %call.i5.2.i.i.i.i.i.i
  store double %fneg30.2.i.i.i.i.i.i, double* %i33.2.i.i.i.i.i.i, align 8, !tbaa !56
  %add.3.i.i.i.i.i.i = add nsw i32 %mul.i.i.i.i.i.i, 3
  %idxprom.3.i.i.i.i.i.i = sext i32 %add.3.i.i.i.i.i.i to i64
  %arrayidx.3.i.i.i.i.i.i = getelementptr inbounds double, double* %45, i64 %idxprom.3.i.i.i.i.i.i
  %64 = load double, double* %arrayidx.3.i.i.i.i.i.i, align 8, !tbaa !52
  %mul2.3.i.i.i.i.i.i = fmul double %call.i.i.i.i.i.i.i, %64
  %neg15.3.i.i.i.i.i.i = fneg double %mul2.3.i.i.i.i.i.i
  %65 = tail call double @llvm.fmuladd.f64(double %neg15.3.i.i.i.i.i.i, double %mul2.3.i.i.i.i.i.i, double noundef 1.500000e+01) #20
  %mul16.3.i.i.i.i.i.i = fmul double %mul2.3.i.i.i.i.i.i, %65
  %neg19.3.i.i.i.i.i.i = fmul double %mul2.3.i.i.i.i.i.i, -6.000000e+00
  %66 = tail call double @llvm.fmuladd.f64(double %neg19.3.i.i.i.i.i.i, double %mul2.3.i.i.i.i.i.i, double noundef 1.500000e+01) #20
  %div20.3.i.i.i.i.i.i = fdiv double %mul16.3.i.i.i.i.i.i, %66
  %call.i3.3.i.i.i.i.i.i = tail call double @__ocml_atan_f64(double noundef %div20.3.i.i.i.i.i.i) #23
  %sub22.3.i.i.i.i.i.i = fsub double %mul2.3.i.i.i.i.i.i, %call.i3.3.i.i.i.i.i.i
  %mul25.3.i.i.i.i.i.i = fmul double %sub22.3.i.i.i.i.i.i, 2.000000e+00
  %call.i4.3.i.i.i.i.i.i = tail call double @__ocml_cos_f64(double noundef %mul25.3.i.i.i.i.i.i) #24
  store double %call.i4.3.i.i.i.i.i.i, double* %r.3.i.i.i.i.i.i, align 16, !tbaa !54
  %call.i5.3.i.i.i.i.i.i = tail call double @__ocml_sin_f64(double noundef %mul25.3.i.i.i.i.i.i) #24
  %fneg30.3.i.i.i.i.i.i = fneg double %call.i5.3.i.i.i.i.i.i
  store double %fneg30.3.i.i.i.i.i.i, double* %i33.3.i.i.i.i.i.i, align 8, !tbaa !56
  %mul.i.i58.i.i.i = mul nsw i32 %58, %48
  %spec.select.i.i.i.i.i = add i32 %mul.i.i58.i.i.i, %conv3.i.i.i.i.i
  %add.i.i59.i.i.i = add i32 %spec.select.i.i.i.i.i, %dec.i.i.i.i.i
  %idxprom7.i.i.i.i.i = sext i32 %add.i.i59.i.i.i to i64
  %w.sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds %struct.Window, %struct.Window* %46, i64 %idxprom7.i.i.i.i.i, i32 0
  %w.sroa.0.0.copyload.i.i.i.i.i = load double, double* %w.sroa.0.0..sroa_idx.i.i.i.i.i, align 8, !tbaa.struct !57
  %w.sroa.4.0..sroa_idx81.i.i.i.i.i = getelementptr inbounds %struct.Window, %struct.Window* %46, i64 %idxprom7.i.i.i.i.i, i32 1
  %w.sroa.4.0.copyload.i.i.i.i.i = load double, double* %w.sroa.4.0..sroa_idx81.i.i.i.i.i, align 8, !tbaa.struct !58
  %w.sroa.5.0..sroa_idx83.i.i.i.i.i = getelementptr inbounds %struct.Window, %struct.Window* %46, i64 %idxprom7.i.i.i.i.i, i32 2
  %w.sroa.5.0.copyload.i.i.i.i.i = load double, double* %w.sroa.5.0..sroa_idx83.i.i.i.i.i, align 8, !tbaa.struct !59
  %w.sroa.6.0..sroa_idx85.i.i.i.i.i = getelementptr inbounds %struct.Window, %struct.Window* %46, i64 %idxprom7.i.i.i.i.i, i32 3
  %67 = bitcast i32* %w.sroa.6.0..sroa_idx85.i.i.i.i.i to <2 x i32>*
  %68 = load <2 x i32>, <2 x i32>* %67, align 8
  %mul9.i.i.i.i.i = fmul double %div.i.i.i.i, %w.sroa.0.0.copyload.i.i.i.i.i
  %mul10.i.i.i.i.i = fmul double %div.i.i.i.i, %w.sroa.4.0.copyload.i.i.i.i.i
  %mul11.i.i.i.i.i = fmul double %div.i.i.i.i, %w.sroa.5.0.copyload.i.i.i.i.i
  %mul14.i.i.i.i.i = mul nsw i32 %58, %49
  %69 = extractelement <2 x i32> %68, i64 0
  %70 = extractelement <2 x i32> %68, i64 1
  %cmp1247.i.i.i.i.i = icmp slt i32 %69, %70
  br i1 %cmp1247.i.i.i.i.i, label %for.body.i.i.i.i.i, label %calculate_micro_xs_doppler.internalized.exit.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %if.then.i60.i.i.i, %fast_nuclear_W.internalized.exit.i.i.i.i.i
  %sigT.051.i.i.i.i.i = phi double [ %add30.i.i.i.i.i, %fast_nuclear_W.internalized.exit.i.i.i.i.i ], [ %mul9.i.i.i.i.i, %if.then.i60.i.i.i ]
  %sigA.050.i.i.i.i.i = phi double [ %add34.i.i.i.i.i, %fast_nuclear_W.internalized.exit.i.i.i.i.i ], [ %mul10.i.i.i.i.i, %if.then.i60.i.i.i ]
  %sigF.049.i.i.i.i.i = phi double [ %add38.i.i.i.i.i, %fast_nuclear_W.internalized.exit.i.i.i.i.i ], [ %mul11.i.i.i.i.i, %if.then.i60.i.i.i ]
  %i.048.i.i.i.i.i = phi i32 [ %inc.i.i.i.i.i, %fast_nuclear_W.internalized.exit.i.i.i.i.i ], [ %69, %if.then.i60.i.i.i ]
  %add15.i.i.i.i.i = add nsw i32 %i.048.i.i.i.i.i, %mul14.i.i.i.i.i
  %idxprom16.i.i.i.i.i = sext i32 %add15.i.i.i.i.i to i64
  %pole.sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds %struct.Pole, %struct.Pole* %47, i64 %idxprom16.i.i.i.i.i, i32 0, i32 0
  %pole.sroa.0.0.copyload.i.i.i.i.i = load double, double* %pole.sroa.0.0..sroa_idx.i.i.i.i.i, align 8, !tbaa.struct !60
  %pole.sroa.4.0..sroa_idx56.i.i.i.i.i = getelementptr inbounds %struct.Pole, %struct.Pole* %47, i64 %idxprom16.i.i.i.i.i, i32 0, i32 1
  %pole.sroa.4.0.copyload.i.i.i.i.i = load double, double* %pole.sroa.4.0..sroa_idx56.i.i.i.i.i, align 8, !tbaa.struct !63
  %pole.sroa.5.0..sroa_idx58.i.i.i.i.i = getelementptr inbounds %struct.Pole, %struct.Pole* %47, i64 %idxprom16.i.i.i.i.i, i32 1, i32 0
  %pole.sroa.5.0.copyload.i.i.i.i.i = load double, double* %pole.sroa.5.0..sroa_idx58.i.i.i.i.i, align 8, !tbaa.struct !64
  %pole.sroa.6.0..sroa_idx60.i.i.i.i.i = getelementptr inbounds %struct.Pole, %struct.Pole* %47, i64 %idxprom16.i.i.i.i.i, i32 1, i32 1
  %pole.sroa.6.0.copyload.i.i.i.i.i = load double, double* %pole.sroa.6.0..sroa_idx60.i.i.i.i.i, align 8, !tbaa.struct !65
  %pole.sroa.7.0..sroa_idx62.i.i.i.i.i = getelementptr inbounds %struct.Pole, %struct.Pole* %47, i64 %idxprom16.i.i.i.i.i, i32 2, i32 0
  %pole.sroa.7.0.copyload.i.i.i.i.i = load double, double* %pole.sroa.7.0..sroa_idx62.i.i.i.i.i, align 8, !tbaa.struct !66
  %pole.sroa.8.0..sroa_idx64.i.i.i.i.i = getelementptr inbounds %struct.Pole, %struct.Pole* %47, i64 %idxprom16.i.i.i.i.i, i32 2, i32 1
  %pole.sroa.8.0.copyload.i.i.i.i.i = load double, double* %pole.sroa.8.0..sroa_idx64.i.i.i.i.i, align 8, !tbaa.struct !67
  %pole.sroa.9.0..sroa_idx66.i.i.i.i.i = getelementptr inbounds %struct.Pole, %struct.Pole* %47, i64 %idxprom16.i.i.i.i.i, i32 3, i32 0
  %pole.sroa.9.0.copyload.i.i.i.i.i = load double, double* %pole.sroa.9.0..sroa_idx66.i.i.i.i.i, align 8, !tbaa.struct !68
  %pole.sroa.10.0..sroa_idx68.i.i.i.i.i = getelementptr inbounds %struct.Pole, %struct.Pole* %47, i64 %idxprom16.i.i.i.i.i, i32 3, i32 1
  %pole.sroa.10.0.copyload.i.i.i.i.i = load double, double* %pole.sroa.10.0..sroa_idx68.i.i.i.i.i, align 8, !tbaa.struct !69
  %pole.sroa.11.0..sroa_idx70.i.i.i.i.i = getelementptr inbounds %struct.Pole, %struct.Pole* %47, i64 %idxprom16.i.i.i.i.i, i32 4
  %pole.sroa.11.0.copyload.i.i.i.i.i = load i16, i16* %pole.sroa.11.0..sroa_idx70.i.i.i.i.i, align 8, !tbaa.struct !70
  %sub.i.i.i.i.i.i = fsub double %div.i.i.i.i, %pole.sroa.0.0.copyload.i.i.i.i.i
  %sub6.i.i.i.i.i.i = fsub double 0.000000e+00, %pole.sroa.4.0.copyload.i.i.i.i.i
  %neg.i.i.i.i.i.i = fmul double %sub6.i.i.i.i.i.i, -0.000000e+00
  %71 = tail call double @llvm.fmuladd.f64(double %sub.i.i.i.i.i.i, double noundef 5.000000e-01, double %neg.i.i.i.i.i.i) #22
  %mul7.i.i.i.i.i.i = fmul double %sub6.i.i.i.i.i.i, 5.000000e-01
  %72 = tail call double @llvm.fmuladd.f64(double %sub.i.i.i.i.i.i, double noundef 0.000000e+00, double %mul7.i.i.i.i.i.i) #22
  %mul4.i.i.i.i.i.i.i = fmul double %72, %72
  %73 = tail call double @llvm.fmuladd.f64(double %71, double %71, double %mul4.i.i.i.i.i.i.i) #22
  %call.i.i.i.i.i.i.i.i = tail call double @__ocml_sqrt_f64(double noundef %73) #23
  %cmp.i.i.i61.i.i.i = fcmp olt double %call.i.i.i.i.i.i.i.i, 6.000000e+00
  br i1 %cmp.i.i.i61.i.i.i, label %if.then.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %for.body.i.i.i.i.i
  %neg.i.i.i.i.i.i.i = fmul double %72, -1.200000e+01
  %74 = tail call double @llvm.fmuladd.f64(double %71, double noundef 0.000000e+00, double %neg.i.i.i.i.i.i.i) #22
  %mul7.i.i.i.i.i.i.i = fmul double %71, 1.200000e+01
  %75 = tail call double @llvm.fmuladd.f64(double %72, double noundef 0.000000e+00, double %mul7.i.i.i.i.i.i.i) #22
  %76 = tail call double @llvm.fmuladd.f64(double noundef %74, double noundef 0x3F30000000000000, double noundef 1.000000e+00) #22
  %mul.i.i.i.i.i.i.i.i = fmul double %76, %76
  %mul1.i.i.i.i.i.i.i.i = fmul double %mul.i.i.i.i.i.i.i.i, %mul.i.i.i.i.i.i.i.i
  %mul2.i.i.i.i.i.i.i.i = fmul double %mul1.i.i.i.i.i.i.i.i, %mul1.i.i.i.i.i.i.i.i
  %mul3.i.i.i.i.i.i.i.i = fmul double %mul2.i.i.i.i.i.i.i.i, %mul2.i.i.i.i.i.i.i.i
  %mul4.i.i.i.i.i.i.i.i = fmul double %mul3.i.i.i.i.i.i.i.i, %mul3.i.i.i.i.i.i.i.i
  %mul5.i.i.i.i.i.i.i.i = fmul double %mul4.i.i.i.i.i.i.i.i, %mul4.i.i.i.i.i.i.i.i
  %mul6.i.i.i.i.i.i.i.i = fmul double %mul5.i.i.i.i.i.i.i.i, %mul5.i.i.i.i.i.i.i.i
  %mul7.i.i.i.i.i.i.i.i = fmul double %mul6.i.i.i.i.i.i.i.i, %mul6.i.i.i.i.i.i.i.i
  %mul8.i.i.i.i.i.i.i.i = fmul double %mul7.i.i.i.i.i.i.i.i, %mul7.i.i.i.i.i.i.i.i
  %mul9.i.i.i.i.i.i.i.i = fmul double %mul8.i.i.i.i.i.i.i.i, %mul8.i.i.i.i.i.i.i.i
  %mul10.i.i.i.i.i.i.i.i = fmul double %mul9.i.i.i.i.i.i.i.i, %mul9.i.i.i.i.i.i.i.i
  %mul11.i.i.i.i.i.i.i.i = fmul double %mul10.i.i.i.i.i.i.i.i, %mul10.i.i.i.i.i.i.i.i
  %call.i.i43.i.i.i.i.i.i = tail call double @__ocml_cos_f64(double noundef %75) #24
  %call.i5.i.i.i.i.i.i.i = tail call double @__ocml_sin_f64(double noundef %75) #24
  %mul7.i6.i.i.i.i.i.i.i = fmul double %call.i.i43.i.i.i.i.i.i, 0.000000e+00
  %77 = tail call double @llvm.fmuladd.f64(double %mul11.i.i.i.i.i.i.i.i, double %call.i5.i.i.i.i.i.i.i, double %mul7.i6.i.i.i.i.i.i.i) #22
  %sub6.i.i.i.i.i.i.i = fsub double 0.000000e+00, %77
  %78 = fneg double %72
  %neg.i95.i.i.i.i.i.i = fmul double %72, %78
  %79 = tail call double @llvm.fmuladd.f64(double %71, double %71, double %neg.i95.i.i.i.i.i.i) #22
  %mul7.i96.i.i.i.i.i.i = fmul double %71, %72
  %80 = tail call double @llvm.fmuladd.f64(double %71, double %72, double %mul7.i96.i.i.i.i.i.i) #22
  %neg.i99.i.i.i.i.i.i = fmul double %80, -0.000000e+00
  %81 = tail call double @llvm.fmuladd.f64(double %79, double noundef 1.440000e+02, double %neg.i99.i.i.i.i.i.i) #22
  %mul7.i100.i.i.i.i.i.i = fmul double %79, 0.000000e+00
  %82 = tail call double @llvm.fmuladd.f64(double %80, double noundef 1.440000e+02, double %mul7.i100.i.i.i.i.i.i) #22
  %sub6.i104.i.i.i.i.i.i = fsub double 0.000000e+00, %82
  %mul5.i107.i.i.i.i.i.i = fmul double %sub6.i104.i.i.i.i.i.i, %sub6.i104.i.i.i.i.i.i
  br label %for.body.i.i.i.i.i.i

for.cond.cleanup.i.i.i.i.i.i:                     ; preds = %for.body.i.i.i.i.i.i
  %neg.i46.i.i.i.i.i.i = fneg double %sub6.i.i.i.i.i.i.i
  %neg.i.i.i.i.i.i.i.i = fmul double %call.i5.i.i.i.i.i.i.i, -0.000000e+00
  %mul7.i50.i.i.i.i.i.i = fmul double %71, 0.000000e+00
  %83 = tail call double @llvm.fmuladd.f64(double %mul11.i.i.i.i.i.i.i.i, double %call.i.i43.i.i.i.i.i.i, double %neg.i.i.i.i.i.i.i.i) #22
  %sub.i.i.i.i.i.i7.i = fsub double 1.000000e+00, %83
  %84 = tail call double @llvm.fmuladd.f64(double %sub.i.i.i.i.i.i7.i, double noundef 0.000000e+00, double %neg.i46.i.i.i.i.i.i) #22
  %85 = tail call double @llvm.fmuladd.f64(double %72, double noundef 1.200000e+01, double %mul7.i50.i.i.i.i.i.i) #22
  %86 = tail call double @llvm.fmuladd.f64(double %sub6.i.i.i.i.i.i.i, double noundef 0.000000e+00, double %sub.i.i.i.i.i.i7.i) #22
  %87 = fneg double %84
  %neg.i49.i.i.i.i.i.i = fmul double %72, -0.000000e+00
  %mul6.i.i.i.i.i.i.i = fmul double %85, %86
  %neg.i53.i.i.i.i.i.i = fmul double %85, %87
  %88 = tail call double @llvm.fmuladd.f64(double %71, double noundef 1.200000e+01, double %neg.i49.i.i.i.i.i.i) #22
  %mul5.i.i.i.i.i.i.i = fmul double %85, %85
  %89 = tail call double @llvm.fmuladd.f64(double %84, double %88, double %mul6.i.i.i.i.i.i.i) #22
  %90 = tail call double @llvm.fmuladd.f64(double %86, double %88, double %neg.i53.i.i.i.i.i.i) #22
  %91 = tail call double @llvm.fmuladd.f64(double %88, double %88, double %mul5.i.i.i.i.i.i.i) #22
  %div.i.i.i.i.i.i.i = fdiv double %89, %91
  %div9.i.i.i.i.i.i.i = fdiv double %90, %91
  %neg.i56.i.i.i.i.i.i = fmul double %add6.i119.i.i.i.i.i.i, %78
  %92 = tail call double @llvm.fmuladd.f64(double %71, double %add.i118.i.i.i.i.i.i, double %neg.i56.i.i.i.i.i.i) #22
  %mul7.i57.i.i.i.i.i.i = fmul double %72, %add.i118.i.i.i.i.i.i
  %93 = tail call double @llvm.fmuladd.f64(double %71, double %add6.i119.i.i.i.i.i.i, double %mul7.i57.i.i.i.i.i.i) #22
  %neg.i60.i.i.i.i.i.i = fmul double %93, -8.124330e+01
  %94 = tail call double @llvm.fmuladd.f64(double %92, double noundef 0.000000e+00, double %neg.i60.i.i.i.i.i.i) #22
  %mul7.i61.i.i.i.i.i.i = fmul double %92, 8.124330e+01
  %95 = tail call double @llvm.fmuladd.f64(double %93, double noundef 0.000000e+00, double %mul7.i61.i.i.i.i.i.i) #22
  %add.i.i.i.i.i.i.i = fadd double %div.i.i.i.i.i.i.i, %94
  %add6.i.i.i.i.i.i.i = fadd double %div9.i.i.i.i.i.i.i, %95
  br label %fast_nuclear_W.internalized.exit.i.i.i.i.i

for.body.i.i.i.i.i.i:                             ; preds = %for.body.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %sum.sroa.0.0159.i.i.i.i.i.i = phi double [ 0.000000e+00, %if.then.i.i.i.i.i.i ], [ %add.i118.i.i.i.i.i.i, %for.body.i.i.i.i.i.i ]
  %sum.sroa.6.0158.i.i.i.i.i.i = phi double [ 0.000000e+00, %if.then.i.i.i.i.i.i ], [ %add6.i119.i.i.i.i.i.i, %for.body.i.i.i.i.i.i ]
  %n.0157.i.i.i.i.i.i = phi i32 [ 0, %if.then.i.i.i.i.i.i ], [ %inc.i.i.i.i.i.i, %for.body.i.i.i.i.i.i ]
  %idxprom.i29.i.i.i.i.i = zext i32 %n.0157.i.i.i.i.i.i to i64
  %arrayidx.i30.i.i.i.i.i = getelementptr inbounds [10 x double], [10 x double]* @constinit.2, i64 0, i64 %idxprom.i29.i.i.i.i.i
  %96 = load double, double* %arrayidx.i30.i.i.i.i.i, align 8, !tbaa !52
  %call.i.i82.i.i.i.i.i.i = tail call double @__ocml_cos_f64(double noundef %75) #24
  %call.i5.i83.i.i.i.i.i.i = tail call double @__ocml_sin_f64(double noundef %75) #24
  %neg.i.i84.i.i.i.i.i.i = fmul double %call.i5.i83.i.i.i.i.i.i, -0.000000e+00
  %97 = tail call double @llvm.fmuladd.f64(double %mul11.i.i.i.i.i.i.i.i, double %call.i.i82.i.i.i.i.i.i, double %neg.i.i84.i.i.i.i.i.i) #22
  %mul7.i6.i85.i.i.i.i.i.i = fmul double %call.i.i82.i.i.i.i.i.i, 0.000000e+00
  %98 = tail call double @llvm.fmuladd.f64(double %mul11.i.i.i.i.i.i.i.i, double %call.i5.i83.i.i.i.i.i.i, double %mul7.i6.i85.i.i.i.i.i.i) #22
  %neg.i88.i.i.i.i.i.i = fmul double %98, -0.000000e+00
  %99 = tail call double @llvm.fmuladd.f64(double %96, double %97, double %neg.i88.i.i.i.i.i.i) #22
  %mul7.i89.i.i.i.i.i.i = fmul double %97, 0.000000e+00
  %100 = tail call double @llvm.fmuladd.f64(double %96, double %98, double %mul7.i89.i.i.i.i.i.i) #22
  %sub.i92.i.i.i.i.i.i = fadd double %99, -1.000000e+00
  %arrayidx25.i.i.i.i.i.i = getelementptr inbounds [10 x double], [10 x double]* @constinit.3, i64 0, i64 %idxprom.i29.i.i.i.i.i
  %101 = load double, double* %arrayidx25.i.i.i.i.i.i, align 8, !tbaa !52
  %sub.i103.i.i.i.i.i.i = fsub double %101, %81
  %arrayidx34.i.i.i.i.i.i = getelementptr inbounds [10 x double], [10 x double]* @constinit, i64 0, i64 %idxprom.i29.i.i.i.i.i
  %102 = load double, double* %arrayidx34.i.i.i.i.i.i, align 8, !tbaa !52
  %103 = tail call double @llvm.fmuladd.f64(double %sub.i103.i.i.i.i.i.i, double %sub.i103.i.i.i.i.i.i, double %mul5.i107.i.i.i.i.i.i) #22
  %mul6.i108.i.i.i.i.i.i = fmul double %sub6.i104.i.i.i.i.i.i, %100
  %104 = tail call double @llvm.fmuladd.f64(double %sub.i92.i.i.i.i.i.i, double %sub.i103.i.i.i.i.i.i, double %mul6.i108.i.i.i.i.i.i) #22
  %div.i109.i.i.i.i.i.i = fdiv double %104, %103
  %105 = fneg double %sub.i92.i.i.i.i.i.i
  %neg.i110.i.i.i.i.i.i = fmul double %sub6.i104.i.i.i.i.i.i, %105
  %106 = tail call double @llvm.fmuladd.f64(double %100, double %sub.i103.i.i.i.i.i.i, double %neg.i110.i.i.i.i.i.i) #22
  %div9.i111.i.i.i.i.i.i = fdiv double %106, %103
  %neg.i114.i.i.i.i.i.i = fmul double %div9.i111.i.i.i.i.i.i, -0.000000e+00
  %107 = tail call double @llvm.fmuladd.f64(double %102, double %div.i109.i.i.i.i.i.i, double %neg.i114.i.i.i.i.i.i) #22
  %mul7.i115.i.i.i.i.i.i = fmul double %div.i109.i.i.i.i.i.i, 0.000000e+00
  %108 = tail call double @llvm.fmuladd.f64(double %102, double %div9.i111.i.i.i.i.i.i, double %mul7.i115.i.i.i.i.i.i) #22
  %add.i118.i.i.i.i.i.i = fadd double %sum.sroa.0.0159.i.i.i.i.i.i, %107
  %add6.i119.i.i.i.i.i.i = fadd double %sum.sroa.6.0158.i.i.i.i.i.i, %108
  %inc.i.i.i.i.i.i = add nuw nsw i32 %n.0157.i.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i.i = icmp eq i32 %inc.i.i.i.i.i.i, 10
  br i1 %exitcond.not.i.i.i.i.i.i, label %for.cond.cleanup.i.i.i.i.i.i, label %for.body.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %for.body.i.i.i.i.i
  %109 = fneg double %72
  %neg.i122.i.i.i.i.i.i = fmul double %72, %109
  %110 = tail call double @llvm.fmuladd.f64(double %71, double %71, double %neg.i122.i.i.i.i.i.i) #22
  %mul7.i123.i.i.i.i.i.i = fmul double %71, %72
  %111 = tail call double @llvm.fmuladd.f64(double %71, double %72, double %mul7.i123.i.i.i.i.i.i) #22
  %112 = tail call double @llvm.fmuladd.f64(double %71, double noundef 0.000000e+00, double %109) #22
  %mul7.i126.i.i.i.i.i.i = fmul double %72, 0.000000e+00
  %113 = fadd double %71, %mul7.i126.i.i.i.i.i.i
  %sub.i129.i.i.i.i.i.i = fadd double %110, 0xBFD19DC7AFDB7B46
  %mul5.i132.i.i.i.i.i.i = fmul double %111, %111
  %114 = tail call double @llvm.fmuladd.f64(double %sub.i129.i.i.i.i.i.i, double %sub.i129.i.i.i.i.i.i, double %mul5.i132.i.i.i.i.i.i) #22
  %mul6.i133.i.i.i.i.i.i = fmul double %111, 0.000000e+00
  %115 = tail call double @llvm.fmuladd.f64(double %sub.i129.i.i.i.i.i.i, double noundef 0x3FE065C77CDFFF0D, double %mul6.i133.i.i.i.i.i.i) #22
  %div.i134.i.i.i.i.i.i = fdiv double %115, %114
  %neg.i135.i.i.i.i.i.i = fmul double %111, 0xBFE065C77CDFFF0D
  %116 = tail call double @llvm.fmuladd.f64(double %sub.i129.i.i.i.i.i.i, double noundef 0.000000e+00, double %neg.i135.i.i.i.i.i.i) #22
  %div9.i136.i.i.i.i.i.i = fdiv double %116, %114
  %sub.i139.i.i.i.i.i.i = fadd double %110, 0xC005CC470A049097
  %117 = tail call double @llvm.fmuladd.f64(double %sub.i139.i.i.i.i.i.i, double %sub.i139.i.i.i.i.i.i, double %mul5.i132.i.i.i.i.i.i) #22
  %118 = tail call double @llvm.fmuladd.f64(double %sub.i139.i.i.i.i.i.i, double noundef 0x3FAA80FD3629C600, double %mul6.i133.i.i.i.i.i.i) #22
  %div.i144.i.i.i.i.i.i = fdiv double %118, %117
  %neg.i145.i.i.i.i.i.i = fmul double %111, 0xBFAA80FD3629C600
  %119 = tail call double @llvm.fmuladd.f64(double %sub.i139.i.i.i.i.i.i, double noundef 0.000000e+00, double %neg.i145.i.i.i.i.i.i) #22
  %div9.i146.i.i.i.i.i.i = fdiv double %119, %117
  %add.i149.i.i.i.i.i.i = fadd double %div.i134.i.i.i.i.i.i, %div.i144.i.i.i.i.i.i
  %add6.i150.i.i.i.i.i.i = fadd double %div9.i136.i.i.i.i.i.i, %div9.i146.i.i.i.i.i.i
  %120 = fneg double %113
  %neg.i153.i.i.i.i.i.i = fmul double %add6.i150.i.i.i.i.i.i, %120
  %121 = tail call double @llvm.fmuladd.f64(double %112, double %add.i149.i.i.i.i.i.i, double %neg.i153.i.i.i.i.i.i) #22
  %mul7.i154.i.i.i.i.i.i = fmul double %113, %add.i149.i.i.i.i.i.i
  %122 = tail call double @llvm.fmuladd.f64(double %112, double %add6.i150.i.i.i.i.i.i, double %mul7.i154.i.i.i.i.i.i) #22
  br label %fast_nuclear_W.internalized.exit.i.i.i.i.i

fast_nuclear_W.internalized.exit.i.i.i.i.i:       ; preds = %if.else.i.i.i.i.i.i, %for.cond.cleanup.i.i.i.i.i.i
  %add.i.pn.i.i.i.i.i.i = phi double [ %add.i.i.i.i.i.i.i, %for.cond.cleanup.i.i.i.i.i.i ], [ %121, %if.else.i.i.i.i.i.i ]
  %add6.i.pn.i.i.i.i.i.i = phi double [ %add6.i.i.i.i.i.i.i, %for.cond.cleanup.i.i.i.i.i.i ], [ %122, %if.else.i.i.i.i.i.i ]
  %idxprom24.i.i.i.i.i = sext i16 %pole.sroa.11.0.copyload.i.i.i.i.i to i64
  %123 = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %3, i64 0, i64 %idxprom24.i.i.i.i.i, i32 0
  %124 = load double, double* %123, align 16
  %125 = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %3, i64 0, i64 %idxprom24.i.i.i.i.i, i32 1
  %126 = load double, double* %125, align 8
  %127 = fneg double %add6.i.pn.i.i.i.i.i.i
  %neg.i31.i.i.i.i.i = fmul double %126, %127
  %128 = tail call double @llvm.fmuladd.f64(double %add.i.pn.i.i.i.i.i.i, double %124, double %neg.i31.i.i.i.i.i) #22
  %mul7.i32.i.i.i.i.i = fmul double %add6.i.pn.i.i.i.i.i.i, %124
  %129 = tail call double @llvm.fmuladd.f64(double %add.i.pn.i.i.i.i.i.i, double %126, double %mul7.i32.i.i.i.i.i) #22
  %130 = fneg double %pole.sroa.6.0.copyload.i.i.i.i.i
  %neg.i35.i.i.i.i.i = fmul double %129, %130
  %131 = tail call double @llvm.fmuladd.f64(double %pole.sroa.5.0.copyload.i.i.i.i.i, double %128, double %neg.i35.i.i.i.i.i) #22
  %add30.i.i.i.i.i = fadd double %sigT.051.i.i.i.i.i, %131
  %132 = fneg double %pole.sroa.8.0.copyload.i.i.i.i.i
  %neg.i39.i.i.i.i.i = fmul double %add6.i.pn.i.i.i.i.i.i, %132
  %133 = tail call double @llvm.fmuladd.f64(double %pole.sroa.7.0.copyload.i.i.i.i.i, double %add.i.pn.i.i.i.i.i.i, double %neg.i39.i.i.i.i.i) #22
  %add34.i.i.i.i.i = fadd double %sigA.050.i.i.i.i.i, %133
  %134 = fneg double %pole.sroa.10.0.copyload.i.i.i.i.i
  %neg.i43.i.i.i.i.i = fmul double %add6.i.pn.i.i.i.i.i.i, %134
  %135 = tail call double @llvm.fmuladd.f64(double %pole.sroa.9.0.copyload.i.i.i.i.i, double %add.i.pn.i.i.i.i.i.i, double %neg.i43.i.i.i.i.i) #22
  %add38.i.i.i.i.i = fadd double %sigF.049.i.i.i.i.i, %135
  %inc.i.i.i.i.i = add nsw i32 %i.048.i.i.i.i.i, 1
  %cmp12.i.i.i.i.i = icmp slt i32 %inc.i.i.i.i.i, %70
  br i1 %cmp12.i.i.i.i.i, label %for.body.i.i.i.i.i, label %calculate_micro_xs_doppler.internalized.exit.i.i.i.i

calculate_micro_xs_doppler.internalized.exit.i.i.i.i: ; preds = %fast_nuclear_W.internalized.exit.i.i.i.i.i, %if.then.i60.i.i.i
  %sigF.0.lcssa.i.i.i.i.i = phi double [ %mul11.i.i.i.i.i, %if.then.i60.i.i.i ], [ %add38.i.i.i.i.i, %fast_nuclear_W.internalized.exit.i.i.i.i.i ]
  %sigA.0.lcssa.i.i.i.i.i = phi double [ %mul10.i.i.i.i.i, %if.then.i60.i.i.i ], [ %add34.i.i.i.i.i, %fast_nuclear_W.internalized.exit.i.i.i.i.i ]
  %sigT.0.lcssa.i.i.i.i.i = phi double [ %mul9.i.i.i.i.i, %if.then.i60.i.i.i ], [ %add30.i.i.i.i.i, %fast_nuclear_W.internalized.exit.i.i.i.i.i ]
  %sub.i.i.i.i8.i = fsub double %sigT.0.lcssa.i.i.i.i.i, %sigA.0.lcssa.i.i.i.i.i
  call void @llvm.lifetime.end.p0i8(i64 noundef 64, i8* noundef nonnull %18) #20
  br label %if.end.i62.i.i.i

if.else.i.i.i.i:                                  ; preds = %for.body9.i.i.i.i
  call void @llvm.lifetime.start.p0i8(i64 noundef 64, i8* noundef %17) #20
  %idxprom.i1.i.i.i.i = sext i32 %58 to i64
  %arrayidx.i2.i.i.i.i = getelementptr inbounds i32, i32* %44, i64 %idxprom.i1.i.i.i.i
  %136 = load i32, i32* %arrayidx.i2.i.i.i.i, align 4, !tbaa !51
  %conv.i3.i.i.i.i = sitofp i32 %136 to double
  %div.i4.i.i.i.i = fdiv double 1.000000e+00, %conv.i3.i.i.i.i
  %div2.i5.i.i.i.i = fdiv double %div.i.i.i.i, %div.i4.i.i.i.i
  %conv3.i6.i.i.i.i = fptosi double %div2.i5.i.i.i.i to i32
  %cmp.i7.i.i.i.i = icmp eq i32 %136, %conv3.i6.i.i.i.i
  %dec.i8.i.i.i.i = sext i1 %cmp.i7.i.i.i.i to i32
  %mul.i.i9.i.i.i.i = mul nsw i32 %58, %50
  %idxprom.i.i10.i.i.i.i = sext i32 %mul.i.i9.i.i.i.i to i64
  %arrayidx.i.i11.i.i.i.i = getelementptr inbounds double, double* %45, i64 %idxprom.i.i10.i.i.i.i
  %137 = load double, double* %arrayidx.i.i11.i.i.i.i, align 8, !tbaa !52
  %call.i.i.i12.i.i.i.i = tail call double @__ocml_sqrt_f64(double noundef %div.i.i.i.i) #23
  %mul2.i.i13.i.i.i.i = fmul double %137, %call.i.i.i12.i.i.i.i
  %mul25.i.i14.i.i.i.i = fmul double %mul2.i.i13.i.i.i.i, 2.000000e+00
  %call.i4.i.i15.i.i.i.i = tail call double @__ocml_cos_f64(double noundef %mul25.i.i14.i.i.i.i) #24
  store double %call.i4.i.i15.i.i.i.i, double* %r.i.i16.i.i.i.i, align 16, !tbaa !54
  %call.i5.i.i17.i.i.i.i = tail call double @__ocml_sin_f64(double noundef %mul25.i.i14.i.i.i.i) #24
  %fneg30.i.i18.i.i.i.i = fneg double %call.i5.i.i17.i.i.i.i
  store double %fneg30.i.i18.i.i.i.i, double* %i33.i.i19.i.i.i.i, align 8, !tbaa !56
  %add.1.i.i20.i.i.i.i = add nsw i32 %mul.i.i9.i.i.i.i, 1
  %idxprom.1.i.i21.i.i.i.i = sext i32 %add.1.i.i20.i.i.i.i to i64
  %arrayidx.1.i.i22.i.i.i.i = getelementptr inbounds double, double* %45, i64 %idxprom.1.i.i21.i.i.i.i
  %138 = load double, double* %arrayidx.1.i.i22.i.i.i.i, align 8, !tbaa !52
  %mul2.1.i.i23.i.i.i.i = fmul double %call.i.i.i12.i.i.i.i, %138
  %call.i1.1.i.i24.i.i.i.i = tail call double @__ocml_atan_f64(double noundef %mul2.1.i.i23.i.i.i.i) #23
  %sub.1.i.i25.i.i.i.i = fadd double %mul2.1.i.i23.i.i.i.i, %call.i1.1.i.i24.i.i.i.i
  %mul25.1.i.i26.i.i.i.i = fmul double %sub.1.i.i25.i.i.i.i, 2.000000e+00
  %call.i4.1.i.i27.i.i.i.i = tail call double @__ocml_cos_f64(double noundef %mul25.1.i.i26.i.i.i.i) #24
  store double %call.i4.1.i.i27.i.i.i.i, double* %r.1.i.i28.i.i.i.i, align 16, !tbaa !54
  %call.i5.1.i.i29.i.i.i.i = tail call double @__ocml_sin_f64(double noundef %mul25.1.i.i26.i.i.i.i) #24
  %fneg30.1.i.i30.i.i.i.i = fneg double %call.i5.1.i.i29.i.i.i.i
  store double %fneg30.1.i.i30.i.i.i.i, double* %i33.1.i.i31.i.i.i.i, align 8, !tbaa !56
  %add.2.i.i32.i.i.i.i = add nsw i32 %mul.i.i9.i.i.i.i, 2
  %idxprom.2.i.i33.i.i.i.i = sext i32 %add.2.i.i32.i.i.i.i to i64
  %arrayidx.2.i.i34.i.i.i.i = getelementptr inbounds double, double* %45, i64 %idxprom.2.i.i33.i.i.i.i
  %139 = load double, double* %arrayidx.2.i.i34.i.i.i.i, align 8, !tbaa !52
  %mul2.2.i.i35.i.i.i.i = fmul double %call.i.i.i12.i.i.i.i, %139
  %mul7.2.i.i36.i.i.i.i = fmul double %mul2.2.i.i35.i.i.i.i, 3.000000e+00
  %neg.2.i.i37.i.i.i.i = fneg double %mul2.2.i.i35.i.i.i.i
  %140 = tail call double @llvm.fmuladd.f64(double %neg.2.i.i37.i.i.i.i, double %mul2.2.i.i35.i.i.i.i, double noundef 3.000000e+00) #20
  %div.2.i.i38.i.i.i.i = fdiv double %mul7.2.i.i36.i.i.i.i, %140
  %call.i2.2.i.i39.i.i.i.i = tail call double @__ocml_atan_f64(double noundef %div.2.i.i38.i.i.i.i) #23
  %sub10.2.i.i40.i.i.i.i = fsub double %mul2.2.i.i35.i.i.i.i, %call.i2.2.i.i39.i.i.i.i
  %mul25.2.i.i41.i.i.i.i = fmul double %sub10.2.i.i40.i.i.i.i, 2.000000e+00
  %call.i4.2.i.i42.i.i.i.i = tail call double @__ocml_cos_f64(double noundef %mul25.2.i.i41.i.i.i.i) #24
  store double %call.i4.2.i.i42.i.i.i.i, double* %r.2.i.i43.i.i.i.i, align 16, !tbaa !54
  %call.i5.2.i.i44.i.i.i.i = tail call double @__ocml_sin_f64(double noundef %mul25.2.i.i41.i.i.i.i) #24
  %fneg30.2.i.i45.i.i.i.i = fneg double %call.i5.2.i.i44.i.i.i.i
  store double %fneg30.2.i.i45.i.i.i.i, double* %i33.2.i.i46.i.i.i.i, align 8, !tbaa !56
  %add.3.i.i47.i.i.i.i = add nsw i32 %mul.i.i9.i.i.i.i, 3
  %idxprom.3.i.i48.i.i.i.i = sext i32 %add.3.i.i47.i.i.i.i to i64
  %arrayidx.3.i.i49.i.i.i.i = getelementptr inbounds double, double* %45, i64 %idxprom.3.i.i48.i.i.i.i
  %141 = load double, double* %arrayidx.3.i.i49.i.i.i.i, align 8, !tbaa !52
  %mul2.3.i.i50.i.i.i.i = fmul double %call.i.i.i12.i.i.i.i, %141
  %neg15.3.i.i51.i.i.i.i = fneg double %mul2.3.i.i50.i.i.i.i
  %142 = tail call double @llvm.fmuladd.f64(double %neg15.3.i.i51.i.i.i.i, double %mul2.3.i.i50.i.i.i.i, double noundef 1.500000e+01) #20
  %mul16.3.i.i52.i.i.i.i = fmul double %mul2.3.i.i50.i.i.i.i, %142
  %neg19.3.i.i53.i.i.i.i = fmul double %mul2.3.i.i50.i.i.i.i, -6.000000e+00
  %143 = tail call double @llvm.fmuladd.f64(double %neg19.3.i.i53.i.i.i.i, double %mul2.3.i.i50.i.i.i.i, double noundef 1.500000e+01) #20
  %div20.3.i.i54.i.i.i.i = fdiv double %mul16.3.i.i52.i.i.i.i, %143
  %call.i3.3.i.i55.i.i.i.i = tail call double @__ocml_atan_f64(double noundef %div20.3.i.i54.i.i.i.i) #23
  %sub22.3.i.i56.i.i.i.i = fsub double %mul2.3.i.i50.i.i.i.i, %call.i3.3.i.i55.i.i.i.i
  %mul25.3.i.i57.i.i.i.i = fmul double %sub22.3.i.i56.i.i.i.i, 2.000000e+00
  %call.i4.3.i.i58.i.i.i.i = tail call double @__ocml_cos_f64(double noundef %mul25.3.i.i57.i.i.i.i) #24
  store double %call.i4.3.i.i58.i.i.i.i, double* %r.3.i.i59.i.i.i.i, align 16, !tbaa !54
  %call.i5.3.i.i60.i.i.i.i = tail call double @__ocml_sin_f64(double noundef %mul25.3.i.i57.i.i.i.i) #24
  %fneg30.3.i.i61.i.i.i.i = fneg double %call.i5.3.i.i60.i.i.i.i
  store double %fneg30.3.i.i61.i.i.i.i, double* %i33.3.i.i62.i.i.i.i, align 8, !tbaa !56
  %mul.i63.i.i.i.i = mul nsw i32 %58, %48
  %spec.select.i64.i.i.i.i = add i32 %mul.i63.i.i.i.i, %conv3.i6.i.i.i.i
  %add.i65.i.i.i.i = add i32 %spec.select.i64.i.i.i.i, %dec.i8.i.i.i.i
  %idxprom7.i66.i.i.i.i = sext i32 %add.i65.i.i.i.i to i64
  %w.sroa.0.0..sroa_idx.i67.i.i.i.i = getelementptr inbounds %struct.Window, %struct.Window* %46, i64 %idxprom7.i66.i.i.i.i, i32 0
  %w.sroa.0.0.copyload.i68.i.i.i.i = load double, double* %w.sroa.0.0..sroa_idx.i67.i.i.i.i, align 8, !tbaa.struct !57
  %w.sroa.4.0..sroa_idx90.i.i.i.i.i = getelementptr inbounds %struct.Window, %struct.Window* %46, i64 %idxprom7.i66.i.i.i.i, i32 1
  %w.sroa.4.0.copyload.i69.i.i.i.i = load double, double* %w.sroa.4.0..sroa_idx90.i.i.i.i.i, align 8, !tbaa.struct !58
  %w.sroa.5.0..sroa_idx92.i.i.i.i.i = getelementptr inbounds %struct.Window, %struct.Window* %46, i64 %idxprom7.i66.i.i.i.i, i32 2
  %w.sroa.5.0.copyload.i70.i.i.i.i = load double, double* %w.sroa.5.0..sroa_idx92.i.i.i.i.i, align 8, !tbaa.struct !59
  %w.sroa.6.0..sroa_idx94.i.i.i.i.i = getelementptr inbounds %struct.Window, %struct.Window* %46, i64 %idxprom7.i66.i.i.i.i, i32 3
  %144 = bitcast i32* %w.sroa.6.0..sroa_idx94.i.i.i.i.i to <2 x i32>*
  %145 = load <2 x i32>, <2 x i32>* %144, align 8
  %mul9.i73.i.i.i.i = fmul double %div.i.i.i.i, %w.sroa.0.0.copyload.i68.i.i.i.i
  %mul10.i74.i.i.i.i = fmul double %div.i.i.i.i, %w.sroa.4.0.copyload.i69.i.i.i.i
  %mul11.i75.i.i.i.i = fmul double %div.i.i.i.i, %w.sroa.5.0.copyload.i70.i.i.i.i
  %mul14.i76.i.i.i.i = mul nsw i32 %58, %49
  %146 = extractelement <2 x i32> %145, i64 0
  %147 = extractelement <2 x i32> %145, i64 1
  %cmp1249.i.i.i.i.i = icmp slt i32 %146, %147
  br i1 %cmp1249.i.i.i.i.i, label %for.body.i99.i.i.i.i, label %calculate_micro_xs.internalized.exit.i.i.i.i

for.body.i99.i.i.i.i:                             ; preds = %if.else.i.i.i.i, %for.body.i99.i.i.i.i
  %sigT.053.i.i.i.i.i = phi double [ %add32.i.i.i.i.i, %for.body.i99.i.i.i.i ], [ %mul9.i73.i.i.i.i, %if.else.i.i.i.i ]
  %sigA.052.i.i.i.i.i = phi double [ %add36.i.i.i.i.i, %for.body.i99.i.i.i.i ], [ %mul10.i74.i.i.i.i, %if.else.i.i.i.i ]
  %sigF.051.i.i.i.i.i = phi double [ %add40.i.i.i.i.i, %for.body.i99.i.i.i.i ], [ %mul11.i75.i.i.i.i, %if.else.i.i.i.i ]
  %i.050.i.i.i.i.i = phi i32 [ %inc.i97.i.i.i.i, %for.body.i99.i.i.i.i ], [ %146, %if.else.i.i.i.i ]
  %add15.i82.i.i.i.i = add nsw i32 %i.050.i.i.i.i.i, %mul14.i76.i.i.i.i
  %idxprom16.i83.i.i.i.i = sext i32 %add15.i82.i.i.i.i to i64
  %pole.sroa.0.0..sroa_idx.i84.i.i.i.i = getelementptr inbounds %struct.Pole, %struct.Pole* %47, i64 %idxprom16.i83.i.i.i.i, i32 0, i32 0
  %pole.sroa.0.0.copyload.i85.i.i.i.i = load double, double* %pole.sroa.0.0..sroa_idx.i84.i.i.i.i, align 8, !tbaa.struct !60
  %pole.sroa.4.0..sroa_idx58.i.i.i.i.i = getelementptr inbounds %struct.Pole, %struct.Pole* %47, i64 %idxprom16.i83.i.i.i.i, i32 0, i32 1
  %pole.sroa.4.0.copyload.i86.i.i.i.i = load double, double* %pole.sroa.4.0..sroa_idx58.i.i.i.i.i, align 8, !tbaa.struct !63
  %pole.sroa.5.0..sroa_idx60.i.i.i.i.i = getelementptr inbounds %struct.Pole, %struct.Pole* %47, i64 %idxprom16.i83.i.i.i.i, i32 1, i32 0
  %pole.sroa.5.0.copyload.i87.i.i.i.i = load double, double* %pole.sroa.5.0..sroa_idx60.i.i.i.i.i, align 8, !tbaa.struct !64
  %pole.sroa.6.0..sroa_idx62.i.i.i.i.i = getelementptr inbounds %struct.Pole, %struct.Pole* %47, i64 %idxprom16.i83.i.i.i.i, i32 1, i32 1
  %pole.sroa.6.0.copyload.i88.i.i.i.i = load double, double* %pole.sroa.6.0..sroa_idx62.i.i.i.i.i, align 8, !tbaa.struct !65
  %pole.sroa.7.0..sroa_idx64.i.i.i.i.i = getelementptr inbounds %struct.Pole, %struct.Pole* %47, i64 %idxprom16.i83.i.i.i.i, i32 2, i32 0
  %pole.sroa.7.0.copyload.i89.i.i.i.i = load double, double* %pole.sroa.7.0..sroa_idx64.i.i.i.i.i, align 8, !tbaa.struct !66
  %pole.sroa.8.0..sroa_idx66.i.i.i.i.i = getelementptr inbounds %struct.Pole, %struct.Pole* %47, i64 %idxprom16.i83.i.i.i.i, i32 2, i32 1
  %pole.sroa.8.0.copyload.i90.i.i.i.i = load double, double* %pole.sroa.8.0..sroa_idx66.i.i.i.i.i, align 8, !tbaa.struct !67
  %pole.sroa.9.0..sroa_idx68.i.i.i.i.i = getelementptr inbounds %struct.Pole, %struct.Pole* %47, i64 %idxprom16.i83.i.i.i.i, i32 3, i32 0
  %pole.sroa.9.0.copyload.i91.i.i.i.i = load double, double* %pole.sroa.9.0..sroa_idx68.i.i.i.i.i, align 8, !tbaa.struct !68
  %pole.sroa.10.0..sroa_idx70.i.i.i.i.i = getelementptr inbounds %struct.Pole, %struct.Pole* %47, i64 %idxprom16.i83.i.i.i.i, i32 3, i32 1
  %pole.sroa.10.0.copyload.i92.i.i.i.i = load double, double* %pole.sroa.10.0..sroa_idx70.i.i.i.i.i, align 8, !tbaa.struct !69
  %pole.sroa.11.0..sroa_idx72.i.i.i.i.i = getelementptr inbounds %struct.Pole, %struct.Pole* %47, i64 %idxprom16.i83.i.i.i.i, i32 4
  %pole.sroa.11.0.copyload.i93.i.i.i.i = load i16, i16* %pole.sroa.11.0..sroa_idx72.i.i.i.i.i, align 8, !tbaa.struct !70
  %sub.i.i94.i.i.i.i = fsub double %pole.sroa.0.0.copyload.i85.i.i.i.i, %call.i.i.i12.i.i.i.i
  %mul5.i.i.i.i.i.i = fmul double %pole.sroa.4.0.copyload.i86.i.i.i.i, %pole.sroa.4.0.copyload.i86.i.i.i.i
  %148 = tail call double @llvm.fmuladd.f64(double %sub.i.i94.i.i.i.i, double %sub.i.i94.i.i.i.i, double %mul5.i.i.i.i.i.i) #22
  %149 = tail call double @llvm.fmuladd.f64(double %sub.i.i94.i.i.i.i, double noundef 0.000000e+00, double %pole.sroa.4.0.copyload.i86.i.i.i.i) #22
  %div.i.i.i.i.i.i = fdiv double %149, %148
  %neg.i.i95.i.i.i.i = fmul double %pole.sroa.4.0.copyload.i86.i.i.i.i, 0.000000e+00
  %150 = fsub double %sub.i.i94.i.i.i.i, %neg.i.i95.i.i.i.i
  %div9.i.i.i.i.i.i = fdiv double %150, %148
  %mul6.i.i.i.i.i.i = fmul double %div9.i.i.i.i.i.i, 0.000000e+00
  %151 = tail call double @llvm.fmuladd.f64(double %div.i.i.i.i.i.i, double %div.i.i.i.i, double %mul6.i.i.i.i.i.i) #22
  %div.i29.i.i.i.i.i = fdiv double %151, %52
  %neg.i30.i.i.i.i.i = fmul double %div.i.i.i.i.i.i, -0.000000e+00
  %152 = tail call double @llvm.fmuladd.f64(double %div9.i.i.i.i.i.i, double %div.i.i.i.i, double %neg.i30.i.i.i.i.i) #22
  %div9.i31.i.i.i.i.i = fdiv double %152, %52
  %idxprom26.i.i.i.i.i = sext i16 %pole.sroa.11.0.copyload.i93.i.i.i.i to i64
  %153 = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %2, i64 0, i64 %idxprom26.i.i.i.i.i, i32 0
  %154 = load double, double* %153, align 16
  %155 = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %2, i64 0, i64 %idxprom26.i.i.i.i.i, i32 1
  %156 = load double, double* %155, align 8
  %157 = fneg double %div9.i31.i.i.i.i.i
  %neg.i34.i.i.i.i.i = fmul double %156, %157
  %158 = tail call double @llvm.fmuladd.f64(double %div.i29.i.i.i.i.i, double %154, double %neg.i34.i.i.i.i.i) #22
  %mul7.i.i96.i.i.i.i = fmul double %div9.i31.i.i.i.i.i, %154
  %159 = tail call double @llvm.fmuladd.f64(double %div.i29.i.i.i.i.i, double %156, double %mul7.i.i96.i.i.i.i) #22
  %160 = fneg double %pole.sroa.6.0.copyload.i88.i.i.i.i
  %neg.i37.i.i.i.i.i = fmul double %159, %160
  %161 = tail call double @llvm.fmuladd.f64(double %pole.sroa.5.0.copyload.i87.i.i.i.i, double %158, double %neg.i37.i.i.i.i.i) #22
  %add32.i.i.i.i.i = fadd double %sigT.053.i.i.i.i.i, %161
  %162 = fneg double %pole.sroa.8.0.copyload.i90.i.i.i.i
  %neg.i41.i.i.i.i.i = fmul double %div9.i31.i.i.i.i.i, %162
  %163 = tail call double @llvm.fmuladd.f64(double %pole.sroa.7.0.copyload.i89.i.i.i.i, double %div.i29.i.i.i.i.i, double %neg.i41.i.i.i.i.i) #22
  %add36.i.i.i.i.i = fadd double %sigA.052.i.i.i.i.i, %163
  %164 = fneg double %pole.sroa.10.0.copyload.i92.i.i.i.i
  %neg.i45.i.i.i.i.i = fmul double %div9.i31.i.i.i.i.i, %164
  %165 = tail call double @llvm.fmuladd.f64(double %pole.sroa.9.0.copyload.i91.i.i.i.i, double %div.i29.i.i.i.i.i, double %neg.i45.i.i.i.i.i) #22
  %add40.i.i.i.i.i = fadd double %sigF.051.i.i.i.i.i, %165
  %inc.i97.i.i.i.i = add nsw i32 %i.050.i.i.i.i.i, 1
  %cmp12.i98.i.i.i.i = icmp slt i32 %inc.i97.i.i.i.i, %147
  br i1 %cmp12.i98.i.i.i.i, label %for.body.i99.i.i.i.i, label %calculate_micro_xs.internalized.exit.i.i.i.i

calculate_micro_xs.internalized.exit.i.i.i.i:     ; preds = %for.body.i99.i.i.i.i, %if.else.i.i.i.i
  %sigF.0.lcssa.i77.i.i.i.i = phi double [ %mul11.i75.i.i.i.i, %if.else.i.i.i.i ], [ %add40.i.i.i.i.i, %for.body.i99.i.i.i.i ]
  %sigA.0.lcssa.i78.i.i.i.i = phi double [ %mul10.i74.i.i.i.i, %if.else.i.i.i.i ], [ %add36.i.i.i.i.i, %for.body.i99.i.i.i.i ]
  %sigT.0.lcssa.i79.i.i.i.i = phi double [ %mul9.i73.i.i.i.i, %if.else.i.i.i.i ], [ %add32.i.i.i.i.i, %for.body.i99.i.i.i.i ]
  %sub.i80.i.i.i.i = fsub double %sigT.0.lcssa.i79.i.i.i.i, %sigA.0.lcssa.i78.i.i.i.i
  call void @llvm.lifetime.end.p0i8(i64 noundef 64, i8* noundef nonnull %17) #20
  br label %if.end.i62.i.i.i

if.end.i62.i.i.i:                                 ; preds = %calculate_micro_xs.internalized.exit.i.i.i.i, %calculate_micro_xs_doppler.internalized.exit.i.i.i.i
  %.sroa.9.0.i.i.i.i = phi double [ %sub.i.i.i.i8.i, %calculate_micro_xs_doppler.internalized.exit.i.i.i.i ], [ %sub.i80.i.i.i.i, %calculate_micro_xs.internalized.exit.i.i.i.i ]
  %.sroa.6.0.i.i.i.i = phi double [ %sigF.0.lcssa.i.i.i.i.i, %calculate_micro_xs_doppler.internalized.exit.i.i.i.i ], [ %sigF.0.lcssa.i77.i.i.i.i, %calculate_micro_xs.internalized.exit.i.i.i.i ]
  %.sroa.3.0.i.i.i.i = phi double [ %sigA.0.lcssa.i.i.i.i.i, %calculate_micro_xs_doppler.internalized.exit.i.i.i.i ], [ %sigA.0.lcssa.i78.i.i.i.i, %calculate_micro_xs.internalized.exit.i.i.i.i ]
  %.sroa.0.0.i.i.i.i = phi double [ %sigT.0.lcssa.i.i.i.i.i, %calculate_micro_xs_doppler.internalized.exit.i.i.i.i ], [ %sigT.0.lcssa.i79.i.i.i.i, %calculate_micro_xs.internalized.exit.i.i.i.i ]
  %arrayidx23.i.i.i.i = getelementptr inbounds double, double* %43, i64 %idxprom10.i.i.i.i
  %166 = load double, double* %arrayidx23.i.i.i.i, align 8, !tbaa !52
  %167 = tail call double @llvm.fmuladd.f64(double %.sroa.0.0.i.i.i.i, double %166, double %57) #20
  %168 = tail call double @llvm.fmuladd.f64(double %.sroa.3.0.i.i.i.i, double %166, double %56) #20
  %169 = tail call double @llvm.fmuladd.f64(double %.sroa.6.0.i.i.i.i, double %166, double %55) #20
  %170 = tail call double @llvm.fmuladd.f64(double %.sroa.9.0.i.i.i.i, double %166, double %54) #20
  %inc31.i.i.i.i = add nuw nsw i32 %i2.0103.i.i.i.i, 1
  %171 = load i32, i32* %arrayidx5.i.i.i.i, align 4, !tbaa !51
  %cmp6.i.i.i.i = icmp slt i32 %inc31.i.i.i.i, %171
  br i1 %cmp6.i.i.i.i, label %for.body9.i.i.i.i, label %calculate_macro_xs.internalized.exit.i.i.i

calculate_macro_xs.internalized.exit.i.i.i:       ; preds = %if.end.i62.i.i.i, %pick_mat.internalized.exit.i.i.i
  %macro_xs.sroa.0.1.i.i.i = phi double [ 0.000000e+00, %pick_mat.internalized.exit.i.i.i ], [ %167, %if.end.i62.i.i.i ]
  %macro_xs.sroa.7.1.i.i.i = phi double [ 0.000000e+00, %pick_mat.internalized.exit.i.i.i ], [ %168, %if.end.i62.i.i.i ]
  %macro_xs.sroa.11.1.i.i.i = phi double [ 0.000000e+00, %pick_mat.internalized.exit.i.i.i ], [ %169, %if.end.i62.i.i.i ]
  %macro_xs.sroa.15.1.i.i.i = phi double [ 0.000000e+00, %pick_mat.internalized.exit.i.i.i ], [ %170, %if.end.i62.i.i.i ]
  %cmp14.i.i.i = fcmp ogt double %macro_xs.sroa.0.1.i.i.i, 0xFFEFFFFFFFFFFFFF
  %max.1.i.i.i = select i1 %cmp14.i.i.i, double %macro_xs.sroa.0.1.i.i.i, double 0xFFEFFFFFFFFFFFFF
  %cmp14.1.i.i.i = fcmp ogt double %macro_xs.sroa.7.1.i.i.i, %max.1.i.i.i
  %max.1.1.i.i.i = select i1 %cmp14.1.i.i.i, double %macro_xs.sroa.7.1.i.i.i, double %max.1.i.i.i
  %cmp14.2.i.i.i = fcmp ogt double %macro_xs.sroa.11.1.i.i.i, %max.1.1.i.i.i
  %max.1.2.i.i.i = select i1 %cmp14.2.i.i.i, double %macro_xs.sroa.11.1.i.i.i, double %max.1.1.i.i.i
  %cmp14.3.i.i.i = fcmp ogt double %macro_xs.sroa.15.1.i.i.i, %max.1.2.i.i.i
  %172 = select i1 %cmp14.1.i.i.i, i64 2, i64 1
  %173 = select i1 %cmp14.2.i.i.i, i64 3, i64 %172
  %174 = select i1 %cmp14.3.i.i.i, i64 4, i64 %173
  %arrayidx21.i.i.i30 = getelementptr inbounds i64, i64* %verification, i64 %conv580.i.i.i
  %arrayidx21.i.i.i = addrspacecast i64* %arrayidx21.i.i.i30 to i64 addrspace(1)*
  store i64 %174, i64 addrspace(1)* %arrayidx21.i.i.i, align 8, !tbaa !71
  %cmp22.i.i.i = icmp eq i32 %indvars.i.i.i, 0
  br i1 %cmp22.i.i.i, label %if.then24.i.i.i, label %if.end26.i.i.i

if.then24.i.i.i:                                  ; preds = %calculate_macro_xs.internalized.exit.i.i.i
  store i32 1, i32 addrspace(1)* %offloaded_to_device.global, align 4, !tbaa !51
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.then24.i.i.i, %calculate_macro_xs.internalized.exit.i.i.i
  %add27.i.i.i = add nsw i32 %spec.select.i16.i.i.i.i, %indvars.i.i.i
  %conv5.i.i.i = sext i32 %add27.i.i.i to i64
  %cmp6.not.i.i.i = icmp ugt i64 %conv5.i.i.i, %22
  br i1 %cmp6.not.i.i.i, label %_ZN12_GLOBAL__N_115invokeMicrotaskEiiPvPS0_l.exit.loopexit.i, label %omp.inner.for.body.i.i.i

_ZN12_GLOBAL__N_115invokeMicrotaskEiiPvPS0_l.exit.loopexit.i: ; preds = %if.end26.i.i.i
  %.pre551.i = load %"struct.(anonymous namespace)::ThreadStateTy"*, %"struct.(anonymous namespace)::ThreadStateTy"* addrspace(3)* %arrayidx6.i.i, align 8, !tbaa !25
  br label %_ZN12_GLOBAL__N_115invokeMicrotaskEiiPvPS0_l.exit.i

_ZN12_GLOBAL__N_115invokeMicrotaskEiiPvPS0_l.exit.i: ; preds = %_ZN12_GLOBAL__N_115invokeMicrotaskEiiPvPS0_l.exit.loopexit.i, %__kmpc_for_static_init_4.exit.i.i.i, %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit2.i.i
  %175 = phi %"struct.(anonymous namespace)::ThreadStateTy"* [ %.pre551.i, %_ZN12_GLOBAL__N_115invokeMicrotaskEiiPvPS0_l.exit.loopexit.i ], [ %32, %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit2.i.i ], [ %32, %__kmpc_for_static_init_4.exit.i.i.i ]
  %tobool.not.i.i9.i.i = icmp eq %"struct.(anonymous namespace)::ThreadStateTy"* %175, null
  br i1 %tobool.not.i.i9.i.i, label %__kmpc_parallel_51.exit.i, label %if.end.i.i.i.i, !prof !31

if.end.i.i.i.i:                                   ; preds = %_ZN12_GLOBAL__N_115invokeMicrotaskEiiPvPS0_l.exit.i
  %PreviousThreadState4.i.i.i.i = getelementptr inbounds %"struct.(anonymous namespace)::ThreadStateTy", %"struct.(anonymous namespace)::ThreadStateTy"* %175, i64 0, i32 1
  %176 = load %"struct.(anonymous namespace)::ThreadStateTy"*, %"struct.(anonymous namespace)::ThreadStateTy"** %PreviousThreadState4.i.i.i.i, align 8, !tbaa !34
  %cmp.i.i.i.i.i = icmp uge %"struct.(anonymous namespace)::ThreadStateTy"* %175, addrspacecast (%"struct.(anonymous namespace)::ThreadStateTy" addrspace(3)* bitcast (%"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE to %"struct.(anonymous namespace)::ThreadStateTy" addrspace(3)*) to %"struct.(anonymous namespace)::ThreadStateTy"*)
  %cmp4.i.i.i.i.i = icmp ult %"struct.(anonymous namespace)::ThreadStateTy"* %175, addrspacecast (%"struct.(anonymous namespace)::ThreadStateTy" addrspace(3)* bitcast (i8 addrspace(3)* getelementptr inbounds (%"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 0) to %"struct.(anonymous namespace)::ThreadStateTy" addrspace(3)*) to %"struct.(anonymous namespace)::ThreadStateTy"*)
  %or.cond.i.i.i.i.i = and i1 %cmp.i.i.i.i.i, %cmp4.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %if.then.i.i.i.i.i, label %__kmpc_free_shared.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  %177 = load i8, i8 addrspace(3)* %arrayidx.i.i.i.i.i, align 1, !tbaa !11
  %sub.i.i.i.i.i = add i8 %177, -32
  store i8 %sub.i.i.i.i.i, i8 addrspace(3)* %arrayidx.i.i.i.i.i, align 1, !tbaa !11
  br label %__kmpc_free_shared.exit.i.i

__kmpc_free_shared.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %if.end.i.i.i.i
  store %"struct.(anonymous namespace)::ThreadStateTy"* %176, %"struct.(anonymous namespace)::ThreadStateTy"* addrspace(3)* %arrayidx6.i.i, align 8, !tbaa !25
  br label %__kmpc_parallel_51.exit.i

cond.false.i.i.i:                                 ; preds = %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit.i.i
  br i1 %tobool.not.i43.i.i.i, label %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit18.i.i, label %if.then.i.i.i.i, !prof !31

if.then.i.i.i.i:                                  ; preds = %cond.false.i.i.i
  br label %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit18.i.i

_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit18.i.i: ; preds = %if.then.i.i.i.i, %cond.false.i.i.i
  %.pn.i.i.i.i = phi i8* [ %23, %if.then.i.i.i.i ], [ addrspacecast (i8 addrspace(3)* bitcast (%"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE to i8 addrspace(3)*) to i8*), %cond.false.i.i.i ]
  %retval.0.i.i.i.i = bitcast i8* %.pn.i.i.i.i to i32*
  %178 = load i32, i32* %retval.0.i.i.i.i, align 4, !tbaa !32
  %cmp2.not.i.i.i = icmp ne i32 %178, 0
  %cmp3.i.i.i = icmp ult i32 %178, %cond.i.i.i.i
  %or.cond.i.i.i = and i1 %cmp2.not.i.i.i, %cmp3.i.i.i
  %NumThreads.0.i.i.i = select i1 %or.cond.i.i.i, i32 %178, i32 %cond.i.i.i.i
  %cmp5.i.i.i = icmp ult i32 %NumThreads.0.i.i.i, 64
  %and.i.i.i = and i32 %NumThreads.0.i.i.i, -64
  %spec.select.i.i = select i1 %cmp5.i.i.i, i32 1, i32 %and.i.i.i
  tail call fastcc void @_ZN4_OMP11synchronize14threadsAlignedEv() #21
  call void @llvm.lifetime.start.p5i8(i64 4, i8 addrspace(5)* %ParallelTeamSizeRAII.sroa.2.i.i.0.i.i.0.i.0.i.0..sroa_cast53)
  store i32 1, i32 addrspace(5)* %ParallelTeamSizeRAII.sroa.2.i.i, align 8, !tbaa !73
  br i1 %cmp.i.i.i2, label %if.else.i133.i.i, label %cond.false.i139.i.critedge.i

if.else.i133.i.i:                                 ; preds = %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit18.i.i
  tail call void @llvm.assume(i1 noundef icmp ne (i8* getelementptr inbounds ([47 x i8], [47 x i8]* addrspacecast ([47 x i8] addrspace(4)* @.str.12 to [47 x i8]*), i64 0, i64 0), i8* null)) #20
  store i32 %spec.select.i.i, i32* %cond-lvalue.i.i.i, align 8, !tbaa !32
  call void @llvm.lifetime.start.p5i8(i64 4, i8 addrspace(5)* %ActiveLevelRAII.i.i.sroa.3.0..sroa_cast52)
  %179 = load i32, i32 addrspace(3)* getelementptr inbounds (%"struct.(anonymous namespace)::TeamStateTy", %"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE, i32 0, i32 0, i32 1), align 4, !tbaa !19
  %cmp.i81.i.i.i = icmp eq i32 %179, 0
  br i1 %cmp.i81.i.i.i, label %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit19.i.i, label %if.end.i85.i.i.i, !prof !31

if.end.i85.i.i.i:                                 ; preds = %if.else.i133.i.i
  br label %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit19.i.i

_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit19.i.i: ; preds = %if.end.i85.i.i.i, %if.else.i133.i.i
  %.pn.i100.i.i.i = phi i8* [ %23, %if.end.i85.i.i.i ], [ addrspacecast (i8 addrspace(3)* bitcast (%"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE to i8 addrspace(3)*) to i8*), %if.else.i133.i.i ]
  %retval.0.in.i101.i.i.i = getelementptr inbounds i8, i8* %.pn.i100.i.i.i, i64 8
  %retval.0.i102.i.i.i = bitcast i8* %retval.0.in.i101.i.i.i to i32*
  br label %cond.end.i143.i.i

cond.false.i139.i.critedge.i:                     ; preds = %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit18.i.i
  call void @llvm.lifetime.start.p5i8(i64 4, i8 addrspace(5)* %ActiveLevelRAII.i.i.sroa.3.0..sroa_cast50)
  br label %cond.end.i143.i.i

cond.end.i143.i.i:                                ; preds = %cond.false.i139.i.critedge.i, %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit19.i.i
  %cond-lvalue.i140.i.i = phi i32* [ %retval.0.i102.i.i.i, %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit19.i.i ], [ %ActiveLevelRAII.i.i.sroa.3.0..sroa_cast, %cond.false.i139.i.critedge.i ]
  store i32 0, i32 addrspace(5)* %ActiveLevelRAII.i.i.sroa.3, align 8, !tbaa !76
  br i1 %cmp.i.i.i2, label %if.else.i151.i.i, label %cond.false.i158.i.critedge.i

if.else.i151.i.i:                                 ; preds = %cond.end.i143.i.i
  tail call void @llvm.assume(i1 noundef icmp ne (i8* getelementptr inbounds ([47 x i8], [47 x i8]* addrspacecast ([47 x i8] addrspace(4)* @.str.12 to [47 x i8]*), i64 0, i64 0), i8* null)) #20
  store i32 1, i32* %cond-lvalue.i140.i.i, align 4, !tbaa !32
  call void @llvm.lifetime.start.p5i8(i64 4, i8 addrspace(5)* %LevelRAII.i.i.sroa.4.0..sroa_cast49)
  %180 = load i32, i32 addrspace(3)* getelementptr inbounds (%"struct.(anonymous namespace)::TeamStateTy", %"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE, i32 0, i32 0, i32 1), align 4, !tbaa !19
  %cmp.i49.i20.i.i = icmp eq i32 %180, 0
  br i1 %cmp.i49.i20.i.i, label %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit32.i.i, label %if.end.i53.i28.i.i, !prof !31

if.end.i53.i28.i.i:                               ; preds = %if.else.i151.i.i
  br label %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit32.i.i

_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit32.i.i: ; preds = %if.end.i53.i28.i.i, %if.else.i151.i.i
  %.pn.i68.i29.i.i = phi i8* [ %23, %if.end.i53.i28.i.i ], [ addrspacecast (i8 addrspace(3)* bitcast (%"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE to i8 addrspace(3)*) to i8*), %if.else.i151.i.i ]
  %retval.0.in.i69.i30.i.i = getelementptr inbounds i8, i8* %.pn.i68.i29.i.i, i64 4
  %retval.0.i70.i31.i.i = bitcast i8* %retval.0.in.i69.i30.i.i to i32*
  br label %cond.end.i162.i.i

cond.false.i158.i.critedge.i:                     ; preds = %cond.end.i143.i.i
  call void @llvm.lifetime.start.p5i8(i64 4, i8 addrspace(5)* %LevelRAII.i.i.sroa.4.0..sroa_cast46)
  br label %cond.end.i162.i.i

cond.end.i162.i.i:                                ; preds = %cond.false.i158.i.critedge.i, %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit32.i.i
  %cond-lvalue.i159.i.i = phi i32* [ %retval.0.i70.i31.i.i, %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit32.i.i ], [ %LevelRAII.i.i.sroa.4.0..sroa_cast, %cond.false.i158.i.critedge.i ]
  store i32 0, i32 addrspace(5)* %LevelRAII.i.i.sroa.4, align 8, !tbaa !78
  br i1 %cmp.i.i.i2, label %if.else.i170.i.i, label %_ZN4_OMP5state9ValueRAIIINS0_5ValueIjLNS0_9ValueKindE1EEEjEC2ERS4_jjb.exit.i.i

if.else.i170.i.i:                                 ; preds = %cond.end.i162.i.i
  tail call void @llvm.assume(i1 noundef icmp ne (i8* getelementptr inbounds ([47 x i8], [47 x i8]* addrspacecast ([47 x i8] addrspace(4)* @.str.12 to [47 x i8]*), i64 0, i64 0), i8* null)) #20
  store i32 1, i32* %cond-lvalue.i159.i.i, align 4, !tbaa !32
  br label %_ZN4_OMP5state9ValueRAIIINS0_5ValueIjLNS0_9ValueKindE1EEEjEC2ERS4_jjb.exit.i.i

_ZN4_OMP5state9ValueRAIIINS0_5ValueIjLNS0_9ValueKindE1EEEjEC2ERS4_jjb.exit.i.i: ; preds = %if.else.i170.i.i, %cond.end.i162.i.i
  tail call fastcc void @_ZN4_OMP11synchronize14threadsAlignedEv() #21
  %cmp35.i.i = icmp ult i32 %4, %spec.select.i.i
  %181 = load i32, i32 addrspace(1)* %lookups.i, align 4
  %cmp.i.i15.i = icmp sgt i32 %181, 0
  %or.cond.i = select i1 %cmp35.i.i, i1 %cmp.i.i15.i, i1 false
  br i1 %or.cond.i, label %omp.precond.then.i.i19.i, label %if.end37.i.i

omp.precond.then.i.i19.i:                         ; preds = %_ZN4_OMP5state9ValueRAIIINS0_5ValueIjLNS0_9ValueKindE1EEEjEC2ERS4_jjb.exit.i.i
  br i1 %tobool.not.i43.i.i.i, label %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE1EEcvjEv.exit.i.i.i.i.i25.i, label %if.then.i44.i.i.i.i.i.i.i.i20.i, !prof !31

if.then.i44.i.i.i.i.i.i.i.i20.i:                  ; preds = %omp.precond.then.i.i19.i
  br label %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE1EEcvjEv.exit.i.i.i.i.i25.i

_ZN4_OMP5state5ValueIjLNS0_9ValueKindE1EEcvjEv.exit.i.i.i.i.i25.i: ; preds = %if.then.i44.i.i.i.i.i.i.i.i20.i, %omp.precond.then.i.i19.i
  %.pn.i45.i.pn.i.i.i.i.i.i.i21.i = phi i8* [ %23, %if.then.i44.i.i.i.i.i.i.i.i20.i ], [ addrspacecast (i8 addrspace(3)* bitcast (%"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE to i8 addrspace(3)*) to i8*), %omp.precond.then.i.i19.i ]
  %retval.0.i.in.i.i.i.i.i.i.i22.i = getelementptr inbounds i8, i8* %.pn.i45.i.pn.i.i.i.i.i.i.i21.i, i64 4
  %retval.0.i.i.i.i.i.i.i.i23.i = bitcast i8* %retval.0.i.in.i.i.i.i.i.i.i22.i to i32*
  %182 = load i32, i32* %retval.0.i.i.i.i.i.i.i.i23.i, align 4, !tbaa !32, !range !36
  %cmp.i.i.i.i.i.i24.i = icmp eq i32 %182, 0
  br i1 %cmp.i.i.i.i.i.i24.i, label %omp_get_thread_num.exit.i.i.i42.i, label %if.end.i.i.i.i.i.i26.i

if.end.i.i.i.i.i.i26.i:                           ; preds = %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE1EEcvjEv.exit.i.i.i.i.i25.i
  br i1 %tobool.not.i43.i.i.i, label %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE1EEcvjEv.exit.i.i.i.i.i.i.i32.i, label %if.then.i44.i.i.i.i.i.i.i.i.i.i27.i, !prof !31

if.then.i44.i.i.i.i.i.i.i.i.i.i27.i:              ; preds = %if.end.i.i.i.i.i.i26.i
  br label %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE1EEcvjEv.exit.i.i.i.i.i.i.i32.i

_ZN4_OMP5state5ValueIjLNS0_9ValueKindE1EEcvjEv.exit.i.i.i.i.i.i.i32.i: ; preds = %if.then.i44.i.i.i.i.i.i.i.i.i.i27.i, %if.end.i.i.i.i.i.i26.i
  %.pn.i45.i.pn.i.i.i.i.i.i.i.i.i28.i = phi i8* [ %23, %if.then.i44.i.i.i.i.i.i.i.i.i.i27.i ], [ addrspacecast (i8 addrspace(3)* bitcast (%"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE to i8 addrspace(3)*) to i8*), %if.end.i.i.i.i.i.i26.i ]
  %retval.0.i.in.i.i.i.i.i.i.i.i.i29.i = getelementptr inbounds i8, i8* %.pn.i45.i.pn.i.i.i.i.i.i.i.i.i28.i, i64 4
  %retval.0.i.i.i.i.i.i.i.i.i.i30.i = bitcast i8* %retval.0.i.in.i.i.i.i.i.i.i.i.i29.i to i32*
  %183 = load i32, i32* %retval.0.i.i.i.i.i.i.i.i.i.i30.i, align 4, !tbaa !32, !range !36
  %cmp2.i.i.i.i.i.i31.i = icmp ult i32 %183, %182
  br i1 %cmp2.i.i.i.i.i.i31.i, label %omp_get_thread_num.exit.i.i.i42.i, label %if.end4.i.i.i.i.i.i33.i, !prof !37

if.end4.i.i.i.i.i.i33.i:                          ; preds = %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE1EEcvjEv.exit.i.i.i.i.i.i.i32.i
  br i1 %tobool.not.i43.i.i.i, label %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE2EEcvjEv.exit.i.i.i.i.i.i40.i, label %if.then.i75.i.i.i.i.i.i.i.i.i34.i, !prof !31

if.then.i75.i.i.i.i.i.i.i.i.i34.i:                ; preds = %if.end4.i.i.i.i.i.i33.i
  br label %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE2EEcvjEv.exit.i.i.i.i.i.i40.i

_ZN4_OMP5state5ValueIjLNS0_9ValueKindE2EEcvjEv.exit.i.i.i.i.i.i40.i: ; preds = %if.then.i75.i.i.i.i.i.i.i.i.i34.i, %if.end4.i.i.i.i.i.i33.i
  %.pn.i76.i.pn.i.i.i.i.i.i.i.i35.i = phi i8* [ %23, %if.then.i75.i.i.i.i.i.i.i.i.i34.i ], [ addrspacecast (i8 addrspace(3)* bitcast (%"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE to i8 addrspace(3)*) to i8*), %if.end4.i.i.i.i.i.i33.i ]
  %retval.0.i.in.i.i.i.i.i.i.i.i36.i = getelementptr inbounds i8, i8* %.pn.i76.i.pn.i.i.i.i.i.i.i.i35.i, i64 8
  %retval.0.i.i.i.i.i.i.i.i.i37.i = bitcast i8* %retval.0.i.in.i.i.i.i.i.i.i.i36.i to i32*
  %184 = load i32, i32* %retval.0.i.i.i.i.i.i.i.i.i37.i, align 4, !tbaa !32
  %cmp6.not.i.i.i.i.i.i38.i = icmp eq i32 %184, %182
  %Val.DefaultVal.i.i.i.i.i.i39.i = select i1 %cmp6.not.i.i.i.i.i.i38.i, i32 %4, i32 0, !prof !31
  br label %omp_get_thread_num.exit.i.i.i42.i

omp_get_thread_num.exit.i.i.i42.i:                ; preds = %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE2EEcvjEv.exit.i.i.i.i.i.i40.i, %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE1EEcvjEv.exit.i.i.i.i.i.i.i32.i, %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE1EEcvjEv.exit.i.i.i.i.i25.i
  %retval.2.i.i.i.i.i.i41.i = phi i32 [ 0, %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE1EEcvjEv.exit.i.i.i.i.i25.i ], [ %Val.DefaultVal.i.i.i.i.i.i39.i, %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE2EEcvjEv.exit.i.i.i.i.i.i40.i ], [ -1, %_ZN4_OMP5state5ValueIjLNS0_9ValueKindE1EEcvjEv.exit.i.i.i.i.i.i.i32.i ]
  br i1 %tobool.not.i43.i.i.i, label %__kmpc_for_static_init_4.exit.i.i78.i, label %if.then.i44.i.i.i.i.i10.i.i.i43.i, !prof !31

if.then.i44.i.i.i.i.i10.i.i.i43.i:                ; preds = %omp_get_thread_num.exit.i.i.i42.i
  br label %__kmpc_for_static_init_4.exit.i.i78.i

__kmpc_for_static_init_4.exit.i.i78.i:            ; preds = %if.then.i44.i.i.i.i.i10.i.i.i43.i, %omp_get_thread_num.exit.i.i.i42.i
  %.pn.i45.i.pn.i.i.i.i11.i.i.i44.i = phi i8* [ %23, %if.then.i44.i.i.i.i.i10.i.i.i43.i ], [ addrspacecast (i8 addrspace(3)* bitcast (%"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE to i8 addrspace(3)*) to i8*), %omp_get_thread_num.exit.i.i.i42.i ]
  %retval.0.i.in.i.i.i.i12.i.i.i45.i = getelementptr inbounds i8, i8* %.pn.i45.i.pn.i.i.i.i11.i.i.i44.i, i64 4
  %retval.0.i.i.i.i.i13.i.i.i46.i = bitcast i8* %retval.0.i.in.i.i.i.i12.i.i.i45.i to i32*
  %185 = load i32, i32* %retval.0.i.i.i.i.i13.i.i.i46.i, align 4, !tbaa !32, !range !36
  %cmp.i15.i.i.i47.i = icmp ugt i32 %185, 1
  %186 = load i32, i32 addrspace(3)* getelementptr inbounds (%"struct.(anonymous namespace)::TeamStateTy", %"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE, i32 0, i32 1), align 8
  %spec.select.i16.i.i.i48.i = select i1 %cmp.i15.i.i.i47.i, i32 1, i32 %186
  %add.i.i.i.i.i49.i = add nsw i32 %retval.2.i.i.i.i.i.i41.i, %.omp.comb.lb.0540.i
  %conv577.i.i76.i = sext i32 %add.i.i.i.i.i49.i to i64
  %cmp6.not78.i.i77.i = icmp ugt i64 %conv577.i.i76.i, %22
  br i1 %cmp6.not78.i.i77.i, label %if.end37.i.i, label %omp.inner.for.body.i.i85.i

omp.inner.for.body.i.i85.i:                       ; preds = %__kmpc_for_static_init_4.exit.i.i78.i, %if.end26.i.i517.i
  %conv580.i.i79.i = phi i64 [ %conv5.i.i515.i, %if.end26.i.i517.i ], [ %conv577.i.i76.i, %__kmpc_for_static_init_4.exit.i.i78.i ]
  %indvars.i.i80.i = trunc i64 %conv580.i.i79.i to i32
  %mul8.i.i81.i = shl nsw i32 %indvars.i.i80.i, 1
  %conv9.i.i82.i = sext i32 %mul8.i.i81.i to i64
  %rem.i.i.i83.i = and i64 %conv9.i.i82.i, 9223372036854775806
  %cmp.not1.i.i.i84.i = icmp eq i64 %rem.i.i.i83.i, 0
  br i1 %cmp.not1.i.i.i84.i, label %fast_forward_LCG.internalized.exit.i.i122.i, label %while.body.i.i.i93.i

while.body.i.i.i93.i:                             ; preds = %omp.inner.for.body.i.i85.i, %if.end.i.i.i105.i
  %c_new.06.i.i.i86.i = phi i64 [ %c_new.1.i.i.i99.i, %if.end.i.i.i105.i ], [ 0, %omp.inner.for.body.i.i85.i ]
  %a_new.05.i.i.i87.i = phi i64 [ %a_new.1.i.i.i98.i, %if.end.i.i.i105.i ], [ 1, %omp.inner.for.body.i.i85.i ]
  %c.04.i.i.i88.i = phi i64 [ %mul3.i.i.i101.i, %if.end.i.i.i105.i ], [ 1, %omp.inner.for.body.i.i85.i ]
  %a.03.i.i.i89.i = phi i64 [ %mul4.i.i.i102.i, %if.end.i.i.i105.i ], [ 2806196910506780709, %omp.inner.for.body.i.i85.i ]
  %n.addr.02.i.i.i90.i = phi i64 [ %shr.i.i.i103.i, %if.end.i.i.i105.i ], [ %rem.i.i.i83.i, %omp.inner.for.body.i.i85.i ]
  %and.i.i.i91.i = and i64 %n.addr.02.i.i.i90.i, 1
  %tobool.not.i.i.i92.i = icmp eq i64 %and.i.i.i91.i, 0
  br i1 %tobool.not.i.i.i92.i, label %if.end.i.i.i105.i, label %if.then.i.i.i97.i

if.then.i.i.i97.i:                                ; preds = %while.body.i.i.i93.i
  %mul.i.i.i94.i = mul i64 %a.03.i.i.i89.i, %a_new.05.i.i.i87.i
  %mul1.i.i.i95.i = mul i64 %a.03.i.i.i89.i, %c_new.06.i.i.i86.i
  %add.i.i.i96.i = add i64 %mul1.i.i.i95.i, %c.04.i.i.i88.i
  br label %if.end.i.i.i105.i

if.end.i.i.i105.i:                                ; preds = %if.then.i.i.i97.i, %while.body.i.i.i93.i
  %a_new.1.i.i.i98.i = phi i64 [ %mul.i.i.i94.i, %if.then.i.i.i97.i ], [ %a_new.05.i.i.i87.i, %while.body.i.i.i93.i ]
  %c_new.1.i.i.i99.i = phi i64 [ %add.i.i.i96.i, %if.then.i.i.i97.i ], [ %c_new.06.i.i.i86.i, %while.body.i.i.i93.i ]
  %add2.i.i.i100.i = add i64 %a.03.i.i.i89.i, 1
  %mul3.i.i.i101.i = mul i64 %add2.i.i.i100.i, %c.04.i.i.i88.i
  %mul4.i.i.i102.i = mul i64 %a.03.i.i.i89.i, %a.03.i.i.i89.i
  %shr.i.i.i103.i = lshr i64 %n.addr.02.i.i.i90.i, 1
  %cmp.not.i.i.i104.i = icmp ult i64 %n.addr.02.i.i.i90.i, 2
  br i1 %cmp.not.i.i.i104.i, label %fast_forward_LCG.internalized.exit.i.i122.i, label %while.body.i.i.i93.i

fast_forward_LCG.internalized.exit.i.i122.i:      ; preds = %if.end.i.i.i105.i, %omp.inner.for.body.i.i85.i
  %a_new.0.lcssa.i.i.i106.i = phi i64 [ 1, %omp.inner.for.body.i.i85.i ], [ %a_new.1.i.i.i98.i, %if.end.i.i.i105.i ]
  %c_new.0.lcssa.i.i.i107.i = phi i64 [ 0, %omp.inner.for.body.i.i85.i ], [ %c_new.1.i.i.i99.i, %if.end.i.i.i105.i ]
  %mul5.i.i.i108.i = mul i64 %a_new.0.lcssa.i.i.i106.i, 1070
  %add6.i.i.i109.i = add i64 %mul5.i.i.i108.i, %c_new.0.lcssa.i.i.i107.i
  %rem7.i.i.i110.i = and i64 %add6.i.i.i109.i, 9223372036854775807
  %mul.i51.i.i111.i = mul i64 %rem7.i.i.i110.i, 2806196910506780709
  %add.i52.i.i112.i = add i64 %mul.i51.i.i111.i, 1
  %rem.i53.i.i113.i = and i64 %add.i52.i.i112.i, 9223372036854775807
  %conv.i.i.i114.i = uitofp i64 %rem.i53.i.i113.i to double
  %div.i.i.i115.i = fmul double %conv.i.i.i114.i, 0x3C00000000000000
  %mul.i.i.i.i116.i = mul i64 %rem.i53.i.i113.i, 2806196910506780709
  %add.i.i.i.i117.i = add i64 %mul.i.i.i.i116.i, 1
  %rem.i.i.i.i118.i = and i64 %add.i.i.i.i117.i, 9223372036854775807
  %conv.i.i.i.i119.i = uitofp i64 %rem.i.i.i.i118.i to double
  %div.i.i.i.i120.i = fmul double %conv.i.i.i.i119.i, 0x3C00000000000000
  %cmp17.1.i.i.i121.i = fcmp olt double %div.i.i.i.i120.i, 5.200000e-02
  br i1 %cmp17.1.i.i.i121.i, label %pick_mat.internalized.exit.i.i150.i, label %for.cond.cleanup14.2.i.i.i124.i

for.cond.cleanup14.2.i.i.i124.i:                  ; preds = %fast_forward_LCG.internalized.exit.i.i122.i
  %cmp17.2.i.i.i123.i = fcmp olt double %div.i.i.i.i120.i, 3.270000e-01
  br i1 %cmp17.2.i.i.i123.i, label %pick_mat.internalized.exit.i.i150.i, label %for.cond.cleanup14.3.i.i.i126.i

for.cond.cleanup14.3.i.i.i126.i:                  ; preds = %for.cond.cleanup14.2.i.i.i124.i
  %cmp17.3.i.i.i125.i = fcmp olt double %div.i.i.i.i120.i, 4.610000e-01
  br i1 %cmp17.3.i.i.i125.i, label %pick_mat.internalized.exit.i.i150.i, label %for.cond.cleanup14.4.i.i.i128.i

for.cond.cleanup14.4.i.i.i128.i:                  ; preds = %for.cond.cleanup14.3.i.i.i126.i
  %cmp17.4.i.i.i127.i = fcmp olt double %div.i.i.i.i120.i, 0x3FE3AE147AE147AF
  br i1 %cmp17.4.i.i.i127.i, label %pick_mat.internalized.exit.i.i150.i, label %for.cond.cleanup14.5.i.i.i130.i

for.cond.cleanup14.5.i.i.i130.i:                  ; preds = %for.cond.cleanup14.4.i.i.i128.i
  %cmp17.5.i.i.i129.i = fcmp olt double %div.i.i.i.i120.i, 6.790000e-01
  br i1 %cmp17.5.i.i.i129.i, label %pick_mat.internalized.exit.i.i150.i, label %for.cond.cleanup14.6.i.i.i132.i

for.cond.cleanup14.6.i.i.i132.i:                  ; preds = %for.cond.cleanup14.5.i.i.i130.i
  %cmp17.6.i.i.i131.i = fcmp olt double %div.i.i.i.i120.i, 0x3FE7D70A3D70A3D8
  br i1 %cmp17.6.i.i.i131.i, label %pick_mat.internalized.exit.i.i150.i, label %for.cond.cleanup14.7.i.i.i134.i

for.cond.cleanup14.7.i.i.i134.i:                  ; preds = %for.cond.cleanup14.6.i.i.i132.i
  %cmp17.7.i.i.i133.i = fcmp olt double %div.i.i.i.i120.i, 8.000000e-01
  br i1 %cmp17.7.i.i.i133.i, label %pick_mat.internalized.exit.i.i150.i, label %for.cond.cleanup14.8.i.i.i136.i

for.cond.cleanup14.8.i.i.i136.i:                  ; preds = %for.cond.cleanup14.7.i.i.i134.i
  %cmp17.8.i.i.i135.i = fcmp olt double %div.i.i.i.i120.i, 8.080000e-01
  br i1 %cmp17.8.i.i.i135.i, label %pick_mat.internalized.exit.i.i150.i, label %for.cond.cleanup14.9.i.i.i138.i

for.cond.cleanup14.9.i.i.i138.i:                  ; preds = %for.cond.cleanup14.8.i.i.i136.i
  %cmp17.9.i.i.i137.i = fcmp olt double %div.i.i.i.i120.i, 0x3FEA5604189374BD
  br i1 %cmp17.9.i.i.i137.i, label %pick_mat.internalized.exit.i.i150.i, label %for.cond.cleanup14.10.i.i.i140.i

for.cond.cleanup14.10.i.i.i140.i:                 ; preds = %for.cond.cleanup14.9.i.i.i138.i
  %cmp17.10.i.i.i139.i = fcmp olt double %div.i.i.i.i120.i, 0x3FEB22D0E560418A
  br i1 %cmp17.10.i.i.i139.i, label %pick_mat.internalized.exit.i.i150.i, label %for.cond.cleanup14.11.i.i.i142.i

for.cond.cleanup14.11.i.i.i142.i:                 ; preds = %for.cond.cleanup14.10.i.i.i140.i
  %cmp17.11.i.i.i141.i = fcmp olt double %div.i.i.i.i120.i, 0x3FEB8D4FDF3B645B
  br i1 %cmp17.11.i.i.i141.i, label %pick_mat.internalized.exit.i.i150.i, label %for.inc18.11.i.i.i143.i

for.inc18.11.i.i.i143.i:                          ; preds = %for.cond.cleanup14.11.i.i.i142.i
  br label %pick_mat.internalized.exit.i.i150.i

pick_mat.internalized.exit.i.i150.i:              ; preds = %for.inc18.11.i.i.i143.i, %for.cond.cleanup14.11.i.i.i142.i, %for.cond.cleanup14.10.i.i.i140.i, %for.cond.cleanup14.9.i.i.i138.i, %for.cond.cleanup14.8.i.i.i136.i, %for.cond.cleanup14.7.i.i.i134.i, %for.cond.cleanup14.6.i.i.i132.i, %for.cond.cleanup14.5.i.i.i130.i, %for.cond.cleanup14.4.i.i.i128.i, %for.cond.cleanup14.3.i.i.i126.i, %for.cond.cleanup14.2.i.i.i124.i, %fast_forward_LCG.internalized.exit.i.i122.i
  %spec.select.i.i.i144.i = phi i32 [ 1, %fast_forward_LCG.internalized.exit.i.i122.i ], [ 2, %for.cond.cleanup14.2.i.i.i124.i ], [ 3, %for.cond.cleanup14.3.i.i.i126.i ], [ 4, %for.cond.cleanup14.4.i.i.i128.i ], [ 5, %for.cond.cleanup14.5.i.i.i130.i ], [ 6, %for.cond.cleanup14.6.i.i.i132.i ], [ 7, %for.cond.cleanup14.7.i.i.i134.i ], [ 8, %for.cond.cleanup14.8.i.i.i136.i ], [ 9, %for.cond.cleanup14.9.i.i.i138.i ], [ 10, %for.cond.cleanup14.10.i.i.i140.i ], [ 11, %for.cond.cleanup14.11.i.i.i142.i ], [ 0, %for.inc18.11.i.i.i143.i ]
  %187 = load i32*, i32* addrspace(1)* %num_nucs.i.i.i, align 8, !tbaa !38
  %188 = load i32*, i32* addrspace(1)* %mats.i.i.i, align 8, !tbaa !42
  %189 = load i32, i32 addrspace(1)* %max_num_nucs.i.i.i, align 8, !tbaa !43
  %190 = load double*, double* addrspace(1)* %concs.i.i.i, align 8, !tbaa !44
  %191 = load i32*, i32* addrspace(1)* %n_windows.i.i.i, align 8, !tbaa !45
  %192 = load double*, double* addrspace(1)* %pseudo_K0RS.i.i.i, align 8, !tbaa !46
  %193 = load %struct.Window*, %struct.Window* addrspace(1)* %windows.i.i.i, align 8, !tbaa !47
  %194 = load %struct.Pole*, %struct.Pole* addrspace(1)* %poles.i.i.i, align 8, !tbaa !48
  %195 = load i32, i32 addrspace(1)* %max_num_windows.i.i.i, align 8, !tbaa !49
  %196 = load i32, i32 addrspace(1)* %max_num_poles.i.i.i, align 4, !tbaa !50
  %197 = load i32, i32 addrspace(1)* %15, align 4
  %198 = load i32, i32 addrspace(1)* %16, align 4
  %idxprom4.i70.i.i145.i = zext i32 %spec.select.i.i.i144.i to i64
  %arrayidx5.i.i.i146.i = getelementptr inbounds i32, i32* %187, i64 %idxprom4.i70.i.i145.i
  %mul.i54.i.i147.i = mul nsw i32 %189, %spec.select.i.i.i144.i
  %cmp12.i.i.i148.i = icmp eq i32 %198, 1
  %199 = tail call double @llvm.fmuladd.f64(double %div.i.i.i115.i, double %div.i.i.i115.i, double noundef 0.000000e+00) #22
  %200 = load i32, i32* %arrayidx5.i.i.i146.i, align 4, !tbaa !51
  %cmp6102.i.i.i149.i = icmp sgt i32 %200, 0
  br i1 %cmp6102.i.i.i149.i, label %for.body9.i.i.i155.i, label %calculate_macro_xs.internalized.exit.i.i512.i

for.body9.i.i.i155.i:                             ; preds = %pick_mat.internalized.exit.i.i150.i, %if.end.i62.i.i498.i
  %201 = phi double [ %317, %if.end.i62.i.i498.i ], [ 0.000000e+00, %pick_mat.internalized.exit.i.i150.i ]
  %202 = phi double [ %316, %if.end.i62.i.i498.i ], [ 0.000000e+00, %pick_mat.internalized.exit.i.i150.i ]
  %203 = phi double [ %315, %if.end.i62.i.i498.i ], [ 0.000000e+00, %pick_mat.internalized.exit.i.i150.i ]
  %204 = phi double [ %314, %if.end.i62.i.i498.i ], [ 0.000000e+00, %pick_mat.internalized.exit.i.i150.i ]
  %i2.0103.i.i.i151.i = phi i32 [ %inc31.i.i.i496.i, %if.end.i62.i.i498.i ], [ 0, %pick_mat.internalized.exit.i.i150.i ]
  %add.i55.i.i152.i = add nsw i32 %i2.0103.i.i.i151.i, %mul.i54.i.i147.i
  %idxprom10.i.i.i153.i = sext i32 %add.i55.i.i152.i to i64
  %arrayidx11.i.i.i154.i = getelementptr inbounds i32, i32* %188, i64 %idxprom10.i.i.i153.i
  %205 = load i32, i32* %arrayidx11.i.i.i154.i, align 4, !tbaa !51
  br i1 %cmp12.i.i.i148.i, label %if.then.i60.i.i229.i, label %if.else.i.i.i440.i

if.then.i60.i.i229.i:                             ; preds = %for.body9.i.i.i155.i
  call void @llvm.lifetime.start.p0i8(i64 noundef 64, i8* noundef %20) #20
  %idxprom.i.i.i.i156.i = sext i32 %205 to i64
  %arrayidx.i.i.i.i157.i = getelementptr inbounds i32, i32* %191, i64 %idxprom.i.i.i.i156.i
  %206 = load i32, i32* %arrayidx.i.i.i.i157.i, align 4, !tbaa !51
  %conv.i.i56.i.i158.i = sitofp i32 %206 to double
  %div.i.i57.i.i159.i = fdiv double 1.000000e+00, %conv.i.i56.i.i158.i
  %div2.i.i.i.i160.i = fdiv double %div.i.i.i115.i, %div.i.i57.i.i159.i
  %conv3.i.i.i.i161.i = fptosi double %div2.i.i.i.i160.i to i32
  %cmp.i.i.i.i162.i = icmp eq i32 %206, %conv3.i.i.i.i161.i
  %dec.i.i.i.i163.i = sext i1 %cmp.i.i.i.i162.i to i32
  %mul.i.i.i.i.i164.i = mul nsw i32 %205, %197
  %idxprom.i.i.i.i.i165.i = sext i32 %mul.i.i.i.i.i164.i to i64
  %arrayidx.i.i.i.i.i166.i = getelementptr inbounds double, double* %192, i64 %idxprom.i.i.i.i.i165.i
  %207 = load double, double* %arrayidx.i.i.i.i.i166.i, align 8, !tbaa !52
  %call.i.i.i.i.i.i167.i = tail call double @__ocml_sqrt_f64(double noundef %div.i.i.i115.i) #23
  %mul2.i.i.i.i.i168.i = fmul double %207, %call.i.i.i.i.i.i167.i
  %mul25.i.i.i.i.i169.i = fmul double %mul2.i.i.i.i.i168.i, 2.000000e+00
  %call.i4.i.i.i.i.i170.i = tail call double @__ocml_cos_f64(double noundef %mul25.i.i.i.i.i169.i) #24
  store double %call.i4.i.i.i.i.i170.i, double* %r.i.i.i.i.i68.i, align 16, !tbaa !54
  %call.i5.i.i.i.i.i171.i = tail call double @__ocml_sin_f64(double noundef %mul25.i.i.i.i.i169.i) #24
  %fneg30.i.i.i.i.i172.i = fneg double %call.i5.i.i.i.i.i171.i
  store double %fneg30.i.i.i.i.i172.i, double* %i33.i.i.i.i.i69.i, align 8, !tbaa !56
  %add.1.i.i.i.i.i173.i = add nsw i32 %mul.i.i.i.i.i164.i, 1
  %idxprom.1.i.i.i.i.i174.i = sext i32 %add.1.i.i.i.i.i173.i to i64
  %arrayidx.1.i.i.i.i.i175.i = getelementptr inbounds double, double* %192, i64 %idxprom.1.i.i.i.i.i174.i
  %208 = load double, double* %arrayidx.1.i.i.i.i.i175.i, align 8, !tbaa !52
  %mul2.1.i.i.i.i.i176.i = fmul double %call.i.i.i.i.i.i167.i, %208
  %call.i1.1.i.i.i.i.i177.i = tail call double @__ocml_atan_f64(double noundef %mul2.1.i.i.i.i.i176.i) #23
  %sub.1.i.i.i.i.i178.i = fadd double %mul2.1.i.i.i.i.i176.i, %call.i1.1.i.i.i.i.i177.i
  %mul25.1.i.i.i.i.i179.i = fmul double %sub.1.i.i.i.i.i178.i, 2.000000e+00
  %call.i4.1.i.i.i.i.i180.i = tail call double @__ocml_cos_f64(double noundef %mul25.1.i.i.i.i.i179.i) #24
  store double %call.i4.1.i.i.i.i.i180.i, double* %r.1.i.i.i.i.i70.i, align 16, !tbaa !54
  %call.i5.1.i.i.i.i.i181.i = tail call double @__ocml_sin_f64(double noundef %mul25.1.i.i.i.i.i179.i) #24
  %fneg30.1.i.i.i.i.i182.i = fneg double %call.i5.1.i.i.i.i.i181.i
  store double %fneg30.1.i.i.i.i.i182.i, double* %i33.1.i.i.i.i.i71.i, align 8, !tbaa !56
  %add.2.i.i.i.i.i183.i = add nsw i32 %mul.i.i.i.i.i164.i, 2
  %idxprom.2.i.i.i.i.i184.i = sext i32 %add.2.i.i.i.i.i183.i to i64
  %arrayidx.2.i.i.i.i.i185.i = getelementptr inbounds double, double* %192, i64 %idxprom.2.i.i.i.i.i184.i
  %209 = load double, double* %arrayidx.2.i.i.i.i.i185.i, align 8, !tbaa !52
  %mul2.2.i.i.i.i.i186.i = fmul double %call.i.i.i.i.i.i167.i, %209
  %mul7.2.i.i.i.i.i187.i = fmul double %mul2.2.i.i.i.i.i186.i, 3.000000e+00
  %neg.2.i.i.i.i.i188.i = fneg double %mul2.2.i.i.i.i.i186.i
  %210 = tail call double @llvm.fmuladd.f64(double %neg.2.i.i.i.i.i188.i, double %mul2.2.i.i.i.i.i186.i, double noundef 3.000000e+00) #20
  %div.2.i.i.i.i.i189.i = fdiv double %mul7.2.i.i.i.i.i187.i, %210
  %call.i2.2.i.i.i.i.i190.i = tail call double @__ocml_atan_f64(double noundef %div.2.i.i.i.i.i189.i) #23
  %sub10.2.i.i.i.i.i191.i = fsub double %mul2.2.i.i.i.i.i186.i, %call.i2.2.i.i.i.i.i190.i
  %mul25.2.i.i.i.i.i192.i = fmul double %sub10.2.i.i.i.i.i191.i, 2.000000e+00
  %call.i4.2.i.i.i.i.i193.i = tail call double @__ocml_cos_f64(double noundef %mul25.2.i.i.i.i.i192.i) #24
  store double %call.i4.2.i.i.i.i.i193.i, double* %r.2.i.i.i.i.i72.i, align 16, !tbaa !54
  %call.i5.2.i.i.i.i.i194.i = tail call double @__ocml_sin_f64(double noundef %mul25.2.i.i.i.i.i192.i) #24
  %fneg30.2.i.i.i.i.i195.i = fneg double %call.i5.2.i.i.i.i.i194.i
  store double %fneg30.2.i.i.i.i.i195.i, double* %i33.2.i.i.i.i.i73.i, align 8, !tbaa !56
  %add.3.i.i.i.i.i196.i = add nsw i32 %mul.i.i.i.i.i164.i, 3
  %idxprom.3.i.i.i.i.i197.i = sext i32 %add.3.i.i.i.i.i196.i to i64
  %arrayidx.3.i.i.i.i.i198.i = getelementptr inbounds double, double* %192, i64 %idxprom.3.i.i.i.i.i197.i
  %211 = load double, double* %arrayidx.3.i.i.i.i.i198.i, align 8, !tbaa !52
  %mul2.3.i.i.i.i.i199.i = fmul double %call.i.i.i.i.i.i167.i, %211
  %neg15.3.i.i.i.i.i200.i = fneg double %mul2.3.i.i.i.i.i199.i
  %212 = tail call double @llvm.fmuladd.f64(double %neg15.3.i.i.i.i.i200.i, double %mul2.3.i.i.i.i.i199.i, double noundef 1.500000e+01) #20
  %mul16.3.i.i.i.i.i201.i = fmul double %mul2.3.i.i.i.i.i199.i, %212
  %neg19.3.i.i.i.i.i202.i = fmul double %mul2.3.i.i.i.i.i199.i, -6.000000e+00
  %213 = tail call double @llvm.fmuladd.f64(double %neg19.3.i.i.i.i.i202.i, double %mul2.3.i.i.i.i.i199.i, double noundef 1.500000e+01) #20
  %div20.3.i.i.i.i.i203.i = fdiv double %mul16.3.i.i.i.i.i201.i, %213
  %call.i3.3.i.i.i.i.i204.i = tail call double @__ocml_atan_f64(double noundef %div20.3.i.i.i.i.i203.i) #23
  %sub22.3.i.i.i.i.i205.i = fsub double %mul2.3.i.i.i.i.i199.i, %call.i3.3.i.i.i.i.i204.i
  %mul25.3.i.i.i.i.i206.i = fmul double %sub22.3.i.i.i.i.i205.i, 2.000000e+00
  %call.i4.3.i.i.i.i.i207.i = tail call double @__ocml_cos_f64(double noundef %mul25.3.i.i.i.i.i206.i) #24
  store double %call.i4.3.i.i.i.i.i207.i, double* %r.3.i.i.i.i.i74.i, align 16, !tbaa !54
  %call.i5.3.i.i.i.i.i208.i = tail call double @__ocml_sin_f64(double noundef %mul25.3.i.i.i.i.i206.i) #24
  %fneg30.3.i.i.i.i.i209.i = fneg double %call.i5.3.i.i.i.i.i208.i
  store double %fneg30.3.i.i.i.i.i209.i, double* %i33.3.i.i.i.i.i75.i, align 8, !tbaa !56
  %mul.i.i58.i.i210.i = mul nsw i32 %205, %195
  %spec.select.i.i.i.i211.i = add i32 %mul.i.i58.i.i210.i, %conv3.i.i.i.i161.i
  %add.i.i59.i.i212.i = add i32 %spec.select.i.i.i.i211.i, %dec.i.i.i.i163.i
  %idxprom7.i.i.i.i213.i = sext i32 %add.i.i59.i.i212.i to i64
  %w.sroa.0.0..sroa_idx.i.i.i.i214.i = getelementptr inbounds %struct.Window, %struct.Window* %193, i64 %idxprom7.i.i.i.i213.i, i32 0
  %w.sroa.0.0.copyload.i.i.i.i215.i = load double, double* %w.sroa.0.0..sroa_idx.i.i.i.i214.i, align 8, !tbaa.struct !57
  %w.sroa.4.0..sroa_idx81.i.i.i.i216.i = getelementptr inbounds %struct.Window, %struct.Window* %193, i64 %idxprom7.i.i.i.i213.i, i32 1
  %w.sroa.4.0.copyload.i.i.i.i217.i = load double, double* %w.sroa.4.0..sroa_idx81.i.i.i.i216.i, align 8, !tbaa.struct !58
  %w.sroa.5.0..sroa_idx83.i.i.i.i218.i = getelementptr inbounds %struct.Window, %struct.Window* %193, i64 %idxprom7.i.i.i.i213.i, i32 2
  %w.sroa.5.0.copyload.i.i.i.i219.i = load double, double* %w.sroa.5.0..sroa_idx83.i.i.i.i218.i, align 8, !tbaa.struct !59
  %w.sroa.6.0..sroa_idx85.i.i.i.i220.i = getelementptr inbounds %struct.Window, %struct.Window* %193, i64 %idxprom7.i.i.i.i213.i, i32 3
  %214 = bitcast i32* %w.sroa.6.0..sroa_idx85.i.i.i.i220.i to <2 x i32>*
  %215 = load <2 x i32>, <2 x i32>* %214, align 8
  %mul9.i.i.i.i224.i = fmul double %div.i.i.i115.i, %w.sroa.0.0.copyload.i.i.i.i215.i
  %mul10.i.i.i.i225.i = fmul double %div.i.i.i115.i, %w.sroa.4.0.copyload.i.i.i.i217.i
  %mul11.i.i.i.i226.i = fmul double %div.i.i.i115.i, %w.sroa.5.0.copyload.i.i.i.i219.i
  %mul14.i.i.i.i227.i = mul nsw i32 %205, %196
  %216 = extractelement <2 x i32> %215, i64 0
  %217 = extractelement <2 x i32> %215, i64 1
  %cmp1247.i.i.i.i228.i = icmp slt i32 %216, %217
  br i1 %cmp1247.i.i.i.i228.i, label %for.body.i.i.i.i261.i, label %calculate_micro_xs_doppler.internalized.exit.i.i.i366.i

for.body.i.i.i.i261.i:                            ; preds = %if.then.i60.i.i229.i, %fast_nuclear_W.internalized.exit.i.i.i.i361.i
  %sigT.051.i.i.i.i230.i = phi double [ %add30.i.i.i.i354.i, %fast_nuclear_W.internalized.exit.i.i.i.i361.i ], [ %mul9.i.i.i.i224.i, %if.then.i60.i.i229.i ]
  %sigA.050.i.i.i.i231.i = phi double [ %add34.i.i.i.i356.i, %fast_nuclear_W.internalized.exit.i.i.i.i361.i ], [ %mul10.i.i.i.i225.i, %if.then.i60.i.i229.i ]
  %sigF.049.i.i.i.i232.i = phi double [ %add38.i.i.i.i358.i, %fast_nuclear_W.internalized.exit.i.i.i.i361.i ], [ %mul11.i.i.i.i226.i, %if.then.i60.i.i229.i ]
  %i.048.i.i.i.i233.i = phi i32 [ %inc.i.i.i.i359.i, %fast_nuclear_W.internalized.exit.i.i.i.i361.i ], [ %216, %if.then.i60.i.i229.i ]
  %add15.i.i.i.i234.i = add nsw i32 %i.048.i.i.i.i233.i, %mul14.i.i.i.i227.i
  %idxprom16.i.i.i.i235.i = sext i32 %add15.i.i.i.i234.i to i64
  %pole.sroa.0.0..sroa_idx.i.i.i.i236.i = getelementptr inbounds %struct.Pole, %struct.Pole* %194, i64 %idxprom16.i.i.i.i235.i, i32 0, i32 0
  %pole.sroa.0.0.copyload.i.i.i.i237.i = load double, double* %pole.sroa.0.0..sroa_idx.i.i.i.i236.i, align 8, !tbaa.struct !60
  %pole.sroa.4.0..sroa_idx56.i.i.i.i238.i = getelementptr inbounds %struct.Pole, %struct.Pole* %194, i64 %idxprom16.i.i.i.i235.i, i32 0, i32 1
  %pole.sroa.4.0.copyload.i.i.i.i239.i = load double, double* %pole.sroa.4.0..sroa_idx56.i.i.i.i238.i, align 8, !tbaa.struct !63
  %pole.sroa.5.0..sroa_idx58.i.i.i.i240.i = getelementptr inbounds %struct.Pole, %struct.Pole* %194, i64 %idxprom16.i.i.i.i235.i, i32 1, i32 0
  %pole.sroa.5.0.copyload.i.i.i.i241.i = load double, double* %pole.sroa.5.0..sroa_idx58.i.i.i.i240.i, align 8, !tbaa.struct !64
  %pole.sroa.6.0..sroa_idx60.i.i.i.i242.i = getelementptr inbounds %struct.Pole, %struct.Pole* %194, i64 %idxprom16.i.i.i.i235.i, i32 1, i32 1
  %pole.sroa.6.0.copyload.i.i.i.i243.i = load double, double* %pole.sroa.6.0..sroa_idx60.i.i.i.i242.i, align 8, !tbaa.struct !65
  %pole.sroa.7.0..sroa_idx62.i.i.i.i244.i = getelementptr inbounds %struct.Pole, %struct.Pole* %194, i64 %idxprom16.i.i.i.i235.i, i32 2, i32 0
  %pole.sroa.7.0.copyload.i.i.i.i245.i = load double, double* %pole.sroa.7.0..sroa_idx62.i.i.i.i244.i, align 8, !tbaa.struct !66
  %pole.sroa.8.0..sroa_idx64.i.i.i.i246.i = getelementptr inbounds %struct.Pole, %struct.Pole* %194, i64 %idxprom16.i.i.i.i235.i, i32 2, i32 1
  %pole.sroa.8.0.copyload.i.i.i.i247.i = load double, double* %pole.sroa.8.0..sroa_idx64.i.i.i.i246.i, align 8, !tbaa.struct !67
  %pole.sroa.9.0..sroa_idx66.i.i.i.i248.i = getelementptr inbounds %struct.Pole, %struct.Pole* %194, i64 %idxprom16.i.i.i.i235.i, i32 3, i32 0
  %pole.sroa.9.0.copyload.i.i.i.i249.i = load double, double* %pole.sroa.9.0..sroa_idx66.i.i.i.i248.i, align 8, !tbaa.struct !68
  %pole.sroa.10.0..sroa_idx68.i.i.i.i250.i = getelementptr inbounds %struct.Pole, %struct.Pole* %194, i64 %idxprom16.i.i.i.i235.i, i32 3, i32 1
  %pole.sroa.10.0.copyload.i.i.i.i251.i = load double, double* %pole.sroa.10.0..sroa_idx68.i.i.i.i250.i, align 8, !tbaa.struct !69
  %pole.sroa.11.0..sroa_idx70.i.i.i.i252.i = getelementptr inbounds %struct.Pole, %struct.Pole* %194, i64 %idxprom16.i.i.i.i235.i, i32 4
  %pole.sroa.11.0.copyload.i.i.i.i253.i = load i16, i16* %pole.sroa.11.0..sroa_idx70.i.i.i.i252.i, align 8, !tbaa.struct !70
  %sub.i.i.i.i.i254.i = fsub double %div.i.i.i115.i, %pole.sroa.0.0.copyload.i.i.i.i237.i
  %sub6.i.i.i.i.i255.i = fsub double 0.000000e+00, %pole.sroa.4.0.copyload.i.i.i.i239.i
  %neg.i.i.i.i.i256.i = fmul double %sub6.i.i.i.i.i255.i, -0.000000e+00
  %218 = tail call double @llvm.fmuladd.f64(double %sub.i.i.i.i.i254.i, double noundef 5.000000e-01, double %neg.i.i.i.i.i256.i) #22
  %mul7.i.i.i.i.i257.i = fmul double %sub6.i.i.i.i.i255.i, 5.000000e-01
  %219 = tail call double @llvm.fmuladd.f64(double %sub.i.i.i.i.i254.i, double noundef 0.000000e+00, double %mul7.i.i.i.i.i257.i) #22
  %mul4.i.i.i.i.i.i258.i = fmul double %219, %219
  %220 = tail call double @llvm.fmuladd.f64(double %218, double %218, double %mul4.i.i.i.i.i.i258.i) #22
  %call.i.i.i.i.i.i.i259.i = tail call double @__ocml_sqrt_f64(double noundef %220) #23
  %cmp.i.i.i61.i.i260.i = fcmp olt double %call.i.i.i.i.i.i.i259.i, 6.000000e+00
  br i1 %cmp.i.i.i61.i.i260.i, label %if.then.i.i.i.i.i289.i, label %if.else.i.i.i.i.i347.i

if.then.i.i.i.i.i289.i:                           ; preds = %for.body.i.i.i.i261.i
  %neg.i.i.i.i.i.i262.i = fmul double %219, -1.200000e+01
  %221 = tail call double @llvm.fmuladd.f64(double %218, double noundef 0.000000e+00, double %neg.i.i.i.i.i.i262.i) #22
  %mul7.i.i.i.i.i.i263.i = fmul double %218, 1.200000e+01
  %222 = tail call double @llvm.fmuladd.f64(double %219, double noundef 0.000000e+00, double %mul7.i.i.i.i.i.i263.i) #22
  %223 = tail call double @llvm.fmuladd.f64(double noundef %221, double noundef 0x3F30000000000000, double noundef 1.000000e+00) #22
  %mul.i.i.i.i.i.i.i264.i = fmul double %223, %223
  %mul1.i.i.i.i.i.i.i265.i = fmul double %mul.i.i.i.i.i.i.i264.i, %mul.i.i.i.i.i.i.i264.i
  %mul2.i.i.i.i.i.i.i266.i = fmul double %mul1.i.i.i.i.i.i.i265.i, %mul1.i.i.i.i.i.i.i265.i
  %mul3.i.i.i.i.i.i.i267.i = fmul double %mul2.i.i.i.i.i.i.i266.i, %mul2.i.i.i.i.i.i.i266.i
  %mul4.i.i.i.i.i.i.i268.i = fmul double %mul3.i.i.i.i.i.i.i267.i, %mul3.i.i.i.i.i.i.i267.i
  %mul5.i.i.i.i.i.i.i269.i = fmul double %mul4.i.i.i.i.i.i.i268.i, %mul4.i.i.i.i.i.i.i268.i
  %mul6.i.i.i.i.i.i.i270.i = fmul double %mul5.i.i.i.i.i.i.i269.i, %mul5.i.i.i.i.i.i.i269.i
  %mul7.i.i.i.i.i.i.i271.i = fmul double %mul6.i.i.i.i.i.i.i270.i, %mul6.i.i.i.i.i.i.i270.i
  %mul8.i.i.i.i.i.i.i272.i = fmul double %mul7.i.i.i.i.i.i.i271.i, %mul7.i.i.i.i.i.i.i271.i
  %mul9.i.i.i.i.i.i.i273.i = fmul double %mul8.i.i.i.i.i.i.i272.i, %mul8.i.i.i.i.i.i.i272.i
  %mul10.i.i.i.i.i.i.i274.i = fmul double %mul9.i.i.i.i.i.i.i273.i, %mul9.i.i.i.i.i.i.i273.i
  %mul11.i.i.i.i.i.i.i275.i = fmul double %mul10.i.i.i.i.i.i.i274.i, %mul10.i.i.i.i.i.i.i274.i
  %call.i.i43.i.i.i.i.i276.i = tail call double @__ocml_cos_f64(double noundef %222) #24
  %call.i5.i.i.i.i.i.i277.i = tail call double @__ocml_sin_f64(double noundef %222) #24
  %mul7.i6.i.i.i.i.i.i279.i = fmul double %call.i.i43.i.i.i.i.i276.i, 0.000000e+00
  %224 = tail call double @llvm.fmuladd.f64(double %mul11.i.i.i.i.i.i.i275.i, double %call.i5.i.i.i.i.i.i277.i, double %mul7.i6.i.i.i.i.i.i279.i) #22
  %sub6.i.i.i.i.i.i280.i = fsub double 0.000000e+00, %224
  %225 = fneg double %219
  %neg.i95.i.i.i.i.i283.i = fmul double %219, %225
  %226 = tail call double @llvm.fmuladd.f64(double %218, double %218, double %neg.i95.i.i.i.i.i283.i) #22
  %mul7.i96.i.i.i.i.i284.i = fmul double %218, %219
  %227 = tail call double @llvm.fmuladd.f64(double %218, double %219, double %mul7.i96.i.i.i.i.i284.i) #22
  %neg.i99.i.i.i.i.i285.i = fmul double %227, -0.000000e+00
  %228 = tail call double @llvm.fmuladd.f64(double %226, double noundef 1.440000e+02, double %neg.i99.i.i.i.i.i285.i) #22
  %mul7.i100.i.i.i.i.i286.i = fmul double %226, 0.000000e+00
  %229 = tail call double @llvm.fmuladd.f64(double %227, double noundef 1.440000e+02, double %mul7.i100.i.i.i.i.i286.i) #22
  %sub6.i104.i.i.i.i.i287.i = fsub double 0.000000e+00, %229
  %mul5.i107.i.i.i.i.i288.i = fmul double %sub6.i104.i.i.i.i.i287.i, %sub6.i104.i.i.i.i.i287.i
  br label %for.body.i.i.i.i.i329.i

for.cond.cleanup.i.i.i.i.i303.i:                  ; preds = %for.body.i.i.i.i.i329.i
  %neg.i46.i.i.i.i.i281.i = fneg double %sub6.i.i.i.i.i.i280.i
  %neg.i.i.i.i.i.i.i278.i = fmul double %call.i5.i.i.i.i.i.i277.i, -0.000000e+00
  %mul7.i50.i.i.i.i.i282.i = fmul double %218, 0.000000e+00
  %230 = tail call double @llvm.fmuladd.f64(double %mul11.i.i.i.i.i.i.i275.i, double %call.i.i43.i.i.i.i.i276.i, double %neg.i.i.i.i.i.i.i278.i) #22
  %sub.i.i.i.i.i.i290.i = fsub double 1.000000e+00, %230
  %231 = tail call double @llvm.fmuladd.f64(double %sub.i.i.i.i.i.i290.i, double noundef 0.000000e+00, double %neg.i46.i.i.i.i.i281.i) #22
  %232 = tail call double @llvm.fmuladd.f64(double %219, double noundef 1.200000e+01, double %mul7.i50.i.i.i.i.i282.i) #22
  %233 = tail call double @llvm.fmuladd.f64(double %sub6.i.i.i.i.i.i280.i, double noundef 0.000000e+00, double %sub.i.i.i.i.i.i290.i) #22
  %234 = fneg double %231
  %neg.i49.i.i.i.i.i291.i = fmul double %219, -0.000000e+00
  %mul6.i.i.i.i.i.i292.i = fmul double %232, %233
  %neg.i53.i.i.i.i.i293.i = fmul double %232, %234
  %235 = tail call double @llvm.fmuladd.f64(double %218, double noundef 1.200000e+01, double %neg.i49.i.i.i.i.i291.i) #22
  %mul5.i.i.i.i.i.i294.i = fmul double %232, %232
  %236 = tail call double @llvm.fmuladd.f64(double %231, double %235, double %mul6.i.i.i.i.i.i292.i) #22
  %237 = tail call double @llvm.fmuladd.f64(double %233, double %235, double %neg.i53.i.i.i.i.i293.i) #22
  %238 = tail call double @llvm.fmuladd.f64(double %235, double %235, double %mul5.i.i.i.i.i.i294.i) #22
  %div.i.i.i.i.i.i295.i = fdiv double %236, %238
  %div9.i.i.i.i.i.i296.i = fdiv double %237, %238
  %neg.i56.i.i.i.i.i297.i = fmul double %add6.i119.i.i.i.i.i326.i, %225
  %239 = tail call double @llvm.fmuladd.f64(double %218, double %add.i118.i.i.i.i.i325.i, double %neg.i56.i.i.i.i.i297.i) #22
  %mul7.i57.i.i.i.i.i298.i = fmul double %219, %add.i118.i.i.i.i.i325.i
  %240 = tail call double @llvm.fmuladd.f64(double %218, double %add6.i119.i.i.i.i.i326.i, double %mul7.i57.i.i.i.i.i298.i) #22
  %neg.i60.i.i.i.i.i299.i = fmul double %240, -8.124330e+01
  %241 = tail call double @llvm.fmuladd.f64(double %239, double noundef 0.000000e+00, double %neg.i60.i.i.i.i.i299.i) #22
  %mul7.i61.i.i.i.i.i300.i = fmul double %239, 8.124330e+01
  %242 = tail call double @llvm.fmuladd.f64(double %240, double noundef 0.000000e+00, double %mul7.i61.i.i.i.i.i300.i) #22
  %add.i.i.i.i.i.i301.i = fadd double %div.i.i.i.i.i.i295.i, %241
  %add6.i.i.i.i.i.i302.i = fadd double %div9.i.i.i.i.i.i296.i, %242
  br label %fast_nuclear_W.internalized.exit.i.i.i.i361.i

for.body.i.i.i.i.i329.i:                          ; preds = %for.body.i.i.i.i.i329.i, %if.then.i.i.i.i.i289.i
  %sum.sroa.0.0159.i.i.i.i.i304.i = phi double [ 0.000000e+00, %if.then.i.i.i.i.i289.i ], [ %add.i118.i.i.i.i.i325.i, %for.body.i.i.i.i.i329.i ]
  %sum.sroa.6.0158.i.i.i.i.i305.i = phi double [ 0.000000e+00, %if.then.i.i.i.i.i289.i ], [ %add6.i119.i.i.i.i.i326.i, %for.body.i.i.i.i.i329.i ]
  %n.0157.i.i.i.i.i306.i = phi i32 [ 0, %if.then.i.i.i.i.i289.i ], [ %inc.i.i.i.i.i327.i, %for.body.i.i.i.i.i329.i ]
  %idxprom.i29.i.i.i.i307.i = zext i32 %n.0157.i.i.i.i.i306.i to i64
  %arrayidx.i30.i.i.i.i308.i = getelementptr inbounds [10 x double], [10 x double]* @constinit.2, i64 0, i64 %idxprom.i29.i.i.i.i307.i
  %243 = load double, double* %arrayidx.i30.i.i.i.i308.i, align 8, !tbaa !52
  %call.i.i82.i.i.i.i.i309.i = tail call double @__ocml_cos_f64(double noundef %222) #24
  %call.i5.i83.i.i.i.i.i310.i = tail call double @__ocml_sin_f64(double noundef %222) #24
  %neg.i.i84.i.i.i.i.i311.i = fmul double %call.i5.i83.i.i.i.i.i310.i, -0.000000e+00
  %244 = tail call double @llvm.fmuladd.f64(double %mul11.i.i.i.i.i.i.i275.i, double %call.i.i82.i.i.i.i.i309.i, double %neg.i.i84.i.i.i.i.i311.i) #22
  %mul7.i6.i85.i.i.i.i.i312.i = fmul double %call.i.i82.i.i.i.i.i309.i, 0.000000e+00
  %245 = tail call double @llvm.fmuladd.f64(double %mul11.i.i.i.i.i.i.i275.i, double %call.i5.i83.i.i.i.i.i310.i, double %mul7.i6.i85.i.i.i.i.i312.i) #22
  %neg.i88.i.i.i.i.i313.i = fmul double %245, -0.000000e+00
  %246 = tail call double @llvm.fmuladd.f64(double %243, double %244, double %neg.i88.i.i.i.i.i313.i) #22
  %mul7.i89.i.i.i.i.i314.i = fmul double %244, 0.000000e+00
  %247 = tail call double @llvm.fmuladd.f64(double %243, double %245, double %mul7.i89.i.i.i.i.i314.i) #22
  %sub.i92.i.i.i.i.i315.i = fadd double %246, -1.000000e+00
  %arrayidx25.i.i.i.i.i316.i = getelementptr inbounds [10 x double], [10 x double]* @constinit.3, i64 0, i64 %idxprom.i29.i.i.i.i307.i
  %248 = load double, double* %arrayidx25.i.i.i.i.i316.i, align 8, !tbaa !52
  %sub.i103.i.i.i.i.i317.i = fsub double %248, %228
  %arrayidx34.i.i.i.i.i318.i = getelementptr inbounds [10 x double], [10 x double]* @constinit, i64 0, i64 %idxprom.i29.i.i.i.i307.i
  %249 = load double, double* %arrayidx34.i.i.i.i.i318.i, align 8, !tbaa !52
  %250 = tail call double @llvm.fmuladd.f64(double %sub.i103.i.i.i.i.i317.i, double %sub.i103.i.i.i.i.i317.i, double %mul5.i107.i.i.i.i.i288.i) #22
  %mul6.i108.i.i.i.i.i319.i = fmul double %sub6.i104.i.i.i.i.i287.i, %247
  %251 = tail call double @llvm.fmuladd.f64(double %sub.i92.i.i.i.i.i315.i, double %sub.i103.i.i.i.i.i317.i, double %mul6.i108.i.i.i.i.i319.i) #22
  %div.i109.i.i.i.i.i320.i = fdiv double %251, %250
  %252 = fneg double %sub.i92.i.i.i.i.i315.i
  %neg.i110.i.i.i.i.i321.i = fmul double %sub6.i104.i.i.i.i.i287.i, %252
  %253 = tail call double @llvm.fmuladd.f64(double %247, double %sub.i103.i.i.i.i.i317.i, double %neg.i110.i.i.i.i.i321.i) #22
  %div9.i111.i.i.i.i.i322.i = fdiv double %253, %250
  %neg.i114.i.i.i.i.i323.i = fmul double %div9.i111.i.i.i.i.i322.i, -0.000000e+00
  %254 = tail call double @llvm.fmuladd.f64(double %249, double %div.i109.i.i.i.i.i320.i, double %neg.i114.i.i.i.i.i323.i) #22
  %mul7.i115.i.i.i.i.i324.i = fmul double %div.i109.i.i.i.i.i320.i, 0.000000e+00
  %255 = tail call double @llvm.fmuladd.f64(double %249, double %div9.i111.i.i.i.i.i322.i, double %mul7.i115.i.i.i.i.i324.i) #22
  %add.i118.i.i.i.i.i325.i = fadd double %sum.sroa.0.0159.i.i.i.i.i304.i, %254
  %add6.i119.i.i.i.i.i326.i = fadd double %sum.sroa.6.0158.i.i.i.i.i305.i, %255
  %inc.i.i.i.i.i327.i = add nuw nsw i32 %n.0157.i.i.i.i.i306.i, 1
  %exitcond.not.i.i.i.i.i328.i = icmp eq i32 %inc.i.i.i.i.i327.i, 10
  br i1 %exitcond.not.i.i.i.i.i328.i, label %for.cond.cleanup.i.i.i.i.i303.i, label %for.body.i.i.i.i.i329.i

if.else.i.i.i.i.i347.i:                           ; preds = %for.body.i.i.i.i261.i
  %256 = fneg double %219
  %neg.i122.i.i.i.i.i330.i = fmul double %219, %256
  %257 = tail call double @llvm.fmuladd.f64(double %218, double %218, double %neg.i122.i.i.i.i.i330.i) #22
  %mul7.i123.i.i.i.i.i331.i = fmul double %218, %219
  %258 = tail call double @llvm.fmuladd.f64(double %218, double %219, double %mul7.i123.i.i.i.i.i331.i) #22
  %259 = tail call double @llvm.fmuladd.f64(double %218, double noundef 0.000000e+00, double %256) #22
  %mul7.i126.i.i.i.i.i332.i = fmul double %219, 0.000000e+00
  %260 = fadd double %218, %mul7.i126.i.i.i.i.i332.i
  %sub.i129.i.i.i.i.i333.i = fadd double %257, 0xBFD19DC7AFDB7B46
  %mul5.i132.i.i.i.i.i334.i = fmul double %258, %258
  %261 = tail call double @llvm.fmuladd.f64(double %sub.i129.i.i.i.i.i333.i, double %sub.i129.i.i.i.i.i333.i, double %mul5.i132.i.i.i.i.i334.i) #22
  %mul6.i133.i.i.i.i.i335.i = fmul double %258, 0.000000e+00
  %262 = tail call double @llvm.fmuladd.f64(double %sub.i129.i.i.i.i.i333.i, double noundef 0x3FE065C77CDFFF0D, double %mul6.i133.i.i.i.i.i335.i) #22
  %div.i134.i.i.i.i.i336.i = fdiv double %262, %261
  %neg.i135.i.i.i.i.i337.i = fmul double %258, 0xBFE065C77CDFFF0D
  %263 = tail call double @llvm.fmuladd.f64(double %sub.i129.i.i.i.i.i333.i, double noundef 0.000000e+00, double %neg.i135.i.i.i.i.i337.i) #22
  %div9.i136.i.i.i.i.i338.i = fdiv double %263, %261
  %sub.i139.i.i.i.i.i339.i = fadd double %257, 0xC005CC470A049097
  %264 = tail call double @llvm.fmuladd.f64(double %sub.i139.i.i.i.i.i339.i, double %sub.i139.i.i.i.i.i339.i, double %mul5.i132.i.i.i.i.i334.i) #22
  %265 = tail call double @llvm.fmuladd.f64(double %sub.i139.i.i.i.i.i339.i, double noundef 0x3FAA80FD3629C600, double %mul6.i133.i.i.i.i.i335.i) #22
  %div.i144.i.i.i.i.i340.i = fdiv double %265, %264
  %neg.i145.i.i.i.i.i341.i = fmul double %258, 0xBFAA80FD3629C600
  %266 = tail call double @llvm.fmuladd.f64(double %sub.i139.i.i.i.i.i339.i, double noundef 0.000000e+00, double %neg.i145.i.i.i.i.i341.i) #22
  %div9.i146.i.i.i.i.i342.i = fdiv double %266, %264
  %add.i149.i.i.i.i.i343.i = fadd double %div.i134.i.i.i.i.i336.i, %div.i144.i.i.i.i.i340.i
  %add6.i150.i.i.i.i.i344.i = fadd double %div9.i136.i.i.i.i.i338.i, %div9.i146.i.i.i.i.i342.i
  %267 = fneg double %260
  %neg.i153.i.i.i.i.i345.i = fmul double %add6.i150.i.i.i.i.i344.i, %267
  %268 = tail call double @llvm.fmuladd.f64(double %259, double %add.i149.i.i.i.i.i343.i, double %neg.i153.i.i.i.i.i345.i) #22
  %mul7.i154.i.i.i.i.i346.i = fmul double %260, %add.i149.i.i.i.i.i343.i
  %269 = tail call double @llvm.fmuladd.f64(double %259, double %add6.i150.i.i.i.i.i344.i, double %mul7.i154.i.i.i.i.i346.i) #22
  br label %fast_nuclear_W.internalized.exit.i.i.i.i361.i

fast_nuclear_W.internalized.exit.i.i.i.i361.i:    ; preds = %if.else.i.i.i.i.i347.i, %for.cond.cleanup.i.i.i.i.i303.i
  %add.i.pn.i.i.i.i.i348.i = phi double [ %add.i.i.i.i.i.i301.i, %for.cond.cleanup.i.i.i.i.i303.i ], [ %268, %if.else.i.i.i.i.i347.i ]
  %add6.i.pn.i.i.i.i.i349.i = phi double [ %add6.i.i.i.i.i.i302.i, %for.cond.cleanup.i.i.i.i.i303.i ], [ %269, %if.else.i.i.i.i.i347.i ]
  %idxprom24.i.i.i.i350.i = sext i16 %pole.sroa.11.0.copyload.i.i.i.i253.i to i64
  %270 = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %1, i64 0, i64 %idxprom24.i.i.i.i350.i, i32 0
  %271 = load double, double* %270, align 16
  %272 = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %1, i64 0, i64 %idxprom24.i.i.i.i350.i, i32 1
  %273 = load double, double* %272, align 8
  %274 = fneg double %add6.i.pn.i.i.i.i.i349.i
  %neg.i31.i.i.i.i351.i = fmul double %273, %274
  %275 = tail call double @llvm.fmuladd.f64(double %add.i.pn.i.i.i.i.i348.i, double %271, double %neg.i31.i.i.i.i351.i) #22
  %mul7.i32.i.i.i.i352.i = fmul double %add6.i.pn.i.i.i.i.i349.i, %271
  %276 = tail call double @llvm.fmuladd.f64(double %add.i.pn.i.i.i.i.i348.i, double %273, double %mul7.i32.i.i.i.i352.i) #22
  %277 = fneg double %pole.sroa.6.0.copyload.i.i.i.i243.i
  %neg.i35.i.i.i.i353.i = fmul double %276, %277
  %278 = tail call double @llvm.fmuladd.f64(double %pole.sroa.5.0.copyload.i.i.i.i241.i, double %275, double %neg.i35.i.i.i.i353.i) #22
  %add30.i.i.i.i354.i = fadd double %sigT.051.i.i.i.i230.i, %278
  %279 = fneg double %pole.sroa.8.0.copyload.i.i.i.i247.i
  %neg.i39.i.i.i.i355.i = fmul double %add6.i.pn.i.i.i.i.i349.i, %279
  %280 = tail call double @llvm.fmuladd.f64(double %pole.sroa.7.0.copyload.i.i.i.i245.i, double %add.i.pn.i.i.i.i.i348.i, double %neg.i39.i.i.i.i355.i) #22
  %add34.i.i.i.i356.i = fadd double %sigA.050.i.i.i.i231.i, %280
  %281 = fneg double %pole.sroa.10.0.copyload.i.i.i.i251.i
  %neg.i43.i.i.i.i357.i = fmul double %add6.i.pn.i.i.i.i.i349.i, %281
  %282 = tail call double @llvm.fmuladd.f64(double %pole.sroa.9.0.copyload.i.i.i.i249.i, double %add.i.pn.i.i.i.i.i348.i, double %neg.i43.i.i.i.i357.i) #22
  %add38.i.i.i.i358.i = fadd double %sigF.049.i.i.i.i232.i, %282
  %inc.i.i.i.i359.i = add nsw i32 %i.048.i.i.i.i233.i, 1
  %cmp12.i.i.i.i360.i = icmp slt i32 %inc.i.i.i.i359.i, %217
  br i1 %cmp12.i.i.i.i360.i, label %for.body.i.i.i.i261.i, label %calculate_micro_xs_doppler.internalized.exit.i.i.i366.i

calculate_micro_xs_doppler.internalized.exit.i.i.i366.i: ; preds = %fast_nuclear_W.internalized.exit.i.i.i.i361.i, %if.then.i60.i.i229.i
  %sigF.0.lcssa.i.i.i.i362.i = phi double [ %mul11.i.i.i.i226.i, %if.then.i60.i.i229.i ], [ %add38.i.i.i.i358.i, %fast_nuclear_W.internalized.exit.i.i.i.i361.i ]
  %sigA.0.lcssa.i.i.i.i363.i = phi double [ %mul10.i.i.i.i225.i, %if.then.i60.i.i229.i ], [ %add34.i.i.i.i356.i, %fast_nuclear_W.internalized.exit.i.i.i.i361.i ]
  %sigT.0.lcssa.i.i.i.i364.i = phi double [ %mul9.i.i.i.i224.i, %if.then.i60.i.i229.i ], [ %add30.i.i.i.i354.i, %fast_nuclear_W.internalized.exit.i.i.i.i361.i ]
  %sub.i.i.i.i365.i = fsub double %sigT.0.lcssa.i.i.i.i364.i, %sigA.0.lcssa.i.i.i.i363.i
  call void @llvm.lifetime.end.p0i8(i64 noundef 64, i8* noundef nonnull %20) #20
  br label %if.end.i62.i.i498.i

if.else.i.i.i440.i:                               ; preds = %for.body9.i.i.i155.i
  call void @llvm.lifetime.start.p0i8(i64 noundef 64, i8* noundef %19) #20
  %idxprom.i1.i.i.i367.i = sext i32 %205 to i64
  %arrayidx.i2.i.i.i368.i = getelementptr inbounds i32, i32* %191, i64 %idxprom.i1.i.i.i367.i
  %283 = load i32, i32* %arrayidx.i2.i.i.i368.i, align 4, !tbaa !51
  %conv.i3.i.i.i369.i = sitofp i32 %283 to double
  %div.i4.i.i.i370.i = fdiv double 1.000000e+00, %conv.i3.i.i.i369.i
  %div2.i5.i.i.i371.i = fdiv double %div.i.i.i115.i, %div.i4.i.i.i370.i
  %conv3.i6.i.i.i372.i = fptosi double %div2.i5.i.i.i371.i to i32
  %cmp.i7.i.i.i373.i = icmp eq i32 %283, %conv3.i6.i.i.i372.i
  %dec.i8.i.i.i374.i = sext i1 %cmp.i7.i.i.i373.i to i32
  %mul.i.i9.i.i.i375.i = mul nsw i32 %205, %197
  %idxprom.i.i10.i.i.i376.i = sext i32 %mul.i.i9.i.i.i375.i to i64
  %arrayidx.i.i11.i.i.i377.i = getelementptr inbounds double, double* %192, i64 %idxprom.i.i10.i.i.i376.i
  %284 = load double, double* %arrayidx.i.i11.i.i.i377.i, align 8, !tbaa !52
  %call.i.i.i12.i.i.i378.i = tail call double @__ocml_sqrt_f64(double noundef %div.i.i.i115.i) #23
  %mul2.i.i13.i.i.i379.i = fmul double %284, %call.i.i.i12.i.i.i378.i
  %mul25.i.i14.i.i.i380.i = fmul double %mul2.i.i13.i.i.i379.i, 2.000000e+00
  %call.i4.i.i15.i.i.i381.i = tail call double @__ocml_cos_f64(double noundef %mul25.i.i14.i.i.i380.i) #24
  store double %call.i4.i.i15.i.i.i381.i, double* %r.i.i16.i.i.i60.i, align 16, !tbaa !54
  %call.i5.i.i17.i.i.i382.i = tail call double @__ocml_sin_f64(double noundef %mul25.i.i14.i.i.i380.i) #24
  %fneg30.i.i18.i.i.i383.i = fneg double %call.i5.i.i17.i.i.i382.i
  store double %fneg30.i.i18.i.i.i383.i, double* %i33.i.i19.i.i.i61.i, align 8, !tbaa !56
  %add.1.i.i20.i.i.i384.i = add nsw i32 %mul.i.i9.i.i.i375.i, 1
  %idxprom.1.i.i21.i.i.i385.i = sext i32 %add.1.i.i20.i.i.i384.i to i64
  %arrayidx.1.i.i22.i.i.i386.i = getelementptr inbounds double, double* %192, i64 %idxprom.1.i.i21.i.i.i385.i
  %285 = load double, double* %arrayidx.1.i.i22.i.i.i386.i, align 8, !tbaa !52
  %mul2.1.i.i23.i.i.i387.i = fmul double %call.i.i.i12.i.i.i378.i, %285
  %call.i1.1.i.i24.i.i.i388.i = tail call double @__ocml_atan_f64(double noundef %mul2.1.i.i23.i.i.i387.i) #23
  %sub.1.i.i25.i.i.i389.i = fadd double %mul2.1.i.i23.i.i.i387.i, %call.i1.1.i.i24.i.i.i388.i
  %mul25.1.i.i26.i.i.i390.i = fmul double %sub.1.i.i25.i.i.i389.i, 2.000000e+00
  %call.i4.1.i.i27.i.i.i391.i = tail call double @__ocml_cos_f64(double noundef %mul25.1.i.i26.i.i.i390.i) #24
  store double %call.i4.1.i.i27.i.i.i391.i, double* %r.1.i.i28.i.i.i62.i, align 16, !tbaa !54
  %call.i5.1.i.i29.i.i.i392.i = tail call double @__ocml_sin_f64(double noundef %mul25.1.i.i26.i.i.i390.i) #24
  %fneg30.1.i.i30.i.i.i393.i = fneg double %call.i5.1.i.i29.i.i.i392.i
  store double %fneg30.1.i.i30.i.i.i393.i, double* %i33.1.i.i31.i.i.i63.i, align 8, !tbaa !56
  %add.2.i.i32.i.i.i394.i = add nsw i32 %mul.i.i9.i.i.i375.i, 2
  %idxprom.2.i.i33.i.i.i395.i = sext i32 %add.2.i.i32.i.i.i394.i to i64
  %arrayidx.2.i.i34.i.i.i396.i = getelementptr inbounds double, double* %192, i64 %idxprom.2.i.i33.i.i.i395.i
  %286 = load double, double* %arrayidx.2.i.i34.i.i.i396.i, align 8, !tbaa !52
  %mul2.2.i.i35.i.i.i397.i = fmul double %call.i.i.i12.i.i.i378.i, %286
  %mul7.2.i.i36.i.i.i398.i = fmul double %mul2.2.i.i35.i.i.i397.i, 3.000000e+00
  %neg.2.i.i37.i.i.i399.i = fneg double %mul2.2.i.i35.i.i.i397.i
  %287 = tail call double @llvm.fmuladd.f64(double %neg.2.i.i37.i.i.i399.i, double %mul2.2.i.i35.i.i.i397.i, double noundef 3.000000e+00) #20
  %div.2.i.i38.i.i.i400.i = fdiv double %mul7.2.i.i36.i.i.i398.i, %287
  %call.i2.2.i.i39.i.i.i401.i = tail call double @__ocml_atan_f64(double noundef %div.2.i.i38.i.i.i400.i) #23
  %sub10.2.i.i40.i.i.i402.i = fsub double %mul2.2.i.i35.i.i.i397.i, %call.i2.2.i.i39.i.i.i401.i
  %mul25.2.i.i41.i.i.i403.i = fmul double %sub10.2.i.i40.i.i.i402.i, 2.000000e+00
  %call.i4.2.i.i42.i.i.i404.i = tail call double @__ocml_cos_f64(double noundef %mul25.2.i.i41.i.i.i403.i) #24
  store double %call.i4.2.i.i42.i.i.i404.i, double* %r.2.i.i43.i.i.i64.i, align 16, !tbaa !54
  %call.i5.2.i.i44.i.i.i405.i = tail call double @__ocml_sin_f64(double noundef %mul25.2.i.i41.i.i.i403.i) #24
  %fneg30.2.i.i45.i.i.i406.i = fneg double %call.i5.2.i.i44.i.i.i405.i
  store double %fneg30.2.i.i45.i.i.i406.i, double* %i33.2.i.i46.i.i.i65.i, align 8, !tbaa !56
  %add.3.i.i47.i.i.i407.i = add nsw i32 %mul.i.i9.i.i.i375.i, 3
  %idxprom.3.i.i48.i.i.i408.i = sext i32 %add.3.i.i47.i.i.i407.i to i64
  %arrayidx.3.i.i49.i.i.i409.i = getelementptr inbounds double, double* %192, i64 %idxprom.3.i.i48.i.i.i408.i
  %288 = load double, double* %arrayidx.3.i.i49.i.i.i409.i, align 8, !tbaa !52
  %mul2.3.i.i50.i.i.i410.i = fmul double %call.i.i.i12.i.i.i378.i, %288
  %neg15.3.i.i51.i.i.i411.i = fneg double %mul2.3.i.i50.i.i.i410.i
  %289 = tail call double @llvm.fmuladd.f64(double %neg15.3.i.i51.i.i.i411.i, double %mul2.3.i.i50.i.i.i410.i, double noundef 1.500000e+01) #20
  %mul16.3.i.i52.i.i.i412.i = fmul double %mul2.3.i.i50.i.i.i410.i, %289
  %neg19.3.i.i53.i.i.i413.i = fmul double %mul2.3.i.i50.i.i.i410.i, -6.000000e+00
  %290 = tail call double @llvm.fmuladd.f64(double %neg19.3.i.i53.i.i.i413.i, double %mul2.3.i.i50.i.i.i410.i, double noundef 1.500000e+01) #20
  %div20.3.i.i54.i.i.i414.i = fdiv double %mul16.3.i.i52.i.i.i412.i, %290
  %call.i3.3.i.i55.i.i.i415.i = tail call double @__ocml_atan_f64(double noundef %div20.3.i.i54.i.i.i414.i) #23
  %sub22.3.i.i56.i.i.i416.i = fsub double %mul2.3.i.i50.i.i.i410.i, %call.i3.3.i.i55.i.i.i415.i
  %mul25.3.i.i57.i.i.i417.i = fmul double %sub22.3.i.i56.i.i.i416.i, 2.000000e+00
  %call.i4.3.i.i58.i.i.i418.i = tail call double @__ocml_cos_f64(double noundef %mul25.3.i.i57.i.i.i417.i) #24
  store double %call.i4.3.i.i58.i.i.i418.i, double* %r.3.i.i59.i.i.i66.i, align 16, !tbaa !54
  %call.i5.3.i.i60.i.i.i419.i = tail call double @__ocml_sin_f64(double noundef %mul25.3.i.i57.i.i.i417.i) #24
  %fneg30.3.i.i61.i.i.i420.i = fneg double %call.i5.3.i.i60.i.i.i419.i
  store double %fneg30.3.i.i61.i.i.i420.i, double* %i33.3.i.i62.i.i.i67.i, align 8, !tbaa !56
  %mul.i63.i.i.i421.i = mul nsw i32 %205, %195
  %spec.select.i64.i.i.i422.i = add i32 %mul.i63.i.i.i421.i, %conv3.i6.i.i.i372.i
  %add.i65.i.i.i423.i = add i32 %spec.select.i64.i.i.i422.i, %dec.i8.i.i.i374.i
  %idxprom7.i66.i.i.i424.i = sext i32 %add.i65.i.i.i423.i to i64
  %w.sroa.0.0..sroa_idx.i67.i.i.i425.i = getelementptr inbounds %struct.Window, %struct.Window* %193, i64 %idxprom7.i66.i.i.i424.i, i32 0
  %w.sroa.0.0.copyload.i68.i.i.i426.i = load double, double* %w.sroa.0.0..sroa_idx.i67.i.i.i425.i, align 8, !tbaa.struct !57
  %w.sroa.4.0..sroa_idx90.i.i.i.i427.i = getelementptr inbounds %struct.Window, %struct.Window* %193, i64 %idxprom7.i66.i.i.i424.i, i32 1
  %w.sroa.4.0.copyload.i69.i.i.i428.i = load double, double* %w.sroa.4.0..sroa_idx90.i.i.i.i427.i, align 8, !tbaa.struct !58
  %w.sroa.5.0..sroa_idx92.i.i.i.i429.i = getelementptr inbounds %struct.Window, %struct.Window* %193, i64 %idxprom7.i66.i.i.i424.i, i32 2
  %w.sroa.5.0.copyload.i70.i.i.i430.i = load double, double* %w.sroa.5.0..sroa_idx92.i.i.i.i429.i, align 8, !tbaa.struct !59
  %w.sroa.6.0..sroa_idx94.i.i.i.i431.i = getelementptr inbounds %struct.Window, %struct.Window* %193, i64 %idxprom7.i66.i.i.i424.i, i32 3
  %291 = bitcast i32* %w.sroa.6.0..sroa_idx94.i.i.i.i431.i to <2 x i32>*
  %292 = load <2 x i32>, <2 x i32>* %291, align 8
  %mul9.i73.i.i.i435.i = fmul double %div.i.i.i115.i, %w.sroa.0.0.copyload.i68.i.i.i426.i
  %mul10.i74.i.i.i436.i = fmul double %div.i.i.i115.i, %w.sroa.4.0.copyload.i69.i.i.i428.i
  %mul11.i75.i.i.i437.i = fmul double %div.i.i.i115.i, %w.sroa.5.0.copyload.i70.i.i.i430.i
  %mul14.i76.i.i.i438.i = mul nsw i32 %205, %196
  %293 = extractelement <2 x i32> %292, i64 0
  %294 = extractelement <2 x i32> %292, i64 1
  %cmp1249.i.i.i.i439.i = icmp slt i32 %293, %294
  br i1 %cmp1249.i.i.i.i439.i, label %for.body.i99.i.i.i485.i, label %calculate_micro_xs.internalized.exit.i.i.i490.i

for.body.i99.i.i.i485.i:                          ; preds = %if.else.i.i.i440.i, %for.body.i99.i.i.i485.i
  %sigT.053.i.i.i.i441.i = phi double [ %add32.i.i.i.i478.i, %for.body.i99.i.i.i485.i ], [ %mul9.i73.i.i.i435.i, %if.else.i.i.i440.i ]
  %sigA.052.i.i.i.i442.i = phi double [ %add36.i.i.i.i480.i, %for.body.i99.i.i.i485.i ], [ %mul10.i74.i.i.i436.i, %if.else.i.i.i440.i ]
  %sigF.051.i.i.i.i443.i = phi double [ %add40.i.i.i.i482.i, %for.body.i99.i.i.i485.i ], [ %mul11.i75.i.i.i437.i, %if.else.i.i.i440.i ]
  %i.050.i.i.i.i444.i = phi i32 [ %inc.i97.i.i.i483.i, %for.body.i99.i.i.i485.i ], [ %293, %if.else.i.i.i440.i ]
  %add15.i82.i.i.i445.i = add nsw i32 %i.050.i.i.i.i444.i, %mul14.i76.i.i.i438.i
  %idxprom16.i83.i.i.i446.i = sext i32 %add15.i82.i.i.i445.i to i64
  %pole.sroa.0.0..sroa_idx.i84.i.i.i447.i = getelementptr inbounds %struct.Pole, %struct.Pole* %194, i64 %idxprom16.i83.i.i.i446.i, i32 0, i32 0
  %pole.sroa.0.0.copyload.i85.i.i.i448.i = load double, double* %pole.sroa.0.0..sroa_idx.i84.i.i.i447.i, align 8, !tbaa.struct !60
  %pole.sroa.4.0..sroa_idx58.i.i.i.i449.i = getelementptr inbounds %struct.Pole, %struct.Pole* %194, i64 %idxprom16.i83.i.i.i446.i, i32 0, i32 1
  %pole.sroa.4.0.copyload.i86.i.i.i450.i = load double, double* %pole.sroa.4.0..sroa_idx58.i.i.i.i449.i, align 8, !tbaa.struct !63
  %pole.sroa.5.0..sroa_idx60.i.i.i.i451.i = getelementptr inbounds %struct.Pole, %struct.Pole* %194, i64 %idxprom16.i83.i.i.i446.i, i32 1, i32 0
  %pole.sroa.5.0.copyload.i87.i.i.i452.i = load double, double* %pole.sroa.5.0..sroa_idx60.i.i.i.i451.i, align 8, !tbaa.struct !64
  %pole.sroa.6.0..sroa_idx62.i.i.i.i453.i = getelementptr inbounds %struct.Pole, %struct.Pole* %194, i64 %idxprom16.i83.i.i.i446.i, i32 1, i32 1
  %pole.sroa.6.0.copyload.i88.i.i.i454.i = load double, double* %pole.sroa.6.0..sroa_idx62.i.i.i.i453.i, align 8, !tbaa.struct !65
  %pole.sroa.7.0..sroa_idx64.i.i.i.i455.i = getelementptr inbounds %struct.Pole, %struct.Pole* %194, i64 %idxprom16.i83.i.i.i446.i, i32 2, i32 0
  %pole.sroa.7.0.copyload.i89.i.i.i456.i = load double, double* %pole.sroa.7.0..sroa_idx64.i.i.i.i455.i, align 8, !tbaa.struct !66
  %pole.sroa.8.0..sroa_idx66.i.i.i.i457.i = getelementptr inbounds %struct.Pole, %struct.Pole* %194, i64 %idxprom16.i83.i.i.i446.i, i32 2, i32 1
  %pole.sroa.8.0.copyload.i90.i.i.i458.i = load double, double* %pole.sroa.8.0..sroa_idx66.i.i.i.i457.i, align 8, !tbaa.struct !67
  %pole.sroa.9.0..sroa_idx68.i.i.i.i459.i = getelementptr inbounds %struct.Pole, %struct.Pole* %194, i64 %idxprom16.i83.i.i.i446.i, i32 3, i32 0
  %pole.sroa.9.0.copyload.i91.i.i.i460.i = load double, double* %pole.sroa.9.0..sroa_idx68.i.i.i.i459.i, align 8, !tbaa.struct !68
  %pole.sroa.10.0..sroa_idx70.i.i.i.i461.i = getelementptr inbounds %struct.Pole, %struct.Pole* %194, i64 %idxprom16.i83.i.i.i446.i, i32 3, i32 1
  %pole.sroa.10.0.copyload.i92.i.i.i462.i = load double, double* %pole.sroa.10.0..sroa_idx70.i.i.i.i461.i, align 8, !tbaa.struct !69
  %pole.sroa.11.0..sroa_idx72.i.i.i.i463.i = getelementptr inbounds %struct.Pole, %struct.Pole* %194, i64 %idxprom16.i83.i.i.i446.i, i32 4
  %pole.sroa.11.0.copyload.i93.i.i.i464.i = load i16, i16* %pole.sroa.11.0..sroa_idx72.i.i.i.i463.i, align 8, !tbaa.struct !70
  %sub.i.i94.i.i.i465.i = fsub double %pole.sroa.0.0.copyload.i85.i.i.i448.i, %call.i.i.i12.i.i.i378.i
  %mul5.i.i.i.i.i466.i = fmul double %pole.sroa.4.0.copyload.i86.i.i.i450.i, %pole.sroa.4.0.copyload.i86.i.i.i450.i
  %295 = tail call double @llvm.fmuladd.f64(double %sub.i.i94.i.i.i465.i, double %sub.i.i94.i.i.i465.i, double %mul5.i.i.i.i.i466.i) #22
  %296 = tail call double @llvm.fmuladd.f64(double %sub.i.i94.i.i.i465.i, double noundef 0.000000e+00, double %pole.sroa.4.0.copyload.i86.i.i.i450.i) #22
  %div.i.i.i.i.i467.i = fdiv double %296, %295
  %neg.i.i95.i.i.i468.i = fmul double %pole.sroa.4.0.copyload.i86.i.i.i450.i, 0.000000e+00
  %297 = fsub double %sub.i.i94.i.i.i465.i, %neg.i.i95.i.i.i468.i
  %div9.i.i.i.i.i469.i = fdiv double %297, %295
  %mul6.i.i.i.i.i470.i = fmul double %div9.i.i.i.i.i469.i, 0.000000e+00
  %298 = tail call double @llvm.fmuladd.f64(double %div.i.i.i.i.i467.i, double %div.i.i.i115.i, double %mul6.i.i.i.i.i470.i) #22
  %div.i29.i.i.i.i471.i = fdiv double %298, %199
  %neg.i30.i.i.i.i472.i = fmul double %div.i.i.i.i.i467.i, -0.000000e+00
  %299 = tail call double @llvm.fmuladd.f64(double %div9.i.i.i.i.i469.i, double %div.i.i.i115.i, double %neg.i30.i.i.i.i472.i) #22
  %div9.i31.i.i.i.i473.i = fdiv double %299, %199
  %idxprom26.i.i.i.i474.i = sext i16 %pole.sroa.11.0.copyload.i93.i.i.i464.i to i64
  %300 = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %0, i64 0, i64 %idxprom26.i.i.i.i474.i, i32 0
  %301 = load double, double* %300, align 16
  %302 = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %0, i64 0, i64 %idxprom26.i.i.i.i474.i, i32 1
  %303 = load double, double* %302, align 8
  %304 = fneg double %div9.i31.i.i.i.i473.i
  %neg.i34.i.i.i.i475.i = fmul double %303, %304
  %305 = tail call double @llvm.fmuladd.f64(double %div.i29.i.i.i.i471.i, double %301, double %neg.i34.i.i.i.i475.i) #22
  %mul7.i.i96.i.i.i476.i = fmul double %div9.i31.i.i.i.i473.i, %301
  %306 = tail call double @llvm.fmuladd.f64(double %div.i29.i.i.i.i471.i, double %303, double %mul7.i.i96.i.i.i476.i) #22
  %307 = fneg double %pole.sroa.6.0.copyload.i88.i.i.i454.i
  %neg.i37.i.i.i.i477.i = fmul double %306, %307
  %308 = tail call double @llvm.fmuladd.f64(double %pole.sroa.5.0.copyload.i87.i.i.i452.i, double %305, double %neg.i37.i.i.i.i477.i) #22
  %add32.i.i.i.i478.i = fadd double %sigT.053.i.i.i.i441.i, %308
  %309 = fneg double %pole.sroa.8.0.copyload.i90.i.i.i458.i
  %neg.i41.i.i.i.i479.i = fmul double %div9.i31.i.i.i.i473.i, %309
  %310 = tail call double @llvm.fmuladd.f64(double %pole.sroa.7.0.copyload.i89.i.i.i456.i, double %div.i29.i.i.i.i471.i, double %neg.i41.i.i.i.i479.i) #22
  %add36.i.i.i.i480.i = fadd double %sigA.052.i.i.i.i442.i, %310
  %311 = fneg double %pole.sroa.10.0.copyload.i92.i.i.i462.i
  %neg.i45.i.i.i.i481.i = fmul double %div9.i31.i.i.i.i473.i, %311
  %312 = tail call double @llvm.fmuladd.f64(double %pole.sroa.9.0.copyload.i91.i.i.i460.i, double %div.i29.i.i.i.i471.i, double %neg.i45.i.i.i.i481.i) #22
  %add40.i.i.i.i482.i = fadd double %sigF.051.i.i.i.i443.i, %312
  %inc.i97.i.i.i483.i = add nsw i32 %i.050.i.i.i.i444.i, 1
  %cmp12.i98.i.i.i484.i = icmp slt i32 %inc.i97.i.i.i483.i, %294
  br i1 %cmp12.i98.i.i.i484.i, label %for.body.i99.i.i.i485.i, label %calculate_micro_xs.internalized.exit.i.i.i490.i

calculate_micro_xs.internalized.exit.i.i.i490.i:  ; preds = %for.body.i99.i.i.i485.i, %if.else.i.i.i440.i
  %sigF.0.lcssa.i77.i.i.i486.i = phi double [ %mul11.i75.i.i.i437.i, %if.else.i.i.i440.i ], [ %add40.i.i.i.i482.i, %for.body.i99.i.i.i485.i ]
  %sigA.0.lcssa.i78.i.i.i487.i = phi double [ %mul10.i74.i.i.i436.i, %if.else.i.i.i440.i ], [ %add36.i.i.i.i480.i, %for.body.i99.i.i.i485.i ]
  %sigT.0.lcssa.i79.i.i.i488.i = phi double [ %mul9.i73.i.i.i435.i, %if.else.i.i.i440.i ], [ %add32.i.i.i.i478.i, %for.body.i99.i.i.i485.i ]
  %sub.i80.i.i.i489.i = fsub double %sigT.0.lcssa.i79.i.i.i488.i, %sigA.0.lcssa.i78.i.i.i487.i
  call void @llvm.lifetime.end.p0i8(i64 noundef 64, i8* noundef nonnull %19) #20
  br label %if.end.i62.i.i498.i

if.end.i62.i.i498.i:                              ; preds = %calculate_micro_xs.internalized.exit.i.i.i490.i, %calculate_micro_xs_doppler.internalized.exit.i.i.i366.i
  %.sroa.9.0.i.i.i491.i = phi double [ %sub.i.i.i.i365.i, %calculate_micro_xs_doppler.internalized.exit.i.i.i366.i ], [ %sub.i80.i.i.i489.i, %calculate_micro_xs.internalized.exit.i.i.i490.i ]
  %.sroa.6.0.i.i.i492.i = phi double [ %sigF.0.lcssa.i.i.i.i362.i, %calculate_micro_xs_doppler.internalized.exit.i.i.i366.i ], [ %sigF.0.lcssa.i77.i.i.i486.i, %calculate_micro_xs.internalized.exit.i.i.i490.i ]
  %.sroa.3.0.i.i.i493.i = phi double [ %sigA.0.lcssa.i.i.i.i363.i, %calculate_micro_xs_doppler.internalized.exit.i.i.i366.i ], [ %sigA.0.lcssa.i78.i.i.i487.i, %calculate_micro_xs.internalized.exit.i.i.i490.i ]
  %.sroa.0.0.i.i.i494.i = phi double [ %sigT.0.lcssa.i.i.i.i364.i, %calculate_micro_xs_doppler.internalized.exit.i.i.i366.i ], [ %sigT.0.lcssa.i79.i.i.i488.i, %calculate_micro_xs.internalized.exit.i.i.i490.i ]
  %arrayidx23.i.i.i495.i = getelementptr inbounds double, double* %190, i64 %idxprom10.i.i.i153.i
  %313 = load double, double* %arrayidx23.i.i.i495.i, align 8, !tbaa !52
  %314 = tail call double @llvm.fmuladd.f64(double %.sroa.0.0.i.i.i494.i, double %313, double %204) #20
  %315 = tail call double @llvm.fmuladd.f64(double %.sroa.3.0.i.i.i493.i, double %313, double %203) #20
  %316 = tail call double @llvm.fmuladd.f64(double %.sroa.6.0.i.i.i492.i, double %313, double %202) #20
  %317 = tail call double @llvm.fmuladd.f64(double %.sroa.9.0.i.i.i491.i, double %313, double %201) #20
  %inc31.i.i.i496.i = add nuw nsw i32 %i2.0103.i.i.i151.i, 1
  %318 = load i32, i32* %arrayidx5.i.i.i146.i, align 4, !tbaa !51
  %cmp6.i.i.i497.i = icmp slt i32 %inc31.i.i.i496.i, %318
  br i1 %cmp6.i.i.i497.i, label %for.body9.i.i.i155.i, label %calculate_macro_xs.internalized.exit.i.i512.i

calculate_macro_xs.internalized.exit.i.i512.i:    ; preds = %if.end.i62.i.i498.i, %pick_mat.internalized.exit.i.i150.i
  %macro_xs.sroa.0.1.i.i499.i = phi double [ 0.000000e+00, %pick_mat.internalized.exit.i.i150.i ], [ %314, %if.end.i62.i.i498.i ]
  %macro_xs.sroa.7.1.i.i500.i = phi double [ 0.000000e+00, %pick_mat.internalized.exit.i.i150.i ], [ %315, %if.end.i62.i.i498.i ]
  %macro_xs.sroa.11.1.i.i501.i = phi double [ 0.000000e+00, %pick_mat.internalized.exit.i.i150.i ], [ %316, %if.end.i62.i.i498.i ]
  %macro_xs.sroa.15.1.i.i502.i = phi double [ 0.000000e+00, %pick_mat.internalized.exit.i.i150.i ], [ %317, %if.end.i62.i.i498.i ]
  %cmp14.i.i503.i = fcmp ogt double %macro_xs.sroa.0.1.i.i499.i, 0xFFEFFFFFFFFFFFFF
  %max.1.i.i504.i = select i1 %cmp14.i.i503.i, double %macro_xs.sroa.0.1.i.i499.i, double 0xFFEFFFFFFFFFFFFF
  %cmp14.1.i.i505.i = fcmp ogt double %macro_xs.sroa.7.1.i.i500.i, %max.1.i.i504.i
  %max.1.1.i.i506.i = select i1 %cmp14.1.i.i505.i, double %macro_xs.sroa.7.1.i.i500.i, double %max.1.i.i504.i
  %cmp14.2.i.i507.i = fcmp ogt double %macro_xs.sroa.11.1.i.i501.i, %max.1.1.i.i506.i
  %max.1.2.i.i508.i = select i1 %cmp14.2.i.i507.i, double %macro_xs.sroa.11.1.i.i501.i, double %max.1.1.i.i506.i
  %cmp14.3.i.i509.i = fcmp ogt double %macro_xs.sroa.15.1.i.i502.i, %max.1.2.i.i508.i
  %319 = select i1 %cmp14.1.i.i505.i, i64 2, i64 1
  %320 = select i1 %cmp14.2.i.i507.i, i64 3, i64 %319
  %321 = select i1 %cmp14.3.i.i509.i, i64 4, i64 %320
  %arrayidx21.i.i510.i31 = getelementptr inbounds i64, i64* %verification, i64 %conv580.i.i79.i
  %arrayidx21.i.i510.i = addrspacecast i64* %arrayidx21.i.i510.i31 to i64 addrspace(1)*
  store i64 %321, i64 addrspace(1)* %arrayidx21.i.i510.i, align 8, !tbaa !71
  %cmp22.i.i511.i = icmp eq i32 %indvars.i.i80.i, 0
  br i1 %cmp22.i.i511.i, label %if.then24.i.i513.i, label %if.end26.i.i517.i

if.then24.i.i513.i:                               ; preds = %calculate_macro_xs.internalized.exit.i.i512.i
  store i32 1, i32 addrspace(1)* %offloaded_to_device.global, align 4, !tbaa !51
  br label %if.end26.i.i517.i

if.end26.i.i517.i:                                ; preds = %if.then24.i.i513.i, %calculate_macro_xs.internalized.exit.i.i512.i
  %add27.i.i514.i = add nsw i32 %spec.select.i16.i.i.i48.i, %indvars.i.i80.i
  %conv5.i.i515.i = sext i32 %add27.i.i514.i to i64
  %cmp6.not.i.i516.i = icmp ugt i64 %conv5.i.i515.i, %22
  br i1 %cmp6.not.i.i516.i, label %if.end37.i.i, label %omp.inner.for.body.i.i85.i

if.end37.i.i:                                     ; preds = %if.end26.i.i517.i, %__kmpc_for_static_init_4.exit.i.i78.i, %_ZN4_OMP5state9ValueRAIIINS0_5ValueIjLNS0_9ValueKindE1EEEjEC2ERS4_jjb.exit.i.i
  tail call fastcc void @_ZN4_OMP11synchronize14threadsAlignedEv() #21
  br i1 %cmp.i.i.i2, label %if.then.i.i.i, label %_ZN4_OMP5state9ValueRAIIINS0_5ValueIjLNS0_9ValueKindE2EEEjED2Ev.exit.critedge.i.i

if.then.i.i.i:                                    ; preds = %if.end37.i.i
  %LevelRAII.i.i.sroa.4.0.LevelRAII.i.i.sroa.4.0.LevelRAII.i.i.sroa.4.8. = load i32, i32 addrspace(5)* %LevelRAII.i.i.sroa.4, align 8, !tbaa !78
  store i32 %LevelRAII.i.i.sroa.4.0.LevelRAII.i.i.sroa.4.0.LevelRAII.i.i.sroa.4.8., i32* %cond-lvalue.i159.i.i, align 4, !tbaa !32
  call void @llvm.lifetime.end.p5i8(i64 4, i8 addrspace(5)* %LevelRAII.i.i.sroa.4.0..sroa_cast48)
  %ActiveLevelRAII.i.i.sroa.3.0.ActiveLevelRAII.i.i.sroa.3.0.ActiveLevelRAII.i.i.sroa.3.8. = load i32, i32 addrspace(5)* %ActiveLevelRAII.i.i.sroa.3, align 8, !tbaa !76
  store i32 %ActiveLevelRAII.i.i.sroa.3.0.ActiveLevelRAII.i.i.sroa.3.0.ActiveLevelRAII.i.i.sroa.3.8., i32* %cond-lvalue.i140.i.i, align 4, !tbaa !32
  br label %_ZN4_OMP5state9ValueRAIIINS0_5ValueIjLNS0_9ValueKindE2EEEjED2Ev.exit.i.i

_ZN4_OMP5state9ValueRAIIINS0_5ValueIjLNS0_9ValueKindE2EEEjED2Ev.exit.critedge.i.i: ; preds = %if.end37.i.i
  call void @llvm.lifetime.end.p5i8(i64 4, i8 addrspace(5)* %LevelRAII.i.i.sroa.4.0..sroa_cast47)
  br label %_ZN4_OMP5state9ValueRAIIINS0_5ValueIjLNS0_9ValueKindE2EEEjED2Ev.exit.i.i

_ZN4_OMP5state9ValueRAIIINS0_5ValueIjLNS0_9ValueKindE2EEEjED2Ev.exit.i.i: ; preds = %_ZN4_OMP5state9ValueRAIIINS0_5ValueIjLNS0_9ValueKindE2EEEjED2Ev.exit.critedge.i.i, %if.then.i.i.i
  call void @llvm.lifetime.end.p5i8(i64 4, i8 addrspace(5)* %ActiveLevelRAII.i.i.sroa.3.0..sroa_cast51)
  br i1 %cmp.i.i.i2, label %if.then.i185.i.i, label %_ZN4_OMP5state9ValueRAIIINS0_5ValueIjLNS0_9ValueKindE7EEEjED2Ev.exit.i.i

if.then.i185.i.i:                                 ; preds = %_ZN4_OMP5state9ValueRAIIINS0_5ValueIjLNS0_9ValueKindE2EEEjED2Ev.exit.i.i
  %ParallelTeamSizeRAII.sroa.2.i.i.0.ParallelTeamSizeRAII.sroa.2.i.i.0.ParallelTeamSizeRAII.sroa.2.i.0.ParallelTeamSizeRAII.sroa.2.i.0.ParallelTeamSizeRAII.sroa.2.0.ParallelTeamSizeRAII.sroa.2.0.ParallelTeamSizeRAII.sroa.2.8..i.i = load i32, i32 addrspace(5)* %ParallelTeamSizeRAII.sroa.2.i.i, align 8, !tbaa !73
  store i32 %ParallelTeamSizeRAII.sroa.2.i.i.0.ParallelTeamSizeRAII.sroa.2.i.i.0.ParallelTeamSizeRAII.sroa.2.i.0.ParallelTeamSizeRAII.sroa.2.i.0.ParallelTeamSizeRAII.sroa.2.0.ParallelTeamSizeRAII.sroa.2.0.ParallelTeamSizeRAII.sroa.2.8..i.i, i32* %cond-lvalue.i.i.i, align 8, !tbaa !32
  br label %_ZN4_OMP5state9ValueRAIIINS0_5ValueIjLNS0_9ValueKindE7EEEjED2Ev.exit.i.i

_ZN4_OMP5state9ValueRAIIINS0_5ValueIjLNS0_9ValueKindE7EEEjED2Ev.exit.i.i: ; preds = %if.then.i185.i.i, %_ZN4_OMP5state9ValueRAIIINS0_5ValueIjLNS0_9ValueKindE2EEEjED2Ev.exit.i.i
  call void @llvm.lifetime.end.p5i8(i64 4, i8 addrspace(5)* %ParallelTeamSizeRAII.sroa.2.i.i.0.i.i.0.i.0.i.0..sroa_cast53)
  tail call fastcc void @_ZN4_OMP11synchronize14threadsAlignedEv() #21
  %322 = load %"struct.(anonymous namespace)::ThreadStateTy"*, %"struct.(anonymous namespace)::ThreadStateTy"* addrspace(3)* %arrayidx6.i.i, align 8, !tbaa !25
  %tobool.not.i74.i54.i.i = icmp eq %"struct.(anonymous namespace)::ThreadStateTy"* %322, null
  br i1 %tobool.not.i74.i54.i.i, label %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit72.critedge.i.i, label %if.then.i75.i55.i.i, !prof !31

if.then.i75.i55.i.i:                              ; preds = %_ZN4_OMP5state9ValueRAIIINS0_5ValueIjLNS0_9ValueKindE7EEEjED2Ev.exit.i.i
  %323 = bitcast %"struct.(anonymous namespace)::ThreadStateTy"* %322 to i8*
  br label %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit72.i.i

_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit72.critedge.i.i: ; preds = %_ZN4_OMP5state9ValueRAIIINS0_5ValueIjLNS0_9ValueKindE7EEEjED2Ev.exit.i.i
  %324 = load i32, i32 addrspace(3)* getelementptr inbounds (%"struct.(anonymous namespace)::TeamStateTy", %"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE, i32 0, i32 0, i32 2), align 8, !tbaa !32
  %cmp54.c.i.i = icmp eq i32 %324, 0
  tail call void @llvm.assume(i1 noundef %cmp54.c.i.i) #20
  br label %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit72.i.i

_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit72.i.i: ; preds = %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit72.critedge.i.i, %if.then.i75.i55.i.i
  %.pn.i45.i69.i.i = phi i8* [ %323, %if.then.i75.i55.i.i ], [ addrspacecast (i8 addrspace(3)* bitcast (%"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE to i8 addrspace(3)*) to i8*), %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit72.critedge.i.i ]
  %retval.0.in.i.i70.i.i = getelementptr inbounds i8, i8* %.pn.i45.i69.i.i, i64 4
  %retval.0.i46.i71.i.i = bitcast i8* %retval.0.in.i.i70.i.i to i32*
  %325 = load i32, i32* %retval.0.i46.i71.i.i, align 4, !tbaa !32
  %cmp63.i.i = icmp eq i32 %325, 0
  tail call void @llvm.assume(i1 noundef %cmp63.i.i) #20
  br label %__kmpc_parallel_51.exit.i

__kmpc_parallel_51.exit.i:                        ; preds = %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit72.i.i, %__kmpc_free_shared.exit.i.i, %_ZN12_GLOBAL__N_115invokeMicrotaskEiiPvPS0_l.exit.i
  %326 = phi %"struct.(anonymous namespace)::ThreadStateTy"* [ null, %_ZN12_GLOBAL__N_115invokeMicrotaskEiiPvPS0_l.exit.i ], [ %176, %__kmpc_free_shared.exit.i.i ], [ %322, %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit72.i.i ]
  %add7.i = add nsw i32 %.omp.comb.lb.0540.i, %stride.0.i.i.i
  %add8.i = add nsw i32 %storemerge541.i, %stride.0.i.i.i
  %cmp9.i = icmp sgt i32 %add8.i, %sub2.i
  %cond13.i = select i1 %cmp9.i, i32 %sub2.i, i32 %add8.i
  %cmp5.i = icmp slt i32 %add7.i, %13
  br i1 %cmp5.i, label %omp.inner.for.body.i, label %__omp_outlined__.exit

__omp_outlined__.exit:                            ; preds = %__kmpc_parallel_51.exit.i, %__kmpc_target_init.exit, %__kmpc_distribute_static_init_4.exit.i
  ret void

; uselistorder directives
  uselistorder i32 addrspace(5)* %ActiveLevelRAII.i.i.sroa.3, { 0, 1, 3, 2, 4, 5 }
  uselistorder i32 addrspace(5)* %LevelRAII.i.i.sroa.4, { 0, 1, 3, 4, 2, 5, 6 }
  uselistorder %struct.SimulationData addrspace(1)* %data.global, { 9, 8, 7, 6, 5, 4, 3, 2, 1, 0 }
  uselistorder %struct.Input addrspace(1)* %input.global, { 2, 1, 0 }
  uselistorder i32 %4, { 4, 3, 2, 1, 0, 5, 6, 7 }
  uselistorder i32 %5, { 3, 4, 2, 1, 0, 5 }
  uselistorder i32 %9, { 1, 0, 2 }
  uselistorder i32 %conv.i.i8.i.i.i.i, { 3, 2, 1, 0, 4, 5, 6 }
  uselistorder i32 %sub.i.i10.i.i.i.i, { 1, 0, 2, 3 }
  uselistorder i1 %cmp.i.i.i2, { 5, 4, 3, 2, 1, 0, 6 }
  uselistorder label %__kmpc_target_init.exit, { 1, 0 }
  uselistorder %"struct.(anonymous namespace)::ThreadStateTy"* addrspace(3)* %arrayidx6.i.i, { 3, 1, 2, 0, 4 }
  uselistorder i32 addrspace(1)* %lookups.i, { 2, 1, 0 }
  uselistorder i32 %13, { 4, 5, 0, 1, 2, 3, 6, 7 }
  uselistorder i32 %cond.i.i.i.i, { 1, 2, 3, 0, 4, 5, 6 }
  uselistorder i32 %div.i79.i.i.i, { 0, 2, 1, 3 }
  uselistorder i32* addrspace(1)* %num_nucs.i.i.i, { 1, 0 }
  uselistorder i32* addrspace(1)* %mats.i.i.i, { 1, 0 }
  uselistorder i32 addrspace(1)* %max_num_nucs.i.i.i, { 1, 0 }
  uselistorder double* addrspace(1)* %concs.i.i.i, { 1, 0 }
  uselistorder i32* addrspace(1)* %n_windows.i.i.i, { 1, 0 }
  uselistorder double* addrspace(1)* %pseudo_K0RS.i.i.i, { 1, 0 }
  uselistorder %struct.Window* addrspace(1)* %windows.i.i.i, { 1, 0 }
  uselistorder %struct.Pole* addrspace(1)* %poles.i.i.i, { 1, 0 }
  uselistorder i32 addrspace(1)* %max_num_windows.i.i.i, { 1, 0 }
  uselistorder i32 addrspace(1)* %max_num_poles.i.i.i, { 1, 0 }
  uselistorder i32 addrspace(1)* %15, { 1, 0 }
  uselistorder i32 addrspace(1)* %16, { 1, 0 }
  uselistorder i32* %cond-lvalue.i.i.i, { 1, 0 }
  uselistorder i32 %.omp.comb.lb.0540.i, { 2, 0, 1 }
  uselistorder i1 %tobool.not.i43.i.i.i, { 0, 1, 2, 3, 4, 6, 5 }
  uselistorder i8* %23, { 0, 1, 2, 3, 4, 5, 6, 8, 7 }
  uselistorder i8 addrspace(3)* %arrayidx3.i.i.i.i.i.i, { 3, 2, 1, 0, 4, 5, 6, 7, 8, 9 }
  uselistorder label %_ZN4_OMP5state8lookup32ENS0_9ValueKindEb.exit2.i.i, { 1, 0 }
  uselistorder label %omp.inner.for.body.i.i.i, { 1, 0 }
  uselistorder label %while.body.i.i.i.i, { 1, 0 }
  uselistorder double %div.i.i.i.i, { 6, 7, 8, 9, 10, 11, 12, 0, 1, 2, 3, 4, 5, 13, 14 }
  uselistorder i32* %44, { 1, 0 }
  uselistorder double* %45, { 4, 5, 6, 7, 0, 1, 2, 3 }
  uselistorder %struct.Window* %46, { 4, 5, 6, 7, 0, 1, 2, 3 }
  uselistorder %struct.Pole* %47, { 9, 10, 11, 12, 13, 14, 15, 16, 17, 0, 1, 2, 3, 4, 5, 6, 7, 8 }
  uselistorder i32 %48, { 1, 0 }
  uselistorder i32 %49, { 1, 0 }
  uselistorder i32 %50, { 1, 0 }
  uselistorder label %for.body9.i.i.i.i, { 1, 0 }
  uselistorder i32 %58, { 4, 5, 6, 7, 0, 1, 2, 3 }
  uselistorder double %mul9.i.i.i.i.i, { 1, 0 }
  uselistorder double %mul10.i.i.i.i.i, { 1, 0 }
  uselistorder double %mul11.i.i.i.i.i, { 1, 0 }
  uselistorder label %for.body.i.i.i.i.i, { 1, 0 }
  uselistorder double %71, { 10, 11, 12, 13, 14, 15, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 16, 17 }
  uselistorder double %72, { 9, 10, 11, 12, 13, 0, 1, 2, 3, 4, 5, 6, 7, 8, 14, 15 }
  uselistorder double %mul11.i.i.i.i.i.i.i.i, { 1, 2, 0, 3 }
  uselistorder double %add.i118.i.i.i.i.i.i, { 1, 0, 2 }
  uselistorder double %add6.i119.i.i.i.i.i.i, { 1, 0, 2 }
  uselistorder i32 %inc.i.i.i.i.i.i, { 1, 0 }
  uselistorder i32 %inc.i.i.i.i.i, { 1, 0 }
  uselistorder double %mul9.i73.i.i.i.i, { 1, 0 }
  uselistorder double %mul10.i74.i.i.i.i, { 1, 0 }
  uselistorder double %mul11.i75.i.i.i.i, { 1, 0 }
  uselistorder label %for.body.i99.i.i.i.i, { 1, 0 }
  uselistorder i32 %inc.i97.i.i.i.i, { 1, 0 }
  uselistorder i32 %inc31.i.i.i.i, { 1, 0 }
  uselistorder i64 %conv5.i.i.i, { 1, 0 }
  uselistorder i32 %spec.select.i.i, { 1, 0 }
  uselistorder i32* %cond-lvalue.i140.i.i, { 1, 0 }
  uselistorder i32* %cond-lvalue.i159.i.i, { 1, 0 }
  uselistorder label %omp.inner.for.body.i.i85.i, { 1, 0 }
  uselistorder label %while.body.i.i.i93.i, { 1, 0 }
  uselistorder double %div.i.i.i115.i, { 6, 7, 8, 9, 10, 11, 12, 0, 1, 2, 3, 4, 5, 13, 14 }
  uselistorder i32* %191, { 1, 0 }
  uselistorder double* %192, { 4, 5, 6, 7, 0, 1, 2, 3 }
  uselistorder %struct.Window* %193, { 4, 5, 6, 7, 0, 1, 2, 3 }
  uselistorder %struct.Pole* %194, { 9, 10, 11, 12, 13, 14, 15, 16, 17, 0, 1, 2, 3, 4, 5, 6, 7, 8 }
  uselistorder i32 %195, { 1, 0 }
  uselistorder i32 %196, { 1, 0 }
  uselistorder i32 %197, { 1, 0 }
  uselistorder label %for.body9.i.i.i155.i, { 1, 0 }
  uselistorder i32 %205, { 4, 5, 6, 7, 0, 1, 2, 3 }
  uselistorder double %mul9.i.i.i.i224.i, { 1, 0 }
  uselistorder double %mul10.i.i.i.i225.i, { 1, 0 }
  uselistorder double %mul11.i.i.i.i226.i, { 1, 0 }
  uselistorder label %for.body.i.i.i.i261.i, { 1, 0 }
  uselistorder double %218, { 10, 11, 12, 13, 14, 15, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 16, 17 }
  uselistorder double %219, { 9, 10, 11, 12, 13, 0, 1, 2, 3, 4, 5, 6, 7, 8, 14, 15 }
  uselistorder double %mul11.i.i.i.i.i.i.i275.i, { 1, 2, 0, 3 }
  uselistorder double %add.i118.i.i.i.i.i325.i, { 1, 0, 2 }
  uselistorder double %add6.i119.i.i.i.i.i326.i, { 1, 0, 2 }
  uselistorder i32 %inc.i.i.i.i.i327.i, { 1, 0 }
  uselistorder i32 %inc.i.i.i.i359.i, { 1, 0 }
  uselistorder double %mul9.i73.i.i.i435.i, { 1, 0 }
  uselistorder double %mul10.i74.i.i.i436.i, { 1, 0 }
  uselistorder double %mul11.i75.i.i.i437.i, { 1, 0 }
  uselistorder label %for.body.i99.i.i.i485.i, { 1, 0 }
  uselistorder i32 %inc.i97.i.i.i483.i, { 1, 0 }
  uselistorder i32 %inc31.i.i.i496.i, { 1, 0 }
  uselistorder i64 %conv5.i.i515.i, { 1, 0 }
  uselistorder i32 %add7.i, { 1, 0 }
  uselistorder label %__omp_outlined__.exit, { 0, 2, 1 }
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p5i8(i64 immarg, i8 addrspace(5)* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p5i8(i64 immarg, i8 addrspace(5)* nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind readnone
define protected i64 @fast_forward_LCG(i64 noundef %seed, i64 noundef %n) local_unnamed_addr #2 {
entry:
  %rem = and i64 %n, 9223372036854775807
  %cmp.not23 = icmp eq i64 %rem, 0
  br i1 %cmp.not23, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %c_new.028 = phi i64 [ %c_new.1, %if.end ], [ 0, %entry ]
  %a_new.027 = phi i64 [ %a_new.1, %if.end ], [ 1, %entry ]
  %c.026 = phi i64 [ %mul3, %if.end ], [ 1, %entry ]
  %a.025 = phi i64 [ %mul4, %if.end ], [ 2806196910506780709, %entry ]
  %n.addr.024 = phi i64 [ %shr, %if.end ], [ %rem, %entry ]
  %and = and i64 %n.addr.024, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %mul = mul i64 %a_new.027, %a.025
  %mul1 = mul i64 %c_new.028, %a.025
  %add = add i64 %mul1, %c.026
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %a_new.1 = phi i64 [ %mul, %if.then ], [ %a_new.027, %while.body ]
  %c_new.1 = phi i64 [ %add, %if.then ], [ %c_new.028, %while.body ]
  %add2 = add i64 %a.025, 1
  %mul3 = mul i64 %c.026, %add2
  %mul4 = mul i64 %a.025, %a.025
  %shr = lshr i64 %n.addr.024, 1
  %cmp.not = icmp ult i64 %n.addr.024, 2
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %entry
  %a_new.0.lcssa = phi i64 [ 1, %entry ], [ %a_new.1, %if.end ]
  %c_new.0.lcssa = phi i64 [ 0, %entry ], [ %c_new.1, %if.end ]
  %mul5 = mul i64 %a_new.0.lcssa, %seed
  %add6 = add i64 %mul5, %c_new.0.lcssa
  %rem7 = and i64 %add6, 9223372036854775807
  ret i64 %rem7

; uselistorder directives
  uselistorder label %while.body, { 1, 0 }
  uselistorder i64 %c_new.028, { 1, 0 }
  uselistorder i64 %a_new.027, { 1, 0 }
  uselistorder i64 %c.026, { 1, 0 }
  uselistorder i64 %a.025, { 3, 4, 2, 1, 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn
define protected double @LCG_random_double(i64* nocapture noundef %seed) local_unnamed_addr #3 {
entry:
  %0 = load i64, i64* %seed, align 8, !tbaa !80
  %mul = mul i64 %0, 2806196910506780709
  %add = add i64 %mul, 1
  %rem = and i64 %add, 9223372036854775807
  store i64 %rem, i64* %seed, align 8, !tbaa !80
  %conv = uitofp i64 %rem to double
  %div = fmul double %conv, 0x3C00000000000000
  ret double %div

; uselistorder directives
  uselistorder i64* %seed, { 1, 0 }
  uselistorder i64 %rem, { 1, 0 }
}

; Function Attrs: nofree nosync nounwind
define protected i32 @pick_mat(i64* nocapture noundef %seed) local_unnamed_addr #4 {
entry:
  %0 = tail call i32 @llvm.amdgcn.workgroup.id.x() #20
  %1 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #20
  %2 = getelementptr i8, i8 addrspace(4)* %1, i64 12
  %3 = bitcast i8 addrspace(4)* %2 to i32 addrspace(4)*
  %4 = load i32, i32 addrspace(4)* %3, align 4, !invariant.load !9
  %5 = getelementptr i8, i8 addrspace(4)* %1, i64 4
  %6 = bitcast i8 addrspace(4)* %5 to i16 addrspace(4)*
  %7 = load i16, i16 addrspace(4)* %6, align 4, !range !10, !invariant.load !9
  %conv.i.i.i1.i = zext i16 %7 to i32
  %mul.i.i.i2.i = mul i32 %0, %conv.i.i.i1.i
  %sub.i.i.i3.i = sub i32 %4, %mul.i.i.i2.i
  %8 = tail call i32 @llvm.amdgcn.workitem.id.x() #20, !range !81
  %cmp.i.i.i.i = icmp ult i32 %sub.i.i.i3.i, %conv.i.i.i1.i
  %cond.i.i.i.i = select i1 %cmp.i.i.i.i, i32 %sub.i.i.i3.i, i32 %conv.i.i.i1.i
  %div.i.i.i.rhs.trunc.i = trunc i32 %cond.i.i.i.i to i16
  %div.i.i.i1.i = udiv i16 2048, %div.i.i.i.rhs.trunc.i
  %9 = and i16 %div.i.i.i1.i, 4080
  %sub.i.i.i.i.i = zext i16 %9 to i32
  %arrayidx.i.i.i = getelementptr %"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 %8
  %10 = load i8, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %mul.i1.i.i.i = mul nuw nsw i32 %8, %sub.i.i.i.i.i
  %conv.i.i.i.i = zext i8 %10 to i32
  %add.i2.i.i.i = add nuw nsw i32 %mul.i1.i.i.i, %conv.i.i.i.i
  %arrayidx3.i.i.i.i = getelementptr inbounds %"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 0, i32 %add.i2.i.i.i
  %conv14.i.i.i = add i8 %10, 96
  store i8 %conv14.i.i.i, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %arrayidx = bitcast i8 addrspace(3)* %arrayidx3.i.i.i.i to double addrspace(3)*
  store double 1.400000e-01, double addrspace(3)* %arrayidx, align 16, !tbaa !52
  %arrayidx1 = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 8
  %11 = bitcast i8 addrspace(3)* %arrayidx1 to double addrspace(3)*
  store double 5.200000e-02, double addrspace(3)* %11, align 8, !tbaa !52
  %arrayidx2 = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 16
  %12 = bitcast i8 addrspace(3)* %arrayidx2 to double addrspace(3)*
  store double 2.750000e-01, double addrspace(3)* %12, align 16, !tbaa !52
  %arrayidx3 = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 24
  %13 = bitcast i8 addrspace(3)* %arrayidx3 to double addrspace(3)*
  store double 1.340000e-01, double addrspace(3)* %13, align 8, !tbaa !52
  %arrayidx4 = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 32
  %14 = bitcast i8 addrspace(3)* %arrayidx4 to double addrspace(3)*
  store double 1.540000e-01, double addrspace(3)* %14, align 16, !tbaa !52
  %arrayidx5 = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 40
  %15 = bitcast i8 addrspace(3)* %arrayidx5 to double addrspace(3)*
  store double 6.400000e-02, double addrspace(3)* %15, align 8, !tbaa !52
  %arrayidx6 = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 48
  %16 = bitcast i8 addrspace(3)* %arrayidx6 to double addrspace(3)*
  store double 6.600000e-02, double addrspace(3)* %16, align 16, !tbaa !52
  %arrayidx7 = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 56
  %17 = bitcast i8 addrspace(3)* %arrayidx7 to double addrspace(3)*
  store double 5.500000e-02, double addrspace(3)* %17, align 8, !tbaa !52
  %arrayidx8 = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 64
  %18 = bitcast i8 addrspace(3)* %arrayidx8 to double addrspace(3)*
  store double 8.000000e-03, double addrspace(3)* %18, align 16, !tbaa !52
  %arrayidx9 = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 72
  %19 = bitcast i8 addrspace(3)* %arrayidx9 to double addrspace(3)*
  store double 1.500000e-02, double addrspace(3)* %19, align 8, !tbaa !52
  %arrayidx10 = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 80
  %20 = bitcast i8 addrspace(3)* %arrayidx10 to double addrspace(3)*
  store double 2.500000e-02, double addrspace(3)* %20, align 16, !tbaa !52
  %arrayidx11 = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 88
  %21 = bitcast i8 addrspace(3)* %arrayidx11 to double addrspace(3)*
  store double 1.300000e-02, double addrspace(3)* %21, align 8, !tbaa !52
  %22 = load i64, i64* %seed, align 8, !tbaa !80
  %mul.i = mul i64 %22, 2806196910506780709
  %add.i = add i64 %mul.i, 1
  %rem.i = and i64 %add.i, 9223372036854775807
  store i64 %rem.i, i64* %seed, align 8, !tbaa !80
  %conv.i = uitofp i64 %rem.i to double
  %div.i = fmul double %conv.i, 0x3C00000000000000
  %cmp17.1 = fcmp olt double %div.i, 5.200000e-02
  br i1 %cmp17.1, label %cleanup19, label %for.cond.cleanup14.2

for.cond.cleanup14.2:                             ; preds = %entry
  %cmp17.2 = fcmp olt double %div.i, 3.270000e-01
  br i1 %cmp17.2, label %cleanup19, label %for.cond.cleanup14.3

for.cond.cleanup14.3:                             ; preds = %for.cond.cleanup14.2
  %cmp17.3 = fcmp olt double %div.i, 4.610000e-01
  br i1 %cmp17.3, label %cleanup19, label %for.cond.cleanup14.4

for.cond.cleanup14.4:                             ; preds = %for.cond.cleanup14.3
  %cmp17.4 = fcmp olt double %div.i, 0x3FE3AE147AE147AF
  br i1 %cmp17.4, label %cleanup19, label %for.cond.cleanup14.5

for.cond.cleanup14.5:                             ; preds = %for.cond.cleanup14.4
  %cmp17.5 = fcmp olt double %div.i, 6.790000e-01
  br i1 %cmp17.5, label %cleanup19, label %for.cond.cleanup14.6

for.cond.cleanup14.6:                             ; preds = %for.cond.cleanup14.5
  %cmp17.6 = fcmp olt double %div.i, 0x3FE7D70A3D70A3D8
  br i1 %cmp17.6, label %cleanup19, label %for.cond.cleanup14.7

for.cond.cleanup14.7:                             ; preds = %for.cond.cleanup14.6
  %cmp17.7 = fcmp olt double %div.i, 8.000000e-01
  br i1 %cmp17.7, label %cleanup19, label %for.cond.cleanup14.8

for.cond.cleanup14.8:                             ; preds = %for.cond.cleanup14.7
  %cmp17.8 = fcmp olt double %div.i, 8.080000e-01
  br i1 %cmp17.8, label %cleanup19, label %for.cond.cleanup14.9

for.cond.cleanup14.9:                             ; preds = %for.cond.cleanup14.8
  %cmp17.9 = fcmp olt double %div.i, 0x3FEA5604189374BD
  br i1 %cmp17.9, label %cleanup19, label %for.cond.cleanup14.10

for.cond.cleanup14.10:                            ; preds = %for.cond.cleanup14.9
  %cmp17.10 = fcmp olt double %div.i, 0x3FEB22D0E560418A
  br i1 %cmp17.10, label %cleanup19, label %for.cond.cleanup14.11

for.cond.cleanup14.11:                            ; preds = %for.cond.cleanup14.10
  %cmp17.11 = fcmp olt double %div.i, 0x3FEB8D4FDF3B645B
  br i1 %cmp17.11, label %cleanup19, label %for.inc18.11

for.inc18.11:                                     ; preds = %for.cond.cleanup14.11
  br label %cleanup19

cleanup19:                                        ; preds = %for.inc18.11, %for.cond.cleanup14.11, %for.cond.cleanup14.10, %for.cond.cleanup14.9, %for.cond.cleanup14.8, %for.cond.cleanup14.7, %for.cond.cleanup14.6, %for.cond.cleanup14.5, %for.cond.cleanup14.4, %for.cond.cleanup14.3, %for.cond.cleanup14.2, %entry
  %cmp.lcssa = phi i32 [ 1, %entry ], [ 2, %for.cond.cleanup14.2 ], [ 3, %for.cond.cleanup14.3 ], [ 4, %for.cond.cleanup14.4 ], [ 5, %for.cond.cleanup14.5 ], [ 6, %for.cond.cleanup14.6 ], [ 7, %for.cond.cleanup14.7 ], [ 8, %for.cond.cleanup14.8 ], [ 9, %for.cond.cleanup14.9 ], [ 10, %for.cond.cleanup14.10 ], [ 11, %for.cond.cleanup14.11 ], [ 0, %for.inc18.11 ]
  %cmp4.i.i.i = icmp ult i8 addrspace(3)* %arrayidx3.i.i.i.i, getelementptr inbounds (%"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 0)
  br i1 %cmp4.i.i.i, label %if.then.i.i.i, label %__kmpc_free_shared.exit

if.then.i.i.i:                                    ; preds = %cleanup19
  %23 = load i8, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %sub.i.i.i = add i8 %23, -96
  store i8 %sub.i.i.i, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  br label %__kmpc_free_shared.exit

__kmpc_free_shared.exit:                          ; preds = %cleanup19, %if.then.i.i.i
  ret i32 %cmp.lcssa

; uselistorder directives
  uselistorder i8 addrspace(3)* %arrayidx.i.i.i, { 1, 0, 2, 3 }
  uselistorder i8 addrspace(3)* %arrayidx3.i.i.i.i, { 12, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 }
  uselistorder label %__kmpc_free_shared.exit, { 1, 0 }
}

; Function Attrs: convergent nounwind
define protected void @calculate_macro_xs(double* nocapture noundef %macro_xs, i32 noundef %mat, double noundef %E, i32 %input.coerce0, i32 %input.coerce1, i32 %input.coerce2, i32 %input.coerce3, i32 %input.coerce4, i32 %input.coerce5, i32 %input.coerce6, i32 %input.coerce7, i32 %input.coerce8, i32 %input.coerce9, i32 %input.coerce10, i32* nocapture noundef readonly %num_nucs, i32* nocapture noundef readonly %mats, i32 noundef %max_num_nucs, double* nocapture noundef readonly %concs, i32* nocapture noundef readonly %n_windows, double* nocapture noundef readonly %pseudo_K0Rs, %struct.Window* nocapture noundef readonly %windows, %struct.Pole* nocapture noundef readonly %poles, i32 noundef %max_num_windows, i32 noundef %max_num_poles) local_unnamed_addr #5 {
entry:
  %0 = tail call i32 @llvm.amdgcn.workgroup.id.x() #20
  %1 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #20
  %2 = getelementptr i8, i8 addrspace(4)* %1, i64 12
  %3 = bitcast i8 addrspace(4)* %2 to i32 addrspace(4)*
  %4 = load i32, i32 addrspace(4)* %3, align 4, !invariant.load !9
  %5 = getelementptr i8, i8 addrspace(4)* %1, i64 4
  %6 = bitcast i8 addrspace(4)* %5 to i16 addrspace(4)*
  %7 = load i16, i16 addrspace(4)* %6, align 4, !range !10, !invariant.load !9
  %conv.i.i.i1.i = zext i16 %7 to i32
  %mul.i.i.i2.i = mul i32 %0, %conv.i.i.i1.i
  %sub.i.i.i3.i = sub i32 %4, %mul.i.i.i2.i
  %8 = tail call i32 @llvm.amdgcn.workitem.id.x() #20, !range !81
  %cmp.i.i.i.i = icmp ult i32 %sub.i.i.i3.i, %conv.i.i.i1.i
  %cond.i.i.i.i = select i1 %cmp.i.i.i.i, i32 %sub.i.i.i3.i, i32 %conv.i.i.i1.i
  %div.i.i.i.rhs.trunc.i = trunc i32 %cond.i.i.i.i to i16
  %div.i.i.i1.i = udiv i16 2048, %div.i.i.i.rhs.trunc.i
  %9 = and i16 %div.i.i.i1.i, 4080
  %sub.i.i.i.i.i = zext i16 %9 to i32
  %arrayidx.i.i.i = getelementptr %"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 %8
  %10 = load i8, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %mul.i1.i.i.i = mul nuw nsw i32 %8, %sub.i.i.i.i.i
  %conv.i.i.i.i = zext i8 %10 to i32
  %add.i2.i.i.i = add nuw nsw i32 %mul.i1.i.i.i, %conv.i.i.i.i
  %conv14.i.i.i = add i8 %10, 32
  store i8 %conv14.i.i.i, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  store double 0.000000e+00, double* %macro_xs, align 8, !tbaa !52
  %arrayidx.1 = getelementptr inbounds double, double* %macro_xs, i64 1
  store double 0.000000e+00, double* %arrayidx.1, align 8, !tbaa !52
  %arrayidx.2 = getelementptr inbounds double, double* %macro_xs, i64 2
  store double 0.000000e+00, double* %arrayidx.2, align 8, !tbaa !52
  %arrayidx.3 = getelementptr inbounds double, double* %macro_xs, i64 3
  store double 0.000000e+00, double* %arrayidx.3, align 8, !tbaa !52
  %arrayidx3.i.i.i.i = getelementptr inbounds %"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 0, i32 %add.i2.i.i.i
  %idxprom4 = sext i32 %mat to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %num_nucs, i64 %idxprom4
  %mul = mul nsw i32 %max_num_nucs, %mat
  %cmp12 = icmp eq i32 %input.coerce7, 1
  %arraydecay13 = bitcast i8 addrspace(3)* %arrayidx3.i.i.i.i to double addrspace(3)*
  %11 = tail call double @llvm.fmuladd.f64(double %E, double %E, double 0.000000e+00) #20
  %arrayidx42.i166 = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 8
  %12 = bitcast i8 addrspace(3)* %arrayidx42.i166 to double addrspace(3)*
  %arrayidx43.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 16
  %13 = bitcast i8 addrspace(3)* %arrayidx43.i to double addrspace(3)*
  %arrayidx44.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 24
  %14 = bitcast i8 addrspace(3)* %arrayidx44.i to double addrspace(3)*
  %15 = load i32, i32* %arrayidx5, align 4, !tbaa !51
  %cmp6191 = icmp sgt i32 %15, 0
  br i1 %cmp6191, label %for.body9.preheader, label %for.cond.cleanup7

for.body9.preheader:                              ; preds = %entry
  %arrayidx19 = bitcast i8 addrspace(3)* %arrayidx3.i.i.i.i to double addrspace(3)*
  %arrayidx19.1 = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 8
  %16 = bitcast i8 addrspace(3)* %arrayidx19.1 to double addrspace(3)*
  %arrayidx19.2 = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 16
  %17 = bitcast i8 addrspace(3)* %arrayidx19.2 to double addrspace(3)*
  %arrayidx19.3 = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 24
  %18 = bitcast i8 addrspace(3)* %arrayidx19.3 to double addrspace(3)*
  br label %for.body9

for.cond.cleanup7:                                ; preds = %if.end, %entry
  %cmp4.i.i.i = icmp ult i8 addrspace(3)* %arrayidx3.i.i.i.i, getelementptr inbounds (%"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 0)
  br i1 %cmp4.i.i.i, label %if.then.i.i.i, label %__kmpc_free_shared.exit

if.then.i.i.i:                                    ; preds = %for.cond.cleanup7
  %19 = load i8, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %sub.i.i.i = add i8 %19, -32
  store i8 %sub.i.i.i, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  br label %__kmpc_free_shared.exit

__kmpc_free_shared.exit:                          ; preds = %for.cond.cleanup7, %if.then.i.i.i
  ret void

for.body9:                                        ; preds = %for.body9.preheader, %if.end
  %i2.0192 = phi i32 [ %inc31, %if.end ], [ 0, %for.body9.preheader ]
  %add = add nsw i32 %i2.0192, %mul
  %idxprom10 = sext i32 %add to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %mats, i64 %idxprom10
  %20 = load i32, i32* %arrayidx11, align 4, !tbaa !51
  %21 = load i8, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %conv.i.i.i.i.i = zext i8 %21 to i32
  %add.i2.i.i.i.i = add nuw nsw i32 %mul.i1.i.i.i, %conv.i.i.i.i.i
  %arrayidx3.i.i.i.i.i = getelementptr inbounds %"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 0, i32 %add.i2.i.i.i.i
  %conv14.i.i.i.i = add i8 %21, 64
  store i8 %conv14.i.i.i.i, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %sigTfactors_on_stack.i = bitcast i8 addrspace(3)* %arrayidx3.i.i.i.i.i to [4 x %struct.RSComplex] addrspace(3)*
  %idxprom.i = sext i32 %20 to i64
  %arrayidx.i = getelementptr inbounds i32, i32* %n_windows, i64 %idxprom.i
  %22 = load i32, i32* %arrayidx.i, align 4, !tbaa !51
  %conv.i = sitofp i32 %22 to double
  %div.i = fdiv double 1.000000e+00, %conv.i
  %div2.i = fdiv double %E, %div.i
  %conv3.i = fptosi double %div2.i to i32
  %cmp.i = icmp eq i32 %22, %conv3.i
  %dec.i = sext i1 %cmp.i to i32
  %mul.i.i = mul nsw i32 %20, %input.coerce6
  %idxprom.i.i = sext i32 %mul.i.i to i64
  %arrayidx.i.i = getelementptr inbounds double, double* %pseudo_K0Rs, i64 %idxprom.i.i
  %23 = load double, double* %arrayidx.i.i, align 8, !tbaa !52
  %call.i.i.i = tail call double @__ocml_sqrt_f64(double noundef %E) #23
  %mul2.i.i = fmul double %23, %call.i.i.i
  %mul25.i.i = fmul double %mul2.i.i, 2.000000e+00
  %call.i61.i.i = tail call double @__ocml_cos_f64(double noundef %mul25.i.i) #24
  %r.i.i = bitcast i8 addrspace(3)* %arrayidx3.i.i.i.i.i to double addrspace(3)*
  store double %call.i61.i.i, double addrspace(3)* %r.i.i, align 8, !tbaa !54
  %call.i62.i.i = tail call double @__ocml_sin_f64(double noundef %mul25.i.i) #24
  %fneg30.i.i = fneg double %call.i62.i.i
  %i33.i.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i.i, i32 8
  %24 = bitcast i8 addrspace(3)* %i33.i.i to double addrspace(3)*
  store double %fneg30.i.i, double addrspace(3)* %24, align 8, !tbaa !56
  %add.1.i.i = add nsw i32 %mul.i.i, 1
  %idxprom.1.i.i = sext i32 %add.1.i.i to i64
  %arrayidx.1.i.i = getelementptr inbounds double, double* %pseudo_K0Rs, i64 %idxprom.1.i.i
  %25 = load double, double* %arrayidx.1.i.i, align 8, !tbaa !52
  %mul2.1.i.i = fmul double %call.i.i.i, %25
  %call.i58.1.i.i = tail call double @__ocml_atan_f64(double noundef %mul2.1.i.i) #23
  %sub.1.i.i = fadd double %mul2.1.i.i, %call.i58.1.i.i
  %mul25.1.i.i = fmul double %sub.1.i.i, 2.000000e+00
  %call.i61.1.i.i = tail call double @__ocml_cos_f64(double noundef %mul25.1.i.i) #24
  %r.1.i.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i.i, i32 16
  %26 = bitcast i8 addrspace(3)* %r.1.i.i to double addrspace(3)*
  store double %call.i61.1.i.i, double addrspace(3)* %26, align 8, !tbaa !54
  %call.i62.1.i.i = tail call double @__ocml_sin_f64(double noundef %mul25.1.i.i) #24
  %fneg30.1.i.i = fneg double %call.i62.1.i.i
  %i33.1.i.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i.i, i32 24
  %27 = bitcast i8 addrspace(3)* %i33.1.i.i to double addrspace(3)*
  store double %fneg30.1.i.i, double addrspace(3)* %27, align 8, !tbaa !56
  %add.2.i.i = add nsw i32 %mul.i.i, 2
  %idxprom.2.i.i = sext i32 %add.2.i.i to i64
  %arrayidx.2.i.i = getelementptr inbounds double, double* %pseudo_K0Rs, i64 %idxprom.2.i.i
  %28 = load double, double* %arrayidx.2.i.i, align 8, !tbaa !52
  %mul2.2.i.i = fmul double %call.i.i.i, %28
  %mul7.2.i.i = fmul double %mul2.2.i.i, 3.000000e+00
  %neg.2.i.i = fneg double %mul2.2.i.i
  %29 = tail call double @llvm.fmuladd.f64(double %neg.2.i.i, double %mul2.2.i.i, double 3.000000e+00) #20
  %div.2.i.i = fdiv double %mul7.2.i.i, %29
  %call.i59.2.i.i = tail call double @__ocml_atan_f64(double noundef %div.2.i.i) #23
  %sub10.2.i.i = fsub double %mul2.2.i.i, %call.i59.2.i.i
  %mul25.2.i.i = fmul double %sub10.2.i.i, 2.000000e+00
  %call.i61.2.i.i = tail call double @__ocml_cos_f64(double noundef %mul25.2.i.i) #24
  %r.2.i.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i.i, i32 32
  %30 = bitcast i8 addrspace(3)* %r.2.i.i to double addrspace(3)*
  store double %call.i61.2.i.i, double addrspace(3)* %30, align 8, !tbaa !54
  %call.i62.2.i.i = tail call double @__ocml_sin_f64(double noundef %mul25.2.i.i) #24
  %fneg30.2.i.i = fneg double %call.i62.2.i.i
  %i33.2.i.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i.i, i32 40
  %31 = bitcast i8 addrspace(3)* %i33.2.i.i to double addrspace(3)*
  store double %fneg30.2.i.i, double addrspace(3)* %31, align 8, !tbaa !56
  %add.3.i.i = add nsw i32 %mul.i.i, 3
  %idxprom.3.i.i = sext i32 %add.3.i.i to i64
  %arrayidx.3.i.i = getelementptr inbounds double, double* %pseudo_K0Rs, i64 %idxprom.3.i.i
  %32 = load double, double* %arrayidx.3.i.i, align 8, !tbaa !52
  %mul2.3.i.i = fmul double %call.i.i.i, %32
  %neg15.3.i.i = fneg double %mul2.3.i.i
  %33 = tail call double @llvm.fmuladd.f64(double %neg15.3.i.i, double %mul2.3.i.i, double 1.500000e+01) #20
  %mul16.3.i.i = fmul double %mul2.3.i.i, %33
  %neg19.3.i.i = fmul double %mul2.3.i.i, -6.000000e+00
  %34 = tail call double @llvm.fmuladd.f64(double %neg19.3.i.i, double %mul2.3.i.i, double 1.500000e+01) #20
  %div20.3.i.i = fdiv double %mul16.3.i.i, %34
  %call.i60.3.i.i = tail call double @__ocml_atan_f64(double noundef %div20.3.i.i) #23
  %sub22.3.i.i = fsub double %mul2.3.i.i, %call.i60.3.i.i
  %mul25.3.i.i = fmul double %sub22.3.i.i, 2.000000e+00
  %call.i61.3.i.i = tail call double @__ocml_cos_f64(double noundef %mul25.3.i.i) #24
  %r.3.i.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i.i, i32 48
  %35 = bitcast i8 addrspace(3)* %r.3.i.i to double addrspace(3)*
  store double %call.i61.3.i.i, double addrspace(3)* %35, align 8, !tbaa !54
  %call.i62.3.i.i = tail call double @__ocml_sin_f64(double noundef %mul25.3.i.i) #24
  %fneg30.3.i.i = fneg double %call.i62.3.i.i
  %i33.3.i.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i.i, i32 56
  %36 = bitcast i8 addrspace(3)* %i33.3.i.i to double addrspace(3)*
  store double %fneg30.3.i.i, double addrspace(3)* %36, align 8, !tbaa !56
  %mul.i = mul nsw i32 %20, %max_num_windows
  %spec.select.i = add i32 %mul.i, %conv3.i
  %add.i = add i32 %spec.select.i, %dec.i
  %idxprom7.i = sext i32 %add.i to i64
  %w.sroa.0.0..sroa_idx.i = getelementptr inbounds %struct.Window, %struct.Window* %windows, i64 %idxprom7.i, i32 0
  %w.sroa.0.0.copyload.i = load double, double* %w.sroa.0.0..sroa_idx.i, align 8
  %w.sroa.4.0..sroa_idx81.i = getelementptr inbounds %struct.Window, %struct.Window* %windows, i64 %idxprom7.i, i32 1
  %w.sroa.4.0.copyload.i = load double, double* %w.sroa.4.0..sroa_idx81.i, align 8
  %w.sroa.5.0..sroa_idx83.i = getelementptr inbounds %struct.Window, %struct.Window* %windows, i64 %idxprom7.i, i32 2
  %w.sroa.5.0.copyload.i = load double, double* %w.sroa.5.0..sroa_idx83.i, align 8
  %w.sroa.6.0..sroa_idx85.i = getelementptr inbounds %struct.Window, %struct.Window* %windows, i64 %idxprom7.i, i32 3
  %37 = bitcast i32* %w.sroa.6.0..sroa_idx85.i to <2 x i32>*
  %38 = load <2 x i32>, <2 x i32>* %37, align 8
  %mul9.i = fmul double %w.sroa.0.0.copyload.i, %E
  %mul10.i = fmul double %w.sroa.4.0.copyload.i, %E
  %mul11.i = fmul double %w.sroa.5.0.copyload.i, %E
  %mul14.i = mul nsw i32 %20, %max_num_poles
  %39 = extractelement <2 x i32> %38, i64 0
  %40 = extractelement <2 x i32> %38, i64 1
  %cmp12134.i = icmp slt i32 %39, %40
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %for.body9
  br i1 %cmp12134.i, label %for.body.i, label %for.cond.cleanup.i

for.cond.cleanup.i:                               ; preds = %fast_nuclear_W.exit.i, %if.then
  %sigF.0.lcssa.i = phi double [ %mul11.i, %if.then ], [ %add38.i, %fast_nuclear_W.exit.i ]
  %sigA.0.lcssa.i = phi double [ %mul10.i, %if.then ], [ %add34.i, %fast_nuclear_W.exit.i ]
  %sigT.0.lcssa.i = phi double [ %mul9.i, %if.then ], [ %add30.i, %fast_nuclear_W.exit.i ]
  %sub.i = fsub double %sigT.0.lcssa.i, %sigA.0.lcssa.i
  store double %sigT.0.lcssa.i, double addrspace(3)* %arraydecay13, align 8, !tbaa !52
  store double %sigA.0.lcssa.i, double addrspace(3)* %12, align 8, !tbaa !52
  store double %sigF.0.lcssa.i, double addrspace(3)* %13, align 8, !tbaa !52
  store double %sub.i, double addrspace(3)* %14, align 8, !tbaa !52
  %cmp4.i.i.i.i = icmp ult i8 addrspace(3)* %arrayidx3.i.i.i.i.i, getelementptr inbounds (%"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 0)
  br i1 %cmp4.i.i.i.i, label %if.end.sink.split, label %if.end

for.body.i:                                       ; preds = %if.then, %fast_nuclear_W.exit.i
  %sigT.0138.i = phi double [ %add30.i, %fast_nuclear_W.exit.i ], [ %mul9.i, %if.then ]
  %sigA.0137.i = phi double [ %add34.i, %fast_nuclear_W.exit.i ], [ %mul10.i, %if.then ]
  %sigF.0136.i = phi double [ %add38.i, %fast_nuclear_W.exit.i ], [ %mul11.i, %if.then ]
  %i.0135.i = phi i32 [ %inc.i, %fast_nuclear_W.exit.i ], [ %39, %if.then ]
  %add15.i = add nsw i32 %i.0135.i, %mul14.i
  %idxprom16.i = sext i32 %add15.i to i64
  %pole.sroa.0.0..sroa_idx.i = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16.i, i32 0, i32 0
  %pole.sroa.0.0.copyload.i = load double, double* %pole.sroa.0.0..sroa_idx.i, align 8, !tbaa.struct !60
  %pole.sroa.4.0..sroa_idx56.i = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16.i, i32 0, i32 1
  %pole.sroa.4.0.copyload.i = load double, double* %pole.sroa.4.0..sroa_idx56.i, align 8, !tbaa.struct !63
  %pole.sroa.5.0..sroa_idx58.i = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16.i, i32 1, i32 0
  %pole.sroa.5.0.copyload.i = load double, double* %pole.sroa.5.0..sroa_idx58.i, align 8, !tbaa.struct !64
  %pole.sroa.6.0..sroa_idx60.i = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16.i, i32 1, i32 1
  %pole.sroa.6.0.copyload.i = load double, double* %pole.sroa.6.0..sroa_idx60.i, align 8, !tbaa.struct !65
  %pole.sroa.7.0..sroa_idx62.i = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16.i, i32 2, i32 0
  %pole.sroa.7.0.copyload.i = load double, double* %pole.sroa.7.0..sroa_idx62.i, align 8, !tbaa.struct !66
  %pole.sroa.8.0..sroa_idx64.i = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16.i, i32 2, i32 1
  %pole.sroa.8.0.copyload.i = load double, double* %pole.sroa.8.0..sroa_idx64.i, align 8, !tbaa.struct !67
  %pole.sroa.9.0..sroa_idx66.i = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16.i, i32 3, i32 0
  %pole.sroa.9.0.copyload.i = load double, double* %pole.sroa.9.0..sroa_idx66.i, align 8, !tbaa.struct !68
  %pole.sroa.10.0..sroa_idx68.i = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16.i, i32 3, i32 1
  %pole.sroa.10.0.copyload.i = load double, double* %pole.sroa.10.0..sroa_idx68.i, align 8, !tbaa.struct !69
  %pole.sroa.11.0..sroa_idx70.i = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16.i, i32 4
  %pole.sroa.11.0.copyload.i = load i16, i16* %pole.sroa.11.0..sroa_idx70.i, align 8, !tbaa.struct !70
  %sub.i.i = fsub double %E, %pole.sroa.0.0.copyload.i
  %sub6.i.i = fsub double 0.000000e+00, %pole.sroa.4.0.copyload.i
  %neg.i.i = fmul double %sub6.i.i, -0.000000e+00
  %41 = tail call double @llvm.fmuladd.f64(double %sub.i.i, double 5.000000e-01, double %neg.i.i) #20
  %mul7.i.i = fmul double %sub6.i.i, 5.000000e-01
  %42 = tail call double @llvm.fmuladd.f64(double %sub.i.i, double 0.000000e+00, double %mul7.i.i) #20
  %43 = load i8, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %conv.i.i.i.i.i.i = zext i8 %43 to i32
  %add.i2.i.i.i.i.i = add nuw nsw i32 %mul.i1.i.i.i, %conv.i.i.i.i.i.i
  %arrayidx3.i.i.i.i.i.i = getelementptr inbounds %"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 0, i32 %add.i2.i.i.i.i.i
  %conv14.i.i.i.i.i = add i8 %43, 80
  %neg_1n_on_stack.i.i = bitcast i8 addrspace(3)* %arrayidx3.i.i.i.i.i.i to [10 x double] addrspace(3)*
  %conv.i.i.i.i150.i.i = zext i8 %conv14.i.i.i.i.i to i32
  %add.i2.i.i.i151.i.i = add nuw nsw i32 %mul.i1.i.i.i, %conv.i.i.i.i150.i.i
  %arrayidx3.i.i.i.i153.i.i = getelementptr inbounds %"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 0, i32 %add.i2.i.i.i151.i.i
  %conv14.i.i.i154.i.i = add i8 %43, -96
  %denominator_left_on_stack.i.i = bitcast i8 addrspace(3)* %arrayidx3.i.i.i.i153.i.i to [10 x double] addrspace(3)*
  %conv.i.i.i.i165.i.i = zext i8 %conv14.i.i.i154.i.i to i32
  %add.i2.i.i.i166.i.i = add nuw nsw i32 %mul.i1.i.i.i, %conv.i.i.i.i165.i.i
  %arrayidx3.i.i.i.i168.i.i = getelementptr inbounds %"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 0, i32 %add.i2.i.i.i166.i.i
  %conv14.i.i.i169.i.i = add i8 %43, -16
  store i8 %conv14.i.i.i169.i.i, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %an_on_stack.i.i = bitcast i8 addrspace(3)* %arrayidx3.i.i.i.i168.i.i to [10 x double] addrspace(3)*
  %mul4.i.i.i = fmul double %42, %42
  %44 = tail call double @llvm.fmuladd.f64(double %41, double %41, double %mul4.i.i.i) #20
  %call.i.i.i.i = tail call double @__ocml_sqrt_f64(double noundef %44) #23
  %cmp.i.i = fcmp olt double %call.i.i.i.i, 6.000000e+00
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i
  tail call void @llvm.memcpy.p3i8.p0i8.i64(i8 addrspace(3)* noundef align 16 dereferenceable(80) %arrayidx3.i.i.i.i168.i.i, i8* noundef nonnull align 16 dereferenceable(80) bitcast ([10 x double]* @constinit to i8*), i64 80, i1 false) #20, !tbaa.struct !82
  tail call void @llvm.memcpy.p3i8.p0i8.i64(i8 addrspace(3)* noundef align 16 dereferenceable(80) %arrayidx3.i.i.i.i.i.i, i8* noundef nonnull align 16 dereferenceable(80) bitcast ([10 x double]* @constinit.2 to i8*), i64 80, i1 false) #20, !tbaa.struct !82
  tail call void @llvm.memcpy.p3i8.p0i8.i64(i8 addrspace(3)* noundef align 16 dereferenceable(80) %arrayidx3.i.i.i.i153.i.i, i8* noundef nonnull align 16 dereferenceable(80) bitcast ([10 x double]* @constinit.3 to i8*), i64 80, i1 false) #20, !tbaa.struct !82
  %neg.i.i.i = fmul double %42, -1.200000e+01
  %45 = tail call double @llvm.fmuladd.f64(double %41, double 0.000000e+00, double %neg.i.i.i) #20
  %mul7.i.i.i = fmul double %41, 1.200000e+01
  %46 = tail call double @llvm.fmuladd.f64(double %42, double 0.000000e+00, double %mul7.i.i.i) #20
  %47 = tail call double @llvm.fmuladd.f64(double %45, double 0x3F30000000000000, double 1.000000e+00) #20
  %mul.i.i.i.i = fmul double %47, %47
  %mul1.i.i.i.i = fmul double %mul.i.i.i.i, %mul.i.i.i.i
  %mul2.i.i.i.i = fmul double %mul1.i.i.i.i, %mul1.i.i.i.i
  %mul3.i.i.i.i = fmul double %mul2.i.i.i.i, %mul2.i.i.i.i
  %mul4.i.i.i.i = fmul double %mul3.i.i.i.i, %mul3.i.i.i.i
  %mul5.i.i.i.i = fmul double %mul4.i.i.i.i, %mul4.i.i.i.i
  %mul6.i.i.i.i = fmul double %mul5.i.i.i.i, %mul5.i.i.i.i
  %mul7.i.i.i.i = fmul double %mul6.i.i.i.i, %mul6.i.i.i.i
  %mul8.i.i.i.i = fmul double %mul7.i.i.i.i, %mul7.i.i.i.i
  %mul9.i.i.i.i = fmul double %mul8.i.i.i.i, %mul8.i.i.i.i
  %mul10.i.i.i.i = fmul double %mul9.i.i.i.i, %mul9.i.i.i.i
  %mul11.i.i.i.i = fmul double %mul10.i.i.i.i, %mul10.i.i.i.i
  %call.i.i170.i.i = tail call double @__ocml_cos_f64(double noundef %46) #24
  %call.i19.i.i.i = tail call double @__ocml_sin_f64(double noundef %46) #24
  %neg.i.i.i.i = fmul double %call.i19.i.i.i, -0.000000e+00
  %48 = tail call double @llvm.fmuladd.f64(double %mul11.i.i.i.i, double %call.i.i170.i.i, double %neg.i.i.i.i) #20
  %mul7.i20.i.i.i = fmul double %call.i.i170.i.i, 0.000000e+00
  %49 = tail call double @llvm.fmuladd.f64(double %mul11.i.i.i.i, double %call.i19.i.i.i, double %mul7.i20.i.i.i) #20
  %sub.i.i.i69 = fsub double 1.000000e+00, %48
  %sub6.i.i.i = fsub double 0.000000e+00, %49
  %neg.i173.i.i = fneg double %sub6.i.i.i
  %50 = tail call double @llvm.fmuladd.f64(double %sub.i.i.i69, double 0.000000e+00, double %neg.i173.i.i) #20
  %51 = tail call double @llvm.fmuladd.f64(double %sub6.i.i.i, double 0.000000e+00, double %sub.i.i.i69) #20
  %mul7.i177.i.i = fmul double %41, 0.000000e+00
  %52 = tail call double @llvm.fmuladd.f64(double %42, double 1.200000e+01, double %mul7.i177.i.i) #20
  %53 = fneg double %50
  %54 = fneg double %42
  %neg.i222.i.i = fmul double %42, %54
  %55 = tail call double @llvm.fmuladd.f64(double %41, double %41, double %neg.i222.i.i) #20
  %mul7.i223.i.i = fmul double %41, %42
  %56 = tail call double @llvm.fmuladd.f64(double %41, double %42, double %mul7.i223.i.i) #20
  %neg.i226.i.i = fmul double %56, -0.000000e+00
  %57 = tail call double @llvm.fmuladd.f64(double %55, double 1.440000e+02, double %neg.i226.i.i) #20
  %mul7.i227.i.i = fmul double %55, 0.000000e+00
  %58 = tail call double @llvm.fmuladd.f64(double %56, double 1.440000e+02, double %mul7.i227.i.i) #20
  %sub6.i231.i.i = fsub double 0.000000e+00, %58
  %mul5.i234.i.i = fmul double %sub6.i231.i.i, %sub6.i231.i.i
  br label %for.body.i.i

for.cond.cleanup.i.i:                             ; preds = %for.body.i.i
  %neg.i176.i.i = fmul double %42, -0.000000e+00
  %mul6.i.i.i = fmul double %52, %51
  %neg.i180.i.i = fmul double %52, %53
  %59 = tail call double @llvm.fmuladd.f64(double %41, double 1.200000e+01, double %neg.i176.i.i) #20
  %mul5.i.i.i = fmul double %52, %52
  %60 = tail call double @llvm.fmuladd.f64(double %50, double %59, double %mul6.i.i.i) #20
  %61 = tail call double @llvm.fmuladd.f64(double %51, double %59, double %neg.i180.i.i) #20
  %62 = tail call double @llvm.fmuladd.f64(double %59, double %59, double %mul5.i.i.i) #20
  %div.i.i.i = fdiv double %60, %62
  %div9.i.i.i = fdiv double %61, %62
  %neg.i183.i.i = fmul double %add6.i246.i.i, %54
  %63 = tail call double @llvm.fmuladd.f64(double %41, double %add.i245.i.i, double %neg.i183.i.i) #20
  %mul7.i184.i.i = fmul double %42, %add.i245.i.i
  %64 = tail call double @llvm.fmuladd.f64(double %41, double %add6.i246.i.i, double %mul7.i184.i.i) #20
  %neg.i187.i.i = fmul double %64, -8.124330e+01
  %65 = tail call double @llvm.fmuladd.f64(double %63, double 0.000000e+00, double %neg.i187.i.i) #20
  %mul7.i188.i.i = fmul double %63, 8.124330e+01
  %66 = tail call double @llvm.fmuladd.f64(double %64, double 0.000000e+00, double %mul7.i188.i.i) #20
  %add.i.i.i = fadd double %div.i.i.i, %65
  %add6.i.i.i = fadd double %div9.i.i.i, %66
  br label %cleanup.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %if.then.i.i
  %sum.sroa.0.0300.i.i = phi double [ 0.000000e+00, %if.then.i.i ], [ %add.i245.i.i, %for.body.i.i ]
  %sum.sroa.6.0299.i.i = phi double [ 0.000000e+00, %if.then.i.i ], [ %add6.i246.i.i, %for.body.i.i ]
  %n.0298.i.i = phi i32 [ 0, %if.then.i.i ], [ %inc.i.i, %for.body.i.i ]
  %arrayidx.i117.i = getelementptr inbounds [10 x double], [10 x double] addrspace(3)* %neg_1n_on_stack.i.i, i32 0, i32 %n.0298.i.i
  %67 = load double, double addrspace(3)* %arrayidx.i117.i, align 8, !tbaa !52
  %call.i.i209.i.i = tail call double @__ocml_cos_f64(double noundef %46) #24
  %call.i19.i210.i.i = tail call double @__ocml_sin_f64(double noundef %46) #24
  %neg.i.i211.i.i = fmul double %call.i19.i210.i.i, -0.000000e+00
  %68 = tail call double @llvm.fmuladd.f64(double %mul11.i.i.i.i, double %call.i.i209.i.i, double %neg.i.i211.i.i) #20
  %mul7.i20.i212.i.i = fmul double %call.i.i209.i.i, 0.000000e+00
  %69 = tail call double @llvm.fmuladd.f64(double %mul11.i.i.i.i, double %call.i19.i210.i.i, double %mul7.i20.i212.i.i) #20
  %neg.i215.i.i = fmul double %69, -0.000000e+00
  %70 = tail call double @llvm.fmuladd.f64(double %67, double %68, double %neg.i215.i.i) #20
  %mul7.i216.i.i = fmul double %68, 0.000000e+00
  %71 = tail call double @llvm.fmuladd.f64(double %67, double %69, double %mul7.i216.i.i) #20
  %sub.i219.i.i = fadd double %70, -1.000000e+00
  %arrayidx25.i.i = getelementptr inbounds [10 x double], [10 x double] addrspace(3)* %denominator_left_on_stack.i.i, i32 0, i32 %n.0298.i.i
  %72 = load double, double addrspace(3)* %arrayidx25.i.i, align 8, !tbaa !52
  %sub.i230.i.i = fsub double %72, %57
  %arrayidx34.i.i = getelementptr inbounds [10 x double], [10 x double] addrspace(3)* %an_on_stack.i.i, i32 0, i32 %n.0298.i.i
  %73 = load double, double addrspace(3)* %arrayidx34.i.i, align 8, !tbaa !52
  %74 = tail call double @llvm.fmuladd.f64(double %sub.i230.i.i, double %sub.i230.i.i, double %mul5.i234.i.i) #20
  %mul6.i235.i.i = fmul double %sub6.i231.i.i, %71
  %75 = tail call double @llvm.fmuladd.f64(double %sub.i219.i.i, double %sub.i230.i.i, double %mul6.i235.i.i) #20
  %div.i236.i.i = fdiv double %75, %74
  %76 = fneg double %sub.i219.i.i
  %neg.i237.i.i = fmul double %sub6.i231.i.i, %76
  %77 = tail call double @llvm.fmuladd.f64(double %71, double %sub.i230.i.i, double %neg.i237.i.i) #20
  %div9.i238.i.i = fdiv double %77, %74
  %neg.i241.i.i = fmul double %div9.i238.i.i, -0.000000e+00
  %78 = tail call double @llvm.fmuladd.f64(double %73, double %div.i236.i.i, double %neg.i241.i.i) #20
  %mul7.i242.i.i = fmul double %div.i236.i.i, 0.000000e+00
  %79 = tail call double @llvm.fmuladd.f64(double %73, double %div9.i238.i.i, double %mul7.i242.i.i) #20
  %add.i245.i.i = fadd double %sum.sroa.0.0300.i.i, %78
  %add6.i246.i.i = fadd double %sum.sroa.6.0299.i.i, %79
  %inc.i.i = add nuw nsw i32 %n.0298.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  br i1 %exitcond.not.i.i, label %for.cond.cleanup.i.i, label %for.body.i.i

if.else.i.i:                                      ; preds = %for.body.i
  %80 = fneg double %42
  %neg.i249.i.i = fmul double %42, %80
  %81 = tail call double @llvm.fmuladd.f64(double %41, double %41, double %neg.i249.i.i) #20
  %mul7.i250.i.i = fmul double %41, %42
  %82 = tail call double @llvm.fmuladd.f64(double %41, double %42, double %mul7.i250.i.i) #20
  %83 = tail call double @llvm.fmuladd.f64(double %41, double 0.000000e+00, double %80) #20
  %mul7.i253.i.i = fmul double %42, 0.000000e+00
  %84 = fadd double %41, %mul7.i253.i.i
  %sub.i256.i.i = fadd double %81, 0xBFD19DC7AFDB7B46
  %mul5.i259.i.i = fmul double %82, %82
  %85 = tail call double @llvm.fmuladd.f64(double %sub.i256.i.i, double %sub.i256.i.i, double %mul5.i259.i.i) #20
  %mul6.i260.i.i = fmul double %82, 0.000000e+00
  %86 = tail call double @llvm.fmuladd.f64(double %sub.i256.i.i, double 0x3FE065C77CDFFF0D, double %mul6.i260.i.i) #20
  %div.i261.i.i = fdiv double %86, %85
  %neg.i262.i.i = fmul double %82, 0xBFE065C77CDFFF0D
  %87 = tail call double @llvm.fmuladd.f64(double %sub.i256.i.i, double 0.000000e+00, double %neg.i262.i.i) #20
  %div9.i263.i.i = fdiv double %87, %85
  %sub.i266.i.i = fadd double %81, 0xC005CC470A049097
  %88 = tail call double @llvm.fmuladd.f64(double %sub.i266.i.i, double %sub.i266.i.i, double %mul5.i259.i.i) #20
  %89 = tail call double @llvm.fmuladd.f64(double %sub.i266.i.i, double 0x3FAA80FD3629C600, double %mul6.i260.i.i) #20
  %div.i271.i.i = fdiv double %89, %88
  %neg.i272.i.i = fmul double %82, 0xBFAA80FD3629C600
  %90 = tail call double @llvm.fmuladd.f64(double %sub.i266.i.i, double 0.000000e+00, double %neg.i272.i.i) #20
  %div9.i273.i.i = fdiv double %90, %88
  %add.i276.i.i = fadd double %div.i261.i.i, %div.i271.i.i
  %add6.i277.i.i = fadd double %div9.i263.i.i, %div9.i273.i.i
  %91 = fneg double %84
  %neg.i280.i.i = fmul double %add6.i277.i.i, %91
  %92 = tail call double @llvm.fmuladd.f64(double %83, double %add.i276.i.i, double %neg.i280.i.i) #20
  %mul7.i281.i.i = fmul double %84, %add.i276.i.i
  %93 = tail call double @llvm.fmuladd.f64(double %83, double %add6.i277.i.i, double %mul7.i281.i.i) #20
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.else.i.i, %for.cond.cleanup.i.i
  %add.i.pn.i.i = phi double [ %add.i.i.i, %for.cond.cleanup.i.i ], [ %92, %if.else.i.i ]
  %add6.i.pn.i.i = phi double [ %add6.i.i.i, %for.cond.cleanup.i.i ], [ %93, %if.else.i.i ]
  %cmp4.i.i.i.i.i = icmp ult i8 addrspace(3)* %arrayidx3.i.i.i.i168.i.i, getelementptr inbounds (%"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 0)
  br i1 %cmp4.i.i.i.i.i, label %if.then.i.i.i.i.i, label %__kmpc_free_shared.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %cleanup.i.i
  %94 = load i8, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %sub.i.i.i.i.i70 = add i8 %94, -80
  store i8 %sub.i.i.i.i.i70, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  br label %__kmpc_free_shared.exit.i.i

__kmpc_free_shared.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %cleanup.i.i
  %cmp4.i.i.i285.i.i = icmp ult i8 addrspace(3)* %arrayidx3.i.i.i.i153.i.i, getelementptr inbounds (%"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 0)
  br i1 %cmp4.i.i.i285.i.i, label %if.then.i.i.i289.i.i, label %__kmpc_free_shared.exit290.i.i

if.then.i.i.i289.i.i:                             ; preds = %__kmpc_free_shared.exit.i.i
  %95 = load i8, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %sub.i.i.i288.i.i = add i8 %95, -80
  store i8 %sub.i.i.i288.i.i, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  br label %__kmpc_free_shared.exit290.i.i

__kmpc_free_shared.exit290.i.i:                   ; preds = %if.then.i.i.i289.i.i, %__kmpc_free_shared.exit.i.i
  %cmp4.i.i.i292.i.i = icmp ult i8 addrspace(3)* %arrayidx3.i.i.i.i.i.i, getelementptr inbounds (%"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 0)
  br i1 %cmp4.i.i.i292.i.i, label %if.then.i.i.i296.i.i, label %fast_nuclear_W.exit.i

if.then.i.i.i296.i.i:                             ; preds = %__kmpc_free_shared.exit290.i.i
  %96 = load i8, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %sub.i.i.i295.i.i = add i8 %96, -80
  store i8 %sub.i.i.i295.i.i, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  br label %fast_nuclear_W.exit.i

fast_nuclear_W.exit.i:                            ; preds = %if.then.i.i.i296.i.i, %__kmpc_free_shared.exit290.i.i
  %97 = sext i16 %pole.sroa.11.0.copyload.i to i32
  %98 = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex] addrspace(3)* %sigTfactors_on_stack.i, i32 0, i32 %97, i32 0
  %99 = load double, double addrspace(3)* %98, align 16
  %100 = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex] addrspace(3)* %sigTfactors_on_stack.i, i32 0, i32 %97, i32 1
  %101 = load double, double addrspace(3)* %100, align 8
  %102 = fneg double %add6.i.pn.i.i
  %neg.i118.i = fmul double %101, %102
  %103 = tail call double @llvm.fmuladd.f64(double %add.i.pn.i.i, double %99, double %neg.i118.i) #20
  %mul7.i119.i = fmul double %add6.i.pn.i.i, %99
  %104 = tail call double @llvm.fmuladd.f64(double %add.i.pn.i.i, double %101, double %mul7.i119.i) #20
  %105 = fneg double %pole.sroa.6.0.copyload.i
  %neg.i122.i = fmul double %104, %105
  %106 = tail call double @llvm.fmuladd.f64(double %pole.sroa.5.0.copyload.i, double %103, double %neg.i122.i) #20
  %add30.i = fadd double %sigT.0138.i, %106
  %107 = fneg double %pole.sroa.8.0.copyload.i
  %neg.i126.i = fmul double %add6.i.pn.i.i, %107
  %108 = tail call double @llvm.fmuladd.f64(double %pole.sroa.7.0.copyload.i, double %add.i.pn.i.i, double %neg.i126.i) #20
  %add34.i = fadd double %sigA.0137.i, %108
  %109 = fneg double %pole.sroa.10.0.copyload.i
  %neg.i130.i = fmul double %add6.i.pn.i.i, %109
  %110 = tail call double @llvm.fmuladd.f64(double %pole.sroa.9.0.copyload.i, double %add.i.pn.i.i, double %neg.i130.i) #20
  %add38.i = fadd double %sigF.0136.i, %110
  %inc.i = add nsw i32 %i.0135.i, 1
  %cmp12.i = icmp slt i32 %inc.i, %40
  br i1 %cmp12.i, label %for.body.i, label %for.cond.cleanup.i

if.else:                                          ; preds = %for.body9
  br i1 %cmp12134.i, label %for.body.i188, label %for.cond.cleanup.i168

for.cond.cleanup.i168:                            ; preds = %for.body.i188, %if.else
  %sigF.0.lcssa.i162 = phi double [ %mul11.i, %if.else ], [ %add40.i, %for.body.i188 ]
  %sigA.0.lcssa.i163 = phi double [ %mul10.i, %if.else ], [ %add36.i, %for.body.i188 ]
  %sigT.0.lcssa.i164 = phi double [ %mul9.i, %if.else ], [ %add32.i, %for.body.i188 ]
  %sub.i165 = fsub double %sigT.0.lcssa.i164, %sigA.0.lcssa.i163
  store double %sigT.0.lcssa.i164, double addrspace(3)* %arraydecay13, align 8, !tbaa !52
  store double %sigA.0.lcssa.i163, double addrspace(3)* %12, align 8, !tbaa !52
  store double %sigF.0.lcssa.i162, double addrspace(3)* %13, align 8, !tbaa !52
  store double %sub.i165, double addrspace(3)* %14, align 8, !tbaa !52
  %cmp4.i.i.i.i167 = icmp ult i8 addrspace(3)* %arrayidx3.i.i.i.i.i, getelementptr inbounds (%"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 0)
  br i1 %cmp4.i.i.i.i167, label %if.end.sink.split, label %if.end

for.body.i188:                                    ; preds = %if.else, %for.body.i188
  %sigT.0151.i = phi double [ %add32.i, %for.body.i188 ], [ %mul9.i, %if.else ]
  %sigA.0150.i = phi double [ %add36.i, %for.body.i188 ], [ %mul10.i, %if.else ]
  %sigF.0149.i = phi double [ %add40.i, %for.body.i188 ], [ %mul11.i, %if.else ]
  %i.0148.i = phi i32 [ %inc.i186, %for.body.i188 ], [ %39, %if.else ]
  %add15.i171 = add nsw i32 %i.0148.i, %mul14.i
  %idxprom16.i172 = sext i32 %add15.i171 to i64
  %pole.sroa.0.0..sroa_idx.i173 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16.i172, i32 0, i32 0
  %pole.sroa.0.0.copyload.i174 = load double, double* %pole.sroa.0.0..sroa_idx.i173, align 8, !tbaa.struct !60
  %pole.sroa.4.0..sroa_idx58.i = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16.i172, i32 0, i32 1
  %pole.sroa.4.0.copyload.i175 = load double, double* %pole.sroa.4.0..sroa_idx58.i, align 8, !tbaa.struct !63
  %pole.sroa.5.0..sroa_idx60.i = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16.i172, i32 1, i32 0
  %pole.sroa.5.0.copyload.i176 = load double, double* %pole.sroa.5.0..sroa_idx60.i, align 8, !tbaa.struct !64
  %pole.sroa.6.0..sroa_idx62.i = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16.i172, i32 1, i32 1
  %pole.sroa.6.0.copyload.i177 = load double, double* %pole.sroa.6.0..sroa_idx62.i, align 8, !tbaa.struct !65
  %pole.sroa.7.0..sroa_idx64.i = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16.i172, i32 2, i32 0
  %pole.sroa.7.0.copyload.i178 = load double, double* %pole.sroa.7.0..sroa_idx64.i, align 8, !tbaa.struct !66
  %pole.sroa.8.0..sroa_idx66.i = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16.i172, i32 2, i32 1
  %pole.sroa.8.0.copyload.i179 = load double, double* %pole.sroa.8.0..sroa_idx66.i, align 8, !tbaa.struct !67
  %pole.sroa.9.0..sroa_idx68.i = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16.i172, i32 3, i32 0
  %pole.sroa.9.0.copyload.i180 = load double, double* %pole.sroa.9.0..sroa_idx68.i, align 8, !tbaa.struct !68
  %pole.sroa.10.0..sroa_idx70.i = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16.i172, i32 3, i32 1
  %pole.sroa.10.0.copyload.i181 = load double, double* %pole.sroa.10.0..sroa_idx70.i, align 8, !tbaa.struct !69
  %pole.sroa.11.0..sroa_idx72.i = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16.i172, i32 4
  %pole.sroa.11.0.copyload.i182 = load i16, i16* %pole.sroa.11.0..sroa_idx72.i, align 8, !tbaa.struct !70
  %sub.i.i183 = fsub double %pole.sroa.0.0.copyload.i174, %call.i.i.i
  %mul5.i.i = fmul double %pole.sroa.4.0.copyload.i175, %pole.sroa.4.0.copyload.i175
  %111 = tail call double @llvm.fmuladd.f64(double %sub.i.i183, double %sub.i.i183, double %mul5.i.i) #20
  %112 = tail call double @llvm.fmuladd.f64(double %sub.i.i183, double 0.000000e+00, double %pole.sroa.4.0.copyload.i175) #20
  %div.i.i = fdiv double %112, %111
  %neg.i.i184 = fmul double %pole.sroa.4.0.copyload.i175, 0.000000e+00
  %113 = fsub double %sub.i.i183, %neg.i.i184
  %div9.i.i = fdiv double %113, %111
  %mul6.i.i = fmul double %div9.i.i, 0.000000e+00
  %114 = tail call double @llvm.fmuladd.f64(double %div.i.i, double %E, double %mul6.i.i) #20
  %div.i127.i = fdiv double %114, %11
  %neg.i128.i = fmul double %div.i.i, -0.000000e+00
  %115 = tail call double @llvm.fmuladd.f64(double %div9.i.i, double %E, double %neg.i128.i) #20
  %div9.i129.i = fdiv double %115, %11
  %116 = sext i16 %pole.sroa.11.0.copyload.i182 to i32
  %117 = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex] addrspace(3)* %sigTfactors_on_stack.i, i32 0, i32 %116, i32 0
  %118 = load double, double addrspace(3)* %117, align 16
  %119 = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex] addrspace(3)* %sigTfactors_on_stack.i, i32 0, i32 %116, i32 1
  %120 = load double, double addrspace(3)* %119, align 8
  %121 = fneg double %div9.i129.i
  %neg.i132.i = fmul double %120, %121
  %122 = tail call double @llvm.fmuladd.f64(double %div.i127.i, double %118, double %neg.i132.i) #20
  %mul7.i.i185 = fmul double %div9.i129.i, %118
  %123 = tail call double @llvm.fmuladd.f64(double %div.i127.i, double %120, double %mul7.i.i185) #20
  %124 = fneg double %pole.sroa.6.0.copyload.i177
  %neg.i135.i = fmul double %123, %124
  %125 = tail call double @llvm.fmuladd.f64(double %pole.sroa.5.0.copyload.i176, double %122, double %neg.i135.i) #20
  %add32.i = fadd double %sigT.0151.i, %125
  %126 = fneg double %pole.sroa.8.0.copyload.i179
  %neg.i139.i = fmul double %div9.i129.i, %126
  %127 = tail call double @llvm.fmuladd.f64(double %pole.sroa.7.0.copyload.i178, double %div.i127.i, double %neg.i139.i) #20
  %add36.i = fadd double %sigA.0150.i, %127
  %128 = fneg double %pole.sroa.10.0.copyload.i181
  %neg.i143.i = fmul double %div9.i129.i, %128
  %129 = tail call double @llvm.fmuladd.f64(double %pole.sroa.9.0.copyload.i180, double %div.i127.i, double %neg.i143.i) #20
  %add40.i = fadd double %sigF.0149.i, %129
  %inc.i186 = add nsw i32 %i.0148.i, 1
  %cmp12.i187 = icmp slt i32 %inc.i186, %40
  br i1 %cmp12.i187, label %for.body.i188, label %for.cond.cleanup.i168

if.end.sink.split:                                ; preds = %for.cond.cleanup.i168, %for.cond.cleanup.i
  %130 = load i8, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %sub.i.i.i.i169 = add i8 %130, -64
  store i8 %sub.i.i.i.i169, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %for.cond.cleanup.i168, %for.cond.cleanup.i
  %arrayidx23 = getelementptr inbounds double, double* %concs, i64 %idxprom10
  %131 = load double, double addrspace(3)* %arrayidx19, align 8, !tbaa !52
  %132 = load double, double* %arrayidx23, align 8, !tbaa !52
  %133 = load double, double* %macro_xs, align 8, !tbaa !52
  %134 = tail call double @llvm.fmuladd.f64(double %131, double %132, double %133)
  store double %134, double* %macro_xs, align 8, !tbaa !52
  %135 = load double, double addrspace(3)* %16, align 8, !tbaa !52
  %136 = load double, double* %arrayidx23, align 8, !tbaa !52
  %137 = load double, double* %arrayidx.1, align 8, !tbaa !52
  %138 = tail call double @llvm.fmuladd.f64(double %135, double %136, double %137)
  store double %138, double* %arrayidx.1, align 8, !tbaa !52
  %139 = load double, double addrspace(3)* %17, align 8, !tbaa !52
  %140 = load double, double* %arrayidx23, align 8, !tbaa !52
  %141 = load double, double* %arrayidx.2, align 8, !tbaa !52
  %142 = tail call double @llvm.fmuladd.f64(double %139, double %140, double %141)
  store double %142, double* %arrayidx.2, align 8, !tbaa !52
  %143 = load double, double addrspace(3)* %18, align 8, !tbaa !52
  %144 = load double, double* %arrayidx23, align 8, !tbaa !52
  %145 = load double, double* %arrayidx.3, align 8, !tbaa !52
  %146 = tail call double @llvm.fmuladd.f64(double %143, double %144, double %145)
  store double %146, double* %arrayidx.3, align 8, !tbaa !52
  %inc31 = add nuw nsw i32 %i2.0192, 1
  %147 = load i32, i32* %arrayidx5, align 4, !tbaa !51
  %cmp6 = icmp slt i32 %inc31, %147
  br i1 %cmp6, label %for.body9, label %for.cond.cleanup7

; uselistorder directives
  uselistorder double* %macro_xs, { 1, 0, 3, 4, 5, 2 }
  uselistorder i32 %mat, { 1, 0 }
  uselistorder double %E, { 0, 1, 4, 5, 6, 7, 8, 9, 2, 3 }
  uselistorder i8 addrspace(3)* %arrayidx.i.i.i, { 1, 0, 9, 8, 11, 10, 13, 12, 7, 6, 5, 4, 3, 2, 14, 15 }
  uselistorder i32 %mul.i1.i.i.i, { 3, 2, 1, 0, 4 }
  uselistorder double* %arrayidx.1, { 1, 0, 2 }
  uselistorder double* %arrayidx.2, { 1, 0, 2 }
  uselistorder double* %arrayidx.3, { 1, 0, 2 }
  uselistorder i8 addrspace(3)* %arrayidx3.i.i.i.i, { 8, 0, 1, 2, 3, 4, 5, 6, 7 }
  uselistorder i32* %arrayidx5, { 1, 0 }
  uselistorder double addrspace(3)* %arraydecay13, { 1, 0 }
  uselistorder double addrspace(3)* %12, { 1, 0 }
  uselistorder double addrspace(3)* %13, { 1, 0 }
  uselistorder double addrspace(3)* %14, { 1, 0 }
  uselistorder label %__kmpc_free_shared.exit, { 1, 0 }
  uselistorder label %for.body9, { 1, 0 }
  uselistorder [4 x %struct.RSComplex] addrspace(3)* %sigTfactors_on_stack.i, { 1, 0, 2, 3 }
  uselistorder double %mul9.i, { 0, 2, 1, 3 }
  uselistorder double %mul10.i, { 0, 2, 1, 3 }
  uselistorder double %mul11.i, { 0, 2, 1, 3 }
  uselistorder label %for.body.i, { 1, 0 }
  uselistorder double %41, { 10, 11, 12, 13, 14, 15, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 16, 17 }
  uselistorder double %42, { 9, 10, 11, 12, 13, 0, 6, 1, 2, 3, 4, 5, 7, 8, 14, 15 }
  uselistorder i8 addrspace(3)* %arrayidx3.i.i.i.i.i.i, { 1, 0, 2 }
  uselistorder i8 addrspace(3)* %arrayidx3.i.i.i.i153.i.i, { 1, 0, 2 }
  uselistorder i8 addrspace(3)* %arrayidx3.i.i.i.i168.i.i, { 1, 0, 2 }
  uselistorder double %add.i245.i.i, { 1, 0, 2 }
  uselistorder double %add6.i246.i.i, { 1, 0, 2 }
  uselistorder i32 %inc.i.i, { 1, 0 }
  uselistorder i32 %inc.i, { 1, 0 }
  uselistorder label %for.body.i188, { 1, 0 }
  uselistorder i32 %inc.i186, { 1, 0 }
  uselistorder i32 %inc31, { 1, 0 }
}

; Function Attrs: convergent nounwind
define protected void @calculate_micro_xs_doppler(double* nocapture noundef writeonly %micro_xs, i32 noundef %nuc, double noundef %E, i32 %input.coerce0, i32 %input.coerce1, i32 %input.coerce2, i32 %input.coerce3, i32 %input.coerce4, i32 %input.coerce5, i32 %input.coerce6, i32 %input.coerce7, i32 %input.coerce8, i32 %input.coerce9, i32 %input.coerce10, i32* nocapture noundef readonly %n_windows, double* nocapture noundef readonly %pseudo_K0RS, %struct.Window* nocapture noundef readonly %windows, %struct.Pole* nocapture noundef readonly %poles, i32 noundef %max_num_windows, i32 noundef %max_num_poles) local_unnamed_addr #5 {
entry:
  %0 = tail call i32 @llvm.amdgcn.workgroup.id.x() #20
  %1 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #20
  %2 = getelementptr i8, i8 addrspace(4)* %1, i64 12
  %3 = bitcast i8 addrspace(4)* %2 to i32 addrspace(4)*
  %4 = load i32, i32 addrspace(4)* %3, align 4, !invariant.load !9
  %5 = getelementptr i8, i8 addrspace(4)* %1, i64 4
  %6 = bitcast i8 addrspace(4)* %5 to i16 addrspace(4)*
  %7 = load i16, i16 addrspace(4)* %6, align 4, !range !10, !invariant.load !9
  %conv.i.i.i1.i = zext i16 %7 to i32
  %mul.i.i.i2.i = mul i32 %0, %conv.i.i.i1.i
  %sub.i.i.i3.i = sub i32 %4, %mul.i.i.i2.i
  %8 = tail call i32 @llvm.amdgcn.workitem.id.x() #20, !range !81
  %cmp.i.i.i.i = icmp ult i32 %sub.i.i.i3.i, %conv.i.i.i1.i
  %cond.i.i.i.i = select i1 %cmp.i.i.i.i, i32 %sub.i.i.i3.i, i32 %conv.i.i.i1.i
  %div.i.i.i.rhs.trunc.i = trunc i32 %cond.i.i.i.i to i16
  %div.i.i.i1.i = udiv i16 2048, %div.i.i.i.rhs.trunc.i
  %9 = and i16 %div.i.i.i1.i, 4080
  %sub.i.i.i.i.i = zext i16 %9 to i32
  %arrayidx.i.i.i = getelementptr %"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 %8
  %10 = load i8, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %mul.i1.i.i.i = mul nuw nsw i32 %8, %sub.i.i.i.i.i
  %conv.i.i.i.i = zext i8 %10 to i32
  %add.i2.i.i.i = add nuw nsw i32 %mul.i1.i.i.i, %conv.i.i.i.i
  %arrayidx3.i.i.i.i = getelementptr inbounds %"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 0, i32 %add.i2.i.i.i
  %conv14.i.i.i = add i8 %10, 64
  store i8 %conv14.i.i.i, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %sigTfactors_on_stack = bitcast i8 addrspace(3)* %arrayidx3.i.i.i.i to [4 x %struct.RSComplex] addrspace(3)*
  %idxprom = sext i32 %nuc to i64
  %arrayidx = getelementptr inbounds i32, i32* %n_windows, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4, !tbaa !51
  %conv = sitofp i32 %11 to double
  %div = fdiv double 1.000000e+00, %conv
  %div2 = fdiv double %E, %div
  %conv3 = fptosi double %div2 to i32
  %cmp = icmp eq i32 %11, %conv3
  %dec = sext i1 %cmp to i32
  %mul.i = mul nsw i32 %input.coerce6, %nuc
  %idxprom.i = sext i32 %mul.i to i64
  %arrayidx.i = getelementptr inbounds double, double* %pseudo_K0RS, i64 %idxprom.i
  %12 = load double, double* %arrayidx.i, align 8, !tbaa !52
  %call.i.i = tail call double @__ocml_sqrt_f64(double noundef %E) #23
  %mul2.i = fmul double %12, %call.i.i
  %mul25.i = fmul double %mul2.i, 2.000000e+00
  %call.i61.i = tail call double @__ocml_cos_f64(double noundef %mul25.i) #24
  %r.i = bitcast i8 addrspace(3)* %arrayidx3.i.i.i.i to double addrspace(3)*
  store double %call.i61.i, double addrspace(3)* %r.i, align 8, !tbaa !54
  %call.i62.i = tail call double @__ocml_sin_f64(double noundef %mul25.i) #24
  %fneg30.i = fneg double %call.i62.i
  %i33.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 8
  %13 = bitcast i8 addrspace(3)* %i33.i to double addrspace(3)*
  store double %fneg30.i, double addrspace(3)* %13, align 8, !tbaa !56
  %add.1.i = add nsw i32 %mul.i, 1
  %idxprom.1.i = sext i32 %add.1.i to i64
  %arrayidx.1.i = getelementptr inbounds double, double* %pseudo_K0RS, i64 %idxprom.1.i
  %14 = load double, double* %arrayidx.1.i, align 8, !tbaa !52
  %mul2.1.i = fmul double %call.i.i, %14
  %call.i58.1.i = tail call double @__ocml_atan_f64(double noundef %mul2.1.i) #23
  %sub.1.i = fadd double %mul2.1.i, %call.i58.1.i
  %mul25.1.i = fmul double %sub.1.i, 2.000000e+00
  %call.i61.1.i = tail call double @__ocml_cos_f64(double noundef %mul25.1.i) #24
  %r.1.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 16
  %15 = bitcast i8 addrspace(3)* %r.1.i to double addrspace(3)*
  store double %call.i61.1.i, double addrspace(3)* %15, align 8, !tbaa !54
  %call.i62.1.i = tail call double @__ocml_sin_f64(double noundef %mul25.1.i) #24
  %fneg30.1.i = fneg double %call.i62.1.i
  %i33.1.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 24
  %16 = bitcast i8 addrspace(3)* %i33.1.i to double addrspace(3)*
  store double %fneg30.1.i, double addrspace(3)* %16, align 8, !tbaa !56
  %add.2.i = add nsw i32 %mul.i, 2
  %idxprom.2.i = sext i32 %add.2.i to i64
  %arrayidx.2.i = getelementptr inbounds double, double* %pseudo_K0RS, i64 %idxprom.2.i
  %17 = load double, double* %arrayidx.2.i, align 8, !tbaa !52
  %mul2.2.i = fmul double %call.i.i, %17
  %mul7.2.i = fmul double %mul2.2.i, 3.000000e+00
  %neg.2.i = fneg double %mul2.2.i
  %18 = tail call double @llvm.fmuladd.f64(double %neg.2.i, double %mul2.2.i, double 3.000000e+00) #20
  %div.2.i = fdiv double %mul7.2.i, %18
  %call.i59.2.i = tail call double @__ocml_atan_f64(double noundef %div.2.i) #23
  %sub10.2.i = fsub double %mul2.2.i, %call.i59.2.i
  %mul25.2.i = fmul double %sub10.2.i, 2.000000e+00
  %call.i61.2.i = tail call double @__ocml_cos_f64(double noundef %mul25.2.i) #24
  %r.2.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 32
  %19 = bitcast i8 addrspace(3)* %r.2.i to double addrspace(3)*
  store double %call.i61.2.i, double addrspace(3)* %19, align 8, !tbaa !54
  %call.i62.2.i = tail call double @__ocml_sin_f64(double noundef %mul25.2.i) #24
  %fneg30.2.i = fneg double %call.i62.2.i
  %i33.2.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 40
  %20 = bitcast i8 addrspace(3)* %i33.2.i to double addrspace(3)*
  store double %fneg30.2.i, double addrspace(3)* %20, align 8, !tbaa !56
  %add.3.i = add nsw i32 %mul.i, 3
  %idxprom.3.i = sext i32 %add.3.i to i64
  %arrayidx.3.i = getelementptr inbounds double, double* %pseudo_K0RS, i64 %idxprom.3.i
  %21 = load double, double* %arrayidx.3.i, align 8, !tbaa !52
  %mul2.3.i = fmul double %call.i.i, %21
  %neg15.3.i = fneg double %mul2.3.i
  %22 = tail call double @llvm.fmuladd.f64(double %neg15.3.i, double %mul2.3.i, double 1.500000e+01) #20
  %mul16.3.i = fmul double %mul2.3.i, %22
  %neg19.3.i = fmul double %mul2.3.i, -6.000000e+00
  %23 = tail call double @llvm.fmuladd.f64(double %neg19.3.i, double %mul2.3.i, double 1.500000e+01) #20
  %div20.3.i = fdiv double %mul16.3.i, %23
  %call.i60.3.i = tail call double @__ocml_atan_f64(double noundef %div20.3.i) #23
  %sub22.3.i = fsub double %mul2.3.i, %call.i60.3.i
  %mul25.3.i = fmul double %sub22.3.i, 2.000000e+00
  %call.i61.3.i = tail call double @__ocml_cos_f64(double noundef %mul25.3.i) #24
  %r.3.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 48
  %24 = bitcast i8 addrspace(3)* %r.3.i to double addrspace(3)*
  store double %call.i61.3.i, double addrspace(3)* %24, align 8, !tbaa !54
  %call.i62.3.i = tail call double @__ocml_sin_f64(double noundef %mul25.3.i) #24
  %fneg30.3.i = fneg double %call.i62.3.i
  %i33.3.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 56
  %25 = bitcast i8 addrspace(3)* %i33.3.i to double addrspace(3)*
  store double %fneg30.3.i, double addrspace(3)* %25, align 8, !tbaa !56
  %mul = mul nsw i32 %max_num_windows, %nuc
  %spec.select = add i32 %mul, %conv3
  %add = add i32 %spec.select, %dec
  %idxprom7 = sext i32 %add to i64
  %w.sroa.0.0..sroa_idx = getelementptr inbounds %struct.Window, %struct.Window* %windows, i64 %idxprom7, i32 0
  %w.sroa.0.0.copyload = load double, double* %w.sroa.0.0..sroa_idx, align 8, !tbaa.struct !57
  %w.sroa.4.0..sroa_idx81 = getelementptr inbounds %struct.Window, %struct.Window* %windows, i64 %idxprom7, i32 1
  %w.sroa.4.0.copyload = load double, double* %w.sroa.4.0..sroa_idx81, align 8, !tbaa.struct !58
  %w.sroa.5.0..sroa_idx83 = getelementptr inbounds %struct.Window, %struct.Window* %windows, i64 %idxprom7, i32 2
  %w.sroa.5.0.copyload = load double, double* %w.sroa.5.0..sroa_idx83, align 8, !tbaa.struct !59
  %w.sroa.6.0..sroa_idx85 = getelementptr inbounds %struct.Window, %struct.Window* %windows, i64 %idxprom7, i32 3
  %26 = bitcast i32* %w.sroa.6.0..sroa_idx85 to <2 x i32>*
  %27 = load <2 x i32>, <2 x i32>* %26, align 8
  %mul9 = fmul double %w.sroa.0.0.copyload, %E
  %mul10 = fmul double %w.sroa.4.0.copyload, %E
  %mul11 = fmul double %w.sroa.5.0.copyload, %E
  %mul14 = mul nsw i32 %max_num_poles, %nuc
  %28 = extractelement <2 x i32> %27, i64 0
  %29 = extractelement <2 x i32> %27, i64 1
  %cmp12134 = icmp slt i32 %28, %29
  br i1 %cmp12134, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %fast_nuclear_W.exit, %entry
  %sigF.0.lcssa = phi double [ %mul11, %entry ], [ %add38, %fast_nuclear_W.exit ]
  %sigA.0.lcssa = phi double [ %mul10, %entry ], [ %add34, %fast_nuclear_W.exit ]
  %sigT.0.lcssa = phi double [ %mul9, %entry ], [ %add30, %fast_nuclear_W.exit ]
  %sub = fsub double %sigT.0.lcssa, %sigA.0.lcssa
  store double %sigT.0.lcssa, double* %micro_xs, align 8, !tbaa !52
  %arrayidx40 = getelementptr inbounds double, double* %micro_xs, i64 1
  store double %sigA.0.lcssa, double* %arrayidx40, align 8, !tbaa !52
  %arrayidx41 = getelementptr inbounds double, double* %micro_xs, i64 2
  store double %sigF.0.lcssa, double* %arrayidx41, align 8, !tbaa !52
  %arrayidx42 = getelementptr inbounds double, double* %micro_xs, i64 3
  store double %sub, double* %arrayidx42, align 8, !tbaa !52
  %cmp4.i.i.i = icmp ult i8 addrspace(3)* %arrayidx3.i.i.i.i, getelementptr inbounds (%"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 0)
  br i1 %cmp4.i.i.i, label %if.then.i.i.i, label %__kmpc_free_shared.exit

if.then.i.i.i:                                    ; preds = %for.cond.cleanup
  %30 = load i8, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %sub.i.i.i = add i8 %30, -64
  store i8 %sub.i.i.i, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  br label %__kmpc_free_shared.exit

__kmpc_free_shared.exit:                          ; preds = %for.cond.cleanup, %if.then.i.i.i
  ret void

for.body:                                         ; preds = %entry, %fast_nuclear_W.exit
  %sigT.0138 = phi double [ %add30, %fast_nuclear_W.exit ], [ %mul9, %entry ]
  %sigA.0137 = phi double [ %add34, %fast_nuclear_W.exit ], [ %mul10, %entry ]
  %sigF.0136 = phi double [ %add38, %fast_nuclear_W.exit ], [ %mul11, %entry ]
  %i.0135 = phi i32 [ %inc, %fast_nuclear_W.exit ], [ %28, %entry ]
  %add15 = add nsw i32 %i.0135, %mul14
  %idxprom16 = sext i32 %add15 to i64
  %pole.sroa.0.0..sroa_idx = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16, i32 0, i32 0
  %pole.sroa.0.0.copyload = load double, double* %pole.sroa.0.0..sroa_idx, align 8, !tbaa.struct !60
  %pole.sroa.4.0..sroa_idx56 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16, i32 0, i32 1
  %pole.sroa.4.0.copyload = load double, double* %pole.sroa.4.0..sroa_idx56, align 8, !tbaa.struct !63
  %pole.sroa.5.0..sroa_idx58 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16, i32 1, i32 0
  %pole.sroa.5.0.copyload = load double, double* %pole.sroa.5.0..sroa_idx58, align 8, !tbaa.struct !64
  %pole.sroa.6.0..sroa_idx60 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16, i32 1, i32 1
  %pole.sroa.6.0.copyload = load double, double* %pole.sroa.6.0..sroa_idx60, align 8, !tbaa.struct !65
  %pole.sroa.7.0..sroa_idx62 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16, i32 2, i32 0
  %pole.sroa.7.0.copyload = load double, double* %pole.sroa.7.0..sroa_idx62, align 8, !tbaa.struct !66
  %pole.sroa.8.0..sroa_idx64 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16, i32 2, i32 1
  %pole.sroa.8.0.copyload = load double, double* %pole.sroa.8.0..sroa_idx64, align 8, !tbaa.struct !67
  %pole.sroa.9.0..sroa_idx66 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16, i32 3, i32 0
  %pole.sroa.9.0.copyload = load double, double* %pole.sroa.9.0..sroa_idx66, align 8, !tbaa.struct !68
  %pole.sroa.10.0..sroa_idx68 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16, i32 3, i32 1
  %pole.sroa.10.0.copyload = load double, double* %pole.sroa.10.0..sroa_idx68, align 8, !tbaa.struct !69
  %pole.sroa.11.0..sroa_idx70 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16, i32 4
  %pole.sroa.11.0.copyload = load i16, i16* %pole.sroa.11.0..sroa_idx70, align 8, !tbaa.struct !70
  %sub.i = fsub double %E, %pole.sroa.0.0.copyload
  %sub6.i = fsub double 0.000000e+00, %pole.sroa.4.0.copyload
  %neg.i = fmul double %sub6.i, -0.000000e+00
  %31 = tail call double @llvm.fmuladd.f64(double %sub.i, double 5.000000e-01, double %neg.i) #20
  %mul7.i = fmul double %sub6.i, 5.000000e-01
  %32 = tail call double @llvm.fmuladd.f64(double %sub.i, double 0.000000e+00, double %mul7.i) #20
  %33 = load i8, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %conv.i.i.i.i.i = zext i8 %33 to i32
  %add.i2.i.i.i.i = add nuw nsw i32 %mul.i1.i.i.i, %conv.i.i.i.i.i
  %arrayidx3.i.i.i.i.i = getelementptr inbounds %"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 0, i32 %add.i2.i.i.i.i
  %conv14.i.i.i.i = add i8 %33, 80
  %neg_1n_on_stack.i = bitcast i8 addrspace(3)* %arrayidx3.i.i.i.i.i to [10 x double] addrspace(3)*
  %conv.i.i.i.i150.i = zext i8 %conv14.i.i.i.i to i32
  %add.i2.i.i.i151.i = add nuw nsw i32 %mul.i1.i.i.i, %conv.i.i.i.i150.i
  %arrayidx3.i.i.i.i153.i = getelementptr inbounds %"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 0, i32 %add.i2.i.i.i151.i
  %conv14.i.i.i154.i = add i8 %33, -96
  %denominator_left_on_stack.i = bitcast i8 addrspace(3)* %arrayidx3.i.i.i.i153.i to [10 x double] addrspace(3)*
  %conv.i.i.i.i165.i = zext i8 %conv14.i.i.i154.i to i32
  %add.i2.i.i.i166.i = add nuw nsw i32 %mul.i1.i.i.i, %conv.i.i.i.i165.i
  %arrayidx3.i.i.i.i168.i = getelementptr inbounds %"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 0, i32 %add.i2.i.i.i166.i
  %conv14.i.i.i169.i = add i8 %33, -16
  store i8 %conv14.i.i.i169.i, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %an_on_stack.i = bitcast i8 addrspace(3)* %arrayidx3.i.i.i.i168.i to [10 x double] addrspace(3)*
  %mul4.i.i = fmul double %32, %32
  %34 = tail call double @llvm.fmuladd.f64(double %31, double %31, double %mul4.i.i) #20
  %call.i.i.i = tail call double @__ocml_sqrt_f64(double noundef %34) #23
  %cmp.i = fcmp olt double %call.i.i.i, 6.000000e+00
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  tail call void @llvm.memcpy.p3i8.p0i8.i64(i8 addrspace(3)* noundef align 16 dereferenceable(80) %arrayidx3.i.i.i.i168.i, i8* noundef nonnull align 16 dereferenceable(80) bitcast ([10 x double]* @constinit to i8*), i64 80, i1 false) #20, !tbaa.struct !82
  tail call void @llvm.memcpy.p3i8.p0i8.i64(i8 addrspace(3)* noundef align 16 dereferenceable(80) %arrayidx3.i.i.i.i.i, i8* noundef nonnull align 16 dereferenceable(80) bitcast ([10 x double]* @constinit.2 to i8*), i64 80, i1 false) #20, !tbaa.struct !82
  tail call void @llvm.memcpy.p3i8.p0i8.i64(i8 addrspace(3)* noundef align 16 dereferenceable(80) %arrayidx3.i.i.i.i153.i, i8* noundef nonnull align 16 dereferenceable(80) bitcast ([10 x double]* @constinit.3 to i8*), i64 80, i1 false) #20, !tbaa.struct !82
  %neg.i.i = fmul double %32, -1.200000e+01
  %35 = tail call double @llvm.fmuladd.f64(double %31, double 0.000000e+00, double %neg.i.i) #20
  %mul7.i.i = fmul double %31, 1.200000e+01
  %36 = tail call double @llvm.fmuladd.f64(double %32, double 0.000000e+00, double %mul7.i.i) #20
  %37 = tail call double @llvm.fmuladd.f64(double %35, double 0x3F30000000000000, double 1.000000e+00) #20
  %mul.i.i.i = fmul double %37, %37
  %mul1.i.i.i = fmul double %mul.i.i.i, %mul.i.i.i
  %mul2.i.i.i = fmul double %mul1.i.i.i, %mul1.i.i.i
  %mul3.i.i.i = fmul double %mul2.i.i.i, %mul2.i.i.i
  %mul4.i.i.i = fmul double %mul3.i.i.i, %mul3.i.i.i
  %mul5.i.i.i = fmul double %mul4.i.i.i, %mul4.i.i.i
  %mul6.i.i.i = fmul double %mul5.i.i.i, %mul5.i.i.i
  %mul7.i.i.i = fmul double %mul6.i.i.i, %mul6.i.i.i
  %mul8.i.i.i = fmul double %mul7.i.i.i, %mul7.i.i.i
  %mul9.i.i.i = fmul double %mul8.i.i.i, %mul8.i.i.i
  %mul10.i.i.i = fmul double %mul9.i.i.i, %mul9.i.i.i
  %mul11.i.i.i = fmul double %mul10.i.i.i, %mul10.i.i.i
  %call.i.i170.i = tail call double @__ocml_cos_f64(double noundef %36) #24
  %call.i19.i.i = tail call double @__ocml_sin_f64(double noundef %36) #24
  %neg.i.i.i = fmul double %call.i19.i.i, -0.000000e+00
  %38 = tail call double @llvm.fmuladd.f64(double %mul11.i.i.i, double %call.i.i170.i, double %neg.i.i.i) #20
  %mul7.i20.i.i = fmul double %call.i.i170.i, 0.000000e+00
  %39 = tail call double @llvm.fmuladd.f64(double %mul11.i.i.i, double %call.i19.i.i, double %mul7.i20.i.i) #20
  %sub.i.i = fsub double 1.000000e+00, %38
  %sub6.i.i = fsub double 0.000000e+00, %39
  %neg.i173.i = fneg double %sub6.i.i
  %40 = tail call double @llvm.fmuladd.f64(double %sub.i.i, double 0.000000e+00, double %neg.i173.i) #20
  %41 = tail call double @llvm.fmuladd.f64(double %sub6.i.i, double 0.000000e+00, double %sub.i.i) #20
  %neg.i176.i = fmul double %32, -0.000000e+00
  %mul7.i177.i = fmul double %31, 0.000000e+00
  %42 = tail call double @llvm.fmuladd.f64(double %32, double 1.200000e+01, double %mul7.i177.i) #20
  %mul6.i.i = fmul double %42, %41
  %43 = fneg double %40
  %neg.i180.i = fmul double %42, %43
  %44 = fneg double %32
  %neg.i222.i = fmul double %32, %44
  %45 = tail call double @llvm.fmuladd.f64(double %31, double %31, double %neg.i222.i) #20
  %mul7.i223.i = fmul double %31, %32
  %46 = tail call double @llvm.fmuladd.f64(double %31, double %32, double %mul7.i223.i) #20
  %neg.i226.i = fmul double %46, -0.000000e+00
  %47 = tail call double @llvm.fmuladd.f64(double %45, double 1.440000e+02, double %neg.i226.i) #20
  %mul7.i227.i = fmul double %45, 0.000000e+00
  %48 = tail call double @llvm.fmuladd.f64(double %46, double 1.440000e+02, double %mul7.i227.i) #20
  %sub6.i231.i = fsub double 0.000000e+00, %48
  %mul5.i234.i = fmul double %sub6.i231.i, %sub6.i231.i
  br label %for.body.i

for.cond.cleanup.i:                               ; preds = %for.body.i
  %49 = tail call double @llvm.fmuladd.f64(double %31, double 1.200000e+01, double %neg.i176.i) #20
  %mul5.i.i = fmul double %42, %42
  %50 = tail call double @llvm.fmuladd.f64(double %40, double %49, double %mul6.i.i) #20
  %51 = tail call double @llvm.fmuladd.f64(double %41, double %49, double %neg.i180.i) #20
  %52 = tail call double @llvm.fmuladd.f64(double %49, double %49, double %mul5.i.i) #20
  %div.i.i = fdiv double %50, %52
  %div9.i.i = fdiv double %51, %52
  %neg.i183.i = fmul double %add6.i246.i, %44
  %53 = tail call double @llvm.fmuladd.f64(double %31, double %add.i245.i, double %neg.i183.i) #20
  %mul7.i184.i = fmul double %32, %add.i245.i
  %54 = tail call double @llvm.fmuladd.f64(double %31, double %add6.i246.i, double %mul7.i184.i) #20
  %neg.i187.i = fmul double %54, -8.124330e+01
  %55 = tail call double @llvm.fmuladd.f64(double %53, double 0.000000e+00, double %neg.i187.i) #20
  %mul7.i188.i = fmul double %53, 8.124330e+01
  %56 = tail call double @llvm.fmuladd.f64(double %54, double 0.000000e+00, double %mul7.i188.i) #20
  %add.i.i = fadd double %div.i.i, %55
  %add6.i.i = fadd double %div9.i.i, %56
  br label %cleanup.i

for.body.i:                                       ; preds = %for.body.i, %if.then.i
  %sum.sroa.0.0300.i = phi double [ 0.000000e+00, %if.then.i ], [ %add.i245.i, %for.body.i ]
  %sum.sroa.6.0299.i = phi double [ 0.000000e+00, %if.then.i ], [ %add6.i246.i, %for.body.i ]
  %n.0298.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %for.body.i ]
  %arrayidx.i117 = getelementptr inbounds [10 x double], [10 x double] addrspace(3)* %neg_1n_on_stack.i, i32 0, i32 %n.0298.i
  %57 = load double, double addrspace(3)* %arrayidx.i117, align 8, !tbaa !52
  %call.i.i209.i = tail call double @__ocml_cos_f64(double noundef %36) #24
  %call.i19.i210.i = tail call double @__ocml_sin_f64(double noundef %36) #24
  %neg.i.i211.i = fmul double %call.i19.i210.i, -0.000000e+00
  %58 = tail call double @llvm.fmuladd.f64(double %mul11.i.i.i, double %call.i.i209.i, double %neg.i.i211.i) #20
  %mul7.i20.i212.i = fmul double %call.i.i209.i, 0.000000e+00
  %59 = tail call double @llvm.fmuladd.f64(double %mul11.i.i.i, double %call.i19.i210.i, double %mul7.i20.i212.i) #20
  %neg.i215.i = fmul double %59, -0.000000e+00
  %60 = tail call double @llvm.fmuladd.f64(double %57, double %58, double %neg.i215.i) #20
  %mul7.i216.i = fmul double %58, 0.000000e+00
  %61 = tail call double @llvm.fmuladd.f64(double %57, double %59, double %mul7.i216.i) #20
  %sub.i219.i = fadd double %60, -1.000000e+00
  %arrayidx25.i = getelementptr inbounds [10 x double], [10 x double] addrspace(3)* %denominator_left_on_stack.i, i32 0, i32 %n.0298.i
  %62 = load double, double addrspace(3)* %arrayidx25.i, align 8, !tbaa !52
  %sub.i230.i = fsub double %62, %47
  %arrayidx34.i = getelementptr inbounds [10 x double], [10 x double] addrspace(3)* %an_on_stack.i, i32 0, i32 %n.0298.i
  %63 = load double, double addrspace(3)* %arrayidx34.i, align 8, !tbaa !52
  %64 = tail call double @llvm.fmuladd.f64(double %sub.i230.i, double %sub.i230.i, double %mul5.i234.i) #20
  %mul6.i235.i = fmul double %sub6.i231.i, %61
  %65 = tail call double @llvm.fmuladd.f64(double %sub.i219.i, double %sub.i230.i, double %mul6.i235.i) #20
  %div.i236.i = fdiv double %65, %64
  %66 = fneg double %sub.i219.i
  %neg.i237.i = fmul double %sub6.i231.i, %66
  %67 = tail call double @llvm.fmuladd.f64(double %61, double %sub.i230.i, double %neg.i237.i) #20
  %div9.i238.i = fdiv double %67, %64
  %neg.i241.i = fmul double %div9.i238.i, -0.000000e+00
  %68 = tail call double @llvm.fmuladd.f64(double %63, double %div.i236.i, double %neg.i241.i) #20
  %mul7.i242.i = fmul double %div.i236.i, 0.000000e+00
  %69 = tail call double @llvm.fmuladd.f64(double %63, double %div9.i238.i, double %mul7.i242.i) #20
  %add.i245.i = fadd double %sum.sroa.0.0300.i, %68
  %add6.i246.i = fadd double %sum.sroa.6.0299.i, %69
  %inc.i = add nuw nsw i32 %n.0298.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %for.cond.cleanup.i, label %for.body.i

if.else.i:                                        ; preds = %for.body
  %70 = fneg double %32
  %neg.i249.i = fmul double %32, %70
  %71 = tail call double @llvm.fmuladd.f64(double %31, double %31, double %neg.i249.i) #20
  %mul7.i250.i = fmul double %31, %32
  %72 = tail call double @llvm.fmuladd.f64(double %31, double %32, double %mul7.i250.i) #20
  %73 = tail call double @llvm.fmuladd.f64(double %31, double 0.000000e+00, double %70) #20
  %mul7.i253.i = fmul double %32, 0.000000e+00
  %74 = fadd double %31, %mul7.i253.i
  %sub.i256.i = fadd double %71, 0xBFD19DC7AFDB7B46
  %mul5.i259.i = fmul double %72, %72
  %75 = tail call double @llvm.fmuladd.f64(double %sub.i256.i, double %sub.i256.i, double %mul5.i259.i) #20
  %mul6.i260.i = fmul double %72, 0.000000e+00
  %76 = tail call double @llvm.fmuladd.f64(double %sub.i256.i, double 0x3FE065C77CDFFF0D, double %mul6.i260.i) #20
  %div.i261.i = fdiv double %76, %75
  %neg.i262.i = fmul double %72, 0xBFE065C77CDFFF0D
  %77 = tail call double @llvm.fmuladd.f64(double %sub.i256.i, double 0.000000e+00, double %neg.i262.i) #20
  %div9.i263.i = fdiv double %77, %75
  %sub.i266.i = fadd double %71, 0xC005CC470A049097
  %78 = tail call double @llvm.fmuladd.f64(double %sub.i266.i, double %sub.i266.i, double %mul5.i259.i) #20
  %79 = tail call double @llvm.fmuladd.f64(double %sub.i266.i, double 0x3FAA80FD3629C600, double %mul6.i260.i) #20
  %div.i271.i = fdiv double %79, %78
  %neg.i272.i = fmul double %72, 0xBFAA80FD3629C600
  %80 = tail call double @llvm.fmuladd.f64(double %sub.i266.i, double 0.000000e+00, double %neg.i272.i) #20
  %div9.i273.i = fdiv double %80, %78
  %add.i276.i = fadd double %div.i261.i, %div.i271.i
  %add6.i277.i = fadd double %div9.i263.i, %div9.i273.i
  %81 = fneg double %74
  %neg.i280.i = fmul double %add6.i277.i, %81
  %82 = tail call double @llvm.fmuladd.f64(double %73, double %add.i276.i, double %neg.i280.i) #20
  %mul7.i281.i = fmul double %74, %add.i276.i
  %83 = tail call double @llvm.fmuladd.f64(double %73, double %add6.i277.i, double %mul7.i281.i) #20
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i, %for.cond.cleanup.i
  %add.i.pn.i = phi double [ %add.i.i, %for.cond.cleanup.i ], [ %82, %if.else.i ]
  %add6.i.pn.i = phi double [ %add6.i.i, %for.cond.cleanup.i ], [ %83, %if.else.i ]
  %cmp4.i.i.i.i = icmp ult i8 addrspace(3)* %arrayidx3.i.i.i.i168.i, getelementptr inbounds (%"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 0)
  br i1 %cmp4.i.i.i.i, label %if.then.i.i.i.i, label %__kmpc_free_shared.exit.i

if.then.i.i.i.i:                                  ; preds = %cleanup.i
  %84 = load i8, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %sub.i.i.i.i = add i8 %84, -80
  store i8 %sub.i.i.i.i, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  br label %__kmpc_free_shared.exit.i

__kmpc_free_shared.exit.i:                        ; preds = %if.then.i.i.i.i, %cleanup.i
  %cmp4.i.i.i285.i = icmp ult i8 addrspace(3)* %arrayidx3.i.i.i.i153.i, getelementptr inbounds (%"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 0)
  br i1 %cmp4.i.i.i285.i, label %if.then.i.i.i289.i, label %__kmpc_free_shared.exit290.i

if.then.i.i.i289.i:                               ; preds = %__kmpc_free_shared.exit.i
  %85 = load i8, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %sub.i.i.i288.i = add i8 %85, -80
  store i8 %sub.i.i.i288.i, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  br label %__kmpc_free_shared.exit290.i

__kmpc_free_shared.exit290.i:                     ; preds = %if.then.i.i.i289.i, %__kmpc_free_shared.exit.i
  %cmp4.i.i.i292.i = icmp ult i8 addrspace(3)* %arrayidx3.i.i.i.i.i, getelementptr inbounds (%"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 0)
  br i1 %cmp4.i.i.i292.i, label %if.then.i.i.i296.i, label %fast_nuclear_W.exit

if.then.i.i.i296.i:                               ; preds = %__kmpc_free_shared.exit290.i
  %86 = load i8, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %sub.i.i.i295.i = add i8 %86, -80
  store i8 %sub.i.i.i295.i, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  br label %fast_nuclear_W.exit

fast_nuclear_W.exit:                              ; preds = %__kmpc_free_shared.exit290.i, %if.then.i.i.i296.i
  %87 = sext i16 %pole.sroa.11.0.copyload to i32
  %88 = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex] addrspace(3)* %sigTfactors_on_stack, i32 0, i32 %87, i32 0
  %89 = load double, double addrspace(3)* %88, align 16
  %90 = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex] addrspace(3)* %sigTfactors_on_stack, i32 0, i32 %87, i32 1
  %91 = load double, double addrspace(3)* %90, align 8
  %92 = fneg double %add6.i.pn.i
  %neg.i118 = fmul double %91, %92
  %93 = tail call double @llvm.fmuladd.f64(double %add.i.pn.i, double %89, double %neg.i118) #20
  %mul7.i119 = fmul double %add6.i.pn.i, %89
  %94 = tail call double @llvm.fmuladd.f64(double %add.i.pn.i, double %91, double %mul7.i119) #20
  %95 = fneg double %pole.sroa.6.0.copyload
  %neg.i122 = fmul double %94, %95
  %96 = tail call double @llvm.fmuladd.f64(double %pole.sroa.5.0.copyload, double %93, double %neg.i122) #20
  %add30 = fadd double %sigT.0138, %96
  %97 = fneg double %pole.sroa.8.0.copyload
  %neg.i126 = fmul double %add6.i.pn.i, %97
  %98 = tail call double @llvm.fmuladd.f64(double %pole.sroa.7.0.copyload, double %add.i.pn.i, double %neg.i126) #20
  %add34 = fadd double %sigA.0137, %98
  %99 = fneg double %pole.sroa.10.0.copyload
  %neg.i130 = fmul double %add6.i.pn.i, %99
  %100 = tail call double @llvm.fmuladd.f64(double %pole.sroa.9.0.copyload, double %add.i.pn.i, double %neg.i130) #20
  %add38 = fadd double %sigF.0136, %100
  %inc = add nsw i32 %i.0135, 1
  %cmp12 = icmp slt i32 %inc, %29
  br i1 %cmp12, label %for.body, label %for.cond.cleanup

; uselistorder directives
  uselistorder double* %micro_xs, { 3, 2, 1, 0 }
  uselistorder i32 %nuc, { 3, 2, 0, 1 }
  uselistorder double %E, { 0, 5, 4, 3, 1, 2 }
  uselistorder %struct.Window* %windows, { 1, 2, 3, 0 }
  uselistorder %struct.Pole* %poles, { 1, 2, 3, 4, 5, 6, 7, 8, 0 }
  uselistorder i8 addrspace(3)* %arrayidx.i.i.i, { 5, 4, 7, 6, 9, 8, 3, 2, 1, 0, 10, 11 }
  uselistorder i32 %mul.i1.i.i.i, { 2, 1, 0, 3 }
  uselistorder i8 addrspace(3)* %arrayidx3.i.i.i.i, { 8, 0, 1, 2, 3, 4, 5, 6, 7, 9 }
  uselistorder [4 x %struct.RSComplex] addrspace(3)* %sigTfactors_on_stack, { 1, 0 }
  uselistorder i64 %idxprom7, { 1, 2, 3, 0 }
  uselistorder double %sigA.0.lcssa, { 1, 0 }
  uselistorder double %sigT.0.lcssa, { 1, 0 }
  uselistorder label %__kmpc_free_shared.exit, { 1, 0 }
  uselistorder label %for.body, { 1, 0 }
  uselistorder i64 %idxprom16, { 1, 2, 3, 4, 5, 6, 7, 8, 0 }
  uselistorder double %sub.i, { 1, 0 }
  uselistorder double %sub6.i, { 1, 0 }
  uselistorder double %31, { 7, 6, 5, 4, 3, 2, 17, 16, 10, 15, 14, 13, 12, 11, 9, 8, 1, 0 }
  uselistorder double %32, { 6, 5, 4, 3, 2, 15, 14, 13, 12, 11, 10, 9, 8, 7, 1, 0 }
  uselistorder i8 addrspace(3)* %arrayidx3.i.i.i.i.i, { 1, 0, 2 }
  uselistorder i8 addrspace(3)* %arrayidx3.i.i.i.i153.i, { 1, 0, 2 }
  uselistorder i8 addrspace(3)* %arrayidx3.i.i.i.i168.i, { 1, 0, 2 }
  uselistorder double %40, { 1, 0 }
  uselistorder double %42, { 2, 3, 0, 1 }
  uselistorder double %add.i245.i, { 1, 0, 2 }
  uselistorder double %add6.i246.i, { 1, 0, 2 }
  uselistorder i32 %inc.i, { 1, 0 }
  uselistorder double %add.i.pn.i, { 3, 2, 1, 0 }
  uselistorder double %add6.i.pn.i, { 3, 2, 1, 0 }
  uselistorder label %fast_nuclear_W.exit, { 1, 0 }
  uselistorder i32 %inc, { 1, 0 }
}

; Function Attrs: convergent nounwind
define protected void @calculate_micro_xs(double* nocapture noundef writeonly %micro_xs, i32 noundef %nuc, double noundef %E, i32 %input.coerce0, i32 %input.coerce1, i32 %input.coerce2, i32 %input.coerce3, i32 %input.coerce4, i32 %input.coerce5, i32 %input.coerce6, i32 %input.coerce7, i32 %input.coerce8, i32 %input.coerce9, i32 %input.coerce10, i32* nocapture noundef readonly %n_windows, double* nocapture noundef readonly %pseudo_K0RS, %struct.Window* nocapture noundef readonly %windows, %struct.Pole* nocapture noundef readonly %poles, i32 noundef %max_num_windows, i32 noundef %max_num_poles) local_unnamed_addr #5 {
entry:
  %0 = tail call i32 @llvm.amdgcn.workgroup.id.x() #20
  %1 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #20
  %2 = getelementptr i8, i8 addrspace(4)* %1, i64 12
  %3 = bitcast i8 addrspace(4)* %2 to i32 addrspace(4)*
  %4 = load i32, i32 addrspace(4)* %3, align 4, !invariant.load !9
  %5 = getelementptr i8, i8 addrspace(4)* %1, i64 4
  %6 = bitcast i8 addrspace(4)* %5 to i16 addrspace(4)*
  %7 = load i16, i16 addrspace(4)* %6, align 4, !range !10, !invariant.load !9
  %conv.i.i.i1.i = zext i16 %7 to i32
  %mul.i.i.i2.i = mul i32 %0, %conv.i.i.i1.i
  %sub.i.i.i3.i = sub i32 %4, %mul.i.i.i2.i
  %8 = tail call i32 @llvm.amdgcn.workitem.id.x() #20, !range !81
  %cmp.i.i.i.i = icmp ult i32 %sub.i.i.i3.i, %conv.i.i.i1.i
  %cond.i.i.i.i = select i1 %cmp.i.i.i.i, i32 %sub.i.i.i3.i, i32 %conv.i.i.i1.i
  %div.i.i.i.rhs.trunc.i = trunc i32 %cond.i.i.i.i to i16
  %div.i.i.i1.i = udiv i16 2048, %div.i.i.i.rhs.trunc.i
  %9 = and i16 %div.i.i.i1.i, 4080
  %sub.i.i.i.i.i = zext i16 %9 to i32
  %arrayidx.i.i.i = getelementptr %"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 %8
  %10 = load i8, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %mul.i1.i.i.i = mul nuw nsw i32 %8, %sub.i.i.i.i.i
  %conv.i.i.i.i = zext i8 %10 to i32
  %add.i2.i.i.i = add nuw nsw i32 %mul.i1.i.i.i, %conv.i.i.i.i
  %arrayidx3.i.i.i.i = getelementptr inbounds %"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 0, i32 %add.i2.i.i.i
  %conv14.i.i.i = add i8 %10, 64
  store i8 %conv14.i.i.i, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %sigTfactors_on_stack = bitcast i8 addrspace(3)* %arrayidx3.i.i.i.i to [4 x %struct.RSComplex] addrspace(3)*
  %idxprom = sext i32 %nuc to i64
  %arrayidx = getelementptr inbounds i32, i32* %n_windows, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4, !tbaa !51
  %conv = sitofp i32 %11 to double
  %div = fdiv double 1.000000e+00, %conv
  %div2 = fdiv double %E, %div
  %conv3 = fptosi double %div2 to i32
  %cmp = icmp eq i32 %11, %conv3
  %dec = sext i1 %cmp to i32
  %mul.i = mul nsw i32 %input.coerce6, %nuc
  %idxprom.i = sext i32 %mul.i to i64
  %arrayidx.i = getelementptr inbounds double, double* %pseudo_K0RS, i64 %idxprom.i
  %12 = load double, double* %arrayidx.i, align 8, !tbaa !52
  %call.i.i = tail call double @__ocml_sqrt_f64(double noundef %E) #23
  %mul2.i = fmul double %12, %call.i.i
  %mul25.i = fmul double %mul2.i, 2.000000e+00
  %call.i61.i = tail call double @__ocml_cos_f64(double noundef %mul25.i) #24
  %r.i = bitcast i8 addrspace(3)* %arrayidx3.i.i.i.i to double addrspace(3)*
  store double %call.i61.i, double addrspace(3)* %r.i, align 8, !tbaa !54
  %call.i62.i = tail call double @__ocml_sin_f64(double noundef %mul25.i) #24
  %fneg30.i = fneg double %call.i62.i
  %i33.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 8
  %13 = bitcast i8 addrspace(3)* %i33.i to double addrspace(3)*
  store double %fneg30.i, double addrspace(3)* %13, align 8, !tbaa !56
  %add.1.i = add nsw i32 %mul.i, 1
  %idxprom.1.i = sext i32 %add.1.i to i64
  %arrayidx.1.i = getelementptr inbounds double, double* %pseudo_K0RS, i64 %idxprom.1.i
  %14 = load double, double* %arrayidx.1.i, align 8, !tbaa !52
  %mul2.1.i = fmul double %call.i.i, %14
  %call.i58.1.i = tail call double @__ocml_atan_f64(double noundef %mul2.1.i) #23
  %sub.1.i = fadd double %mul2.1.i, %call.i58.1.i
  %mul25.1.i = fmul double %sub.1.i, 2.000000e+00
  %call.i61.1.i = tail call double @__ocml_cos_f64(double noundef %mul25.1.i) #24
  %r.1.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 16
  %15 = bitcast i8 addrspace(3)* %r.1.i to double addrspace(3)*
  store double %call.i61.1.i, double addrspace(3)* %15, align 8, !tbaa !54
  %call.i62.1.i = tail call double @__ocml_sin_f64(double noundef %mul25.1.i) #24
  %fneg30.1.i = fneg double %call.i62.1.i
  %i33.1.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 24
  %16 = bitcast i8 addrspace(3)* %i33.1.i to double addrspace(3)*
  store double %fneg30.1.i, double addrspace(3)* %16, align 8, !tbaa !56
  %add.2.i = add nsw i32 %mul.i, 2
  %idxprom.2.i = sext i32 %add.2.i to i64
  %arrayidx.2.i = getelementptr inbounds double, double* %pseudo_K0RS, i64 %idxprom.2.i
  %17 = load double, double* %arrayidx.2.i, align 8, !tbaa !52
  %mul2.2.i = fmul double %call.i.i, %17
  %mul7.2.i = fmul double %mul2.2.i, 3.000000e+00
  %neg.2.i = fneg double %mul2.2.i
  %18 = tail call double @llvm.fmuladd.f64(double %neg.2.i, double %mul2.2.i, double 3.000000e+00) #20
  %div.2.i = fdiv double %mul7.2.i, %18
  %call.i59.2.i = tail call double @__ocml_atan_f64(double noundef %div.2.i) #23
  %sub10.2.i = fsub double %mul2.2.i, %call.i59.2.i
  %mul25.2.i = fmul double %sub10.2.i, 2.000000e+00
  %call.i61.2.i = tail call double @__ocml_cos_f64(double noundef %mul25.2.i) #24
  %r.2.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 32
  %19 = bitcast i8 addrspace(3)* %r.2.i to double addrspace(3)*
  store double %call.i61.2.i, double addrspace(3)* %19, align 8, !tbaa !54
  %call.i62.2.i = tail call double @__ocml_sin_f64(double noundef %mul25.2.i) #24
  %fneg30.2.i = fneg double %call.i62.2.i
  %i33.2.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 40
  %20 = bitcast i8 addrspace(3)* %i33.2.i to double addrspace(3)*
  store double %fneg30.2.i, double addrspace(3)* %20, align 8, !tbaa !56
  %add.3.i = add nsw i32 %mul.i, 3
  %idxprom.3.i = sext i32 %add.3.i to i64
  %arrayidx.3.i = getelementptr inbounds double, double* %pseudo_K0RS, i64 %idxprom.3.i
  %21 = load double, double* %arrayidx.3.i, align 8, !tbaa !52
  %mul2.3.i = fmul double %call.i.i, %21
  %neg15.3.i = fneg double %mul2.3.i
  %22 = tail call double @llvm.fmuladd.f64(double %neg15.3.i, double %mul2.3.i, double 1.500000e+01) #20
  %mul16.3.i = fmul double %mul2.3.i, %22
  %neg19.3.i = fmul double %mul2.3.i, -6.000000e+00
  %23 = tail call double @llvm.fmuladd.f64(double %neg19.3.i, double %mul2.3.i, double 1.500000e+01) #20
  %div20.3.i = fdiv double %mul16.3.i, %23
  %call.i60.3.i = tail call double @__ocml_atan_f64(double noundef %div20.3.i) #23
  %sub22.3.i = fsub double %mul2.3.i, %call.i60.3.i
  %mul25.3.i = fmul double %sub22.3.i, 2.000000e+00
  %call.i61.3.i = tail call double @__ocml_cos_f64(double noundef %mul25.3.i) #24
  %r.3.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 48
  %24 = bitcast i8 addrspace(3)* %r.3.i to double addrspace(3)*
  store double %call.i61.3.i, double addrspace(3)* %24, align 8, !tbaa !54
  %call.i62.3.i = tail call double @__ocml_sin_f64(double noundef %mul25.3.i) #24
  %fneg30.3.i = fneg double %call.i62.3.i
  %i33.3.i = getelementptr inbounds i8, i8 addrspace(3)* %arrayidx3.i.i.i.i, i32 56
  %25 = bitcast i8 addrspace(3)* %i33.3.i to double addrspace(3)*
  store double %fneg30.3.i, double addrspace(3)* %25, align 8, !tbaa !56
  %mul = mul nsw i32 %max_num_windows, %nuc
  %spec.select = add i32 %mul, %conv3
  %add = add i32 %spec.select, %dec
  %idxprom7 = sext i32 %add to i64
  %w.sroa.0.0..sroa_idx = getelementptr inbounds %struct.Window, %struct.Window* %windows, i64 %idxprom7, i32 0
  %w.sroa.0.0.copyload = load double, double* %w.sroa.0.0..sroa_idx, align 8, !tbaa.struct !57
  %w.sroa.4.0..sroa_idx90 = getelementptr inbounds %struct.Window, %struct.Window* %windows, i64 %idxprom7, i32 1
  %w.sroa.4.0.copyload = load double, double* %w.sroa.4.0..sroa_idx90, align 8, !tbaa.struct !58
  %w.sroa.5.0..sroa_idx92 = getelementptr inbounds %struct.Window, %struct.Window* %windows, i64 %idxprom7, i32 2
  %w.sroa.5.0.copyload = load double, double* %w.sroa.5.0..sroa_idx92, align 8, !tbaa.struct !59
  %w.sroa.6.0..sroa_idx94 = getelementptr inbounds %struct.Window, %struct.Window* %windows, i64 %idxprom7, i32 3
  %26 = bitcast i32* %w.sroa.6.0..sroa_idx94 to <2 x i32>*
  %27 = load <2 x i32>, <2 x i32>* %26, align 8
  %mul9 = fmul double %w.sroa.0.0.copyload, %E
  %mul10 = fmul double %w.sroa.4.0.copyload, %E
  %mul11 = fmul double %w.sroa.5.0.copyload, %E
  %mul14 = mul nsw i32 %max_num_poles, %nuc
  %28 = tail call double @llvm.fmuladd.f64(double %E, double %E, double 0.000000e+00) #20
  %29 = extractelement <2 x i32> %27, i64 0
  %30 = extractelement <2 x i32> %27, i64 1
  %cmp12147 = icmp slt i32 %29, %30
  br i1 %cmp12147, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %sigF.0.lcssa = phi double [ %mul11, %entry ], [ %add40, %for.body ]
  %sigA.0.lcssa = phi double [ %mul10, %entry ], [ %add36, %for.body ]
  %sigT.0.lcssa = phi double [ %mul9, %entry ], [ %add32, %for.body ]
  %sub = fsub double %sigT.0.lcssa, %sigA.0.lcssa
  store double %sigT.0.lcssa, double* %micro_xs, align 8, !tbaa !52
  %arrayidx42 = getelementptr inbounds double, double* %micro_xs, i64 1
  store double %sigA.0.lcssa, double* %arrayidx42, align 8, !tbaa !52
  %arrayidx43 = getelementptr inbounds double, double* %micro_xs, i64 2
  store double %sigF.0.lcssa, double* %arrayidx43, align 8, !tbaa !52
  %arrayidx44 = getelementptr inbounds double, double* %micro_xs, i64 3
  store double %sub, double* %arrayidx44, align 8, !tbaa !52
  %cmp4.i.i.i = icmp ult i8 addrspace(3)* %arrayidx3.i.i.i.i, getelementptr inbounds (%"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 0)
  br i1 %cmp4.i.i.i, label %if.then.i.i.i, label %__kmpc_free_shared.exit

if.then.i.i.i:                                    ; preds = %for.cond.cleanup
  %31 = load i8, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %sub.i.i.i = add i8 %31, -64
  store i8 %sub.i.i.i, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  br label %__kmpc_free_shared.exit

__kmpc_free_shared.exit:                          ; preds = %for.cond.cleanup, %if.then.i.i.i
  ret void

for.body:                                         ; preds = %entry, %for.body
  %sigT.0151 = phi double [ %add32, %for.body ], [ %mul9, %entry ]
  %sigA.0150 = phi double [ %add36, %for.body ], [ %mul10, %entry ]
  %sigF.0149 = phi double [ %add40, %for.body ], [ %mul11, %entry ]
  %i.0148 = phi i32 [ %inc, %for.body ], [ %29, %entry ]
  %add15 = add nsw i32 %i.0148, %mul14
  %idxprom16 = sext i32 %add15 to i64
  %pole.sroa.0.0..sroa_idx = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16, i32 0, i32 0
  %pole.sroa.0.0.copyload = load double, double* %pole.sroa.0.0..sroa_idx, align 8, !tbaa.struct !60
  %pole.sroa.4.0..sroa_idx58 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16, i32 0, i32 1
  %pole.sroa.4.0.copyload = load double, double* %pole.sroa.4.0..sroa_idx58, align 8, !tbaa.struct !63
  %pole.sroa.5.0..sroa_idx60 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16, i32 1, i32 0
  %pole.sroa.5.0.copyload = load double, double* %pole.sroa.5.0..sroa_idx60, align 8, !tbaa.struct !64
  %pole.sroa.6.0..sroa_idx62 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16, i32 1, i32 1
  %pole.sroa.6.0.copyload = load double, double* %pole.sroa.6.0..sroa_idx62, align 8, !tbaa.struct !65
  %pole.sroa.7.0..sroa_idx64 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16, i32 2, i32 0
  %pole.sroa.7.0.copyload = load double, double* %pole.sroa.7.0..sroa_idx64, align 8, !tbaa.struct !66
  %pole.sroa.8.0..sroa_idx66 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16, i32 2, i32 1
  %pole.sroa.8.0.copyload = load double, double* %pole.sroa.8.0..sroa_idx66, align 8, !tbaa.struct !67
  %pole.sroa.9.0..sroa_idx68 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16, i32 3, i32 0
  %pole.sroa.9.0.copyload = load double, double* %pole.sroa.9.0..sroa_idx68, align 8, !tbaa.struct !68
  %pole.sroa.10.0..sroa_idx70 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16, i32 3, i32 1
  %pole.sroa.10.0.copyload = load double, double* %pole.sroa.10.0..sroa_idx70, align 8, !tbaa.struct !69
  %pole.sroa.11.0..sroa_idx72 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %idxprom16, i32 4
  %pole.sroa.11.0.copyload = load i16, i16* %pole.sroa.11.0..sroa_idx72, align 8, !tbaa.struct !70
  %sub.i = fsub double %pole.sroa.0.0.copyload, %call.i.i
  %mul5.i = fmul double %pole.sroa.4.0.copyload, %pole.sroa.4.0.copyload
  %32 = tail call double @llvm.fmuladd.f64(double %sub.i, double %sub.i, double %mul5.i) #20
  %33 = tail call double @llvm.fmuladd.f64(double %sub.i, double 0.000000e+00, double %pole.sroa.4.0.copyload) #20
  %div.i = fdiv double %33, %32
  %neg.i = fmul double %pole.sroa.4.0.copyload, 0.000000e+00
  %34 = fsub double %sub.i, %neg.i
  %div9.i = fdiv double %34, %32
  %mul6.i = fmul double %div9.i, 0.000000e+00
  %35 = tail call double @llvm.fmuladd.f64(double %div.i, double %E, double %mul6.i) #20
  %div.i127 = fdiv double %35, %28
  %neg.i128 = fmul double %div.i, -0.000000e+00
  %36 = tail call double @llvm.fmuladd.f64(double %div9.i, double %E, double %neg.i128) #20
  %div9.i129 = fdiv double %36, %28
  %37 = sext i16 %pole.sroa.11.0.copyload to i32
  %38 = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex] addrspace(3)* %sigTfactors_on_stack, i32 0, i32 %37, i32 0
  %39 = load double, double addrspace(3)* %38, align 16
  %40 = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex] addrspace(3)* %sigTfactors_on_stack, i32 0, i32 %37, i32 1
  %41 = load double, double addrspace(3)* %40, align 8
  %42 = fneg double %div9.i129
  %neg.i132 = fmul double %41, %42
  %43 = tail call double @llvm.fmuladd.f64(double %div.i127, double %39, double %neg.i132) #20
  %mul7.i = fmul double %div9.i129, %39
  %44 = tail call double @llvm.fmuladd.f64(double %div.i127, double %41, double %mul7.i) #20
  %45 = fneg double %pole.sroa.6.0.copyload
  %neg.i135 = fmul double %44, %45
  %46 = tail call double @llvm.fmuladd.f64(double %pole.sroa.5.0.copyload, double %43, double %neg.i135) #20
  %add32 = fadd double %sigT.0151, %46
  %47 = fneg double %pole.sroa.8.0.copyload
  %neg.i139 = fmul double %div9.i129, %47
  %48 = tail call double @llvm.fmuladd.f64(double %pole.sroa.7.0.copyload, double %div.i127, double %neg.i139) #20
  %add36 = fadd double %sigA.0150, %48
  %49 = fneg double %pole.sroa.10.0.copyload
  %neg.i143 = fmul double %div9.i129, %49
  %50 = tail call double @llvm.fmuladd.f64(double %pole.sroa.9.0.copyload, double %div.i127, double %neg.i143) #20
  %add40 = fadd double %sigF.0149, %50
  %inc = add nsw i32 %i.0148, 1
  %cmp12 = icmp slt i32 %inc, %30
  br i1 %cmp12, label %for.body, label %for.cond.cleanup

; uselistorder directives
  uselistorder double* %micro_xs, { 3, 2, 1, 0 }
  uselistorder i32 %nuc, { 3, 2, 0, 1 }
  uselistorder double %E, { 0, 1, 2, 3, 8, 7, 6, 4, 5 }
  uselistorder %struct.Window* %windows, { 1, 2, 3, 0 }
  uselistorder %struct.Pole* %poles, { 1, 2, 3, 4, 5, 6, 7, 8, 0 }
  uselistorder i8 addrspace(3)* %arrayidx.i.i.i, { 1, 0, 2, 3 }
  uselistorder i8 addrspace(3)* %arrayidx3.i.i.i.i, { 8, 0, 1, 2, 3, 4, 5, 6, 7, 9 }
  uselistorder [4 x %struct.RSComplex] addrspace(3)* %sigTfactors_on_stack, { 1, 0 }
  uselistorder i64 %idxprom7, { 1, 2, 3, 0 }
  uselistorder double %sigA.0.lcssa, { 1, 0 }
  uselistorder double %sigT.0.lcssa, { 1, 0 }
  uselistorder label %__kmpc_free_shared.exit, { 1, 0 }
  uselistorder label %for.body, { 1, 0 }
  uselistorder i64 %idxprom16, { 1, 2, 3, 4, 5, 6, 7, 8, 0 }
  uselistorder double %pole.sroa.4.0.copyload, { 3, 2, 1, 0 }
  uselistorder double %sub.i, { 0, 1, 3, 2 }
  uselistorder double %div9.i, { 1, 0 }
  uselistorder double %div.i127, { 3, 2, 1, 0 }
  uselistorder double %div9.i129, { 3, 2, 1, 0 }
  uselistorder i32 %inc, { 1, 0 }
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: convergent nounwind
define protected void @calculate_sig_T(i32 noundef %nuc, double noundef %E, i32 %input.coerce0, i32 %input.coerce1, i32 %input.coerce2, i32 %input.coerce3, i32 %input.coerce4, i32 %input.coerce5, i32 %input.coerce6, i32 %input.coerce7, i32 %input.coerce8, i32 %input.coerce9, i32 %input.coerce10, double* nocapture noundef readonly %pseudo_K0RS, %struct.RSComplex* nocapture noundef writeonly %sigTfactors) local_unnamed_addr #5 {
entry:
  %mul = mul nsw i32 %input.coerce6, %nuc
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds double, double* %pseudo_K0RS, i64 %idxprom
  %0 = load double, double* %arrayidx, align 8, !tbaa !52
  %call.i = tail call double @__ocml_sqrt_f64(double noundef %E) #23
  %mul2 = fmul double %0, %call.i
  %mul25 = fmul double %mul2, 2.000000e+00
  %call.i61 = tail call double @__ocml_cos_f64(double noundef %mul25) #24
  %r = getelementptr inbounds %struct.RSComplex, %struct.RSComplex* %sigTfactors, i64 0, i32 0
  store double %call.i61, double* %r, align 8, !tbaa !54
  %call.i62 = tail call double @__ocml_sin_f64(double noundef %mul25) #24
  %fneg30 = fneg double %call.i62
  %i33 = getelementptr inbounds %struct.RSComplex, %struct.RSComplex* %sigTfactors, i64 0, i32 1
  store double %fneg30, double* %i33, align 8, !tbaa !56
  %add.1 = add nsw i32 %mul, 1
  %idxprom.1 = sext i32 %add.1 to i64
  %arrayidx.1 = getelementptr inbounds double, double* %pseudo_K0RS, i64 %idxprom.1
  %1 = load double, double* %arrayidx.1, align 8, !tbaa !52
  %mul2.1 = fmul double %1, %call.i
  %call.i58.1 = tail call double @__ocml_atan_f64(double noundef %mul2.1) #23
  %sub.1 = fadd double %mul2.1, %call.i58.1
  %mul25.1 = fmul double %sub.1, 2.000000e+00
  %call.i61.1 = tail call double @__ocml_cos_f64(double noundef %mul25.1) #24
  %r.1 = getelementptr inbounds %struct.RSComplex, %struct.RSComplex* %sigTfactors, i64 1, i32 0
  store double %call.i61.1, double* %r.1, align 8, !tbaa !54
  %call.i62.1 = tail call double @__ocml_sin_f64(double noundef %mul25.1) #24
  %fneg30.1 = fneg double %call.i62.1
  %i33.1 = getelementptr inbounds %struct.RSComplex, %struct.RSComplex* %sigTfactors, i64 1, i32 1
  store double %fneg30.1, double* %i33.1, align 8, !tbaa !56
  %add.2 = add nsw i32 %mul, 2
  %idxprom.2 = sext i32 %add.2 to i64
  %arrayidx.2 = getelementptr inbounds double, double* %pseudo_K0RS, i64 %idxprom.2
  %2 = load double, double* %arrayidx.2, align 8, !tbaa !52
  %mul2.2 = fmul double %2, %call.i
  %mul7.2 = fmul double %mul2.2, 3.000000e+00
  %neg.2 = fneg double %mul2.2
  %3 = tail call double @llvm.fmuladd.f64(double %neg.2, double %mul2.2, double 3.000000e+00)
  %div.2 = fdiv double %mul7.2, %3
  %call.i59.2 = tail call double @__ocml_atan_f64(double noundef %div.2) #23
  %sub10.2 = fsub double %mul2.2, %call.i59.2
  %mul25.2 = fmul double %sub10.2, 2.000000e+00
  %call.i61.2 = tail call double @__ocml_cos_f64(double noundef %mul25.2) #24
  %r.2 = getelementptr inbounds %struct.RSComplex, %struct.RSComplex* %sigTfactors, i64 2, i32 0
  store double %call.i61.2, double* %r.2, align 8, !tbaa !54
  %call.i62.2 = tail call double @__ocml_sin_f64(double noundef %mul25.2) #24
  %fneg30.2 = fneg double %call.i62.2
  %i33.2 = getelementptr inbounds %struct.RSComplex, %struct.RSComplex* %sigTfactors, i64 2, i32 1
  store double %fneg30.2, double* %i33.2, align 8, !tbaa !56
  %add.3 = add nsw i32 %mul, 3
  %idxprom.3 = sext i32 %add.3 to i64
  %arrayidx.3 = getelementptr inbounds double, double* %pseudo_K0RS, i64 %idxprom.3
  %4 = load double, double* %arrayidx.3, align 8, !tbaa !52
  %mul2.3 = fmul double %4, %call.i
  %neg15.3 = fneg double %mul2.3
  %5 = tail call double @llvm.fmuladd.f64(double %neg15.3, double %mul2.3, double 1.500000e+01)
  %mul16.3 = fmul double %mul2.3, %5
  %neg19.3 = fmul double %mul2.3, -6.000000e+00
  %6 = tail call double @llvm.fmuladd.f64(double %neg19.3, double %mul2.3, double 1.500000e+01)
  %div20.3 = fdiv double %mul16.3, %6
  %call.i60.3 = tail call double @__ocml_atan_f64(double noundef %div20.3) #23
  %sub22.3 = fsub double %mul2.3, %call.i60.3
  %mul25.3 = fmul double %sub22.3, 2.000000e+00
  %call.i61.3 = tail call double @__ocml_cos_f64(double noundef %mul25.3) #24
  %r.3 = getelementptr inbounds %struct.RSComplex, %struct.RSComplex* %sigTfactors, i64 3, i32 0
  store double %call.i61.3, double* %r.3, align 8, !tbaa !54
  %call.i62.3 = tail call double @__ocml_sin_f64(double noundef %mul25.3) #24
  %fneg30.3 = fneg double %call.i62.3
  %i33.3 = getelementptr inbounds %struct.RSComplex, %struct.RSComplex* %sigTfactors, i64 3, i32 1
  store double %fneg30.3, double* %i33.3, align 8, !tbaa !56
  ret void

; uselistorder directives
  uselistorder %struct.RSComplex* %sigTfactors, { 0, 1, 2, 3, 4, 5, 7, 6 }
  uselistorder i32 %mul, { 1, 2, 3, 0 }
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
define protected %struct.RSComplex @c_mul(double %A.coerce0, double %A.coerce1, double %B.coerce0, double %B.coerce1) local_unnamed_addr #7 {
entry:
  %0 = fneg double %A.coerce1
  %neg = fmul double %0, %B.coerce1
  %1 = tail call double @llvm.fmuladd.f64(double %A.coerce0, double %B.coerce0, double %neg)
  %mul7 = fmul double %A.coerce1, %B.coerce0
  %2 = tail call double @llvm.fmuladd.f64(double %A.coerce0, double %B.coerce1, double %mul7)
  %.fca.0.insert = insertvalue %struct.RSComplex poison, double %1, 0
  %.fca.1.insert = insertvalue %struct.RSComplex %.fca.0.insert, double %2, 1
  ret %struct.RSComplex %.fca.1.insert

; uselistorder directives
  uselistorder double %A.coerce0, { 1, 0 }
  uselistorder double %A.coerce1, { 1, 0 }
  uselistorder double %B.coerce0, { 1, 0 }
  uselistorder double %B.coerce1, { 1, 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn
define protected %struct.RSComplex @c_sub(double %A.coerce0, double %A.coerce1, double %B.coerce0, double %B.coerce1) local_unnamed_addr #8 {
entry:
  %sub = fsub double %A.coerce0, %B.coerce0
  %sub6 = fsub double %A.coerce1, %B.coerce1
  %.fca.0.insert = insertvalue %struct.RSComplex poison, double %sub, 0
  %.fca.1.insert = insertvalue %struct.RSComplex %.fca.0.insert, double %sub6, 1
  ret %struct.RSComplex %.fca.1.insert
}

; Function Attrs: convergent nounwind
define protected %struct.RSComplex @fast_nuclear_W(double %Z.coerce0, double %Z.coerce1) local_unnamed_addr #5 {
entry:
  %0 = tail call i32 @llvm.amdgcn.workgroup.id.x() #20
  %1 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #20
  %2 = getelementptr i8, i8 addrspace(4)* %1, i64 12
  %3 = bitcast i8 addrspace(4)* %2 to i32 addrspace(4)*
  %4 = load i32, i32 addrspace(4)* %3, align 4, !invariant.load !9
  %5 = getelementptr i8, i8 addrspace(4)* %1, i64 4
  %6 = bitcast i8 addrspace(4)* %5 to i16 addrspace(4)*
  %7 = load i16, i16 addrspace(4)* %6, align 4, !range !10, !invariant.load !9
  %conv.i.i.i1.i = zext i16 %7 to i32
  %mul.i.i.i2.i = mul i32 %0, %conv.i.i.i1.i
  %sub.i.i.i3.i = sub i32 %4, %mul.i.i.i2.i
  %8 = tail call i32 @llvm.amdgcn.workitem.id.x() #20, !range !81
  %cmp.i.i.i.i = icmp ult i32 %sub.i.i.i3.i, %conv.i.i.i1.i
  %cond.i.i.i.i = select i1 %cmp.i.i.i.i, i32 %sub.i.i.i3.i, i32 %conv.i.i.i1.i
  %div.i.i.i.rhs.trunc.i = trunc i32 %cond.i.i.i.i to i16
  %div.i.i.i1.i = udiv i16 2048, %div.i.i.i.rhs.trunc.i
  %9 = and i16 %div.i.i.i1.i, 4080
  %sub.i.i.i.i.i = zext i16 %9 to i32
  %arrayidx.i.i.i = getelementptr %"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 %8
  %10 = load i8, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %mul.i1.i.i.i = mul nuw nsw i32 %8, %sub.i.i.i.i.i
  %conv.i.i.i.i = zext i8 %10 to i32
  %add.i2.i.i.i = add nuw nsw i32 %mul.i1.i.i.i, %conv.i.i.i.i
  %arrayidx3.i.i.i.i = getelementptr inbounds %"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 0, i32 %add.i2.i.i.i
  %conv14.i.i.i = add i8 %10, 80
  %neg_1n_on_stack = bitcast i8 addrspace(3)* %arrayidx3.i.i.i.i to [10 x double] addrspace(3)*
  %conv.i.i.i.i150 = zext i8 %conv14.i.i.i to i32
  %add.i2.i.i.i151 = add nuw nsw i32 %mul.i1.i.i.i, %conv.i.i.i.i150
  %arrayidx3.i.i.i.i153 = getelementptr inbounds %"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 0, i32 %add.i2.i.i.i151
  %conv14.i.i.i154 = add i8 %10, -96
  %denominator_left_on_stack = bitcast i8 addrspace(3)* %arrayidx3.i.i.i.i153 to [10 x double] addrspace(3)*
  %conv.i.i.i.i165 = zext i8 %conv14.i.i.i154 to i32
  %add.i2.i.i.i166 = add nuw nsw i32 %mul.i1.i.i.i, %conv.i.i.i.i165
  %arrayidx3.i.i.i.i168 = getelementptr inbounds %"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 0, i32 %add.i2.i.i.i166
  %conv14.i.i.i169 = add i8 %10, -16
  store i8 %conv14.i.i.i169, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %an_on_stack = bitcast i8 addrspace(3)* %arrayidx3.i.i.i.i168 to [10 x double] addrspace(3)*
  %mul4.i = fmul double %Z.coerce1, %Z.coerce1
  %11 = tail call double @llvm.fmuladd.f64(double %Z.coerce0, double %Z.coerce0, double %mul4.i) #20
  %call.i.i = tail call double @__ocml_sqrt_f64(double noundef %11) #23
  %cmp = fcmp olt double %call.i.i, 6.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @llvm.memcpy.p3i8.p0i8.i64(i8 addrspace(3)* noundef align 16 dereferenceable(80) %arrayidx3.i.i.i.i168, i8* noundef nonnull align 16 dereferenceable(80) bitcast ([10 x double]* @constinit to i8*), i64 80, i1 false), !tbaa.struct !82
  tail call void @llvm.memcpy.p3i8.p0i8.i64(i8 addrspace(3)* noundef align 16 dereferenceable(80) %arrayidx3.i.i.i.i, i8* noundef nonnull align 16 dereferenceable(80) bitcast ([10 x double]* @constinit.2 to i8*), i64 80, i1 false), !tbaa.struct !82
  tail call void @llvm.memcpy.p3i8.p0i8.i64(i8 addrspace(3)* noundef align 16 dereferenceable(80) %arrayidx3.i.i.i.i153, i8* noundef nonnull align 16 dereferenceable(80) bitcast ([10 x double]* @constinit.3 to i8*), i64 80, i1 false), !tbaa.struct !82
  %neg.i = fmul double %Z.coerce1, -1.200000e+01
  %12 = tail call double @llvm.fmuladd.f64(double %Z.coerce0, double 0.000000e+00, double %neg.i) #20
  %mul7.i = fmul double %Z.coerce0, 1.200000e+01
  %13 = tail call double @llvm.fmuladd.f64(double %Z.coerce1, double 0.000000e+00, double %mul7.i) #20
  %14 = tail call double @llvm.fmuladd.f64(double %12, double 0x3F30000000000000, double 1.000000e+00) #20
  %mul.i.i = fmul double %14, %14
  %mul1.i.i = fmul double %mul.i.i, %mul.i.i
  %mul2.i.i = fmul double %mul1.i.i, %mul1.i.i
  %mul3.i.i = fmul double %mul2.i.i, %mul2.i.i
  %mul4.i.i = fmul double %mul3.i.i, %mul3.i.i
  %mul5.i.i = fmul double %mul4.i.i, %mul4.i.i
  %mul6.i.i = fmul double %mul5.i.i, %mul5.i.i
  %mul7.i.i = fmul double %mul6.i.i, %mul6.i.i
  %mul8.i.i = fmul double %mul7.i.i, %mul7.i.i
  %mul9.i.i = fmul double %mul8.i.i, %mul8.i.i
  %mul10.i.i = fmul double %mul9.i.i, %mul9.i.i
  %mul11.i.i = fmul double %mul10.i.i, %mul10.i.i
  %call.i.i170 = tail call double @__ocml_cos_f64(double noundef %13) #24
  %call.i19.i = tail call double @__ocml_sin_f64(double noundef %13) #24
  %neg.i.i = fmul double %call.i19.i, -0.000000e+00
  %15 = tail call double @llvm.fmuladd.f64(double %mul11.i.i, double %call.i.i170, double %neg.i.i) #20
  %mul7.i20.i = fmul double %call.i.i170, 0.000000e+00
  %16 = tail call double @llvm.fmuladd.f64(double %mul11.i.i, double %call.i19.i, double %mul7.i20.i) #20
  %sub.i = fsub double 1.000000e+00, %15
  %sub6.i = fsub double 0.000000e+00, %16
  %neg.i173 = fneg double %sub6.i
  %17 = tail call double @llvm.fmuladd.f64(double %sub.i, double 0.000000e+00, double %neg.i173) #20
  %18 = tail call double @llvm.fmuladd.f64(double %sub6.i, double 0.000000e+00, double %sub.i) #20
  %neg.i176 = fmul double %Z.coerce1, -0.000000e+00
  %19 = tail call double @llvm.fmuladd.f64(double %Z.coerce0, double 1.200000e+01, double %neg.i176) #20
  %mul7.i177 = fmul double %Z.coerce0, 0.000000e+00
  %20 = tail call double @llvm.fmuladd.f64(double %Z.coerce1, double 1.200000e+01, double %mul7.i177) #20
  %mul5.i = fmul double %20, %20
  %mul6.i = fmul double %20, %18
  %21 = tail call double @llvm.fmuladd.f64(double %17, double %19, double %mul6.i) #20
  %22 = fneg double %17
  %neg.i180 = fmul double %20, %22
  %23 = tail call double @llvm.fmuladd.f64(double %18, double %19, double %neg.i180) #20
  %24 = fneg double %Z.coerce1
  %neg.i222 = fmul double %24, %Z.coerce1
  %25 = tail call double @llvm.fmuladd.f64(double %Z.coerce0, double %Z.coerce0, double %neg.i222) #20
  %mul7.i223 = fmul double %Z.coerce0, %Z.coerce1
  %26 = tail call double @llvm.fmuladd.f64(double %Z.coerce0, double %Z.coerce1, double %mul7.i223) #20
  %neg.i226 = fmul double %26, -0.000000e+00
  %27 = tail call double @llvm.fmuladd.f64(double %25, double 1.440000e+02, double %neg.i226) #20
  %mul7.i227 = fmul double %25, 0.000000e+00
  %28 = tail call double @llvm.fmuladd.f64(double %26, double 1.440000e+02, double %mul7.i227) #20
  %sub6.i231 = fsub double 0.000000e+00, %28
  %mul5.i234 = fmul double %sub6.i231, %sub6.i231
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  %29 = tail call double @llvm.fmuladd.f64(double %19, double %19, double %mul5.i) #20
  %div.i = fdiv double %21, %29
  %div9.i = fdiv double %23, %29
  %neg.i183 = fmul double %add6.i246, %24
  %30 = tail call double @llvm.fmuladd.f64(double %Z.coerce0, double %add.i245, double %neg.i183) #20
  %mul7.i184 = fmul double %add.i245, %Z.coerce1
  %31 = tail call double @llvm.fmuladd.f64(double %Z.coerce0, double %add6.i246, double %mul7.i184) #20
  %neg.i187 = fmul double %31, -8.124330e+01
  %32 = tail call double @llvm.fmuladd.f64(double %30, double 0.000000e+00, double %neg.i187) #20
  %mul7.i188 = fmul double %30, 8.124330e+01
  %33 = tail call double @llvm.fmuladd.f64(double %31, double 0.000000e+00, double %mul7.i188) #20
  %add.i = fadd double %div.i, %32
  %add6.i = fadd double %div9.i, %33
  br label %cleanup

for.body:                                         ; preds = %if.then, %for.body
  %sum.sroa.0.0300 = phi double [ 0.000000e+00, %if.then ], [ %add.i245, %for.body ]
  %sum.sroa.6.0299 = phi double [ 0.000000e+00, %if.then ], [ %add6.i246, %for.body ]
  %n.0298 = phi i32 [ 0, %if.then ], [ %inc, %for.body ]
  %arrayidx = getelementptr inbounds [10 x double], [10 x double] addrspace(3)* %neg_1n_on_stack, i32 0, i32 %n.0298
  %34 = load double, double addrspace(3)* %arrayidx, align 8, !tbaa !52
  %call.i.i209 = tail call double @__ocml_cos_f64(double noundef %13) #24
  %call.i19.i210 = tail call double @__ocml_sin_f64(double noundef %13) #24
  %neg.i.i211 = fmul double %call.i19.i210, -0.000000e+00
  %35 = tail call double @llvm.fmuladd.f64(double %mul11.i.i, double %call.i.i209, double %neg.i.i211) #20
  %mul7.i20.i212 = fmul double %call.i.i209, 0.000000e+00
  %36 = tail call double @llvm.fmuladd.f64(double %mul11.i.i, double %call.i19.i210, double %mul7.i20.i212) #20
  %neg.i215 = fmul double %36, -0.000000e+00
  %37 = tail call double @llvm.fmuladd.f64(double %34, double %35, double %neg.i215) #20
  %mul7.i216 = fmul double %35, 0.000000e+00
  %38 = tail call double @llvm.fmuladd.f64(double %34, double %36, double %mul7.i216) #20
  %sub.i219 = fadd double %37, -1.000000e+00
  %arrayidx25 = getelementptr inbounds [10 x double], [10 x double] addrspace(3)* %denominator_left_on_stack, i32 0, i32 %n.0298
  %39 = load double, double addrspace(3)* %arrayidx25, align 8, !tbaa !52
  %sub.i230 = fsub double %39, %27
  %arrayidx34 = getelementptr inbounds [10 x double], [10 x double] addrspace(3)* %an_on_stack, i32 0, i32 %n.0298
  %40 = load double, double addrspace(3)* %arrayidx34, align 8, !tbaa !52
  %41 = tail call double @llvm.fmuladd.f64(double %sub.i230, double %sub.i230, double %mul5.i234) #20
  %mul6.i235 = fmul double %sub6.i231, %38
  %42 = tail call double @llvm.fmuladd.f64(double %sub.i219, double %sub.i230, double %mul6.i235) #20
  %div.i236 = fdiv double %42, %41
  %43 = fneg double %sub.i219
  %neg.i237 = fmul double %sub6.i231, %43
  %44 = tail call double @llvm.fmuladd.f64(double %38, double %sub.i230, double %neg.i237) #20
  %div9.i238 = fdiv double %44, %41
  %neg.i241 = fmul double %div9.i238, -0.000000e+00
  %45 = tail call double @llvm.fmuladd.f64(double %40, double %div.i236, double %neg.i241) #20
  %mul7.i242 = fmul double %div.i236, 0.000000e+00
  %46 = tail call double @llvm.fmuladd.f64(double %40, double %div9.i238, double %mul7.i242) #20
  %add.i245 = fadd double %sum.sroa.0.0300, %45
  %add6.i246 = fadd double %sum.sroa.6.0299, %46
  %inc = add nuw nsw i32 %n.0298, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body

if.else:                                          ; preds = %entry
  %47 = fneg double %Z.coerce1
  %neg.i249 = fmul double %47, %Z.coerce1
  %48 = tail call double @llvm.fmuladd.f64(double %Z.coerce0, double %Z.coerce0, double %neg.i249) #20
  %mul7.i250 = fmul double %Z.coerce0, %Z.coerce1
  %49 = tail call double @llvm.fmuladd.f64(double %Z.coerce0, double %Z.coerce1, double %mul7.i250) #20
  %50 = tail call double @llvm.fmuladd.f64(double %Z.coerce0, double 0.000000e+00, double %47) #20
  %mul7.i253 = fmul double %Z.coerce1, 0.000000e+00
  %51 = fadd double %mul7.i253, %Z.coerce0
  %sub.i256 = fadd double %48, 0xBFD19DC7AFDB7B46
  %mul5.i259 = fmul double %49, %49
  %52 = tail call double @llvm.fmuladd.f64(double %sub.i256, double %sub.i256, double %mul5.i259) #20
  %mul6.i260 = fmul double %49, 0.000000e+00
  %53 = tail call double @llvm.fmuladd.f64(double %sub.i256, double 0x3FE065C77CDFFF0D, double %mul6.i260) #20
  %div.i261 = fdiv double %53, %52
  %neg.i262 = fmul double %49, 0xBFE065C77CDFFF0D
  %54 = tail call double @llvm.fmuladd.f64(double %sub.i256, double 0.000000e+00, double %neg.i262) #20
  %div9.i263 = fdiv double %54, %52
  %sub.i266 = fadd double %48, 0xC005CC470A049097
  %55 = tail call double @llvm.fmuladd.f64(double %sub.i266, double %sub.i266, double %mul5.i259) #20
  %56 = tail call double @llvm.fmuladd.f64(double %sub.i266, double 0x3FAA80FD3629C600, double %mul6.i260) #20
  %div.i271 = fdiv double %56, %55
  %neg.i272 = fmul double %49, 0xBFAA80FD3629C600
  %57 = tail call double @llvm.fmuladd.f64(double %sub.i266, double 0.000000e+00, double %neg.i272) #20
  %div9.i273 = fdiv double %57, %55
  %add.i276 = fadd double %div.i261, %div.i271
  %add6.i277 = fadd double %div9.i263, %div9.i273
  %58 = fneg double %51
  %neg.i280 = fmul double %add6.i277, %58
  %59 = tail call double @llvm.fmuladd.f64(double %50, double %add.i276, double %neg.i280) #20
  %mul7.i281 = fmul double %51, %add.i276
  %60 = tail call double @llvm.fmuladd.f64(double %50, double %add6.i277, double %mul7.i281) #20
  br label %cleanup

cleanup:                                          ; preds = %if.else, %for.cond.cleanup
  %add.i.pn = phi double [ %add.i, %for.cond.cleanup ], [ %59, %if.else ]
  %add6.i.pn = phi double [ %add6.i, %for.cond.cleanup ], [ %60, %if.else ]
  %cmp4.i.i.i = icmp ult i8 addrspace(3)* %arrayidx3.i.i.i.i168, getelementptr inbounds (%"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 0)
  br i1 %cmp4.i.i.i, label %if.then.i.i.i, label %__kmpc_free_shared.exit

if.then.i.i.i:                                    ; preds = %cleanup
  %61 = load i8, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %sub.i.i.i = add i8 %61, -80
  store i8 %sub.i.i.i, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  br label %__kmpc_free_shared.exit

__kmpc_free_shared.exit:                          ; preds = %cleanup, %if.then.i.i.i
  %cmp4.i.i.i285 = icmp ult i8 addrspace(3)* %arrayidx3.i.i.i.i153, getelementptr inbounds (%"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 0)
  br i1 %cmp4.i.i.i285, label %if.then.i.i.i289, label %__kmpc_free_shared.exit290

if.then.i.i.i289:                                 ; preds = %__kmpc_free_shared.exit
  %62 = load i8, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %sub.i.i.i288 = add i8 %62, -80
  store i8 %sub.i.i.i288, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  br label %__kmpc_free_shared.exit290

__kmpc_free_shared.exit290:                       ; preds = %__kmpc_free_shared.exit, %if.then.i.i.i289
  %cmp4.i.i.i292 = icmp ult i8 addrspace(3)* %arrayidx3.i.i.i.i, getelementptr inbounds (%"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 0)
  br i1 %cmp4.i.i.i292, label %if.then.i.i.i296, label %__kmpc_free_shared.exit297

if.then.i.i.i296:                                 ; preds = %__kmpc_free_shared.exit290
  %63 = load i8, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  %sub.i.i.i295 = add i8 %63, -80
  store i8 %sub.i.i.i295, i8 addrspace(3)* %arrayidx.i.i.i, align 1, !tbaa !11
  br label %__kmpc_free_shared.exit297

__kmpc_free_shared.exit297:                       ; preds = %__kmpc_free_shared.exit290, %if.then.i.i.i296
  %.fca.0.insert.i191.pn = insertvalue %struct.RSComplex undef, double %add.i.pn, 0
  %call46.pn = insertvalue %struct.RSComplex %.fca.0.insert.i191.pn, double %add6.i.pn, 1
  ret %struct.RSComplex %call46.pn

; uselistorder directives
  uselistorder double %Z.coerce0, { 2, 3, 4, 5, 6, 7, 12, 13, 8, 9, 10, 11, 14, 0, 15, 1, 16, 17 }
  uselistorder double %Z.coerce1, { 2, 3, 4, 5, 6, 11, 7, 8, 9, 10, 0, 12, 1, 13, 14, 15 }
  uselistorder i8 addrspace(3)* %arrayidx.i.i.i, { 1, 0, 3, 2, 5, 4, 6, 7 }
  uselistorder i8 addrspace(3)* %arrayidx3.i.i.i.i, { 1, 0, 2 }
  uselistorder i8 addrspace(3)* %arrayidx3.i.i.i.i153, { 1, 0, 2 }
  uselistorder i8 addrspace(3)* %arrayidx3.i.i.i.i168, { 1, 0, 2 }
  uselistorder double %13, { 1, 0, 3, 2 }
  uselistorder double %mul11.i.i, { 1, 0, 2, 3 }
  uselistorder double %sub.i, { 1, 0 }
  uselistorder double %17, { 1, 0 }
  uselistorder double %18, { 1, 0 }
  uselistorder double %19, { 1, 0, 3, 2 }
  uselistorder double %20, { 3, 2, 1, 0 }
  uselistorder double %25, { 1, 0 }
  uselistorder double %sub6.i231, { 3, 2, 1, 0 }
  uselistorder double %30, { 1, 0 }
  uselistorder label %for.body, { 1, 0 }
  uselistorder i32 %n.0298, { 0, 3, 2, 1 }
  uselistorder double %35, { 1, 0 }
  uselistorder double %36, { 1, 0 }
  uselistorder double %38, { 1, 0 }
  uselistorder double %sub.i230, { 3, 2, 1, 0 }
  uselistorder double %div.i236, { 1, 0 }
  uselistorder double %div9.i238, { 1, 0 }
  uselistorder double %add.i245, { 1, 0, 2 }
  uselistorder double %add6.i246, { 1, 0, 2 }
  uselistorder double %49, { 0, 4, 3, 2, 1 }
  uselistorder double %50, { 1, 0 }
  uselistorder double %add.i276, { 1, 0 }
  uselistorder double %add6.i277, { 1, 0 }
  uselistorder label %__kmpc_free_shared.exit, { 1, 0 }
  uselistorder label %__kmpc_free_shared.exit290, { 1, 0 }
  uselistorder label %__kmpc_free_shared.exit297, { 1, 0 }
}

; Function Attrs: convergent mustprogress nofree nounwind readnone willreturn
declare double @__ocml_sqrt_f64(double noundef) local_unnamed_addr #9

; Function Attrs: convergent mustprogress nofree nounwind readnone willreturn
declare double @__ocml_atan_f64(double noundef) local_unnamed_addr #9

; Function Attrs: convergent
declare double @__ocml_cos_f64(double noundef) local_unnamed_addr #10

; Function Attrs: convergent
declare double @__ocml_sin_f64(double noundef) local_unnamed_addr #10

; Function Attrs: convergent mustprogress nofree nounwind readnone willreturn
define protected double @c_abs(double %A.coerce0, double %A.coerce1) local_unnamed_addr #11 {
entry:
  %mul4 = fmul double %A.coerce1, %A.coerce1
  %0 = tail call double @llvm.fmuladd.f64(double %A.coerce0, double %A.coerce0, double %mul4)
  %call.i = tail call double @__ocml_sqrt_f64(double noundef %0) #23
  ret double %call.i

; uselistorder directives
  uselistorder double %A.coerce0, { 1, 0 }
  uselistorder double %A.coerce1, { 1, 0 }
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
define protected %struct.RSComplex @c_div(double %A.coerce0, double %A.coerce1, double %B.coerce0, double %B.coerce1) local_unnamed_addr #7 {
entry:
  %mul5 = fmul double %B.coerce1, %B.coerce1
  %0 = tail call double @llvm.fmuladd.f64(double %B.coerce0, double %B.coerce0, double %mul5)
  %mul6 = fmul double %A.coerce1, %B.coerce1
  %1 = tail call double @llvm.fmuladd.f64(double %A.coerce0, double %B.coerce0, double %mul6)
  %div = fdiv double %1, %0
  %2 = fneg double %A.coerce0
  %neg = fmul double %2, %B.coerce1
  %3 = tail call double @llvm.fmuladd.f64(double %A.coerce1, double %B.coerce0, double %neg)
  %div9 = fdiv double %3, %0
  %.fca.0.insert = insertvalue %struct.RSComplex poison, double %div, 0
  %.fca.1.insert = insertvalue %struct.RSComplex %.fca.0.insert, double %div9, 1
  ret %struct.RSComplex %.fca.1.insert

; uselistorder directives
  uselistorder double %A.coerce1, { 1, 0 }
  uselistorder double %B.coerce0, { 3, 2, 1, 0 }
  uselistorder double %B.coerce1, { 0, 3, 2, 1 }
  uselistorder double %0, { 1, 0 }
}

; Function Attrs: convergent nounwind
define protected %struct.RSComplex @fast_cexp(double %z.coerce0, double %z.coerce1) local_unnamed_addr #5 {
entry:
  %0 = tail call double @llvm.fmuladd.f64(double %z.coerce0, double 0x3F30000000000000, double 1.000000e+00) #20
  %mul.i = fmul double %0, %0
  %mul1.i = fmul double %mul.i, %mul.i
  %mul2.i = fmul double %mul1.i, %mul1.i
  %mul3.i = fmul double %mul2.i, %mul2.i
  %mul4.i = fmul double %mul3.i, %mul3.i
  %mul5.i = fmul double %mul4.i, %mul4.i
  %mul6.i = fmul double %mul5.i, %mul5.i
  %mul7.i = fmul double %mul6.i, %mul6.i
  %mul8.i = fmul double %mul7.i, %mul7.i
  %mul9.i = fmul double %mul8.i, %mul8.i
  %mul10.i = fmul double %mul9.i, %mul9.i
  %mul11.i = fmul double %mul10.i, %mul10.i
  %call.i = tail call double @__ocml_cos_f64(double noundef %z.coerce1) #24
  %call.i19 = tail call double @__ocml_sin_f64(double noundef %z.coerce1) #24
  %neg.i = fmul double %call.i19, -0.000000e+00
  %1 = tail call double @llvm.fmuladd.f64(double %mul11.i, double %call.i, double %neg.i) #20
  %mul7.i20 = fmul double %call.i, 0.000000e+00
  %2 = tail call double @llvm.fmuladd.f64(double %mul11.i, double %call.i19, double %mul7.i20) #20
  %.fca.0.insert.i = insertvalue %struct.RSComplex poison, double %1, 0
  %.fca.1.insert.i = insertvalue %struct.RSComplex %.fca.0.insert.i, double %2, 1
  ret %struct.RSComplex %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn
define protected %struct.RSComplex @c_add(double %A.coerce0, double %A.coerce1, double %B.coerce0, double %B.coerce1) local_unnamed_addr #8 {
entry:
  %add = fadd double %A.coerce0, %B.coerce0
  %add6 = fadd double %A.coerce1, %B.coerce1
  %.fca.0.insert = insertvalue %struct.RSComplex poison, double %add, 0
  %.fca.1.insert = insertvalue %struct.RSComplex %.fca.0.insert, double %add6, 1
  ret %struct.RSComplex %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
define protected double @fast_exp(double noundef %x) local_unnamed_addr #7 {
entry:
  %0 = tail call double @llvm.fmuladd.f64(double %x, double 0x3F30000000000000, double 1.000000e+00)
  %mul = fmul double %0, %0
  %mul1 = fmul double %mul, %mul
  %mul2 = fmul double %mul1, %mul1
  %mul3 = fmul double %mul2, %mul2
  %mul4 = fmul double %mul3, %mul3
  %mul5 = fmul double %mul4, %mul4
  %mul6 = fmul double %mul5, %mul5
  %mul7 = fmul double %mul6, %mul6
  %mul8 = fmul double %mul7, %mul7
  %mul9 = fmul double %mul8, %mul8
  %mul10 = fmul double %mul9, %mul9
  %mul11 = fmul double %mul10, %mul10
  ret double %mul11
}

; Function Attrs: cold convergent mustprogress noinline nounwind optnone
define weak hidden void @_ZN4_OMP9keepAliveEv() #12 {
entry:
  call fastcc void @__kmpc_get_hardware_thread_id_in_block() #25
  %call1 = call fastcc i32 @__kmpc_get_hardware_num_threads_in_block() #25
  call fastcc void @__kmpc_barrier_simple_spmd() #25
  call fastcc void @__kmpc_barrier_simple_generic() #25
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
define internal fastcc void @__kmpc_get_hardware_thread_id_in_block() unnamed_addr #13 {
entry:
  %0 = tail call i32 @llvm.amdgcn.workitem.id.x() #20, !range !8
  %1 = tail call i32 @llvm.amdgcn.workgroup.id.x() #20
  %2 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #20
  %3 = getelementptr i8, i8 addrspace(4)* %2, i64 12
  %4 = bitcast i8 addrspace(4)* %3 to i32 addrspace(4)*
  %5 = load i32, i32 addrspace(4)* %4, align 4, !invariant.load !9
  %6 = getelementptr i8, i8 addrspace(4)* %2, i64 4
  %7 = bitcast i8 addrspace(4)* %6 to i16 addrspace(4)*
  %8 = load i16, i16 addrspace(4)* %7, align 4, !range !10, !invariant.load !9
  %conv.i.i8.i = zext i16 %8 to i32
  %mul.i.i9.i = mul i32 %1, %conv.i.i8.i
  %sub.i.i10.i = sub i32 %5, %mul.i.i9.i
  %cmp.i.i11.i = icmp ult i32 %sub.i.i10.i, %conv.i.i8.i
  %cond.i.i12.i = select i1 %cmp.i.i11.i, i32 %sub.i.i10.i, i32 %conv.i.i8.i
  %cmp4.i = icmp ult i32 %0, %cond.i.i12.i
  tail call void @llvm.assume(i1 %cmp4.i) #20
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
define internal fastcc i32 @__kmpc_get_hardware_num_threads_in_block() unnamed_addr #7 {
entry:
  %0 = tail call i32 @llvm.amdgcn.workgroup.id.x() #20
  %1 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #20
  %2 = getelementptr i8, i8 addrspace(4)* %1, i64 12
  %3 = bitcast i8 addrspace(4)* %2 to i32 addrspace(4)*
  %4 = load i32, i32 addrspace(4)* %3, align 4, !invariant.load !9
  %5 = getelementptr i8, i8 addrspace(4)* %1, i64 4
  %6 = bitcast i8 addrspace(4)* %5 to i16 addrspace(4)*
  %7 = load i16, i16 addrspace(4)* %6, align 4, !range !10, !invariant.load !9
  %conv.i.i = zext i16 %7 to i32
  %mul.i.i = mul i32 %0, %conv.i.i
  %sub.i.i = sub i32 %4, %mul.i.i
  %cmp.i.i = icmp ult i32 %sub.i.i, %conv.i.i
  %cond.i.i = select i1 %cmp.i.i, i32 %sub.i.i, i32 %conv.i.i
  ret i32 %cond.i.i
}

; Function Attrs: convergent mustprogress nounwind willreturn
define internal fastcc void @__kmpc_barrier_simple_spmd() unnamed_addr #14 {
entry:
  tail call fastcc void @_ZN4_OMP11synchronize14threadsAlignedEv() #26
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
define internal fastcc void @__kmpc_barrier_simple_generic() unnamed_addr #14 {
entry:
  tail call void @llvm.amdgcn.s.barrier() #20
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #15

; Function Attrs: convergent mustprogress noinline nounwind willreturn
define internal fastcc void @_ZN4_OMP11synchronize14threadsAlignedEv() unnamed_addr #16 {
entry:
  tail call void @llvm.amdgcn.s.barrier() #27
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #6

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #6

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #6

; Function Attrs: inaccessiblememonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #18

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #18

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p3i8.p0i8.i64(i8 addrspace(3)* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #19

; uselistorder directives
uselistorder [10 x double]* @constinit, { 2, 0, 1 }
uselistorder [10 x double]* @constinit.2, { 2, 0, 1 }
uselistorder [10 x double]* @constinit.3, { 2, 0, 1 }
uselistorder %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, { 13, 15, 14, 16, 6, 7, 9, 10, 11, 8, 12, 1, 2, 3, 4, 0, 5, 17, 18, 23, 19, 21, 22, 20, 24 }
uselistorder i32 0, { 61, 62, 63, 60, 67, 64, 69, 65, 68, 66, 70, 71, 72, 73, 191, 38, 42, 39, 162, 163, 164, 165, 166, 167, 161, 41, 40, 43, 44, 48, 45, 50, 51, 52, 49, 53, 54, 55, 56, 57, 58, 169, 170, 171, 172, 173, 174, 168, 47, 46, 59, 6, 7, 8, 9, 10, 11, 12, 13, 14, 19, 20, 21, 16, 17, 18, 15, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 2, 3, 5, 4, 37, 74, 76, 75, 77, 114, 113, 109, 101, 102, 103, 104, 105, 106, 107, 108, 93, 85, 94, 95, 96, 97, 98, 99, 100, 0, 110, 86, 87, 111, 112, 115, 79, 92, 78, 91, 116, 133, 125, 126, 127, 128, 129, 130, 131, 132, 117, 88, 118, 119, 120, 121, 122, 123, 124, 1, 134, 89, 90, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 82, 83, 177, 178, 179, 180, 181, 182, 183, 80, 184, 185, 81, 186, 187, 188, 189, 190, 175, 176, 84, 192, 193, 194 }
uselistorder i32 1, { 145, 27, 29, 30, 31, 28, 146, 144, 20, 128, 129, 130, 131, 132, 133, 127, 21, 22, 147, 23, 24, 135, 136, 137, 138, 139, 140, 134, 25, 26, 148, 0, 1, 2, 3, 4, 5, 6, 7, 9, 10, 8, 11, 12, 13, 14, 15, 16, 17, 18, 149, 19, 32, 33, 70, 67, 59, 60, 61, 62, 63, 64, 65, 66, 68, 69, 49, 50, 48, 51, 52, 53, 54, 55, 56, 57, 58, 71, 43, 72, 73, 74, 47, 46, 35, 75, 103, 98, 95, 87, 88, 89, 90, 91, 92, 93, 94, 96, 97, 77, 78, 76, 79, 80, 81, 82, 83, 84, 85, 86, 99, 44, 100, 101, 102, 34, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 45, 42, 38, 142, 39, 40, 41, 143, 141, 37, 36, 122, 123, 124, 125, 126 }
uselistorder i64 12, { 7, 6, 3, 1, 2, 0, 4, 5 }
uselistorder i64 4, { 24, 23, 3, 1, 2, 0, 4, 20, 5, 8, 12, 11, 16, 17, 18, 19, 13, 15, 10, 9, 7, 6, 21, 22, 14 }
uselistorder i8 0, { 1, 0 }
uselistorder i8 addrspace(3)* getelementptr inbounds (%"struct.(anonymous namespace)::SharedMemorySmartStackTy", %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE, i32 0, i32 1, i32 0), { 13, 12, 11, 6, 8, 9, 10, 7, 1, 2, 3, 4, 5, 0, 14, 16, 15 }
uselistorder i32 addrspace(3)* getelementptr inbounds (%"struct.(anonymous namespace)::TeamStateTy", %"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE, i32 0, i32 0, i32 1), { 2, 1, 3, 0 }
uselistorder i32 2, { 8, 31, 32, 30, 6, 34, 35, 33, 7, 0, 1, 2, 3, 4, 5, 9, 18, 19, 20, 21, 14, 15, 16, 17, 12, 26, 27, 28, 29, 22, 23, 24, 25, 13, 11, 10, 36 }
uselistorder i32 addrspace(3)* getelementptr inbounds (%"struct.(anonymous namespace)::TeamStateTy", %"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE, i32 0, i32 0, i32 2), { 1, 0 }
uselistorder i32 3, { 8, 29, 30, 28, 6, 32, 33, 31, 7, 0, 1, 2, 3, 4, 5, 9, 16, 17, 18, 19, 12, 13, 14, 15, 10, 24, 25, 26, 27, 20, 21, 22, 23, 11, 34 }
uselistorder i32 4, { 15, 16, 0, 1, 2, 10, 9, 7, 12, 11, 8, 3, 4, 5, 13, 14, 6, 17 }
uselistorder i32 addrspace(3)* getelementptr inbounds (%"struct.(anonymous namespace)::TeamStateTy", %"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE, i32 0, i32 1), { 1, 2, 3, 0 }
uselistorder %"struct.(anonymous namespace)::ThreadStateTy"* null, { 2, 3, 4, 5, 0, 1 }
uselistorder i64 0, { 10, 11, 0, 1, 2, 12, 90, 3, 13, 34, 35, 7, 32, 33, 29, 30, 31, 6, 27, 36, 4, 37, 88, 89, 47, 43, 44, 9, 41, 42, 38, 39, 40, 8, 28, 45, 5, 46, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14 }
uselistorder i32 10, { 2, 1, 0, 3, 7, 5, 8, 6, 4 }
uselistorder i32 16, { 3, 4, 2, 0, 1, 5, 6 }
uselistorder i32 8, { 3, 4, 2, 0, 1, 5, 6, 9, 10, 7, 8 }
uselistorder i32 6, { 0, 3, 4, 2, 1 }
uselistorder i32 7, { 0, 2, 3, 1 }
uselistorder i64 1, { 15, 14, 44, 0, 45, 1, 2, 13, 16, 43, 17, 40, 41, 42, 3, 4, 20, 10, 9, 21, 22, 18, 23, 24, 25, 5, 6, 26, 12, 11, 27, 28, 19, 29, 30, 31, 7, 8, 32, 33, 34, 35, 36, 37, 38, 39 }
uselistorder i64 2, { 2, 1, 16, 17, 0, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 }
uselistorder i64 3, { 2, 1, 13, 14, 0, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 }
uselistorder i8 addrspace(3)* bitcast (%"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE to i8 addrspace(3)*), { 4, 3, 2, 1, 0, 5 }
uselistorder i8* addrspacecast (i8 addrspace(3)* bitcast (%"struct.(anonymous namespace)::TeamStateTy" addrspace(3)* @_ZN12_GLOBAL__N_19TeamStateE to i8 addrspace(3)*) to i8*), { 9, 8, 7, 6, 5, 4, 3, 2, 0, 1 }
uselistorder i16 2048, { 3, 1, 2, 0, 4, 5 }
uselistorder i16 4080, { 3, 1, 2, 0, 4, 5 }
uselistorder i1 false, { 8, 7, 6, 3, 4, 5, 0, 1, 2, 9, 10 }
uselistorder i32 24, { 3, 4, 2, 0, 1, 5, 6 }
uselistorder i1 icmp eq (%"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* addrspacecast (%"struct.(anonymous namespace)::SharedMemorySmartStackTy"* null to %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)*), %"struct.(anonymous namespace)::SharedMemorySmartStackTy" addrspace(3)* @_ZN12_GLOBAL__N_122SharedMemorySmartStackE), { 3, 2, 1, 0 }
uselistorder i64 2806196910506780709, { 3, 8, 0, 4, 5, 1, 6, 7, 2 }
uselistorder i64 9223372036854775807, { 0, 7, 8, 9, 1, 2, 3, 4, 5, 6 }
uselistorder double 0x3C00000000000000, { 0, 5, 1, 2, 3, 4 }
uselistorder double 5.200000e-02, { 0, 3, 1, 2 }
uselistorder double 0.000000e+00, { 86, 73, 74, 75, 76, 77, 78, 81, 82, 66, 65, 67, 68, 79, 80, 83, 69, 70, 84, 85, 71, 72, 40, 38, 39, 41, 58, 59, 60, 61, 62, 46, 47, 48, 42, 43, 44, 45, 49, 50, 51, 52, 53, 54, 55, 56, 57, 63, 64, 11, 12, 13, 31, 32, 33, 34, 35, 19, 20, 21, 15, 16, 17, 18, 22, 23, 24, 25, 26, 27, 28, 29, 30, 36, 37, 14, 8, 9, 10, 149, 87, 88, 89, 90, 120, 121, 122, 113, 114, 115, 116, 117, 104, 105, 106, 91, 92, 99, 100, 101, 102, 103, 107, 108, 109, 110, 111, 112, 118, 119, 0, 1, 2, 3, 123, 93, 94, 95, 96, 145, 146, 147, 138, 139, 140, 141, 142, 129, 130, 131, 97, 98, 124, 125, 126, 127, 128, 132, 133, 134, 135, 136, 137, 143, 144, 4, 5, 6, 7, 148 }
uselistorder i64 64, { 2, 3, 0, 1, 6, 7, 4, 5 }
uselistorder double 1.000000e+00, { 17, 7, 5, 6, 16, 3, 4, 18, 0, 1, 2, 11, 8, 9, 10, 15, 12, 13, 14 }
uselistorder double 2.000000e+00, { 12, 13, 14, 31, 4, 5, 6, 7, 8, 9, 10, 11, 0, 1, 2, 3, 19, 20, 21, 22, 15, 16, 17, 18, 27, 28, 29, 30, 23, 24, 25, 26 }
uselistorder double 3.000000e+00, { 6, 7, 2, 3, 4, 5, 0, 1, 10, 11, 8, 9, 14, 15, 12, 13 }
uselistorder double 1.500000e+01, { 6, 7, 2, 3, 4, 5, 0, 1, 10, 11, 8, 9, 14, 15, 12, 13 }
uselistorder double -6.000000e+00, { 3, 1, 2, 0, 5, 4, 7, 6 }
uselistorder double -0.000000e+00, { 22, 16, 18, 19, 17, 20, 21, 8, 10, 11, 12, 13, 14, 15, 9, 0, 1, 2, 3, 5, 4, 6, 7, 30, 25, 26, 27, 23, 24, 28, 29, 38, 33, 34, 35, 31, 32, 36, 37 }
uselistorder double 5.000000e-01, { 2, 3, 0, 1, 4, 5, 6, 7 }
uselistorder double 6.000000e+00, { 4, 1, 0, 2, 3 }
uselistorder double -1.200000e+01, { 2, 1, 0, 3, 4 }
uselistorder double 1.200000e+01, { 6, 7, 8, 4, 3, 5, 0, 1, 2, 9, 10, 11, 12, 13, 14 }
uselistorder double 0x3F30000000000000, { 6, 3, 2, 1, 0, 4, 5 }
uselistorder double 1.440000e+02, { 4, 5, 2, 3, 0, 1, 6, 7, 8, 9 }
uselistorder double -8.124330e+01, { 2, 1, 0, 3, 4 }
uselistorder double 8.124330e+01, { 2, 1, 0, 3, 4 }
uselistorder double -1.000000e+00, { 2, 1, 0, 3, 4 }
uselistorder double 0xBFD19DC7AFDB7B46, { 2, 1, 0, 3, 4 }
uselistorder double 0x3FE065C77CDFFF0D, { 2, 1, 0, 3, 4 }
uselistorder double 0xBFE065C77CDFFF0D, { 2, 1, 0, 3, 4 }
uselistorder double 0xC005CC470A049097, { 2, 1, 0, 3, 4 }
uselistorder double 0x3FAA80FD3629C600, { 2, 1, 0, 3, 4 }
uselistorder double 0xBFAA80FD3629C600, { 2, 1, 0, 3, 4 }
uselistorder i1 icmp ne (i8* getelementptr inbounds ([47 x i8], [47 x i8]* addrspacecast ([47 x i8] addrspace(4)* @.str.12 to [47 x i8]*), i64 0, i64 0), i8* null), { 2, 1, 0 }
uselistorder i64 8, { 1, 0 }
uselistorder void (i64, i8 addrspace(5)*)* @llvm.lifetime.end.p5i8, { 2, 3, 1, 0 }
uselistorder i32 32, { 1, 2, 0, 3 }
uselistorder i32 40, { 1, 2, 0, 3 }
uselistorder i32 48, { 1, 2, 0, 3 }
uselistorder i32 56, { 1, 2, 0, 3 }
uselistorder i8 -96, { 2, 1, 0, 3 }
uselistorder i8 64, { 1, 2, 0 }
uselistorder i8 80, { 2, 1, 0 }
uselistorder i8 -16, { 2, 1, 0 }
uselistorder i8* bitcast ([10 x double]* @constinit to i8*), { 2, 1, 0 }
uselistorder i64 80, { 8, 7, 6, 3, 4, 5, 0, 1, 2 }
uselistorder i8* bitcast ([10 x double]* @constinit.2 to i8*), { 2, 1, 0 }
uselistorder i8* bitcast ([10 x double]* @constinit.3 to i8*), { 2, 1, 0 }
uselistorder i8 -80, { 8, 7, 6, 5, 4, 3, 2, 1, 0 }
uselistorder i8 -64, { 1, 2, 0 }
uselistorder double (double, double, double)* @llvm.fmuladd.f64, { 311, 169, 170, 171, 312, 313, 314, 315, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 148, 149, 150, 151, 152, 153, 154, 155, 158, 144, 145, 146, 147, 156, 157, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 316, 317, 172, 173, 174, 310, 293, 292, 291, 290, 289, 288, 271, 270, 269, 268, 267, 266, 265, 264, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 263, 262, 261, 260, 259, 258, 257, 256, 255, 287, 286, 285, 284, 283, 282, 281, 280, 279, 278, 277, 276, 275, 274, 273, 272, 309, 308, 307, 302, 301, 300, 299, 298, 297, 296, 295, 294, 306, 305, 304, 303, 242, 225, 224, 223, 222, 221, 220, 203, 202, 201, 200, 199, 198, 197, 196, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 195, 194, 193, 192, 191, 190, 189, 188, 187, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 241, 240, 239, 234, 233, 232, 231, 230, 229, 228, 227, 226, 238, 237, 236, 235, 12, 63, 62, 61, 60, 59, 58, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 20, 19, 18, 17, 16, 15, 14, 13, 29, 28, 27, 26, 25, 24, 23, 22, 21, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 11, 10, 9, 8, 7, 6, 5, 4, 3, 318, 2, 1, 0, 127, 126, 125, 124, 123, 122, 110, 109, 108, 107, 106, 105, 104, 102, 99, 98, 97, 96, 103, 101, 100, 86, 85, 84, 83, 82, 95, 94, 93, 92, 91, 90, 89, 88, 87, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 81, 80, 79, 78, 77, 76, 75, 74, 71, 73, 72, 70, 69, 68, 67, 66, 65, 64 }
uselistorder %struct.RSComplex poison, { 1, 0, 2, 3, 4 }
uselistorder double (double)* @__ocml_sqrt_f64, { 6, 12, 11, 13, 9, 8, 10, 1, 0, 4, 3, 2, 7, 5 }
uselistorder double (double)* @__ocml_atan_f64, { 20, 19, 18, 23, 22, 21, 14, 13, 12, 17, 16, 15, 2, 1, 0, 8, 7, 6, 5, 4, 3, 11, 10, 9 }
uselistorder double (double)* @__ocml_cos_f64, { 18, 38, 37, 36, 35, 34, 33, 42, 41, 40, 39, 28, 27, 26, 25, 24, 23, 32, 31, 30, 29, 5, 4, 3, 2, 1, 0, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 22, 21, 20, 19, 17, 16 }
uselistorder double (double)* @__ocml_sin_f64, { 18, 38, 37, 36, 35, 34, 33, 42, 41, 40, 39, 28, 27, 26, 25, 24, 23, 32, 31, 30, 29, 5, 4, 3, 2, 1, 0, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 22, 21, 20, 19, 17, 16 }
uselistorder void ()* @_ZN4_OMP11synchronize14threadsAlignedEv, { 0, 4, 3, 2, 1, 5 }
uselistorder i32 ()* @llvm.amdgcn.workgroup.id.x, { 5, 4, 0, 2, 1, 3, 6, 7 }
uselistorder i8 addrspace(4)* ()* @llvm.amdgcn.dispatch.ptr, { 5, 4, 0, 2, 1, 3, 6, 7 }
uselistorder i32 ()* @llvm.amdgcn.workitem.id.x, { 5, 4, 0, 2, 1, 3, 6 }
uselistorder void (i64, i8*)* @llvm.lifetime.start.p0i8, { 2, 3, 0, 1 }
uselistorder void (i64, i8*)* @llvm.lifetime.end.p0i8, { 2, 3, 0, 1 }
uselistorder void (i8 addrspace(3)*, i8*, i64, i1)* @llvm.memcpy.p3i8.p0i8.i64, { 9, 2, 1, 0, 5, 4, 3, 6, 7, 8 }

attributes #0 = { alwaysinline convergent norecurse nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind readnone "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" }
attributes #4 = { nofree nosync nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" }
attributes #5 = { convergent nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" }
attributes #6 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind readnone willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" }
attributes #9 = { convergent mustprogress nofree nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" }
attributes #10 = { convergent "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" }
attributes #11 = { convergent mustprogress nofree nounwind readnone willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" }
attributes #12 = { cold convergent mustprogress noinline nounwind optnone "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" }
attributes #14 = { convergent mustprogress nounwind willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" }
attributes #15 = { convergent mustprogress nounwind willreturn }
attributes #16 = { convergent mustprogress noinline nounwind willreturn "frame-pointer"="none" "llvm.assume"="ompx_aligned_barrier" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" }
attributes #17 = { inaccessiblememonly mustprogress nofree nosync nounwind willreturn }
attributes #18 = { argmemonly nofree nosync nounwind willreturn }
attributes #19 = { argmemonly nofree nounwind willreturn }
attributes #20 = { nounwind }
attributes #21 = { convergent nounwind "llvm.assume"="ompx_aligned_barrier" }
attributes #22 = { nounwind readnone willreturn }
attributes #23 = { convergent nounwind readnone willreturn }
attributes #24 = { convergent nounwind }
attributes #25 = { convergent }
attributes #26 = { convergent "llvm.assume"="ompx_aligned_barrier" }
attributes #27 = { nounwind "llvm.assume"="ompx_aligned_barrier" }

!omp_offload.info = !{!0}
!nvvm.annotations = !{!1}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6, !7}

!0 = !{i32 0, i32 88, i32 36586974, !"run_event_based_simulation", i32 32, i32 0}
!1 = !{void (%struct.Input*, %struct.SimulationData*, i64*, i32*)* @__omp_offloading_58_22e45de_run_event_based_simulation_l32, !"kernel", i32 1}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 7, !"openmp", i32 50}
!4 = !{i32 7, !"openmp-device", i32 50}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{!"clang version 14.0.0 (git@github.com:koparasy/ML-LLVM.git 2afbe88bd76c5f5c6a983f795f85d0c8b6600578)"}
!7 = !{!"clang version 14.0.0 (git@github.com:koparasy/ML-LLVM.git 22674f14bc86cda895622971536e52c950bb28d3)"}
!8 = !{i32 0, i32 1024}
!9 = !{}
!10 = !{i16 1, i16 1025}
!11 = !{!12, !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!15, !17, i64 0}
!15 = !{!"_ZTSN12_GLOBAL__N_111TeamStateTyE", !16, i64 0, !17, i64 24, !18, i64 32}
!16 = !{!"_ZTSN12_GLOBAL__N_110ICVStateTyE", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20}
!17 = !{!"int", !12, i64 0}
!18 = !{!"any pointer", !12, i64 0}
!19 = !{!15, !17, i64 4}
!20 = !{!15, !17, i64 8}
!21 = !{!15, !17, i64 12}
!22 = !{!15, !17, i64 16}
!23 = !{!15, !17, i64 20}
!24 = !{!15, !17, i64 24}
!25 = !{!18, !18, i64 0}
!26 = !{!27, !28, i64 8}
!27 = !{!"", !28, i64 0, !28, i64 4, !28, i64 8, !29, i64 12, !28, i64 16, !28, i64 20, !28, i64 24, !28, i64 28, !28, i64 32, !28, i64 36, !28, i64 40}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{!17, !17, i64 0}
!33 = !{i64 0, i64 4, !32, i64 4, i64 4, !32, i64 8, i64 4, !32, i64 12, i64 4, !32, i64 16, i64 4, !32, i64 20, i64 4, !32}
!34 = !{!35, !18, i64 24}
!35 = !{!"_ZTSN12_GLOBAL__N_113ThreadStateTyE", !16, i64 0, !18, i64 24}
!36 = !{i32 0, i32 -2147483648}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{!39, !40, i64 80}
!39 = !{!"", !40, i64 0, !41, i64 8, !40, i64 16, !41, i64 24, !40, i64 32, !41, i64 40, !40, i64 48, !41, i64 56, !40, i64 64, !41, i64 72, !40, i64 80, !41, i64 88, !40, i64 96, !41, i64 104, !40, i64 112, !41, i64 120, !28, i64 128, !28, i64 132, !28, i64 136, !40, i64 144, !41, i64 152, !40, i64 160, !41, i64 168}
!40 = !{!"any pointer", !29, i64 0}
!41 = !{!"long", !29, i64 0}
!42 = !{!39, !40, i64 96}
!43 = !{!39, !28, i64 128}
!44 = !{!39, !40, i64 112}
!45 = !{!39, !40, i64 16}
!46 = !{!39, !40, i64 64}
!47 = !{!39, !40, i64 48}
!48 = !{!39, !40, i64 32}
!49 = !{!39, !28, i64 136}
!50 = !{!39, !28, i64 132}
!51 = !{!28, !28, i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"double", !29, i64 0}
!54 = !{!55, !53, i64 0}
!55 = !{!"", !53, i64 0, !53, i64 8}
!56 = !{!55, !53, i64 8}
!57 = !{i64 0, i64 8, !52, i64 8, i64 8, !52, i64 16, i64 8, !52, i64 24, i64 4, !51, i64 28, i64 4, !51}
!58 = !{i64 0, i64 8, !52, i64 8, i64 8, !52, i64 16, i64 4, !51, i64 20, i64 4, !51}
!59 = !{i64 0, i64 8, !52, i64 8, i64 4, !51, i64 12, i64 4, !51}
!60 = !{i64 0, i64 8, !52, i64 8, i64 8, !52, i64 16, i64 8, !52, i64 24, i64 8, !52, i64 32, i64 8, !52, i64 40, i64 8, !52, i64 48, i64 8, !52, i64 56, i64 8, !52, i64 64, i64 2, !61}
!61 = !{!62, !62, i64 0}
!62 = !{!"short", !29, i64 0}
!63 = !{i64 0, i64 8, !52, i64 8, i64 8, !52, i64 16, i64 8, !52, i64 24, i64 8, !52, i64 32, i64 8, !52, i64 40, i64 8, !52, i64 48, i64 8, !52, i64 56, i64 2, !61}
!64 = !{i64 0, i64 8, !52, i64 8, i64 8, !52, i64 16, i64 8, !52, i64 24, i64 8, !52, i64 32, i64 8, !52, i64 40, i64 8, !52, i64 48, i64 2, !61}
!65 = !{i64 0, i64 8, !52, i64 8, i64 8, !52, i64 16, i64 8, !52, i64 24, i64 8, !52, i64 32, i64 8, !52, i64 40, i64 2, !61}
!66 = !{i64 0, i64 8, !52, i64 8, i64 8, !52, i64 16, i64 8, !52, i64 24, i64 8, !52, i64 32, i64 2, !61}
!67 = !{i64 0, i64 8, !52, i64 8, i64 8, !52, i64 16, i64 8, !52, i64 24, i64 2, !61}
!68 = !{i64 0, i64 8, !52, i64 8, i64 8, !52, i64 16, i64 2, !61}
!69 = !{i64 0, i64 8, !52, i64 8, i64 2, !61}
!70 = !{i64 0, i64 2, !61}
!71 = !{!72, !72, i64 0}
!72 = !{!"long long", !29, i64 0}
!73 = !{!74, !17, i64 8}
!74 = !{!"_ZTSN4_OMP5state9ValueRAIIINS0_5ValueIjLNS0_9ValueKindE7EEEjEE", !18, i64 0, !17, i64 8, !75, i64 12}
!75 = !{!"bool", !12, i64 0}
!76 = !{!77, !17, i64 8}
!77 = !{!"_ZTSN4_OMP5state9ValueRAIIINS0_5ValueIjLNS0_9ValueKindE2EEEjEE", !18, i64 0, !17, i64 8, !75, i64 12}
!78 = !{!79, !17, i64 8}
!79 = !{!"_ZTSN4_OMP5state9ValueRAIIINS0_5ValueIjLNS0_9ValueKindE1EEEjEE", !18, i64 0, !17, i64 8, !75, i64 12}
!80 = !{!41, !41, i64 0}
!81 = !{i32 0, i32 2048}
!82 = !{i64 0, i64 80, !83}
!83 = !{!29, !29, i64 0}

; __CLANG_OFFLOAD_BUNDLE____END__ openmp-amdgcn-amd-amdhsa-gfx906

; __CLANG_OFFLOAD_BUNDLE____START__ host-x86_64-unknown-linux-gnu
; ModuleID = '/var/tmp/koparasy/simulation-e38a0a.bc'
source_filename = "simulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.__tgt_offload_entry = type { i8*, i8*, i64, i32, i32 }
%struct.Input = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SimulationData = type { i32*, i64, i32*, i64, %struct.Pole*, i64, %struct.Window*, i64, double*, i64, i32*, i64, i32*, i64, double*, i64, i32, i32, i32, double*, i64, i32*, i64 }
%struct.Pole = type { %struct.RSComplex, %struct.RSComplex, %struct.RSComplex, %struct.RSComplex, i16 }
%struct.RSComplex = type { double, double }
%struct.Window = type { double, double, double, i32, i32 }

@__omp_adaptation_name_lookups = dso_local local_unnamed_addr global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), align 8
@__omp_adaptation_lookups = dso_local local_unnamed_addr global i8* null, align 8
@__omp_adaptation_policy_lookups = dso_local local_unnamed_addr global i32 -1, align 4
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.__omp_offloading_58_22e45de_run_event_based_simulation_l32.region_id = weak constant i8 0
@.offload_maptypes = private unnamed_addr constant [15 x i64] [i64 547, i64 32, i64 562949953421329, i64 562949953421329, i64 562949953421329, i64 562949953421329, i64 562949953421329, i64 562949953421329, i64 562949953421329, i64 562949953421329, i64 562949953421313, i64 562949953421313, i64 562949953421313, i64 34, i64 35]
@.str.5 = private unnamed_addr constant [8 x i8] c"lookups\00", align 1
@__const.fast_nuclear_W.an = private unnamed_addr constant [10 x double] [double 0x3FD1A75DA77B03AC, double 2.245740e-01, double 0x3FC467B51AFF5FC7, double 0x3FB94228EF6278F1, double 0x3FAB42D0E001DDD1, double 0x3F99A74553C72771, double 0x3F850C5AAC48F3BA, double 0x3F6E1D7984F391AA, double 0x3F52C8BE8F0B3A0A, double 3.117570e-04], align 16
@__const.fast_nuclear_W.neg_1n = private unnamed_addr constant [10 x double] [double -1.000000e+00, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00], align 16
@__const.fast_nuclear_W.denominator_left = private unnamed_addr constant [10 x double] [double 0x4023BD3CBC48F10B, double 0x4043BD3CDDD6E04C, double 0x405634E4649906CD, double 0x4063BD3D07C84B5E, double 0x406ED7AEE631F8A1, double 0x407634E48E8A71DE, double 0x407E39C504816F00, double 0x4083BD3CD35A8588, double 0x4088FB810624DD2F, double 0x408ED7AEE631F8A1], align 16
@.omp_offloading.entry_name = internal unnamed_addr constant [59 x i8] c"__omp_offloading_58_22e45de_run_event_based_simulation_l32\00"
@.omp_offloading.entry.__omp_offloading_58_22e45de_run_event_based_simulation_l32 = weak local_unnamed_addr constant %struct.__tgt_offload_entry { i8* @.__omp_offloading_58_22e45de_run_event_based_simulation_l32.region_id, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.omp_offloading.entry_name, i32 0, i32 0), i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @.omp_offloading.requires_reg, i8* null }]
@str = private unnamed_addr constant [55 x i8] c"Beginning baseline event based simulation on device...\00", align 1
@str.1 = private unnamed_addr constant [31 x i8] c"NOTE - Kernel ran on the host!\00", align 1
@str.2 = private unnamed_addr constant [31 x i8] c"Kernel ran accelerator device.\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @run_event_based_simulation(%struct.Input* noundef byval(%struct.Input) align 8 %input, %struct.SimulationData* noundef byval(%struct.SimulationData) align 8 %data, i64* nocapture noundef writeonly %vhash_result) local_unnamed_addr #0 {
entry:
  %verification = alloca i64*, align 8
  %offloaded_to_device = alloca i32, align 4
  %.offload_baseptrs = alloca [15 x i8*], align 8
  %.offload_ptrs = alloca [15 x i8*], align 8
  %.offload_sizes = alloca [15 x i64], align 8
  %puts = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([55 x i8], [55 x i8]* @str, i64 0, i64 0))
  %0 = bitcast i64** %verification to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %lookups = getelementptr inbounds %struct.Input, %struct.Input* %input, i64 0, i32 2
  %1 = load i32, i32* %lookups, align 8, !tbaa !5
  %conv = sext i32 %1 to i64
  %mul = shl nsw i64 %conv, 3
  %call1 = tail call noalias align 16 i8* @malloc(i64 noundef %mul) #4
  %2 = bitcast i64** %verification to i8**
  store i8* %call1, i8** %2, align 8, !tbaa !10
  %3 = bitcast i32* %offloaded_to_device to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4
  store i32 0, i32* %offloaded_to_device, align 4, !tbaa !12
  %n_nuclides = getelementptr inbounds %struct.Input, %struct.Input* %input, i64 0, i32 1
  %4 = load i32, i32* %n_nuclides, align 4, !tbaa !13
  %5 = load i8*, i8** @__omp_adaptation_lookups, align 8
  %apollo_region.isnull = icmp eq i8* %5, null
  br i1 %apollo_region.isnull, label %apollo.create.block, label %apollo.create.cont

apollo.create.block:                              ; preds = %entry
  %6 = load i8*, i8** @__omp_adaptation_name_lookups, align 8
  %7 = tail call i8* @__apollo_region_create(i32 2, i8* %6, i32 2) #4
  store i8* %7, i8** @__omp_adaptation_lookups, align 8, !tbaa !10
  br label %apollo.create.cont

apollo.create.cont:                               ; preds = %apollo.create.block, %entry
  %8 = phi i8* [ %7, %apollo.create.block ], [ %5, %entry ]
  tail call void @__apollo_region_begin(i8* %8) #4
  %conv4 = sitofp i32 %1 to float
  tail call void @__apollo_region_set_feature(i8* %8, float %conv4) #4
  %conv5 = sitofp i32 %4 to float
  tail call void @__apollo_region_set_feature(i8* %8, float %conv5) #4
  %9 = tail call i32 @__apollo_region_get_policy(i8* %8) #4
  store i32 %9, i32* @__omp_adaptation_policy_lookups, align 4, !tbaa !12
  switch i32 %9, label %omp.meta.user.condition.after [
    i32 0, label %omp.meta.user.condition
    i32 1, label %omp.meta.user.condition9
  ]

omp.meta.user.condition:                          ; preds = %apollo.create.cont
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, %struct.Input*, %struct.SimulationData*, i64**, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), %struct.Input* nonnull %input, %struct.SimulationData* nonnull %data, i64** nonnull %verification, i32* nonnull %offloaded_to_device)
  br label %omp.meta.user.condition.after

omp.meta.user.condition9:                         ; preds = %apollo.create.cont
  %n_poles = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 0
  %10 = load i32*, i32** %n_poles, align 8, !tbaa !14
  %length_n_poles = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 1
  %11 = load i64, i64* %length_n_poles, align 8, !tbaa !17
  %12 = shl nuw i64 %11, 2
  %n_windows = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 2
  %13 = load i32*, i32** %n_windows, align 8, !tbaa !18
  %length_n_windows = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 3
  %14 = load i64, i64* %length_n_windows, align 8, !tbaa !19
  %15 = shl nuw i64 %14, 2
  %poles = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 4
  %16 = load %struct.Pole*, %struct.Pole** %poles, align 8, !tbaa !20
  %length_poles = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 5
  %17 = load i64, i64* %length_poles, align 8, !tbaa !21
  %18 = mul nuw i64 %17, 72
  %windows = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 6
  %19 = load %struct.Window*, %struct.Window** %windows, align 8, !tbaa !22
  %length_windows = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 7
  %20 = load i64, i64* %length_windows, align 8, !tbaa !23
  %21 = shl nuw i64 %20, 5
  %pseudo_K0RS = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 8
  %22 = load double*, double** %pseudo_K0RS, align 8, !tbaa !24
  %length_pseudo_K0RS = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 9
  %23 = load i64, i64* %length_pseudo_K0RS, align 8, !tbaa !25
  %24 = shl nuw i64 %23, 3
  %num_nucs = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 10
  %25 = load i32*, i32** %num_nucs, align 8, !tbaa !26
  %length_num_nucs = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 11
  %26 = load i64, i64* %length_num_nucs, align 8, !tbaa !27
  %27 = shl nuw i64 %26, 2
  %mats = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 12
  %28 = load i32*, i32** %mats, align 8, !tbaa !28
  %length_mats = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 13
  %29 = load i64, i64* %length_mats, align 8, !tbaa !29
  %30 = shl nuw i64 %29, 2
  %concs = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 14
  %31 = load double*, double** %concs, align 8, !tbaa !30
  %length_concs = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 15
  %32 = load i64, i64* %length_concs, align 8, !tbaa !31
  %33 = shl nuw i64 %32, 3
  %max_num_nucs = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 16
  %max_num_poles = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 17
  %max_num_windows = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 18
  %34 = getelementptr i32, i32* %max_num_windows, i64 1
  %35 = ptrtoint i32* %34 to i64
  %36 = ptrtoint %struct.SimulationData* %data to i64
  %37 = sub i64 %35, %36
  %38 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_baseptrs, i64 0, i64 0
  %39 = bitcast [15 x i8*]* %.offload_baseptrs to %struct.Input**
  store %struct.Input* %input, %struct.Input** %39, align 8
  %40 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_ptrs, i64 0, i64 0
  %41 = bitcast [15 x i8*]* %.offload_ptrs to %struct.Input**
  store %struct.Input* %input, %struct.Input** %41, align 8
  %42 = getelementptr inbounds [15 x i64], [15 x i64]* %.offload_sizes, i64 0, i64 0
  store i64 44, i64* %42, align 8
  %43 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_baseptrs, i64 0, i64 1
  %44 = bitcast i8** %43 to %struct.SimulationData**
  store %struct.SimulationData* %data, %struct.SimulationData** %44, align 8
  %45 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_ptrs, i64 0, i64 1
  %46 = bitcast i8** %45 to i32***
  store i32** %n_poles, i32*** %46, align 8
  %47 = getelementptr inbounds [15 x i64], [15 x i64]* %.offload_sizes, i64 0, i64 1
  store i64 %37, i64* %47, align 8
  %48 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_baseptrs, i64 0, i64 2
  %49 = bitcast i8** %48 to i32***
  store i32** %n_poles, i32*** %49, align 8
  %50 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_ptrs, i64 0, i64 2
  %51 = bitcast i8** %50 to i32**
  store i32* %10, i32** %51, align 8
  %52 = getelementptr inbounds [15 x i64], [15 x i64]* %.offload_sizes, i64 0, i64 2
  store i64 %12, i64* %52, align 8
  %53 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_baseptrs, i64 0, i64 3
  %54 = bitcast i8** %53 to i32***
  store i32** %n_windows, i32*** %54, align 8
  %55 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_ptrs, i64 0, i64 3
  %56 = bitcast i8** %55 to i32**
  store i32* %13, i32** %56, align 8
  %57 = getelementptr inbounds [15 x i64], [15 x i64]* %.offload_sizes, i64 0, i64 3
  store i64 %15, i64* %57, align 8
  %58 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_baseptrs, i64 0, i64 4
  %59 = bitcast i8** %58 to %struct.Pole***
  store %struct.Pole** %poles, %struct.Pole*** %59, align 8
  %60 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_ptrs, i64 0, i64 4
  %61 = bitcast i8** %60 to %struct.Pole**
  store %struct.Pole* %16, %struct.Pole** %61, align 8
  %62 = getelementptr inbounds [15 x i64], [15 x i64]* %.offload_sizes, i64 0, i64 4
  store i64 %18, i64* %62, align 8
  %63 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_baseptrs, i64 0, i64 5
  %64 = bitcast i8** %63 to %struct.Window***
  store %struct.Window** %windows, %struct.Window*** %64, align 8
  %65 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_ptrs, i64 0, i64 5
  %66 = bitcast i8** %65 to %struct.Window**
  store %struct.Window* %19, %struct.Window** %66, align 8
  %67 = getelementptr inbounds [15 x i64], [15 x i64]* %.offload_sizes, i64 0, i64 5
  store i64 %21, i64* %67, align 8
  %68 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_baseptrs, i64 0, i64 6
  %69 = bitcast i8** %68 to double***
  store double** %pseudo_K0RS, double*** %69, align 8
  %70 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_ptrs, i64 0, i64 6
  %71 = bitcast i8** %70 to double**
  store double* %22, double** %71, align 8
  %72 = getelementptr inbounds [15 x i64], [15 x i64]* %.offload_sizes, i64 0, i64 6
  store i64 %24, i64* %72, align 8
  %73 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_baseptrs, i64 0, i64 7
  %74 = bitcast i8** %73 to i32***
  store i32** %num_nucs, i32*** %74, align 8
  %75 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_ptrs, i64 0, i64 7
  %76 = bitcast i8** %75 to i32**
  store i32* %25, i32** %76, align 8
  %77 = getelementptr inbounds [15 x i64], [15 x i64]* %.offload_sizes, i64 0, i64 7
  store i64 %27, i64* %77, align 8
  %78 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_baseptrs, i64 0, i64 8
  %79 = bitcast i8** %78 to i32***
  store i32** %mats, i32*** %79, align 8
  %80 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_ptrs, i64 0, i64 8
  %81 = bitcast i8** %80 to i32**
  store i32* %28, i32** %81, align 8
  %82 = getelementptr inbounds [15 x i64], [15 x i64]* %.offload_sizes, i64 0, i64 8
  store i64 %30, i64* %82, align 8
  %83 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_baseptrs, i64 0, i64 9
  %84 = bitcast i8** %83 to double***
  store double** %concs, double*** %84, align 8
  %85 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_ptrs, i64 0, i64 9
  %86 = bitcast i8** %85 to double**
  store double* %31, double** %86, align 8
  %87 = getelementptr inbounds [15 x i64], [15 x i64]* %.offload_sizes, i64 0, i64 9
  store i64 %33, i64* %87, align 8
  %88 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_baseptrs, i64 0, i64 10
  %89 = bitcast i8** %88 to %struct.SimulationData**
  store %struct.SimulationData* %data, %struct.SimulationData** %89, align 8
  %90 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_ptrs, i64 0, i64 10
  %91 = bitcast i8** %90 to i32**
  store i32* %max_num_nucs, i32** %91, align 8
  %92 = getelementptr inbounds [15 x i64], [15 x i64]* %.offload_sizes, i64 0, i64 10
  %93 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_baseptrs, i64 0, i64 11
  %94 = bitcast i8** %93 to %struct.SimulationData**
  store %struct.SimulationData* %data, %struct.SimulationData** %94, align 8
  %95 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_ptrs, i64 0, i64 11
  %96 = bitcast i8** %95 to i32**
  store i32* %max_num_poles, i32** %96, align 8
  %97 = bitcast i64* %92 to <2 x i64>*
  store <2 x i64> <i64 4, i64 4>, <2 x i64>* %97, align 8
  %98 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_baseptrs, i64 0, i64 12
  %99 = bitcast i8** %98 to %struct.SimulationData**
  store %struct.SimulationData* %data, %struct.SimulationData** %99, align 8
  %100 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_ptrs, i64 0, i64 12
  %101 = bitcast i8** %100 to i32**
  store i32* %max_num_windows, i32** %101, align 8
  %102 = getelementptr inbounds [15 x i64], [15 x i64]* %.offload_sizes, i64 0, i64 12
  store i64 4, i64* %102, align 8
  %103 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_baseptrs, i64 0, i64 13
  store i8* %call1, i8** %103, align 8
  %104 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_ptrs, i64 0, i64 13
  store i8* %call1, i8** %104, align 8
  %105 = getelementptr inbounds [15 x i64], [15 x i64]* %.offload_sizes, i64 0, i64 13
  store i64 %mul, i64* %105, align 8
  %106 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_baseptrs, i64 0, i64 14
  %107 = bitcast i8** %106 to i32**
  store i32* %offloaded_to_device, i32** %107, align 8
  %108 = getelementptr inbounds [15 x i8*], [15 x i8*]* %.offload_ptrs, i64 0, i64 14
  %109 = bitcast i8** %108 to i32**
  store i32* %offloaded_to_device, i32** %109, align 8
  %110 = getelementptr inbounds [15 x i64], [15 x i64]* %.offload_sizes, i64 0, i64 14
  store i64 4, i64* %110, align 8
  %111 = zext i32 %1 to i64
  call void @__kmpc_push_target_tripcount_mapper(%struct.ident_t* nonnull @1, i64 -1, i64 %111)
  %112 = call i32 @__tgt_target_teams_mapper(%struct.ident_t* nonnull @1, i64 -1, i8* nonnull @.__omp_offloading_58_22e45de_run_event_based_simulation_l32.region_id, i32 15, i8** nonnull %38, i8** nonnull %40, i64* nonnull %42, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @.offload_maptypes, i64 0, i64 0), i8** null, i8** null, i32 0, i32 0)
  %.not = icmp eq i32 %112, 0
  br i1 %.not, label %omp.meta.user.condition.after, label %omp_offload.failed

omp_offload.failed:                               ; preds = %omp.meta.user.condition9
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* nonnull @1, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, %struct.Input*, %struct.SimulationData*, i64*, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), %struct.Input* nonnull %input, %struct.SimulationData* nonnull %data, i8* %call1, i32* nonnull %offloaded_to_device) #4
  br label %omp.meta.user.condition.after

omp.meta.user.condition.after:                    ; preds = %apollo.create.cont, %omp.meta.user.condition9, %omp_offload.failed, %omp.meta.user.condition
  %113 = load i8*, i8** @__omp_adaptation_lookups, align 8
  call void @__apollo_region_end(i8* %113) #4
  %114 = load i32, i32* %lookups, align 8, !tbaa !5
  %115 = load i64*, i64** %verification, align 8
  %cmp3313 = icmp sgt i32 %114, 0
  br i1 %cmp3313, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %omp.meta.user.condition.after
  %wide.trip.count = zext i32 %114 to i64
  %min.iters.check = icmp ult i32 %114, 4
  br i1 %min.iters.check, label %for.body.preheader19, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292
  %116 = add nsw i64 %n.vec, -4
  %117 = lshr exact i64 %116, 2
  %118 = add nuw nsw i64 %117, 1
  %xtraiter = and i64 %118, 3
  %119 = icmp ult i64 %116, 12
  br i1 %119, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %118, 9223372036854775804
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph.new ], [ %142, %vector.body ]
  %vec.phi17 = phi <2 x i64> [ zeroinitializer, %vector.ph.new ], [ %143, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %120 = getelementptr inbounds i64, i64* %115, i64 %index
  %121 = bitcast i64* %120 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %121, align 8, !tbaa !32
  %122 = getelementptr inbounds i64, i64* %120, i64 2
  %123 = bitcast i64* %122 to <2 x i64>*
  %wide.load18 = load <2 x i64>, <2 x i64>* %123, align 8, !tbaa !32
  %124 = add <2 x i64> %wide.load, %vec.phi
  %125 = add <2 x i64> %wide.load18, %vec.phi17
  %index.next = or i64 %index, 4
  %126 = getelementptr inbounds i64, i64* %115, i64 %index.next
  %127 = bitcast i64* %126 to <2 x i64>*
  %wide.load.1 = load <2 x i64>, <2 x i64>* %127, align 8, !tbaa !32
  %128 = getelementptr inbounds i64, i64* %126, i64 2
  %129 = bitcast i64* %128 to <2 x i64>*
  %wide.load18.1 = load <2 x i64>, <2 x i64>* %129, align 8, !tbaa !32
  %130 = add <2 x i64> %wide.load.1, %124
  %131 = add <2 x i64> %wide.load18.1, %125
  %index.next.1 = or i64 %index, 8
  %132 = getelementptr inbounds i64, i64* %115, i64 %index.next.1
  %133 = bitcast i64* %132 to <2 x i64>*
  %wide.load.2 = load <2 x i64>, <2 x i64>* %133, align 8, !tbaa !32
  %134 = getelementptr inbounds i64, i64* %132, i64 2
  %135 = bitcast i64* %134 to <2 x i64>*
  %wide.load18.2 = load <2 x i64>, <2 x i64>* %135, align 8, !tbaa !32
  %136 = add <2 x i64> %wide.load.2, %130
  %137 = add <2 x i64> %wide.load18.2, %131
  %index.next.2 = or i64 %index, 12
  %138 = getelementptr inbounds i64, i64* %115, i64 %index.next.2
  %139 = bitcast i64* %138 to <2 x i64>*
  %wide.load.3 = load <2 x i64>, <2 x i64>* %139, align 8, !tbaa !32
  %140 = getelementptr inbounds i64, i64* %138, i64 2
  %141 = bitcast i64* %140 to <2 x i64>*
  %wide.load18.3 = load <2 x i64>, <2 x i64>* %141, align 8, !tbaa !32
  %142 = add <2 x i64> %wide.load.3, %136
  %143 = add <2 x i64> %wide.load18.3, %137
  %index.next.3 = add nuw i64 %index, 16
  %niter.next.3 = add nuw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !34

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %.lcssa20.ph = phi <2 x i64> [ undef, %vector.ph ], [ %142, %vector.body ]
  %.lcssa.ph = phi <2 x i64> [ undef, %vector.ph ], [ %143, %vector.body ]
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %vec.phi.unr = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %142, %vector.body ]
  %vec.phi17.unr = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %143, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %vec.phi.epil = phi <2 x i64> [ %148, %vector.body.epil ], [ %vec.phi.unr, %middle.block.unr-lcssa ]
  %vec.phi17.epil = phi <2 x i64> [ %149, %vector.body.epil ], [ %vec.phi17.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %144 = getelementptr inbounds i64, i64* %115, i64 %index.epil
  %145 = bitcast i64* %144 to <2 x i64>*
  %wide.load.epil = load <2 x i64>, <2 x i64>* %145, align 8, !tbaa !32
  %146 = getelementptr inbounds i64, i64* %144, i64 2
  %147 = bitcast i64* %146 to <2 x i64>*
  %wide.load18.epil = load <2 x i64>, <2 x i64>* %147, align 8, !tbaa !32
  %148 = add <2 x i64> %wide.load.epil, %vec.phi.epil
  %149 = add <2 x i64> %wide.load18.epil, %vec.phi17.epil
  %index.next.epil = add nuw i64 %index.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !36

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %.lcssa20 = phi <2 x i64> [ %.lcssa20.ph, %middle.block.unr-lcssa ], [ %148, %vector.body.epil ]
  %.lcssa = phi <2 x i64> [ %.lcssa.ph, %middle.block.unr-lcssa ], [ %149, %vector.body.epil ]
  %bin.rdx = add <2 x i64> %.lcssa, %.lcssa20
  %150 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader19

for.body.preheader19:                             ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %validation_hash.014.ph = phi i64 [ 0, %for.body.preheader ], [ %150, %middle.block ]
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %middle.block, %omp.meta.user.condition.after
  %validation_hash.0.lcssa = phi i64 [ 0, %omp.meta.user.condition.after ], [ %150, %middle.block ], [ %add36, %for.body ]
  %151 = load i32, i32* %offloaded_to_device, align 4, !tbaa !12
  %tobool.not = icmp eq i32 %151, 0
  %. = select i1 %tobool.not, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @str.1, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @str.2, i64 0, i64 0)
  %puts11 = call i32 @puts(i8* nonnull dereferenceable(1) %.)
  store i64 %validation_hash.0.lcssa, i64* %vhash_result, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret void

for.body:                                         ; preds = %for.body.preheader19, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader19 ]
  %validation_hash.014 = phi i64 [ %add36, %for.body ], [ %validation_hash.014.ph, %for.body.preheader19 ]
  %arrayidx35 = getelementptr inbounds i64, i64* %115, i64 %indvars.iv
  %152 = load i64, i64* %arrayidx35, align 8, !tbaa !32
  %add36 = add i64 %152, %validation_hash.014
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !39
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #2

declare i8* @__apollo_region_create(i32, i8*, i32) local_unnamed_addr

declare void @__apollo_region_begin(i8*) local_unnamed_addr

declare void @__apollo_region_set_feature(i8*, float) local_unnamed_addr

declare i32 @__apollo_region_get_policy(i8*) local_unnamed_addr

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture noundef readonly %.global_tid., i32* noalias nocapture noundef readnone %.bound_tid., %struct.Input* nocapture noundef nonnull readonly align 4 dereferenceable(44) %input, %struct.SimulationData* nocapture noundef nonnull readonly align 8 dereferenceable(176) %data, i64** nocapture noundef nonnull readonly align 8 dereferenceable(8) %verification, i32* nocapture noundef nonnull writeonly align 4 dereferenceable(4) %offloaded_to_device) #3 {
entry:
  %micro_xs.i = alloca <4 x double>, align 16
  %byval-temp25 = alloca %struct.Input, align 8
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %lookups = getelementptr inbounds %struct.Input, %struct.Input* %input, i64 0, i32 2
  %0 = load i32, i32* %lookups, align 4, !tbaa !5
  %sub2 = add nsw i32 %0, -1
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  %1 = bitcast i32* %.omp.lb to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #4
  store i32 0, i32* %.omp.lb, align 4, !tbaa !12
  %2 = bitcast i32* %.omp.ub to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #4
  store i32 %sub2, i32* %.omp.ub, align 4, !tbaa !12
  %3 = bitcast i32* %.omp.stride to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4
  store i32 1, i32* %.omp.stride, align 4, !tbaa !12
  %4 = bitcast i32* %.omp.is_last to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !12
  %5 = load i32, i32* %.global_tid., align 4, !tbaa !12
  tail call void @__kmpc_dispatch_init_4(%struct.ident_t* nonnull @1, i32 %5, i32 1073741859, i32 0, i32 %sub2, i32 1, i32 1000)
  %num_nucs = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 10
  %mats = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 12
  %max_num_nucs = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 16
  %concs = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 14
  %n_windows = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 2
  %pseudo_K0RS = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 8
  %windows = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 6
  %poles = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 4
  %max_num_windows = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 18
  %max_num_poles = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 17
  %6 = bitcast %struct.Input* %input to i8*
  %7 = bitcast %struct.Input* %byval-temp25 to i8*
  %8 = bitcast <4 x double>* %micro_xs.i to i8*
  %arraydecay11.i = getelementptr inbounds <4 x double>, <4 x double>* %micro_xs.i, i64 0, i64 0
  %doppler.i = getelementptr inbounds %struct.Input, %struct.Input* %byval-temp25, i64 0, i32 7
  %9 = call i32 @__kmpc_dispatch_next_4(%struct.ident_t* nonnull @1, i32 %5, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride)
  %tobool.not48 = icmp eq i32 %9, 0
  br i1 %tobool.not48, label %omp.dispatch.end, label %omp.dispatch.body

omp.dispatch.cond.loopexit:                       ; preds = %if.end23, %omp.dispatch.body
  %10 = call i32 @__kmpc_dispatch_next_4(%struct.ident_t* nonnull @1, i32 %5, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %omp.dispatch.end, label %omp.dispatch.body

omp.dispatch.body:                                ; preds = %omp.precond.then, %omp.dispatch.cond.loopexit
  %11 = load i32, i32* %.omp.lb, align 4, !tbaa !12
  %12 = load i32, i32* %.omp.ub, align 4, !tbaa !12, !llvm.access.group !41
  %cmp4.not46 = icmp sgt i32 %11, %12
  br i1 %cmp4.not46, label %omp.dispatch.cond.loopexit, label %omp.inner.for.body.preheader

omp.inner.for.body.preheader:                     ; preds = %omp.dispatch.body
  %13 = sext i32 %11 to i64
  br label %omp.inner.for.body

omp.inner.for.body:                               ; preds = %omp.inner.for.body.preheader, %if.end23
  %indvars.iv = phi i64 [ %13, %omp.inner.for.body.preheader ], [ %indvars.iv.next, %if.end23 ]
  %14 = trunc i64 %indvars.iv to i32
  %mul5 = shl nsw i32 %14, 1
  %conv = sext i32 %mul5 to i64
  %rem.i = and i64 %conv, 9223372036854775806
  %cmp.not16.i = icmp eq i64 %rem.i, 0
  br i1 %cmp.not16.i, label %fast_forward_LCG.exit, label %while.body.i

while.body.i:                                     ; preds = %omp.inner.for.body, %while.body.i
  %c_new.021.i = phi i64 [ %c_new.1.i, %while.body.i ], [ 0, %omp.inner.for.body ]
  %a_new.020.i = phi i64 [ %a_new.1.i, %while.body.i ], [ 1, %omp.inner.for.body ]
  %c.019.i = phi i64 [ %mul3.i, %while.body.i ], [ 1, %omp.inner.for.body ]
  %a.018.i = phi i64 [ %mul4.i, %while.body.i ], [ 2806196910506780709, %omp.inner.for.body ]
  %n.addr.017.i = phi i64 [ %shr.i, %while.body.i ], [ %rem.i, %omp.inner.for.body ]
  %and.i = and i64 %n.addr.017.i, 1
  %tobool.not.i = icmp eq i64 %and.i, 0
  %mul1.i = mul i64 %a.018.i, %c_new.021.i
  %add.i = add i64 %mul1.i, %c.019.i
  %mul.i = select i1 %tobool.not.i, i64 1, i64 %a.018.i
  %a_new.1.i = mul i64 %mul.i, %a_new.020.i
  %c_new.1.i = select i1 %tobool.not.i, i64 %c_new.021.i, i64 %add.i
  %add2.i = add i64 %a.018.i, 1
  %mul3.i = mul i64 %add2.i, %c.019.i
  %mul4.i = mul i64 %a.018.i, %a.018.i
  %shr.i = lshr i64 %n.addr.017.i, 1
  %cmp.not.i = icmp ult i64 %n.addr.017.i, 2
  br i1 %cmp.not.i, label %fast_forward_LCG.exit, label %while.body.i

fast_forward_LCG.exit:                            ; preds = %while.body.i, %omp.inner.for.body
  %a_new.0.lcssa.i = phi i64 [ 1, %omp.inner.for.body ], [ %a_new.1.i, %while.body.i ]
  %c_new.0.lcssa.i = phi i64 [ 0, %omp.inner.for.body ], [ %c_new.1.i, %while.body.i ]
  %mul5.i = mul i64 %a_new.0.lcssa.i, 1070
  %add6.i = add i64 %mul5.i, %c_new.0.lcssa.i
  %rem7.i = and i64 %add6.i, 9223372036854775807
  %mul.i22 = mul i64 %rem7.i, 2806196910506780709
  %add.i23 = add i64 %mul.i22, 1
  %rem.i24 = and i64 %add.i23, 9223372036854775807
  %conv.i = uitofp i64 %rem.i24 to double
  %div.i = fmul double %conv.i, 0x3C00000000000000
  %mul.i.i = mul i64 %rem.i24, 2806196910506780709
  %add.i.i = add i64 %mul.i.i, 1
  %rem.i.i = and i64 %add.i.i, 9223372036854775807
  %conv.i.i = uitofp i64 %rem.i.i to double
  %div.i.i = fmul double %conv.i.i, 0x3C00000000000000
  %cmp17.1.i = fcmp olt double %div.i.i, 5.200000e-02
  br i1 %cmp17.1.i, label %pick_mat.exit, label %for.cond.cleanup14.2.i

for.cond.cleanup14.2.i:                           ; preds = %fast_forward_LCG.exit
  %cmp17.2.i = fcmp olt double %div.i.i, 3.270000e-01
  br i1 %cmp17.2.i, label %pick_mat.exit, label %for.cond.cleanup14.3.i

for.cond.cleanup14.3.i:                           ; preds = %for.cond.cleanup14.2.i
  %cmp17.3.i = fcmp olt double %div.i.i, 4.610000e-01
  br i1 %cmp17.3.i, label %pick_mat.exit, label %for.cond.cleanup14.4.i

for.cond.cleanup14.4.i:                           ; preds = %for.cond.cleanup14.3.i
  %cmp17.4.i = fcmp olt double %div.i.i, 0x3FE3AE147AE147AF
  br i1 %cmp17.4.i, label %pick_mat.exit, label %for.cond.cleanup14.5.i

for.cond.cleanup14.5.i:                           ; preds = %for.cond.cleanup14.4.i
  %cmp17.5.i = fcmp olt double %div.i.i, 6.790000e-01
  br i1 %cmp17.5.i, label %pick_mat.exit, label %for.cond.cleanup14.6.i

for.cond.cleanup14.6.i:                           ; preds = %for.cond.cleanup14.5.i
  %cmp17.6.i = fcmp olt double %div.i.i, 0x3FE7D70A3D70A3D8
  br i1 %cmp17.6.i, label %pick_mat.exit, label %for.cond.cleanup14.7.i

for.cond.cleanup14.7.i:                           ; preds = %for.cond.cleanup14.6.i
  %cmp17.7.i = fcmp olt double %div.i.i, 8.000000e-01
  br i1 %cmp17.7.i, label %pick_mat.exit, label %for.cond.cleanup14.8.i

for.cond.cleanup14.8.i:                           ; preds = %for.cond.cleanup14.7.i
  %cmp17.8.i = fcmp olt double %div.i.i, 8.080000e-01
  br i1 %cmp17.8.i, label %pick_mat.exit, label %for.cond.cleanup14.9.i

for.cond.cleanup14.9.i:                           ; preds = %for.cond.cleanup14.8.i
  %cmp17.9.i = fcmp olt double %div.i.i, 0x3FEA5604189374BD
  br i1 %cmp17.9.i, label %pick_mat.exit, label %for.cond.cleanup14.10.i

for.cond.cleanup14.10.i:                          ; preds = %for.cond.cleanup14.9.i
  %cmp17.10.i = fcmp olt double %div.i.i, 0x3FEB22D0E560418A
  br i1 %cmp17.10.i, label %pick_mat.exit, label %for.cond.cleanup14.11.i

for.cond.cleanup14.11.i:                          ; preds = %for.cond.cleanup14.10.i
  %cmp17.11.i = fcmp olt double %div.i.i, 0x3FEB8D4FDF3B645B
  br i1 %cmp17.11.i, label %pick_mat.exit, label %for.inc18.11.i

for.inc18.11.i:                                   ; preds = %for.cond.cleanup14.11.i
  br label %pick_mat.exit

pick_mat.exit:                                    ; preds = %fast_forward_LCG.exit, %for.cond.cleanup14.2.i, %for.cond.cleanup14.3.i, %for.cond.cleanup14.4.i, %for.cond.cleanup14.5.i, %for.cond.cleanup14.6.i, %for.cond.cleanup14.7.i, %for.cond.cleanup14.8.i, %for.cond.cleanup14.9.i, %for.cond.cleanup14.10.i, %for.cond.cleanup14.11.i, %for.inc18.11.i
  %spec.select.i = phi i32 [ 1, %fast_forward_LCG.exit ], [ 2, %for.cond.cleanup14.2.i ], [ 3, %for.cond.cleanup14.3.i ], [ 4, %for.cond.cleanup14.4.i ], [ 5, %for.cond.cleanup14.5.i ], [ 6, %for.cond.cleanup14.6.i ], [ 7, %for.cond.cleanup14.7.i ], [ 8, %for.cond.cleanup14.8.i ], [ 9, %for.cond.cleanup14.9.i ], [ 10, %for.cond.cleanup14.10.i ], [ 11, %for.cond.cleanup14.11.i ], [ 0, %for.inc18.11.i ]
  %15 = load i32*, i32** %num_nucs, align 8, !tbaa !26, !llvm.access.group !41
  %16 = load i32*, i32** %mats, align 8, !tbaa !28, !llvm.access.group !41
  %17 = load i32, i32* %max_num_nucs, align 8, !tbaa !42, !llvm.access.group !41
  %18 = load double*, double** %concs, align 8, !tbaa !30, !llvm.access.group !41
  %19 = load i32*, i32** %n_windows, align 8, !tbaa !18, !llvm.access.group !41
  %20 = load double*, double** %pseudo_K0RS, align 8, !tbaa !24, !llvm.access.group !41
  %21 = load %struct.Window*, %struct.Window** %windows, align 8, !tbaa !22, !llvm.access.group !41
  %22 = load %struct.Pole*, %struct.Pole** %poles, align 8, !tbaa !20, !llvm.access.group !41
  %23 = load i32, i32* %max_num_windows, align 8, !tbaa !43, !llvm.access.group !41
  %24 = load i32, i32* %max_num_poles, align 4, !tbaa !44, !llvm.access.group !41
  call void @llvm.lifetime.start.p0i8(i64 44, i8* nonnull %7)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(44) %7, i8* noundef nonnull align 4 dereferenceable(44) %6, i64 44, i1 false)
  %idxprom3.i30 = zext i32 %spec.select.i to i64
  %arrayidx4.i = getelementptr inbounds i32, i32* %15, i64 %idxprom3.i30
  %25 = load i32, i32* %arrayidx4.i, align 4, !tbaa !12, !llvm.access.group !41
  %cmp527.i = icmp sgt i32 %25, 0
  br i1 %cmp527.i, label %for.body7.lr.ph.i, label %calculate_macro_xs.exit

for.body7.lr.ph.i:                                ; preds = %pick_mat.exit
  %mul.i26 = mul nsw i32 %17, %spec.select.i
  %26 = load i32, i32* %doppler.i, align 4, !llvm.access.group !41
  %cmp10.i = icmp eq i32 %26, 1
  %27 = sext i32 %mul.i26 to i64
  br i1 %cmp10.i, label %for.body7.us.i, label %for.body7.i

for.body7.us.i:                                   ; preds = %for.body7.lr.ph.i, %for.body7.us.i
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %for.body7.us.i ], [ 0, %for.body7.lr.ph.i ]
  %28 = phi <4 x double> [ %34, %for.body7.us.i ], [ zeroinitializer, %for.body7.lr.ph.i ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #4, !llvm.access.group !41
  %29 = add nsw i64 %indvars.iv38.i, %27
  %arrayidx9.us.i = getelementptr inbounds i32, i32* %16, i64 %29
  %30 = load i32, i32* %arrayidx9.us.i, align 4, !tbaa !12, !llvm.access.group !41
  call void @calculate_micro_xs_doppler(double* noundef nonnull %arraydecay11.i, i32 noundef %30, double noundef %div.i, %struct.Input* noundef nonnull byval(%struct.Input) align 8 %byval-temp25, i32* noundef %19, double* noundef %20, %struct.Window* noundef %21, %struct.Pole* noundef %22, i32 noundef %23, i32 noundef %24) #4, !llvm.access.group !41
  %arrayidx21.us.i = getelementptr inbounds double, double* %18, i64 %29
  %31 = load double, double* %arrayidx21.us.i, align 8, !tbaa !45, !llvm.access.group !41
  %32 = load <4 x double>, <4 x double>* %micro_xs.i, align 16, !tbaa !45
  %33 = insertelement <4 x double> poison, double %31, i64 0
  %shuffle92 = shufflevector <4 x double> %33, <4 x double> poison, <4 x i32> zeroinitializer
  %34 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %32, <4 x double> %shuffle92, <4 x double> %28)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #4, !llvm.access.group !41
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1
  %35 = load i32, i32* %arrayidx4.i, align 4, !tbaa !12, !llvm.access.group !41
  %36 = sext i32 %35 to i64
  %cmp5.us.i = icmp slt i64 %indvars.iv.next39.i, %36
  br i1 %cmp5.us.i, label %for.body7.us.i, label %calculate_macro_xs.exit.loopexit

for.body7.i:                                      ; preds = %for.body7.lr.ph.i, %for.body7.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body7.i ], [ 0, %for.body7.lr.ph.i ]
  %37 = phi <4 x double> [ %43, %for.body7.i ], [ zeroinitializer, %for.body7.lr.ph.i ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #4, !llvm.access.group !41
  %38 = add nsw i64 %indvars.iv.i, %27
  %arrayidx9.i = getelementptr inbounds i32, i32* %16, i64 %38
  %39 = load i32, i32* %arrayidx9.i, align 4, !tbaa !12, !llvm.access.group !41
  call void @calculate_micro_xs(double* noundef nonnull %arraydecay11.i, i32 noundef %39, double noundef %div.i, %struct.Input* noundef nonnull byval(%struct.Input) align 8 %byval-temp25, i32* noundef %19, double* noundef %20, %struct.Window* noundef %21, %struct.Pole* noundef %22, i32 noundef %23, i32 noundef %24) #4, !llvm.access.group !41
  %arrayidx21.i = getelementptr inbounds double, double* %18, i64 %38
  %40 = load double, double* %arrayidx21.i, align 8, !tbaa !45, !llvm.access.group !41
  %41 = load <4 x double>, <4 x double>* %micro_xs.i, align 16, !tbaa !45
  %42 = insertelement <4 x double> poison, double %40, i64 0
  %shuffle94 = shufflevector <4 x double> %42, <4 x double> poison, <4 x i32> zeroinitializer
  %43 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %41, <4 x double> %shuffle94, <4 x double> %37)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #4, !llvm.access.group !41
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %44 = load i32, i32* %arrayidx4.i, align 4, !tbaa !12, !llvm.access.group !41
  %45 = sext i32 %44 to i64
  %cmp5.i = icmp slt i64 %indvars.iv.next.i, %45
  br i1 %cmp5.i, label %for.body7.i, label %calculate_macro_xs.exit.loopexit95

calculate_macro_xs.exit.loopexit:                 ; preds = %for.body7.us.i
  %46 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %32, <4 x double> %shuffle92, <4 x double> %28)
  br label %calculate_macro_xs.exit

calculate_macro_xs.exit.loopexit95:               ; preds = %for.body7.i
  %47 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %41, <4 x double> %shuffle94, <4 x double> %37)
  br label %calculate_macro_xs.exit

calculate_macro_xs.exit:                          ; preds = %calculate_macro_xs.exit.loopexit95, %calculate_macro_xs.exit.loopexit, %pick_mat.exit
  %48 = phi <4 x double> [ zeroinitializer, %pick_mat.exit ], [ %46, %calculate_macro_xs.exit.loopexit ], [ %47, %calculate_macro_xs.exit.loopexit95 ]
  call void @llvm.lifetime.end.p0i8(i64 44, i8* nonnull %7)
  %49 = extractelement <4 x double> %48, i64 0
  %cmp10 = fcmp ogt double %49, 0xFFEFFFFFFFFFFFFF
  %max.1 = select i1 %cmp10, double %49, double 0xFFEFFFFFFFFFFFFF
  %50 = extractelement <4 x double> %48, i64 1
  %cmp10.1 = fcmp ogt double %50, %max.1
  %max.1.1 = select i1 %cmp10.1, double %50, double %max.1
  %51 = extractelement <4 x double> %48, i64 2
  %cmp10.2 = fcmp ogt double %51, %max.1.1
  %max.1.2 = select i1 %cmp10.2, double %51, double %max.1.1
  %52 = extractelement <4 x double> %48, i64 3
  %cmp10.3 = fcmp ogt double %52, %max.1.2
  %53 = select i1 %cmp10.1, i64 2, i64 1
  %54 = select i1 %cmp10.2, i64 3, i64 %53
  %55 = select i1 %cmp10.3, i64 4, i64 %54
  %56 = load i64*, i64** %verification, align 8, !tbaa !10, !llvm.access.group !41
  %arrayidx17 = getelementptr inbounds i64, i64* %56, i64 %indvars.iv
  store i64 %55, i64* %arrayidx17, align 8, !tbaa !32, !llvm.access.group !41
  %57 = icmp eq i64 %indvars.iv, 0
  br i1 %57, label %if.then20, label %if.end23

if.then20:                                        ; preds = %calculate_macro_xs.exit
  store i32 0, i32* %offloaded_to_device, align 4, !tbaa !12, !llvm.access.group !41
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %calculate_macro_xs.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %58 = load i32, i32* %.omp.ub, align 4, !tbaa !12, !llvm.access.group !41
  %59 = sext i32 %58 to i64
  %cmp4.not.not = icmp slt i64 %indvars.iv, %59
  br i1 %cmp4.not.not, label %omp.inner.for.body, label %omp.dispatch.cond.loopexit, !llvm.loop !47

omp.dispatch.end:                                 ; preds = %omp.dispatch.cond.loopexit, %omp.precond.then
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #4
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %omp.dispatch.end, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare dso_local void @__kmpc_dispatch_init_4(%struct.ident_t*, i32, i32, i32, i32, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i32 @__kmpc_dispatch_next_4(%struct.ident_t*, i32, i32*, i32*, i32*, i32*) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i64 @fast_forward_LCG(i64 noundef %seed, i64 noundef %n) local_unnamed_addr #5 {
entry:
  %rem = and i64 %n, 9223372036854775807
  %cmp.not16 = icmp eq i64 %rem, 0
  br i1 %cmp.not16, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %c_new.021 = phi i64 [ %c_new.1, %while.body ], [ 0, %entry ]
  %a_new.020 = phi i64 [ %a_new.1, %while.body ], [ 1, %entry ]
  %c.019 = phi i64 [ %mul3, %while.body ], [ 1, %entry ]
  %a.018 = phi i64 [ %mul4, %while.body ], [ 2806196910506780709, %entry ]
  %n.addr.017 = phi i64 [ %shr, %while.body ], [ %rem, %entry ]
  %and = and i64 %n.addr.017, 1
  %tobool.not = icmp eq i64 %and, 0
  %mul1 = mul i64 %c_new.021, %a.018
  %add = add i64 %mul1, %c.019
  %mul = select i1 %tobool.not, i64 1, i64 %a.018
  %a_new.1 = mul i64 %a_new.020, %mul
  %c_new.1 = select i1 %tobool.not, i64 %c_new.021, i64 %add
  %add2 = add i64 %a.018, 1
  %mul3 = mul i64 %c.019, %add2
  %mul4 = mul i64 %a.018, %a.018
  %shr = lshr i64 %n.addr.017, 1
  %cmp.not = icmp ult i64 %n.addr.017, 2
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %a_new.0.lcssa = phi i64 [ 1, %entry ], [ %a_new.1, %while.body ]
  %c_new.0.lcssa = phi i64 [ 0, %entry ], [ %c_new.1, %while.body ]
  %mul5 = mul i64 %a_new.0.lcssa, %seed
  %add6 = add i64 %mul5, %c_new.0.lcssa
  %rem7 = and i64 %add6, 9223372036854775807
  ret i64 %rem7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local double @LCG_random_double(i64* nocapture noundef %seed) local_unnamed_addr #6 {
entry:
  %0 = load i64, i64* %seed, align 8, !tbaa !38
  %mul = mul i64 %0, 2806196910506780709
  %add = add i64 %mul, 1
  %rem = and i64 %add, 9223372036854775807
  store i64 %rem, i64* %seed, align 8, !tbaa !38
  %conv = uitofp i64 %rem to double
  %div = fmul double %conv, 0x3C00000000000000
  ret double %div
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @pick_mat(i64* nocapture noundef %seed) local_unnamed_addr #7 {
for.cond.cleanup14.1:
  %0 = load i64, i64* %seed, align 8, !tbaa !38
  %mul.i = mul i64 %0, 2806196910506780709
  %add.i = add i64 %mul.i, 1
  %rem.i = and i64 %add.i, 9223372036854775807
  store i64 %rem.i, i64* %seed, align 8, !tbaa !38
  %conv.i = uitofp i64 %rem.i to double
  %div.i = fmul double %conv.i, 0x3C00000000000000
  %cmp17.1 = fcmp olt double %div.i, 5.200000e-02
  br i1 %cmp17.1, label %cleanup19, label %for.cond.cleanup14.2

for.cond.cleanup14.2:                             ; preds = %for.cond.cleanup14.1
  %cmp17.2 = fcmp olt double %div.i, 3.270000e-01
  br i1 %cmp17.2, label %cleanup19, label %for.cond.cleanup14.3

for.cond.cleanup14.3:                             ; preds = %for.cond.cleanup14.2
  %cmp17.3 = fcmp olt double %div.i, 4.610000e-01
  br i1 %cmp17.3, label %cleanup19, label %for.cond.cleanup14.4

for.cond.cleanup14.4:                             ; preds = %for.cond.cleanup14.3
  %cmp17.4 = fcmp olt double %div.i, 0x3FE3AE147AE147AF
  br i1 %cmp17.4, label %cleanup19, label %for.cond.cleanup14.5

for.cond.cleanup14.5:                             ; preds = %for.cond.cleanup14.4
  %cmp17.5 = fcmp olt double %div.i, 6.790000e-01
  br i1 %cmp17.5, label %cleanup19, label %for.cond.cleanup14.6

for.cond.cleanup14.6:                             ; preds = %for.cond.cleanup14.5
  %cmp17.6 = fcmp olt double %div.i, 0x3FE7D70A3D70A3D8
  br i1 %cmp17.6, label %cleanup19, label %for.cond.cleanup14.7

for.cond.cleanup14.7:                             ; preds = %for.cond.cleanup14.6
  %cmp17.7 = fcmp olt double %div.i, 8.000000e-01
  br i1 %cmp17.7, label %cleanup19, label %for.cond.cleanup14.8

for.cond.cleanup14.8:                             ; preds = %for.cond.cleanup14.7
  %cmp17.8 = fcmp olt double %div.i, 8.080000e-01
  br i1 %cmp17.8, label %cleanup19, label %for.cond.cleanup14.9

for.cond.cleanup14.9:                             ; preds = %for.cond.cleanup14.8
  %cmp17.9 = fcmp olt double %div.i, 0x3FEA5604189374BD
  br i1 %cmp17.9, label %cleanup19, label %for.cond.cleanup14.10

for.cond.cleanup14.10:                            ; preds = %for.cond.cleanup14.9
  %cmp17.10 = fcmp olt double %div.i, 0x3FEB22D0E560418A
  br i1 %cmp17.10, label %cleanup19, label %for.cond.cleanup14.11

for.cond.cleanup14.11:                            ; preds = %for.cond.cleanup14.10
  %cmp17.11 = fcmp olt double %div.i, 0x3FEB8D4FDF3B645B
  br i1 %cmp17.11, label %cleanup19, label %for.inc18.11

for.inc18.11:                                     ; preds = %for.cond.cleanup14.11
  br label %cleanup19

cleanup19:                                        ; preds = %for.inc18.11, %for.cond.cleanup14.11, %for.cond.cleanup14.10, %for.cond.cleanup14.9, %for.cond.cleanup14.8, %for.cond.cleanup14.7, %for.cond.cleanup14.6, %for.cond.cleanup14.5, %for.cond.cleanup14.4, %for.cond.cleanup14.3, %for.cond.cleanup14.2, %for.cond.cleanup14.1
  %spec.select = phi i32 [ 1, %for.cond.cleanup14.1 ], [ 2, %for.cond.cleanup14.2 ], [ 3, %for.cond.cleanup14.3 ], [ 4, %for.cond.cleanup14.4 ], [ 5, %for.cond.cleanup14.5 ], [ 6, %for.cond.cleanup14.6 ], [ 7, %for.cond.cleanup14.7 ], [ 8, %for.cond.cleanup14.8 ], [ 9, %for.cond.cleanup14.9 ], [ 10, %for.cond.cleanup14.10 ], [ 11, %for.cond.cleanup14.11 ], [ 0, %for.inc18.11 ]
  ret i32 %spec.select
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nofree nounwind uwtable
define dso_local void @calculate_macro_xs(double* nocapture noundef %macro_xs, i32 noundef %mat, double noundef %E, %struct.Input* nocapture noundef readonly byval(%struct.Input) align 8 %input, i32* nocapture noundef readonly %num_nucs, i32* nocapture noundef readonly %mats, i32 noundef %max_num_nucs, double* nocapture noundef readonly %concs, i32* nocapture noundef readonly %n_windows, double* nocapture noundef readonly %pseudo_K0Rs, %struct.Window* nocapture noundef readonly %windows, %struct.Pole* nocapture noundef readonly %poles, i32 noundef %max_num_windows, i32 noundef %max_num_poles) local_unnamed_addr #9 {
entry:
  %macro_xs30 = bitcast double* %macro_xs to i8*
  %micro_xs = alloca [4 x double], align 16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %macro_xs30, i8 0, i64 32, i1 false)
  %idxprom3 = sext i32 %mat to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %num_nucs, i64 %idxprom3
  %0 = bitcast [4 x double]* %micro_xs to i8*
  %arraydecay11 = getelementptr inbounds [4 x double], [4 x double]* %micro_xs, i64 0, i64 0
  %1 = load i32, i32* %arrayidx4, align 4, !tbaa !12
  %cmp527 = icmp sgt i32 %1, 0
  br i1 %cmp527, label %for.body7.lr.ph, label %for.cond.cleanup6

for.body7.lr.ph:                                  ; preds = %entry
  %mul = mul nsw i32 %max_num_nucs, %mat
  %doppler = getelementptr inbounds %struct.Input, %struct.Input* %input, i64 0, i32 7
  %2 = load i32, i32* %doppler, align 4
  %cmp10 = icmp eq i32 %2, 1
  %3 = sext i32 %mul to i64
  %arrayidx17.us.1 = getelementptr inbounds [4 x double], [4 x double]* %micro_xs, i64 0, i64 1
  %arrayidx24.us.1 = getelementptr inbounds double, double* %macro_xs, i64 1
  %arrayidx17.us.2 = getelementptr inbounds [4 x double], [4 x double]* %micro_xs, i64 0, i64 2
  %arrayidx24.us.2 = getelementptr inbounds double, double* %macro_xs, i64 2
  %arrayidx17.us.3 = getelementptr inbounds [4 x double], [4 x double]* %micro_xs, i64 0, i64 3
  %arrayidx24.us.3 = getelementptr inbounds double, double* %macro_xs, i64 3
  br i1 %cmp10, label %for.body7.us, label %for.body7

for.body7.us:                                     ; preds = %for.body7.lr.ph, %for.body7.us
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.body7.us ], [ 0, %for.body7.lr.ph ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %4 = add nsw i64 %indvars.iv38, %3
  %arrayidx9.us = getelementptr inbounds i32, i32* %mats, i64 %4
  %5 = load i32, i32* %arrayidx9.us, align 4, !tbaa !12
  call void @calculate_micro_xs_doppler(double* noundef nonnull %arraydecay11, i32 noundef %5, double noundef %E, %struct.Input* noundef nonnull byval(%struct.Input) align 8 %input, i32* noundef %n_windows, double* noundef %pseudo_K0Rs, %struct.Window* noundef %windows, %struct.Pole* noundef %poles, i32 noundef %max_num_windows, i32 noundef %max_num_poles)
  %arrayidx21.us = getelementptr inbounds double, double* %concs, i64 %4
  %6 = load double, double* %arraydecay11, align 16, !tbaa !45
  %7 = load double, double* %arrayidx21.us, align 8, !tbaa !45
  %8 = load double, double* %macro_xs, align 8, !tbaa !45
  %9 = tail call double @llvm.fmuladd.f64(double %6, double %7, double %8)
  store double %9, double* %macro_xs, align 8, !tbaa !45
  %10 = load double, double* %arrayidx17.us.1, align 8, !tbaa !45
  %11 = load double, double* %arrayidx21.us, align 8, !tbaa !45
  %12 = load double, double* %arrayidx24.us.1, align 8, !tbaa !45
  %13 = tail call double @llvm.fmuladd.f64(double %10, double %11, double %12)
  store double %13, double* %arrayidx24.us.1, align 8, !tbaa !45
  %14 = load double, double* %arrayidx17.us.2, align 16, !tbaa !45
  %15 = load double, double* %arrayidx21.us, align 8, !tbaa !45
  %16 = load double, double* %arrayidx24.us.2, align 8, !tbaa !45
  %17 = tail call double @llvm.fmuladd.f64(double %14, double %15, double %16)
  store double %17, double* %arrayidx24.us.2, align 8, !tbaa !45
  %18 = load double, double* %arrayidx17.us.3, align 8, !tbaa !45
  %19 = load double, double* %arrayidx21.us, align 8, !tbaa !45
  %20 = load double, double* %arrayidx24.us.3, align 8, !tbaa !45
  %21 = tail call double @llvm.fmuladd.f64(double %18, double %19, double %20)
  store double %21, double* %arrayidx24.us.3, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %22 = load i32, i32* %arrayidx4, align 4, !tbaa !12
  %23 = sext i32 %22 to i64
  %cmp5.us = icmp slt i64 %indvars.iv.next39, %23
  br i1 %cmp5.us, label %for.body7.us, label %for.cond.cleanup6

for.cond.cleanup6:                                ; preds = %for.body7, %for.body7.us, %entry
  ret void

for.body7:                                        ; preds = %for.body7.lr.ph, %for.body7
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body7 ], [ 0, %for.body7.lr.ph ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %24 = add nsw i64 %indvars.iv, %3
  %arrayidx9 = getelementptr inbounds i32, i32* %mats, i64 %24
  %25 = load i32, i32* %arrayidx9, align 4, !tbaa !12
  call void @calculate_micro_xs(double* noundef nonnull %arraydecay11, i32 noundef %25, double noundef %E, %struct.Input* noundef nonnull byval(%struct.Input) align 8 %input, i32* noundef %n_windows, double* noundef %pseudo_K0Rs, %struct.Window* noundef %windows, %struct.Pole* noundef %poles, i32 noundef %max_num_windows, i32 noundef %max_num_poles)
  %arrayidx21 = getelementptr inbounds double, double* %concs, i64 %24
  %26 = load double, double* %arraydecay11, align 16, !tbaa !45
  %27 = load double, double* %arrayidx21, align 8, !tbaa !45
  %28 = load double, double* %macro_xs, align 8, !tbaa !45
  %29 = tail call double @llvm.fmuladd.f64(double %26, double %27, double %28)
  store double %29, double* %macro_xs, align 8, !tbaa !45
  %30 = load double, double* %arrayidx17.us.1, align 8, !tbaa !45
  %31 = load double, double* %arrayidx21, align 8, !tbaa !45
  %32 = load double, double* %arrayidx24.us.1, align 8, !tbaa !45
  %33 = tail call double @llvm.fmuladd.f64(double %30, double %31, double %32)
  store double %33, double* %arrayidx24.us.1, align 8, !tbaa !45
  %34 = load double, double* %arrayidx17.us.2, align 16, !tbaa !45
  %35 = load double, double* %arrayidx21, align 8, !tbaa !45
  %36 = load double, double* %arrayidx24.us.2, align 8, !tbaa !45
  %37 = tail call double @llvm.fmuladd.f64(double %34, double %35, double %36)
  store double %37, double* %arrayidx24.us.2, align 8, !tbaa !45
  %38 = load double, double* %arrayidx17.us.3, align 8, !tbaa !45
  %39 = load double, double* %arrayidx21, align 8, !tbaa !45
  %40 = load double, double* %arrayidx24.us.3, align 8, !tbaa !45
  %41 = tail call double @llvm.fmuladd.f64(double %38, double %39, double %40)
  store double %41, double* %arrayidx24.us.3, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %42 = load i32, i32* %arrayidx4, align 4, !tbaa !12
  %43 = sext i32 %42 to i64
  %cmp5 = icmp slt i64 %indvars.iv.next, %43
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind
declare !callback !49 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #4

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..1(i32* noalias nocapture noundef readonly %.global_tid., i32* noalias nocapture noundef readnone %.bound_tid., %struct.Input* noundef nonnull align 4 dereferenceable(44) %input, %struct.SimulationData* noundef nonnull align 8 dereferenceable(176) %data, i64* noundef %verification, i32* noundef nonnull align 4 dereferenceable(4) %offloaded_to_device) #3 {
entry:
  %.omp.comb.lb = alloca i32, align 4
  %.omp.comb.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %lookups = getelementptr inbounds %struct.Input, %struct.Input* %input, i64 0, i32 2
  %0 = load i32, i32* %lookups, align 4, !tbaa !5
  %sub2 = add nsw i32 %0, -1
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  %1 = bitcast i32* %.omp.comb.lb to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #4
  store i32 0, i32* %.omp.comb.lb, align 4, !tbaa !12
  %2 = bitcast i32* %.omp.comb.ub to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #4
  store i32 %sub2, i32* %.omp.comb.ub, align 4, !tbaa !12
  %3 = bitcast i32* %.omp.stride to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4
  store i32 1, i32* %.omp.stride, align 4, !tbaa !12
  %4 = bitcast i32* %.omp.is_last to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !12
  %5 = load i32, i32* %.global_tid., align 4, !tbaa !12
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @2, i32 %5, i32 92, i32* nonnull %.omp.is_last, i32* nonnull %.omp.comb.lb, i32* nonnull %.omp.comb.ub, i32* nonnull %.omp.stride, i32 1, i32 1)
  %6 = load i32, i32* %.omp.comb.ub, align 4, !tbaa !12
  %cmp4 = icmp sgt i32 %6, %sub2
  %cond = select i1 %cmp4, i32 %sub2, i32 %6
  store i32 %cond, i32* %.omp.comb.ub, align 4, !tbaa !12
  %7 = load i32, i32* %.omp.comb.lb, align 4, !tbaa !12
  %cmp5.not11 = icmp sgt i32 %7, %cond
  br i1 %cmp5.not11, label %omp.loop.exit, label %omp.inner.for.body.preheader

omp.inner.for.body.preheader:                     ; preds = %omp.precond.then
  %8 = zext i32 %7 to i64
  %9 = zext i32 %cond to i64
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, %struct.Input*, %struct.SimulationData*, i64*, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i64 %8, i64 %9, %struct.Input* nonnull %input, %struct.SimulationData* nonnull %data, i64* %verification, i32* nonnull %offloaded_to_device)
  %10 = load i32, i32* %.omp.stride, align 4, !tbaa !12
  %add20 = add nsw i32 %10, %7
  %11 = load i32, i32* %.omp.comb.ub, align 4, !tbaa !12
  %cmp5.not21 = icmp sgt i32 %add20, %11
  br i1 %cmp5.not21, label %omp.loop.exit, label %omp.inner.for.body.omp.inner.for.body_crit_edge

omp.inner.for.body.omp.inner.for.body_crit_edge:  ; preds = %omp.inner.for.body.preheader, %omp.inner.for.body.omp.inner.for.body_crit_edge
  %12 = phi i32 [ %16, %omp.inner.for.body.omp.inner.for.body_crit_edge ], [ %11, %omp.inner.for.body.preheader ]
  %add22 = phi i32 [ %add, %omp.inner.for.body.omp.inner.for.body_crit_edge ], [ %add20, %omp.inner.for.body.preheader ]
  %.pre = load i32, i32* %.omp.comb.lb, align 4
  %13 = zext i32 %.pre to i64
  %14 = zext i32 %12 to i64
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, %struct.Input*, %struct.SimulationData*, i64*, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i64 %13, i64 %14, %struct.Input* nonnull %input, %struct.SimulationData* nonnull %data, i64* %verification, i32* nonnull %offloaded_to_device)
  %15 = load i32, i32* %.omp.stride, align 4, !tbaa !12
  %add = add nsw i32 %15, %add22
  %16 = load i32, i32* %.omp.comb.ub, align 4, !tbaa !12
  %cmp5.not = icmp sgt i32 %add, %16
  br i1 %cmp5.not, label %omp.loop.exit, label %omp.inner.for.body.omp.inner.for.body_crit_edge

omp.loop.exit:                                    ; preds = %omp.inner.for.body.omp.inner.for.body_crit_edge, %omp.inner.for.body.preheader, %omp.precond.then
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @2, i32 %5)
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %entry, %omp.loop.exit
  %.pre-phi = bitcast i32* %.omp.is_last to i8*
  %.pre-phi15 = bitcast i32* %.omp.stride to i8*
  %.pre-phi17 = bitcast i32* %.omp.comb.ub to i8*
  %.pre-phi19 = bitcast i32* %.omp.comb.lb to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %.pre-phi) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %.pre-phi15) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %.pre-phi17) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %.pre-phi19) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #4

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias nocapture noundef readonly %.global_tid., i32* noalias nocapture noundef readnone %.bound_tid., i64 noundef %.previous.lb., i64 noundef %.previous.ub., %struct.Input* nocapture noundef nonnull readonly align 4 dereferenceable(44) %input, %struct.SimulationData* nocapture noundef nonnull readonly align 8 dereferenceable(176) %data, i64* nocapture noundef writeonly %verification, i32* nocapture noundef nonnull writeonly align 4 dereferenceable(4) %offloaded_to_device) #3 {
entry:
  %micro_xs.i = alloca <4 x double>, align 16
  %byval-temp26 = alloca %struct.Input, align 8
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %lookups = getelementptr inbounds %struct.Input, %struct.Input* %input, i64 0, i32 2
  %0 = load i32, i32* %lookups, align 4, !tbaa !5
  %sub2 = add nsw i32 %0, -1
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end

omp.precond.then:                                 ; preds = %entry
  %1 = bitcast i32* %.omp.lb to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #4
  %2 = bitcast i32* %.omp.ub to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #4
  %conv = trunc i64 %.previous.lb. to i32
  %conv3 = trunc i64 %.previous.ub. to i32
  store i32 %conv, i32* %.omp.lb, align 4, !tbaa !12
  store i32 %conv3, i32* %.omp.ub, align 4, !tbaa !12
  %3 = bitcast i32* %.omp.stride to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4
  store i32 1, i32* %.omp.stride, align 4, !tbaa !12
  %4 = bitcast i32* %.omp.is_last to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  store i32 0, i32* %.omp.is_last, align 4, !tbaa !12
  %5 = load i32, i32* %.global_tid., align 4, !tbaa !12
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @3, i32 %5, i32 34, i32* nonnull %.omp.is_last, i32* nonnull %.omp.lb, i32* nonnull %.omp.ub, i32* nonnull %.omp.stride, i32 1, i32 1)
  %6 = load i32, i32* %.omp.ub, align 4, !tbaa !12
  %cmp5 = icmp sgt i32 %6, %sub2
  %cond = select i1 %cmp5, i32 %sub2, i32 %6
  store i32 %cond, i32* %.omp.ub, align 4, !tbaa !12
  %7 = load i32, i32* %.omp.lb, align 4, !tbaa !12
  %num_nucs = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 10
  %mats = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 12
  %max_num_nucs = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 16
  %concs = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 14
  %n_windows = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 2
  %pseudo_K0RS = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 8
  %windows = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 6
  %poles = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 4
  %max_num_windows = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 18
  %max_num_poles = getelementptr inbounds %struct.SimulationData, %struct.SimulationData* %data, i64 0, i32 17
  %8 = bitcast %struct.Input* %input to i8*
  %9 = bitcast %struct.Input* %byval-temp26 to i8*
  %10 = bitcast <4 x double>* %micro_xs.i to i8*
  %arraydecay11.i = getelementptr inbounds <4 x double>, <4 x double>* %micro_xs.i, i64 0, i64 0
  %doppler.i = getelementptr inbounds %struct.Input, %struct.Input* %byval-temp26, i64 0, i32 7
  %cmp7.not47 = icmp sgt i32 %7, %cond
  br i1 %cmp7.not47, label %omp.loop.exit, label %omp.inner.for.body.preheader

omp.inner.for.body.preheader:                     ; preds = %omp.precond.then
  %11 = sext i32 %7 to i64
  br label %omp.inner.for.body

omp.inner.for.body:                               ; preds = %omp.inner.for.body.preheader, %if.end27
  %indvars.iv = phi i64 [ %11, %omp.inner.for.body.preheader ], [ %indvars.iv.next, %if.end27 ]
  %12 = trunc i64 %indvars.iv to i32
  %mul9 = shl nsw i32 %12, 1
  %conv10 = sext i32 %mul9 to i64
  %rem.i = and i64 %conv10, 9223372036854775806
  %cmp.not16.i = icmp eq i64 %rem.i, 0
  br i1 %cmp.not16.i, label %fast_forward_LCG.exit, label %while.body.i

while.body.i:                                     ; preds = %omp.inner.for.body, %while.body.i
  %c_new.021.i = phi i64 [ %c_new.1.i, %while.body.i ], [ 0, %omp.inner.for.body ]
  %a_new.020.i = phi i64 [ %a_new.1.i, %while.body.i ], [ 1, %omp.inner.for.body ]
  %c.019.i = phi i64 [ %mul3.i, %while.body.i ], [ 1, %omp.inner.for.body ]
  %a.018.i = phi i64 [ %mul4.i, %while.body.i ], [ 2806196910506780709, %omp.inner.for.body ]
  %n.addr.017.i = phi i64 [ %shr.i, %while.body.i ], [ %rem.i, %omp.inner.for.body ]
  %and.i = and i64 %n.addr.017.i, 1
  %tobool.not.i = icmp eq i64 %and.i, 0
  %mul1.i = mul i64 %a.018.i, %c_new.021.i
  %add.i = add i64 %mul1.i, %c.019.i
  %mul.i = select i1 %tobool.not.i, i64 1, i64 %a.018.i
  %a_new.1.i = mul i64 %mul.i, %a_new.020.i
  %c_new.1.i = select i1 %tobool.not.i, i64 %c_new.021.i, i64 %add.i
  %add2.i = add i64 %a.018.i, 1
  %mul3.i = mul i64 %add2.i, %c.019.i
  %mul4.i = mul i64 %a.018.i, %a.018.i
  %shr.i = lshr i64 %n.addr.017.i, 1
  %cmp.not.i = icmp ult i64 %n.addr.017.i, 2
  br i1 %cmp.not.i, label %fast_forward_LCG.exit, label %while.body.i

fast_forward_LCG.exit:                            ; preds = %while.body.i, %omp.inner.for.body
  %a_new.0.lcssa.i = phi i64 [ 1, %omp.inner.for.body ], [ %a_new.1.i, %while.body.i ]
  %c_new.0.lcssa.i = phi i64 [ 0, %omp.inner.for.body ], [ %c_new.1.i, %while.body.i ]
  %mul5.i = mul i64 %a_new.0.lcssa.i, 1070
  %add6.i = add i64 %mul5.i, %c_new.0.lcssa.i
  %rem7.i = and i64 %add6.i, 9223372036854775807
  %mul.i23 = mul i64 %rem7.i, 2806196910506780709
  %add.i24 = add i64 %mul.i23, 1
  %rem.i25 = and i64 %add.i24, 9223372036854775807
  %conv.i = uitofp i64 %rem.i25 to double
  %div.i = fmul double %conv.i, 0x3C00000000000000
  %mul.i.i = mul i64 %rem.i25, 2806196910506780709
  %add.i.i = add i64 %mul.i.i, 1
  %rem.i.i = and i64 %add.i.i, 9223372036854775807
  %conv.i.i = uitofp i64 %rem.i.i to double
  %div.i.i = fmul double %conv.i.i, 0x3C00000000000000
  %cmp17.1.i = fcmp olt double %div.i.i, 5.200000e-02
  br i1 %cmp17.1.i, label %pick_mat.exit, label %for.cond.cleanup14.2.i

for.cond.cleanup14.2.i:                           ; preds = %fast_forward_LCG.exit
  %cmp17.2.i = fcmp olt double %div.i.i, 3.270000e-01
  br i1 %cmp17.2.i, label %pick_mat.exit, label %for.cond.cleanup14.3.i

for.cond.cleanup14.3.i:                           ; preds = %for.cond.cleanup14.2.i
  %cmp17.3.i = fcmp olt double %div.i.i, 4.610000e-01
  br i1 %cmp17.3.i, label %pick_mat.exit, label %for.cond.cleanup14.4.i

for.cond.cleanup14.4.i:                           ; preds = %for.cond.cleanup14.3.i
  %cmp17.4.i = fcmp olt double %div.i.i, 0x3FE3AE147AE147AF
  br i1 %cmp17.4.i, label %pick_mat.exit, label %for.cond.cleanup14.5.i

for.cond.cleanup14.5.i:                           ; preds = %for.cond.cleanup14.4.i
  %cmp17.5.i = fcmp olt double %div.i.i, 6.790000e-01
  br i1 %cmp17.5.i, label %pick_mat.exit, label %for.cond.cleanup14.6.i

for.cond.cleanup14.6.i:                           ; preds = %for.cond.cleanup14.5.i
  %cmp17.6.i = fcmp olt double %div.i.i, 0x3FE7D70A3D70A3D8
  br i1 %cmp17.6.i, label %pick_mat.exit, label %for.cond.cleanup14.7.i

for.cond.cleanup14.7.i:                           ; preds = %for.cond.cleanup14.6.i
  %cmp17.7.i = fcmp olt double %div.i.i, 8.000000e-01
  br i1 %cmp17.7.i, label %pick_mat.exit, label %for.cond.cleanup14.8.i

for.cond.cleanup14.8.i:                           ; preds = %for.cond.cleanup14.7.i
  %cmp17.8.i = fcmp olt double %div.i.i, 8.080000e-01
  br i1 %cmp17.8.i, label %pick_mat.exit, label %for.cond.cleanup14.9.i

for.cond.cleanup14.9.i:                           ; preds = %for.cond.cleanup14.8.i
  %cmp17.9.i = fcmp olt double %div.i.i, 0x3FEA5604189374BD
  br i1 %cmp17.9.i, label %pick_mat.exit, label %for.cond.cleanup14.10.i

for.cond.cleanup14.10.i:                          ; preds = %for.cond.cleanup14.9.i
  %cmp17.10.i = fcmp olt double %div.i.i, 0x3FEB22D0E560418A
  br i1 %cmp17.10.i, label %pick_mat.exit, label %for.cond.cleanup14.11.i

for.cond.cleanup14.11.i:                          ; preds = %for.cond.cleanup14.10.i
  %cmp17.11.i = fcmp olt double %div.i.i, 0x3FEB8D4FDF3B645B
  br i1 %cmp17.11.i, label %pick_mat.exit, label %for.inc18.11.i

for.inc18.11.i:                                   ; preds = %for.cond.cleanup14.11.i
  br label %pick_mat.exit

pick_mat.exit:                                    ; preds = %fast_forward_LCG.exit, %for.cond.cleanup14.2.i, %for.cond.cleanup14.3.i, %for.cond.cleanup14.4.i, %for.cond.cleanup14.5.i, %for.cond.cleanup14.6.i, %for.cond.cleanup14.7.i, %for.cond.cleanup14.8.i, %for.cond.cleanup14.9.i, %for.cond.cleanup14.10.i, %for.cond.cleanup14.11.i, %for.inc18.11.i
  %spec.select.i = phi i32 [ 1, %fast_forward_LCG.exit ], [ 2, %for.cond.cleanup14.2.i ], [ 3, %for.cond.cleanup14.3.i ], [ 4, %for.cond.cleanup14.4.i ], [ 5, %for.cond.cleanup14.5.i ], [ 6, %for.cond.cleanup14.6.i ], [ 7, %for.cond.cleanup14.7.i ], [ 8, %for.cond.cleanup14.8.i ], [ 9, %for.cond.cleanup14.9.i ], [ 10, %for.cond.cleanup14.10.i ], [ 11, %for.cond.cleanup14.11.i ], [ 0, %for.inc18.11.i ]
  %13 = load i32*, i32** %num_nucs, align 8, !tbaa !26
  %14 = load i32*, i32** %mats, align 8, !tbaa !28
  %15 = load i32, i32* %max_num_nucs, align 8, !tbaa !42
  %16 = load double*, double** %concs, align 8, !tbaa !30
  %17 = load i32*, i32** %n_windows, align 8, !tbaa !18
  %18 = load double*, double** %pseudo_K0RS, align 8, !tbaa !24
  %19 = load %struct.Window*, %struct.Window** %windows, align 8, !tbaa !22
  %20 = load %struct.Pole*, %struct.Pole** %poles, align 8, !tbaa !20
  %21 = load i32, i32* %max_num_windows, align 8, !tbaa !43
  %22 = load i32, i32* %max_num_poles, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0i8(i64 44, i8* nonnull %9)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(44) %9, i8* noundef nonnull align 4 dereferenceable(44) %8, i64 44, i1 false)
  %idxprom3.i31 = zext i32 %spec.select.i to i64
  %arrayidx4.i = getelementptr inbounds i32, i32* %13, i64 %idxprom3.i31
  %23 = load i32, i32* %arrayidx4.i, align 4, !tbaa !12
  %cmp527.i = icmp sgt i32 %23, 0
  br i1 %cmp527.i, label %for.body7.lr.ph.i, label %calculate_macro_xs.exit

for.body7.lr.ph.i:                                ; preds = %pick_mat.exit
  %mul.i27 = mul nsw i32 %15, %spec.select.i
  %24 = load i32, i32* %doppler.i, align 4
  %cmp10.i = icmp eq i32 %24, 1
  %25 = sext i32 %mul.i27 to i64
  br i1 %cmp10.i, label %for.body7.us.i, label %for.body7.i

for.body7.us.i:                                   ; preds = %for.body7.lr.ph.i, %for.body7.us.i
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %for.body7.us.i ], [ 0, %for.body7.lr.ph.i ]
  %26 = phi <4 x double> [ %32, %for.body7.us.i ], [ zeroinitializer, %for.body7.lr.ph.i ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %10) #4
  %27 = add nsw i64 %indvars.iv38.i, %25
  %arrayidx9.us.i = getelementptr inbounds i32, i32* %14, i64 %27
  %28 = load i32, i32* %arrayidx9.us.i, align 4, !tbaa !12
  call void @calculate_micro_xs_doppler(double* noundef nonnull %arraydecay11.i, i32 noundef %28, double noundef %div.i, %struct.Input* noundef nonnull byval(%struct.Input) align 8 %byval-temp26, i32* noundef %17, double* noundef %18, %struct.Window* noundef %19, %struct.Pole* noundef %20, i32 noundef %21, i32 noundef %22) #4
  %arrayidx21.us.i = getelementptr inbounds double, double* %16, i64 %27
  %29 = load double, double* %arrayidx21.us.i, align 8, !tbaa !45
  %30 = load <4 x double>, <4 x double>* %micro_xs.i, align 16, !tbaa !45
  %31 = insertelement <4 x double> poison, double %29, i64 0
  %shuffle92 = shufflevector <4 x double> %31, <4 x double> poison, <4 x i32> zeroinitializer
  %32 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %30, <4 x double> %shuffle92, <4 x double> %26)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %10) #4
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1
  %33 = load i32, i32* %arrayidx4.i, align 4, !tbaa !12
  %34 = sext i32 %33 to i64
  %cmp5.us.i = icmp slt i64 %indvars.iv.next39.i, %34
  br i1 %cmp5.us.i, label %for.body7.us.i, label %calculate_macro_xs.exit.loopexit

for.body7.i:                                      ; preds = %for.body7.lr.ph.i, %for.body7.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body7.i ], [ 0, %for.body7.lr.ph.i ]
  %35 = phi <4 x double> [ %41, %for.body7.i ], [ zeroinitializer, %for.body7.lr.ph.i ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %10) #4
  %36 = add nsw i64 %indvars.iv.i, %25
  %arrayidx9.i = getelementptr inbounds i32, i32* %14, i64 %36
  %37 = load i32, i32* %arrayidx9.i, align 4, !tbaa !12
  call void @calculate_micro_xs(double* noundef nonnull %arraydecay11.i, i32 noundef %37, double noundef %div.i, %struct.Input* noundef nonnull byval(%struct.Input) align 8 %byval-temp26, i32* noundef %17, double* noundef %18, %struct.Window* noundef %19, %struct.Pole* noundef %20, i32 noundef %21, i32 noundef %22) #4
  %arrayidx21.i = getelementptr inbounds double, double* %16, i64 %36
  %38 = load double, double* %arrayidx21.i, align 8, !tbaa !45
  %39 = load <4 x double>, <4 x double>* %micro_xs.i, align 16, !tbaa !45
  %40 = insertelement <4 x double> poison, double %38, i64 0
  %shuffle94 = shufflevector <4 x double> %40, <4 x double> poison, <4 x i32> zeroinitializer
  %41 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %39, <4 x double> %shuffle94, <4 x double> %35)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %10) #4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %42 = load i32, i32* %arrayidx4.i, align 4, !tbaa !12
  %43 = sext i32 %42 to i64
  %cmp5.i = icmp slt i64 %indvars.iv.next.i, %43
  br i1 %cmp5.i, label %for.body7.i, label %calculate_macro_xs.exit.loopexit95

calculate_macro_xs.exit.loopexit:                 ; preds = %for.body7.us.i
  %44 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %30, <4 x double> %shuffle92, <4 x double> %26)
  br label %calculate_macro_xs.exit

calculate_macro_xs.exit.loopexit95:               ; preds = %for.body7.i
  %45 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %39, <4 x double> %shuffle94, <4 x double> %35)
  br label %calculate_macro_xs.exit

calculate_macro_xs.exit:                          ; preds = %calculate_macro_xs.exit.loopexit95, %calculate_macro_xs.exit.loopexit, %pick_mat.exit
  %46 = phi <4 x double> [ zeroinitializer, %pick_mat.exit ], [ %44, %calculate_macro_xs.exit.loopexit ], [ %45, %calculate_macro_xs.exit.loopexit95 ]
  call void @llvm.lifetime.end.p0i8(i64 44, i8* nonnull %9)
  %47 = extractelement <4 x double> %46, i64 0
  %cmp15 = fcmp ogt double %47, 0xFFEFFFFFFFFFFFFF
  %max.1 = select i1 %cmp15, double %47, double 0xFFEFFFFFFFFFFFFF
  %48 = extractelement <4 x double> %46, i64 1
  %cmp15.1 = fcmp ogt double %48, %max.1
  %max.1.1 = select i1 %cmp15.1, double %48, double %max.1
  %49 = extractelement <4 x double> %46, i64 2
  %cmp15.2 = fcmp ogt double %49, %max.1.1
  %max.1.2 = select i1 %cmp15.2, double %49, double %max.1.1
  %50 = extractelement <4 x double> %46, i64 3
  %cmp15.3 = fcmp ogt double %50, %max.1.2
  %51 = select i1 %cmp15.1, i64 2, i64 1
  %52 = select i1 %cmp15.2, i64 3, i64 %51
  %53 = select i1 %cmp15.3, i64 4, i64 %52
  %arrayidx22 = getelementptr inbounds i64, i64* %verification, i64 %indvars.iv
  store i64 %53, i64* %arrayidx22, align 8, !tbaa !32
  %54 = icmp eq i64 %indvars.iv, 0
  br i1 %54, label %if.then25, label %if.end27

if.then25:                                        ; preds = %calculate_macro_xs.exit
  store i32 0, i32* %offloaded_to_device, align 4, !tbaa !12
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %calculate_macro_xs.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %55 = load i32, i32* %.omp.ub, align 4, !tbaa !12
  %56 = sext i32 %55 to i64
  %cmp7.not.not = icmp slt i64 %indvars.iv, %56
  br i1 %cmp7.not.not, label %omp.inner.for.body, label %omp.loop.exit

omp.loop.exit:                                    ; preds = %if.end27, %omp.precond.then
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @2, i32 %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #4
  br label %omp.precond.end

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !callback !49 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_push_target_tripcount_mapper(%struct.ident_t*, i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__tgt_target_teams_mapper(%struct.ident_t*, i64, i8*, i32, i8**, i8**, i64*, i64*, i8**, i8**, i32, i32) local_unnamed_addr #4

declare void @__apollo_region_end(i8*) local_unnamed_addr

; Function Attrs: nofree nounwind uwtable
define dso_local void @calculate_micro_xs_doppler(double* nocapture noundef writeonly %micro_xs, i32 noundef %nuc, double noundef %E, %struct.Input* nocapture noundef readonly byval(%struct.Input) align 8 %input, i32* nocapture noundef readonly %n_windows, double* nocapture noundef readonly %pseudo_K0RS, %struct.Window* nocapture noundef readonly %windows, %struct.Pole* nocapture noundef readonly %poles, i32 noundef %max_num_windows, i32 noundef %max_num_poles) local_unnamed_addr #9 {
entry:
  %sigTfactors = alloca [4 x %struct.RSComplex], align 16
  %idxprom = sext i32 %nuc to i64
  %arrayidx = getelementptr inbounds i32, i32* %n_windows, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !12
  %conv = sitofp i32 %0 to double
  %div = fdiv double 1.000000e+00, %conv
  %div1 = fdiv double %E, %div
  %conv2 = fptosi double %div1 to i32
  %cmp = icmp eq i32 %0, %conv2
  %dec = sext i1 %cmp to i32
  %1 = bitcast [4 x %struct.RSComplex]* %sigTfactors to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #4
  %input73.sroa.3.0..sroa_idx95 = getelementptr inbounds %struct.Input, %struct.Input* %input, i64 0, i32 6
  %input73.sroa.3.0.copyload = load i32, i32* %input73.sroa.3.0..sroa_idx95, align 8
  %mul.i = mul nsw i32 %input73.sroa.3.0.copyload, %nuc
  %2 = sext i32 %mul.i to i64
  %arrayidx.i = getelementptr inbounds double, double* %pseudo_K0RS, i64 %2
  %3 = load double, double* %arrayidx.i, align 8, !tbaa !45
  %call.i = tail call double @sqrt(double noundef %E) #4
  %mul1.i = fmul double %3, %call.i
  %mul24.i = fmul double %mul1.i, 2.000000e+00
  %call25.i = tail call double @cos(double noundef %mul24.i) #4
  %r.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %sigTfactors, i64 0, i64 0, i32 0
  store double %call25.i, double* %r.i, align 16, !tbaa !51
  %call28.i = tail call double @sin(double noundef %mul24.i) #4
  %fneg29.i = fneg double %call28.i
  %i32.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %sigTfactors, i64 0, i64 0, i32 1
  store double %fneg29.i, double* %i32.i, align 8, !tbaa !53
  %4 = add nsw i64 %2, 1
  %arrayidx.1.i = getelementptr inbounds double, double* %pseudo_K0RS, i64 %4
  %5 = load double, double* %arrayidx.1.i, align 8, !tbaa !45
  %call.1.i = tail call double @sqrt(double noundef %E) #4
  %mul1.1.i = fmul double %5, %call.1.i
  %call3.1.i = tail call double @atan(double noundef %mul1.1.i) #4
  %sub.1.i = fadd double %mul1.1.i, %call3.1.i
  %mul24.1.i = fmul double %sub.1.i, 2.000000e+00
  %call25.1.i = tail call double @cos(double noundef %mul24.1.i) #4
  %r.1.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %sigTfactors, i64 0, i64 1, i32 0
  store double %call25.1.i, double* %r.1.i, align 16, !tbaa !51
  %call28.1.i = tail call double @sin(double noundef %mul24.1.i) #4
  %fneg29.1.i = fneg double %call28.1.i
  %i32.1.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %sigTfactors, i64 0, i64 1, i32 1
  store double %fneg29.1.i, double* %i32.1.i, align 8, !tbaa !53
  %6 = add nsw i64 %2, 2
  %arrayidx.2.i = getelementptr inbounds double, double* %pseudo_K0RS, i64 %6
  %7 = load double, double* %arrayidx.2.i, align 8, !tbaa !45
  %call.2.i = tail call double @sqrt(double noundef %E) #4
  %mul1.2.i = fmul double %7, %call.2.i
  %mul6.2.i = fmul double %mul1.2.i, 3.000000e+00
  %neg.2.i = fneg double %mul1.2.i
  %8 = tail call double @llvm.fmuladd.f64(double %neg.2.i, double %mul1.2.i, double 3.000000e+00) #4
  %div.2.i = fdiv double %mul6.2.i, %8
  %call8.2.i = tail call double @atan(double noundef %div.2.i) #4
  %sub9.2.i = fsub double %mul1.2.i, %call8.2.i
  %mul24.2.i = fmul double %sub9.2.i, 2.000000e+00
  %call25.2.i = tail call double @cos(double noundef %mul24.2.i) #4
  %r.2.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %sigTfactors, i64 0, i64 2, i32 0
  store double %call25.2.i, double* %r.2.i, align 16, !tbaa !51
  %call28.2.i = tail call double @sin(double noundef %mul24.2.i) #4
  %fneg29.2.i = fneg double %call28.2.i
  %i32.2.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %sigTfactors, i64 0, i64 2, i32 1
  store double %fneg29.2.i, double* %i32.2.i, align 8, !tbaa !53
  %9 = add nsw i64 %2, 3
  %arrayidx.3.i = getelementptr inbounds double, double* %pseudo_K0RS, i64 %9
  %10 = load double, double* %arrayidx.3.i, align 8, !tbaa !45
  %call.3.i = tail call double @sqrt(double noundef %E) #4
  %mul1.3.i = fmul double %10, %call.3.i
  %neg14.3.i = fneg double %mul1.3.i
  %11 = tail call double @llvm.fmuladd.f64(double %neg14.3.i, double %mul1.3.i, double 1.500000e+01) #4
  %mul15.3.i = fmul double %mul1.3.i, %11
  %neg18.3.i = fmul double %mul1.3.i, -6.000000e+00
  %12 = tail call double @llvm.fmuladd.f64(double %neg18.3.i, double %mul1.3.i, double 1.500000e+01) #4
  %div19.3.i = fdiv double %mul15.3.i, %12
  %call20.3.i = tail call double @atan(double noundef %div19.3.i) #4
  %sub21.3.i = fsub double %mul1.3.i, %call20.3.i
  %mul24.3.i = fmul double %sub21.3.i, 2.000000e+00
  %call25.3.i = tail call double @cos(double noundef %mul24.3.i) #4
  %r.3.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %sigTfactors, i64 0, i64 3, i32 0
  store double %call25.3.i, double* %r.3.i, align 16, !tbaa !51
  %call28.3.i = tail call double @sin(double noundef %mul24.3.i) #4
  %fneg29.3.i = fneg double %call28.3.i
  %i32.3.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %sigTfactors, i64 0, i64 3, i32 1
  store double %fneg29.3.i, double* %i32.3.i, align 8, !tbaa !53
  %mul = mul nsw i32 %max_num_windows, %nuc
  %spec.select = add i32 %mul, %conv2
  %add = add i32 %spec.select, %dec
  %idxprom6 = sext i32 %add to i64
  %w.sroa.0.0..sroa_idx = getelementptr inbounds %struct.Window, %struct.Window* %windows, i64 %idxprom6, i32 0
  %13 = bitcast double* %w.sroa.0.0..sroa_idx to <2 x double>*
  %14 = load <2 x double>, <2 x double>* %13, align 8
  %w.sroa.5.0..sroa_idx41 = getelementptr inbounds %struct.Window, %struct.Window* %windows, i64 %idxprom6, i32 2
  %w.sroa.5.0.copyload = load double, double* %w.sroa.5.0..sroa_idx41, align 8, !tbaa.struct !54
  %w.sroa.6.0..sroa_idx43 = getelementptr inbounds %struct.Window, %struct.Window* %windows, i64 %idxprom6, i32 3
  %w.sroa.6.0.copyload = load i32, i32* %w.sroa.6.0..sroa_idx43, align 8, !tbaa.struct !55
  %w.sroa.7.0..sroa_idx45 = getelementptr inbounds %struct.Window, %struct.Window* %windows, i64 %idxprom6, i32 4
  %w.sroa.7.0.copyload = load i32, i32* %w.sroa.7.0..sroa_idx45, align 4, !tbaa.struct !56
  %15 = insertelement <2 x double> poison, double %E, i64 0
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = fmul <2 x double> %14, %16
  %mul10 = fmul double %w.sroa.5.0.copyload, %E
  %cmp11104 = icmp slt i32 %w.sroa.6.0.copyload, %w.sroa.7.0.copyload
  br i1 %cmp11104, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %mul13 = mul nsw i32 %max_num_poles, %nuc
  %18 = sext i32 %w.sroa.6.0.copyload to i64
  %19 = sext i32 %mul13 to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %sigF.0.lcssa = phi double [ %mul10, %entry ], [ %add36, %for.body ]
  %20 = phi <2 x double> [ %17, %entry ], [ %47, %for.body ]
  %shift = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> <i32 1, i32 undef>
  %21 = fsub <2 x double> %20, %shift
  %sub = extractelement <2 x double> %21, i64 0
  %22 = bitcast double* %micro_xs to <2 x double>*
  store <2 x double> %20, <2 x double>* %22, align 8, !tbaa !45
  %arrayidx39 = getelementptr inbounds double, double* %micro_xs, i64 2
  store double %sigF.0.lcssa, double* %arrayidx39, align 8, !tbaa !45
  %arrayidx40 = getelementptr inbounds double, double* %micro_xs, i64 3
  store double %sub, double* %arrayidx40, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #4
  ret void

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %18, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %sigF.0106 = phi double [ %mul10, %for.body.preheader ], [ %add36, %for.body ]
  %23 = phi <2 x double> [ %17, %for.body.preheader ], [ %47, %for.body ]
  %24 = add nsw i64 %indvars.iv, %19
  %pole.sroa.0.0..sroa_idx = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %24, i32 0, i32 0
  %pole.sroa.0.0.copyload = load double, double* %pole.sroa.0.0..sroa_idx, align 8, !tbaa.struct !57
  %pole.sroa.4.0..sroa_idx14 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %24, i32 0, i32 1
  %pole.sroa.4.0.copyload = load double, double* %pole.sroa.4.0..sroa_idx14, align 8, !tbaa.struct !60
  %pole.sroa.5.0..sroa_idx16 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %24, i32 1, i32 0
  %pole.sroa.5.0.copyload = load double, double* %pole.sroa.5.0..sroa_idx16, align 8, !tbaa.struct !61
  %pole.sroa.6.0..sroa_idx18 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %24, i32 1, i32 1
  %pole.sroa.6.0.copyload = load double, double* %pole.sroa.6.0..sroa_idx18, align 8, !tbaa.struct !62
  %pole.sroa.7.0..sroa_idx20 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %24, i32 2, i32 0
  %pole.sroa.7.0.copyload = load double, double* %pole.sroa.7.0..sroa_idx20, align 8, !tbaa.struct !63
  %pole.sroa.8.0..sroa_idx22 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %24, i32 2, i32 1
  %pole.sroa.8.0.copyload = load double, double* %pole.sroa.8.0..sroa_idx22, align 8, !tbaa.struct !64
  %pole.sroa.9.0..sroa_idx24 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %24, i32 3, i32 0
  %pole.sroa.9.0.copyload = load double, double* %pole.sroa.9.0..sroa_idx24, align 8, !tbaa.struct !65
  %pole.sroa.10.0..sroa_idx26 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %24, i32 3, i32 1
  %pole.sroa.10.0.copyload = load double, double* %pole.sroa.10.0..sroa_idx26, align 8, !tbaa.struct !66
  %pole.sroa.11.0..sroa_idx28 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %24, i32 4
  %pole.sroa.11.0.copyload = load i16, i16* %pole.sroa.11.0..sroa_idx28, align 8, !tbaa.struct !67
  %sub.i = fsub double %E, %pole.sroa.0.0.copyload
  %sub4.i = fsub double 0.000000e+00, %pole.sroa.4.0.copyload
  %neg.i = fmul double %sub4.i, -0.000000e+00
  %25 = tail call double @llvm.fmuladd.f64(double %sub.i, double 5.000000e-01, double %neg.i) #4
  %mul5.i = fmul double %sub4.i, 5.000000e-01
  %26 = tail call double @llvm.fmuladd.f64(double %sub.i, double 0.000000e+00, double %mul5.i) #4
  %call21 = tail call { double, double } @fast_nuclear_W(double %25, double %26)
  %27 = extractvalue { double, double } %call21, 0
  %28 = extractvalue { double, double } %call21, 1
  %idxprom23 = sext i16 %pole.sroa.11.0.copyload to i64
  %29 = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %sigTfactors, i64 0, i64 %idxprom23, i32 0
  %30 = load double, double* %29, align 16
  %31 = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %sigTfactors, i64 0, i64 %idxprom23, i32 1
  %32 = load double, double* %31, align 8
  %33 = fneg double %28
  %neg.i76 = fmul double %32, %33
  %34 = tail call double @llvm.fmuladd.f64(double %27, double %30, double %neg.i76) #4
  %mul5.i77 = fmul double %28, %30
  %35 = tail call double @llvm.fmuladd.f64(double %27, double %32, double %mul5.i77) #4
  %36 = insertelement <2 x double> poison, double %pole.sroa.6.0.copyload, i64 0
  %37 = insertelement <2 x double> %36, double %pole.sroa.8.0.copyload, i64 1
  %38 = fneg <2 x double> %37
  %39 = insertelement <2 x double> poison, double %35, i64 0
  %40 = insertelement <2 x double> %39, double %28, i64 1
  %41 = fmul <2 x double> %40, %38
  %42 = insertelement <2 x double> poison, double %pole.sroa.5.0.copyload, i64 0
  %43 = insertelement <2 x double> %42, double %pole.sroa.7.0.copyload, i64 1
  %44 = insertelement <2 x double> poison, double %34, i64 0
  %45 = insertelement <2 x double> %44, double %27, i64 1
  %46 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %43, <2 x double> %45, <2 x double> %41)
  %47 = fadd <2 x double> %23, %46
  %48 = fneg double %pole.sroa.10.0.copyload
  %neg.i88 = fmul double %28, %48
  %49 = tail call double @llvm.fmuladd.f64(double %pole.sroa.9.0.copyload, double %27, double %neg.i88) #4
  %add36 = fadd double %sigF.0106, %49
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %w.sroa.7.0.copyload, %lftr.wideiv
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @calculate_micro_xs(double* nocapture noundef writeonly %micro_xs, i32 noundef %nuc, double noundef %E, %struct.Input* nocapture noundef readonly byval(%struct.Input) align 8 %input, i32* nocapture noundef readonly %n_windows, double* nocapture noundef readonly %pseudo_K0RS, %struct.Window* nocapture noundef readonly %windows, %struct.Pole* nocapture noundef readonly %poles, i32 noundef %max_num_windows, i32 noundef %max_num_poles) local_unnamed_addr #9 {
entry:
  %sigTfactors = alloca [4 x %struct.RSComplex], align 16
  %idxprom = sext i32 %nuc to i64
  %arrayidx = getelementptr inbounds i32, i32* %n_windows, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !12
  %conv = sitofp i32 %0 to double
  %div = fdiv double 1.000000e+00, %conv
  %div1 = fdiv double %E, %div
  %conv2 = fptosi double %div1 to i32
  %cmp = icmp eq i32 %0, %conv2
  %dec = sext i1 %cmp to i32
  %1 = bitcast [4 x %struct.RSComplex]* %sigTfactors to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #4
  %input81.sroa.3.0..sroa_idx107 = getelementptr inbounds %struct.Input, %struct.Input* %input, i64 0, i32 6
  %input81.sroa.3.0.copyload = load i32, i32* %input81.sroa.3.0..sroa_idx107, align 8
  %mul.i = mul nsw i32 %input81.sroa.3.0.copyload, %nuc
  %2 = sext i32 %mul.i to i64
  %arrayidx.i = getelementptr inbounds double, double* %pseudo_K0RS, i64 %2
  %3 = load double, double* %arrayidx.i, align 8, !tbaa !45
  %call.i = tail call double @sqrt(double noundef %E) #4
  %mul1.i = fmul double %3, %call.i
  %mul24.i = fmul double %mul1.i, 2.000000e+00
  %call25.i = tail call double @cos(double noundef %mul24.i) #4
  %r.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %sigTfactors, i64 0, i64 0, i32 0
  store double %call25.i, double* %r.i, align 16, !tbaa !51
  %call28.i = tail call double @sin(double noundef %mul24.i) #4
  %fneg29.i = fneg double %call28.i
  %i32.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %sigTfactors, i64 0, i64 0, i32 1
  store double %fneg29.i, double* %i32.i, align 8, !tbaa !53
  %4 = add nsw i64 %2, 1
  %arrayidx.1.i = getelementptr inbounds double, double* %pseudo_K0RS, i64 %4
  %5 = load double, double* %arrayidx.1.i, align 8, !tbaa !45
  %call.1.i = tail call double @sqrt(double noundef %E) #4
  %mul1.1.i = fmul double %5, %call.1.i
  %call3.1.i = tail call double @atan(double noundef %mul1.1.i) #4
  %sub.1.i = fadd double %mul1.1.i, %call3.1.i
  %mul24.1.i = fmul double %sub.1.i, 2.000000e+00
  %call25.1.i = tail call double @cos(double noundef %mul24.1.i) #4
  %r.1.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %sigTfactors, i64 0, i64 1, i32 0
  store double %call25.1.i, double* %r.1.i, align 16, !tbaa !51
  %call28.1.i = tail call double @sin(double noundef %mul24.1.i) #4
  %fneg29.1.i = fneg double %call28.1.i
  %i32.1.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %sigTfactors, i64 0, i64 1, i32 1
  store double %fneg29.1.i, double* %i32.1.i, align 8, !tbaa !53
  %6 = add nsw i64 %2, 2
  %arrayidx.2.i = getelementptr inbounds double, double* %pseudo_K0RS, i64 %6
  %7 = load double, double* %arrayidx.2.i, align 8, !tbaa !45
  %call.2.i = tail call double @sqrt(double noundef %E) #4
  %mul1.2.i = fmul double %7, %call.2.i
  %mul6.2.i = fmul double %mul1.2.i, 3.000000e+00
  %neg.2.i = fneg double %mul1.2.i
  %8 = tail call double @llvm.fmuladd.f64(double %neg.2.i, double %mul1.2.i, double 3.000000e+00) #4
  %div.2.i = fdiv double %mul6.2.i, %8
  %call8.2.i = tail call double @atan(double noundef %div.2.i) #4
  %sub9.2.i = fsub double %mul1.2.i, %call8.2.i
  %mul24.2.i = fmul double %sub9.2.i, 2.000000e+00
  %call25.2.i = tail call double @cos(double noundef %mul24.2.i) #4
  %r.2.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %sigTfactors, i64 0, i64 2, i32 0
  store double %call25.2.i, double* %r.2.i, align 16, !tbaa !51
  %call28.2.i = tail call double @sin(double noundef %mul24.2.i) #4
  %fneg29.2.i = fneg double %call28.2.i
  %i32.2.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %sigTfactors, i64 0, i64 2, i32 1
  store double %fneg29.2.i, double* %i32.2.i, align 8, !tbaa !53
  %9 = add nsw i64 %2, 3
  %arrayidx.3.i = getelementptr inbounds double, double* %pseudo_K0RS, i64 %9
  %10 = load double, double* %arrayidx.3.i, align 8, !tbaa !45
  %call.3.i = tail call double @sqrt(double noundef %E) #4
  %mul1.3.i = fmul double %10, %call.3.i
  %neg14.3.i = fneg double %mul1.3.i
  %11 = tail call double @llvm.fmuladd.f64(double %neg14.3.i, double %mul1.3.i, double 1.500000e+01) #4
  %mul15.3.i = fmul double %mul1.3.i, %11
  %neg18.3.i = fmul double %mul1.3.i, -6.000000e+00
  %12 = tail call double @llvm.fmuladd.f64(double %neg18.3.i, double %mul1.3.i, double 1.500000e+01) #4
  %div19.3.i = fdiv double %mul15.3.i, %12
  %call20.3.i = tail call double @atan(double noundef %div19.3.i) #4
  %sub21.3.i = fsub double %mul1.3.i, %call20.3.i
  %mul24.3.i = fmul double %sub21.3.i, 2.000000e+00
  %call25.3.i = tail call double @cos(double noundef %mul24.3.i) #4
  %r.3.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %sigTfactors, i64 0, i64 3, i32 0
  store double %call25.3.i, double* %r.3.i, align 16, !tbaa !51
  %call28.3.i = tail call double @sin(double noundef %mul24.3.i) #4
  %fneg29.3.i = fneg double %call28.3.i
  %i32.3.i = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %sigTfactors, i64 0, i64 3, i32 1
  store double %fneg29.3.i, double* %i32.3.i, align 8, !tbaa !53
  %mul = mul nsw i32 %max_num_windows, %nuc
  %spec.select = add i32 %mul, %conv2
  %add = add i32 %spec.select, %dec
  %idxprom6 = sext i32 %add to i64
  %w.sroa.0.0..sroa_idx = getelementptr inbounds %struct.Window, %struct.Window* %windows, i64 %idxprom6, i32 0
  %13 = bitcast double* %w.sroa.0.0..sroa_idx to <2 x double>*
  %14 = load <2 x double>, <2 x double>* %13, align 8
  %w.sroa.5.0..sroa_idx48 = getelementptr inbounds %struct.Window, %struct.Window* %windows, i64 %idxprom6, i32 2
  %w.sroa.5.0.copyload = load double, double* %w.sroa.5.0..sroa_idx48, align 8, !tbaa.struct !54
  %w.sroa.6.0..sroa_idx50 = getelementptr inbounds %struct.Window, %struct.Window* %windows, i64 %idxprom6, i32 3
  %w.sroa.6.0.copyload = load i32, i32* %w.sroa.6.0..sroa_idx50, align 8, !tbaa.struct !55
  %w.sroa.7.0..sroa_idx52 = getelementptr inbounds %struct.Window, %struct.Window* %windows, i64 %idxprom6, i32 4
  %w.sroa.7.0.copyload = load i32, i32* %w.sroa.7.0..sroa_idx52, align 4, !tbaa.struct !56
  %15 = insertelement <2 x double> poison, double %E, i64 0
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = fmul <2 x double> %14, %16
  %mul10 = fmul double %w.sroa.5.0.copyload, %E
  %18 = tail call double @llvm.fmuladd.f64(double %E, double %E, double 0.000000e+00) #4
  %cmp11116 = icmp slt i32 %w.sroa.6.0.copyload, %w.sroa.7.0.copyload
  br i1 %cmp11116, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %mul13 = mul nsw i32 %max_num_poles, %nuc
  %19 = sext i32 %w.sroa.6.0.copyload to i64
  %20 = sext i32 %mul13 to i64
  %wide.trip.count = sext i32 %w.sroa.7.0.copyload to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %sigF.0.lcssa = phi double [ %mul10, %entry ], [ %add38, %for.body ]
  %21 = phi <2 x double> [ %17, %entry ], [ %49, %for.body ]
  %shift = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> <i32 1, i32 undef>
  %22 = fsub <2 x double> %21, %shift
  %sub = extractelement <2 x double> %22, i64 0
  %23 = bitcast double* %micro_xs to <2 x double>*
  store <2 x double> %21, <2 x double>* %23, align 8, !tbaa !45
  %arrayidx41 = getelementptr inbounds double, double* %micro_xs, i64 2
  store double %sigF.0.lcssa, double* %arrayidx41, align 8, !tbaa !45
  %arrayidx42 = getelementptr inbounds double, double* %micro_xs, i64 3
  store double %sub, double* %arrayidx42, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #4
  ret void

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %19, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %sigF.0118 = phi double [ %mul10, %for.body.preheader ], [ %add38, %for.body ]
  %24 = phi <2 x double> [ %17, %for.body.preheader ], [ %49, %for.body ]
  %25 = add nsw i64 %indvars.iv, %20
  %pole.sroa.0.0..sroa_idx = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %25, i32 0, i32 0
  %pole.sroa.0.0.copyload = load double, double* %pole.sroa.0.0..sroa_idx, align 8, !tbaa.struct !57
  %pole.sroa.4.0..sroa_idx14 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %25, i32 0, i32 1
  %pole.sroa.4.0.copyload = load double, double* %pole.sroa.4.0..sroa_idx14, align 8, !tbaa.struct !60
  %pole.sroa.5.0..sroa_idx16 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %25, i32 1, i32 0
  %pole.sroa.5.0.copyload = load double, double* %pole.sroa.5.0..sroa_idx16, align 8, !tbaa.struct !61
  %pole.sroa.6.0..sroa_idx18 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %25, i32 1, i32 1
  %pole.sroa.6.0.copyload = load double, double* %pole.sroa.6.0..sroa_idx18, align 8, !tbaa.struct !62
  %pole.sroa.7.0..sroa_idx20 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %25, i32 2, i32 0
  %pole.sroa.7.0.copyload = load double, double* %pole.sroa.7.0..sroa_idx20, align 8, !tbaa.struct !63
  %pole.sroa.8.0..sroa_idx22 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %25, i32 2, i32 1
  %pole.sroa.8.0.copyload = load double, double* %pole.sroa.8.0..sroa_idx22, align 8, !tbaa.struct !64
  %pole.sroa.9.0..sroa_idx24 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %25, i32 3, i32 0
  %pole.sroa.9.0.copyload = load double, double* %pole.sroa.9.0..sroa_idx24, align 8, !tbaa.struct !65
  %pole.sroa.10.0..sroa_idx26 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %25, i32 3, i32 1
  %pole.sroa.10.0.copyload = load double, double* %pole.sroa.10.0..sroa_idx26, align 8, !tbaa.struct !66
  %pole.sroa.11.0..sroa_idx28 = getelementptr inbounds %struct.Pole, %struct.Pole* %poles, i64 %25, i32 4
  %pole.sroa.11.0.copyload = load i16, i16* %pole.sroa.11.0..sroa_idx28, align 8, !tbaa.struct !67
  %call = tail call double @sqrt(double noundef %E) #4
  %sub.i = fsub double %pole.sroa.0.0.copyload, %call
  %mul3.i = fmul double %pole.sroa.4.0.copyload, %pole.sroa.4.0.copyload
  %26 = tail call double @llvm.fmuladd.f64(double %sub.i, double %sub.i, double %mul3.i) #4
  %27 = tail call double @llvm.fmuladd.f64(double %sub.i, double 0.000000e+00, double %pole.sroa.4.0.copyload) #4
  %div.i = fdiv double %27, %26
  %neg.i = fmul double %pole.sroa.4.0.copyload, 0.000000e+00
  %28 = fsub double %sub.i, %neg.i
  %div7.i = fdiv double %28, %26
  %mul4.i = fmul double %div7.i, 0.000000e+00
  %29 = tail call double @llvm.fmuladd.f64(double %div.i, double %E, double %mul4.i) #4
  %div.i84 = fdiv double %29, %18
  %neg.i85 = fmul double %div.i, -0.000000e+00
  %30 = tail call double @llvm.fmuladd.f64(double %div7.i, double %E, double %neg.i85) #4
  %div7.i86 = fdiv double %30, %18
  %idxprom25 = sext i16 %pole.sroa.11.0.copyload to i64
  %31 = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %sigTfactors, i64 0, i64 %idxprom25, i32 0
  %32 = load double, double* %31, align 16
  %33 = getelementptr inbounds [4 x %struct.RSComplex], [4 x %struct.RSComplex]* %sigTfactors, i64 0, i64 %idxprom25, i32 1
  %34 = load double, double* %33, align 8
  %35 = fneg double %div7.i86
  %neg.i89 = fmul double %34, %35
  %36 = tail call double @llvm.fmuladd.f64(double %div.i84, double %32, double %neg.i89) #4
  %mul5.i = fmul double %32, %div7.i86
  %37 = tail call double @llvm.fmuladd.f64(double %div.i84, double %34, double %mul5.i) #4
  %38 = insertelement <2 x double> poison, double %pole.sroa.6.0.copyload, i64 0
  %39 = insertelement <2 x double> %38, double %pole.sroa.8.0.copyload, i64 1
  %40 = fneg <2 x double> %39
  %41 = insertelement <2 x double> poison, double %37, i64 0
  %42 = insertelement <2 x double> %41, double %div7.i86, i64 1
  %43 = fmul <2 x double> %42, %40
  %44 = insertelement <2 x double> poison, double %pole.sroa.5.0.copyload, i64 0
  %45 = insertelement <2 x double> %44, double %pole.sroa.7.0.copyload, i64 1
  %46 = insertelement <2 x double> poison, double %36, i64 0
  %47 = insertelement <2 x double> %46, double %div.i84, i64 1
  %48 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %45, <2 x double> %47, <2 x double> %43)
  %49 = fadd <2 x double> %24, %48
  %50 = fneg double %pole.sroa.10.0.copyload
  %neg.i100 = fmul double %div7.i86, %50
  %51 = tail call double @llvm.fmuladd.f64(double %pole.sroa.9.0.copyload, double %div.i84, double %neg.i100) #4
  %add38 = fadd double %sigF.0118, %51
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: nofree nounwind uwtable
define dso_local void @calculate_sig_T(i32 noundef %nuc, double noundef %E, %struct.Input* nocapture noundef readonly byval(%struct.Input) align 8 %input, double* nocapture noundef readonly %pseudo_K0RS, %struct.RSComplex* nocapture noundef writeonly %sigTfactors) local_unnamed_addr #9 {
if.end23.3:
  %numL = getelementptr inbounds %struct.Input, %struct.Input* %input, i64 0, i32 6
  %0 = load i32, i32* %numL, align 8, !tbaa !68
  %mul = mul nsw i32 %0, %nuc
  %1 = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds double, double* %pseudo_K0RS, i64 %1
  %2 = load double, double* %arrayidx, align 8, !tbaa !45
  %call = tail call double @sqrt(double noundef %E) #4
  %mul1 = fmul double %2, %call
  %mul24 = fmul double %mul1, 2.000000e+00
  %call25 = tail call double @cos(double noundef %mul24) #4
  %r = getelementptr inbounds %struct.RSComplex, %struct.RSComplex* %sigTfactors, i64 0, i32 0
  store double %call25, double* %r, align 8, !tbaa !51
  %call28 = tail call double @sin(double noundef %mul24) #4
  %fneg29 = fneg double %call28
  %i32 = getelementptr inbounds %struct.RSComplex, %struct.RSComplex* %sigTfactors, i64 0, i32 1
  store double %fneg29, double* %i32, align 8, !tbaa !53
  %3 = add nsw i64 %1, 1
  %arrayidx.1 = getelementptr inbounds double, double* %pseudo_K0RS, i64 %3
  %4 = load double, double* %arrayidx.1, align 8, !tbaa !45
  %call.1 = tail call double @sqrt(double noundef %E) #4
  %mul1.1 = fmul double %4, %call.1
  %call3.1 = tail call double @atan(double noundef %mul1.1) #4
  %sub.1 = fadd double %mul1.1, %call3.1
  %mul24.1 = fmul double %sub.1, 2.000000e+00
  %call25.1 = tail call double @cos(double noundef %mul24.1) #4
  %r.1 = getelementptr inbounds %struct.RSComplex, %struct.RSComplex* %sigTfactors, i64 1, i32 0
  store double %call25.1, double* %r.1, align 8, !tbaa !51
  %call28.1 = tail call double @sin(double noundef %mul24.1) #4
  %fneg29.1 = fneg double %call28.1
  %i32.1 = getelementptr inbounds %struct.RSComplex, %struct.RSComplex* %sigTfactors, i64 1, i32 1
  store double %fneg29.1, double* %i32.1, align 8, !tbaa !53
  %5 = add nsw i64 %1, 2
  %arrayidx.2 = getelementptr inbounds double, double* %pseudo_K0RS, i64 %5
  %6 = load double, double* %arrayidx.2, align 8, !tbaa !45
  %call.2 = tail call double @sqrt(double noundef %E) #4
  %mul1.2 = fmul double %6, %call.2
  %mul6.2 = fmul double %mul1.2, 3.000000e+00
  %neg.2 = fneg double %mul1.2
  %7 = tail call double @llvm.fmuladd.f64(double %neg.2, double %mul1.2, double 3.000000e+00)
  %div.2 = fdiv double %mul6.2, %7
  %call8.2 = tail call double @atan(double noundef %div.2) #4
  %sub9.2 = fsub double %mul1.2, %call8.2
  %mul24.2 = fmul double %sub9.2, 2.000000e+00
  %call25.2 = tail call double @cos(double noundef %mul24.2) #4
  %r.2 = getelementptr inbounds %struct.RSComplex, %struct.RSComplex* %sigTfactors, i64 2, i32 0
  store double %call25.2, double* %r.2, align 8, !tbaa !51
  %call28.2 = tail call double @sin(double noundef %mul24.2) #4
  %fneg29.2 = fneg double %call28.2
  %i32.2 = getelementptr inbounds %struct.RSComplex, %struct.RSComplex* %sigTfactors, i64 2, i32 1
  store double %fneg29.2, double* %i32.2, align 8, !tbaa !53
  %8 = add nsw i64 %1, 3
  %arrayidx.3 = getelementptr inbounds double, double* %pseudo_K0RS, i64 %8
  %9 = load double, double* %arrayidx.3, align 8, !tbaa !45
  %call.3 = tail call double @sqrt(double noundef %E) #4
  %mul1.3 = fmul double %9, %call.3
  %neg14.3 = fneg double %mul1.3
  %10 = tail call double @llvm.fmuladd.f64(double %neg14.3, double %mul1.3, double 1.500000e+01)
  %mul15.3 = fmul double %mul1.3, %10
  %neg18.3 = fmul double %mul1.3, -6.000000e+00
  %11 = tail call double @llvm.fmuladd.f64(double %neg18.3, double %mul1.3, double 1.500000e+01)
  %div19.3 = fdiv double %mul15.3, %11
  %call20.3 = tail call double @atan(double noundef %div19.3) #4
  %sub21.3 = fsub double %mul1.3, %call20.3
  %mul24.3 = fmul double %sub21.3, 2.000000e+00
  %call25.3 = tail call double @cos(double noundef %mul24.3) #4
  %r.3 = getelementptr inbounds %struct.RSComplex, %struct.RSComplex* %sigTfactors, i64 3, i32 0
  store double %call25.3, double* %r.3, align 8, !tbaa !51
  %call28.3 = tail call double @sin(double noundef %mul24.3) #4
  %fneg29.3 = fneg double %call28.3
  %i32.3 = getelementptr inbounds %struct.RSComplex, %struct.RSComplex* %sigTfactors, i64 3, i32 1
  store double %fneg29.3, double* %i32.3, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local double @sqrt(double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local { double, double } @c_div(double %A.coerce0, double %A.coerce1, double %B.coerce0, double %B.coerce1) local_unnamed_addr #13 {
entry:
  %mul4 = fmul double %A.coerce1, %B.coerce1
  %0 = tail call double @llvm.fmuladd.f64(double %A.coerce0, double %B.coerce0, double %mul4)
  %1 = fneg double %A.coerce0
  %2 = insertelement <2 x double> poison, double %B.coerce1, i64 0
  %3 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer
  %4 = insertelement <2 x double> poison, double %B.coerce1, i64 1
  %5 = insertelement <2 x double> %4, double %1, i64 0
  %6 = fmul <2 x double> %3, %5
  %7 = insertelement <2 x double> poison, double %A.coerce1, i64 0
  %8 = insertelement <2 x double> %7, double %B.coerce0, i64 1
  %9 = insertelement <2 x double> poison, double %B.coerce0, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %10, <2 x double> %6)
  %12 = insertelement <2 x double> poison, double %0, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> %11, <2 x i32> <i32 0, i32 2>
  %14 = shufflevector <2 x double> %11, <2 x double> undef, <2 x i32> <i32 1, i32 1>
  %15 = fdiv <2 x double> %13, %14
  %16 = extractelement <2 x double> %15, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %16, 0
  %17 = extractelement <2 x double> %15, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %17, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local { double, double } @c_sub(double %A.coerce0, double %A.coerce1, double %B.coerce0, double %B.coerce1) local_unnamed_addr #14 {
entry:
  %sub = fsub double %A.coerce0, %B.coerce0
  %sub4 = fsub double %A.coerce1, %B.coerce1
  %.fca.0.insert = insertvalue { double, double } poison, double %sub, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %sub4, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local { double, double } @c_mul(double %A.coerce0, double %A.coerce1, double %B.coerce0, double %B.coerce1) local_unnamed_addr #13 {
entry:
  %0 = fneg double %A.coerce1
  %1 = insertelement <2 x double> poison, double %A.coerce1, i64 1
  %2 = insertelement <2 x double> %1, double %0, i64 0
  %3 = insertelement <2 x double> poison, double %B.coerce1, i64 0
  %4 = insertelement <2 x double> %3, double %B.coerce0, i64 1
  %5 = fmul <2 x double> %2, %4
  %6 = insertelement <2 x double> poison, double %A.coerce0, i64 0
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %8 = insertelement <2 x double> poison, double %B.coerce0, i64 0
  %9 = insertelement <2 x double> %8, double %B.coerce1, i64 1
  %10 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %9, <2 x double> %5)
  %11 = extractelement <2 x double> %10, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %11, 0
  %12 = extractelement <2 x double> %10, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %12, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nofree nounwind uwtable writeonly
define dso_local { double, double } @fast_nuclear_W(double %Z.coerce0, double %Z.coerce1) local_unnamed_addr #15 {
entry:
  %mul3.i = fmul double %Z.coerce1, %Z.coerce1
  %0 = tail call double @llvm.fmuladd.f64(double %Z.coerce0, double %Z.coerce0, double %mul3.i) #4
  %call.i = tail call double @sqrt(double noundef %0) #4
  %cmp = fcmp olt double %call.i, 6.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %neg.i = fmul double %Z.coerce1, -1.200000e+01
  %1 = tail call double @llvm.fmuladd.f64(double %Z.coerce0, double 0.000000e+00, double %neg.i) #4
  %mul5.i = fmul double %Z.coerce0, 1.200000e+01
  %2 = tail call double @llvm.fmuladd.f64(double %Z.coerce1, double 0.000000e+00, double %mul5.i) #4
  %3 = tail call double @llvm.fmuladd.f64(double %1, double 0x3F30000000000000, double 1.000000e+00) #4
  %mul.i.i = fmul double %3, %3
  %mul1.i.i = fmul double %mul.i.i, %mul.i.i
  %mul2.i.i = fmul double %mul1.i.i, %mul1.i.i
  %mul3.i.i = fmul double %mul2.i.i, %mul2.i.i
  %mul4.i.i = fmul double %mul3.i.i, %mul3.i.i
  %mul5.i.i = fmul double %mul4.i.i, %mul4.i.i
  %mul6.i.i = fmul double %mul5.i.i, %mul5.i.i
  %mul7.i.i = fmul double %mul6.i.i, %mul6.i.i
  %mul8.i.i = fmul double %mul7.i.i, %mul7.i.i
  %mul9.i.i = fmul double %mul8.i.i, %mul8.i.i
  %mul10.i.i = fmul double %mul9.i.i, %mul9.i.i
  %mul11.i.i = fmul double %mul10.i.i, %mul10.i.i
  %call1.i = tail call double @cos(double noundef %2) #4
  %call2.i = tail call double @sin(double noundef %2) #4
  %4 = insertelement <2 x double> poison, double %call2.i, i64 0
  %5 = insertelement <2 x double> %4, double %call1.i, i64 1
  %6 = fmul <2 x double> %5, <double -0.000000e+00, double 0.000000e+00>
  %7 = insertelement <2 x double> poison, double %mul11.i.i, i64 0
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %9 = insertelement <2 x double> poison, double %call1.i, i64 0
  %10 = insertelement <2 x double> %9, double %call2.i, i64 1
  %11 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %10, <2 x double> %6)
  %12 = fsub <2 x double> <double 1.000000e+00, double 0.000000e+00>, %11
  %13 = extractelement <2 x double> %12, i64 1
  %neg.i80 = fneg double %13
  %14 = insertelement <2 x double> poison, double %neg.i80, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> %12, <2 x i32> <i32 0, i32 2>
  %16 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> zeroinitializer, <2 x double> %15)
  %neg.i83 = fmul double %Z.coerce1, -0.000000e+00
  %17 = tail call double @llvm.fmuladd.f64(double %Z.coerce0, double 1.200000e+01, double %neg.i83) #4
  %mul5.i84 = fmul double %Z.coerce0, 0.000000e+00
  %18 = tail call double @llvm.fmuladd.f64(double %Z.coerce1, double 1.200000e+01, double %mul5.i84) #4
  %mul3.i87 = fmul double %18, %18
  %19 = extractelement <2 x double> %16, i64 0
  %20 = fneg double %19
  %21 = insertelement <2 x double> poison, double %18, i64 0
  %22 = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer
  %23 = extractelement <2 x double> %16, i64 1
  %24 = insertelement <2 x double> poison, double %23, i64 0
  %25 = insertelement <2 x double> %24, double %20, i64 1
  %26 = fmul <2 x double> %22, %25
  %27 = insertelement <2 x double> poison, double %17, i64 0
  %28 = shufflevector <2 x double> %27, <2 x double> poison, <2 x i32> zeroinitializer
  %29 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> %28, <2 x double> %26)
  %30 = fneg double %Z.coerce1
  %neg.i130 = fmul double %30, %Z.coerce1
  %31 = tail call double @llvm.fmuladd.f64(double %Z.coerce0, double %Z.coerce0, double %neg.i130) #4
  %mul5.i131 = fmul double %Z.coerce0, %Z.coerce1
  %32 = tail call double @llvm.fmuladd.f64(double %Z.coerce0, double %Z.coerce1, double %mul5.i131) #4
  %neg.i134 = fmul double %32, -0.000000e+00
  %33 = tail call double @llvm.fmuladd.f64(double %31, double 1.440000e+02, double %neg.i134) #4
  %mul5.i135 = fmul double %31, 0.000000e+00
  %34 = tail call double @llvm.fmuladd.f64(double %32, double 1.440000e+02, double %mul5.i135) #4
  %sub4.i139 = fsub double 0.000000e+00, %34
  %mul3.i142 = fmul double %sub4.i139, %sub4.i139
  %35 = insertelement <2 x double> poison, double %sub4.i139, i64 0
  %36 = shufflevector <2 x double> %35, <2 x double> poison, <2 x i32> zeroinitializer
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  %37 = tail call double @llvm.fmuladd.f64(double %17, double %17, double %mul3.i87) #4
  %38 = insertelement <2 x double> poison, double %37, i64 0
  %39 = shufflevector <2 x double> %38, <2 x double> poison, <2 x i32> zeroinitializer
  %40 = fdiv <2 x double> %29, %39
  %41 = shufflevector <2 x double> %78, <2 x double> undef, <2 x i32> <i32 1, i32 0>
  %42 = insertelement <2 x double> poison, double %30, i64 0
  %43 = insertelement <2 x double> %42, double %Z.coerce1, i64 1
  %44 = fmul <2 x double> %41, %43
  %45 = insertelement <2 x double> poison, double %Z.coerce0, i64 0
  %46 = shufflevector <2 x double> %45, <2 x double> poison, <2 x i32> zeroinitializer
  %47 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %46, <2 x double> %78, <2 x double> %44)
  %48 = fmul <2 x double> %47, <double 8.124330e+01, double -8.124330e+01>
  %49 = shufflevector <2 x double> %48, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %50 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %47, <2 x double> zeroinitializer, <2 x double> %49)
  %51 = fadd <2 x double> %40, %50
  br label %return

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ 0, %if.then ], [ %indvars.iv.next, %for.body ]
  %52 = phi <2 x double> [ zeroinitializer, %if.then ], [ %78, %for.body ]
  %arrayidx = getelementptr inbounds [10 x double], [10 x double]* @__const.fast_nuclear_W.neg_1n, i64 0, i64 %indvars.iv
  %53 = load double, double* %arrayidx, align 8, !tbaa !45
  %call1.i117 = tail call double @cos(double noundef %2) #4
  %call2.i118 = tail call double @sin(double noundef %2) #4
  %neg.i.i119 = fmul double %call2.i118, -0.000000e+00
  %54 = tail call double @llvm.fmuladd.f64(double %mul11.i.i, double %call1.i117, double %neg.i.i119) #4
  %mul5.i11.i120 = fmul double %call1.i117, 0.000000e+00
  %55 = tail call double @llvm.fmuladd.f64(double %mul11.i.i, double %call2.i118, double %mul5.i11.i120) #4
  %neg.i123 = fmul double %55, -0.000000e+00
  %56 = tail call double @llvm.fmuladd.f64(double %53, double %54, double %neg.i123) #4
  %mul5.i124 = fmul double %54, 0.000000e+00
  %57 = tail call double @llvm.fmuladd.f64(double %53, double %55, double %mul5.i124) #4
  %sub.i127 = fadd double %56, -1.000000e+00
  %arrayidx22 = getelementptr inbounds [10 x double], [10 x double]* @__const.fast_nuclear_W.denominator_left, i64 0, i64 %indvars.iv
  %58 = load double, double* %arrayidx22, align 8, !tbaa !45
  %sub.i138 = fsub double %58, %33
  %arrayidx31 = getelementptr inbounds [10 x double], [10 x double]* @__const.fast_nuclear_W.an, i64 0, i64 %indvars.iv
  %59 = load double, double* %arrayidx31, align 8, !tbaa !45
  %60 = tail call double @llvm.fmuladd.f64(double %sub.i138, double %sub.i138, double %mul3.i142) #4
  %61 = fneg double %sub.i127
  %62 = insertelement <2 x double> poison, double %57, i64 0
  %63 = insertelement <2 x double> %62, double %61, i64 1
  %64 = fmul <2 x double> %36, %63
  %65 = insertelement <2 x double> poison, double %sub.i127, i64 0
  %66 = insertelement <2 x double> %65, double %57, i64 1
  %67 = insertelement <2 x double> poison, double %sub.i138, i64 0
  %68 = shufflevector <2 x double> %67, <2 x double> poison, <2 x i32> zeroinitializer
  %69 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %66, <2 x double> %68, <2 x double> %64)
  %70 = insertelement <2 x double> poison, double %60, i64 0
  %71 = shufflevector <2 x double> %70, <2 x double> poison, <2 x i32> zeroinitializer
  %72 = fdiv <2 x double> %69, %71
  %73 = fmul <2 x double> %72, <double 0.000000e+00, double -0.000000e+00>
  %74 = shufflevector <2 x double> %73, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %75 = insertelement <2 x double> poison, double %59, i64 0
  %76 = shufflevector <2 x double> %75, <2 x double> poison, <2 x i32> zeroinitializer
  %77 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %76, <2 x double> %72, <2 x double> %74)
  %78 = fadd <2 x double> %52, %77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body

if.else:                                          ; preds = %entry
  %79 = fneg double %Z.coerce1
  %neg.i157 = fmul double %79, %Z.coerce1
  %80 = tail call double @llvm.fmuladd.f64(double %Z.coerce0, double %Z.coerce0, double %neg.i157) #4
  %mul5.i158 = fmul double %Z.coerce0, %Z.coerce1
  %81 = tail call double @llvm.fmuladd.f64(double %Z.coerce0, double %Z.coerce1, double %mul5.i158) #4
  %82 = tail call double @llvm.fmuladd.f64(double %Z.coerce0, double 0.000000e+00, double %79) #4
  %mul5.i161 = fmul double %Z.coerce1, 0.000000e+00
  %83 = fadd double %mul5.i161, %Z.coerce0
  %sub.i164 = fadd double %80, 0xBFD19DC7AFDB7B46
  %mul3.i167 = fmul double %81, %81
  %84 = tail call double @llvm.fmuladd.f64(double %sub.i164, double %sub.i164, double %mul3.i167) #4
  %85 = insertelement <2 x double> poison, double %81, i64 0
  %86 = shufflevector <2 x double> %85, <2 x double> poison, <2 x i32> zeroinitializer
  %87 = fmul <2 x double> %86, <double 0.000000e+00, double 0xBFE065C77CDFFF0D>
  %88 = insertelement <2 x double> poison, double %sub.i164, i64 0
  %89 = shufflevector <2 x double> %88, <2 x double> poison, <2 x i32> zeroinitializer
  %90 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %89, <2 x double> <double 0x3FE065C77CDFFF0D, double 0.000000e+00>, <2 x double> %87)
  %91 = insertelement <2 x double> poison, double %84, i64 0
  %92 = shufflevector <2 x double> %91, <2 x double> poison, <2 x i32> zeroinitializer
  %93 = fdiv <2 x double> %90, %92
  %sub.i174 = fadd double %80, 0xC005CC470A049097
  %94 = tail call double @llvm.fmuladd.f64(double %sub.i174, double %sub.i174, double %mul3.i167) #4
  %neg.i180 = fmul double %81, 0xBFAA80FD3629C600
  %95 = insertelement <2 x double> poison, double %sub.i174, i64 0
  %96 = shufflevector <2 x double> %95, <2 x double> poison, <2 x i32> zeroinitializer
  %97 = insertelement <2 x double> %87, double %neg.i180, i64 1
  %98 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %96, <2 x double> <double 0x3FAA80FD3629C600, double 0.000000e+00>, <2 x double> %97)
  %99 = insertelement <2 x double> poison, double %94, i64 0
  %100 = shufflevector <2 x double> %99, <2 x double> poison, <2 x i32> zeroinitializer
  %101 = fdiv <2 x double> %98, %100
  %102 = fadd <2 x double> %93, %101
  %103 = fneg double %83
  %104 = extractelement <2 x double> %102, i64 1
  %105 = insertelement <2 x double> poison, double %104, i64 0
  %106 = insertelement <2 x double> %105, double %83, i64 1
  %107 = insertelement <2 x double> poison, double %103, i64 0
  %108 = shufflevector <2 x double> %107, <2 x double> %102, <2 x i32> <i32 0, i32 2>
  %109 = fmul <2 x double> %106, %108
  %110 = insertelement <2 x double> poison, double %82, i64 0
  %111 = shufflevector <2 x double> %110, <2 x double> poison, <2 x i32> zeroinitializer
  %112 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %111, <2 x double> %102, <2 x double> %109)
  br label %return

return:                                           ; preds = %if.else, %for.cond.cleanup
  %113 = phi <2 x double> [ %51, %for.cond.cleanup ], [ %112, %if.else ]
  %114 = extractelement <2 x double> %113, i64 0
  %.fca.0.insert.i99.pn = insertvalue { double, double } undef, double %114, 0
  %115 = extractelement <2 x double> %113, i64 1
  %call43.pn = insertvalue { double, double } %.fca.0.insert.i99.pn, double %115, 1
  ret { double, double } %call43.pn
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local double @atan(double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local double @cos(double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local double @sin(double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind uwtable willreturn writeonly
define dso_local double @c_abs(double %A.coerce0, double %A.coerce1) local_unnamed_addr #16 {
entry:
  %mul3 = fmul double %A.coerce1, %A.coerce1
  %0 = tail call double @llvm.fmuladd.f64(double %A.coerce0, double %A.coerce0, double %mul3)
  %call = tail call double @sqrt(double noundef %0) #4
  ret double %call
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn writeonly
define dso_local { double, double } @fast_cexp(double %z.coerce0, double %z.coerce1) local_unnamed_addr #16 {
entry:
  %0 = tail call double @llvm.fmuladd.f64(double %z.coerce0, double 0x3F30000000000000, double 1.000000e+00) #4
  %mul.i = fmul double %0, %0
  %mul1.i = fmul double %mul.i, %mul.i
  %mul2.i = fmul double %mul1.i, %mul1.i
  %mul3.i = fmul double %mul2.i, %mul2.i
  %mul4.i = fmul double %mul3.i, %mul3.i
  %mul5.i = fmul double %mul4.i, %mul4.i
  %mul6.i = fmul double %mul5.i, %mul5.i
  %mul7.i = fmul double %mul6.i, %mul6.i
  %mul8.i = fmul double %mul7.i, %mul7.i
  %mul9.i = fmul double %mul8.i, %mul8.i
  %mul10.i = fmul double %mul9.i, %mul9.i
  %mul11.i = fmul double %mul10.i, %mul10.i
  %call1 = tail call double @cos(double noundef %z.coerce1) #4
  %call2 = tail call double @sin(double noundef %z.coerce1) #4
  %1 = insertelement <2 x double> poison, double %call2, i64 0
  %2 = insertelement <2 x double> %1, double %call1, i64 1
  %3 = fmul <2 x double> %2, <double -0.000000e+00, double 0.000000e+00>
  %4 = insertelement <2 x double> poison, double %mul11.i, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = insertelement <2 x double> poison, double %call1, i64 0
  %7 = insertelement <2 x double> %6, double %call2, i64 1
  %8 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %7, <2 x double> %3)
  %9 = extractelement <2 x double> %8, i64 0
  %.fca.0.insert.i = insertvalue { double, double } poison, double %9, 0
  %10 = extractelement <2 x double> %8, i64 1
  %.fca.1.insert.i = insertvalue { double, double } %.fca.0.insert.i, double %10, 1
  ret { double, double } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local { double, double } @c_add(double %A.coerce0, double %A.coerce1, double %B.coerce0, double %B.coerce1) local_unnamed_addr #14 {
entry:
  %add = fadd double %A.coerce0, %B.coerce0
  %add4 = fadd double %A.coerce1, %B.coerce1
  %.fca.0.insert = insertvalue { double, double } poison, double %add, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %add4, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i64 @LCG_random_int(i64* nocapture noundef %seed) local_unnamed_addr #6 {
entry:
  %0 = load i64, i64* %seed, align 8, !tbaa !38
  %mul = mul i64 %0, 2806196910506780709
  %add = add i64 %mul, 1
  %rem = and i64 %add, 9223372036854775807
  store i64 %rem, i64* %seed, align 8, !tbaa !38
  ret i64 %rem
}

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local double @fast_exp(double noundef %x) local_unnamed_addr #13 {
entry:
  %0 = tail call double @llvm.fmuladd.f64(double %x, double 0x3F30000000000000, double 1.000000e+00)
  %mul = fmul double %0, %0
  %mul1 = fmul double %mul, %mul
  %mul2 = fmul double %mul1, %mul1
  %mul3 = fmul double %mul2, %mul2
  %mul4 = fmul double %mul3, %mul3
  %mul5 = fmul double %mul4, %mul4
  %mul6 = fmul double %mul5, %mul5
  %mul7 = fmul double %mul6, %mul6
  %mul8 = fmul double %mul7, %mul7
  %mul9 = fmul double %mul8, %mul8
  %mul10 = fmul double %mul9, %mul9
  %mul11 = fmul double %mul10, %mul10
  ret double %mul11
}

; Function Attrs: nounwind uwtable
define internal void @.omp_offloading.requires_reg() #0 section ".text.startup" {
entry:
  tail call void @__tgt_register_requires(i64 1)
  ret void
}

; Function Attrs: nounwind
declare void @__tgt_register_requires(i64) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #18

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #19

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #19

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #9 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #11 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nofree nosync nounwind readnone willreturn }
attributes #19 = { nofree nosync nounwind readnone speculatable willreturn }

!omp_offload.info = !{!0}
!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!nvvm.annotations = !{}

!0 = !{i32 0, i32 88, i32 36586974, !"run_event_based_simulation", i32 32, i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"openmp", i32 50}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"clang version 14.0.0 (git@github.com:koparasy/ML-LLVM.git 2afbe88bd76c5f5c6a983f795f85d0c8b6600578)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !8, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!6, !7, i64 4}
!14 = !{!15, !11, i64 0}
!15 = !{!"", !11, i64 0, !16, i64 8, !11, i64 16, !16, i64 24, !11, i64 32, !16, i64 40, !11, i64 48, !16, i64 56, !11, i64 64, !16, i64 72, !11, i64 80, !16, i64 88, !11, i64 96, !16, i64 104, !11, i64 112, !16, i64 120, !7, i64 128, !7, i64 132, !7, i64 136, !11, i64 144, !16, i64 152, !11, i64 160, !16, i64 168}
!16 = !{!"long", !8, i64 0}
!17 = !{!15, !16, i64 8}
!18 = !{!15, !11, i64 16}
!19 = !{!15, !16, i64 24}
!20 = !{!15, !11, i64 32}
!21 = !{!15, !16, i64 40}
!22 = !{!15, !11, i64 48}
!23 = !{!15, !16, i64 56}
!24 = !{!15, !11, i64 64}
!25 = !{!15, !16, i64 72}
!26 = !{!15, !11, i64 80}
!27 = !{!15, !16, i64 88}
!28 = !{!15, !11, i64 96}
!29 = !{!15, !16, i64 104}
!30 = !{!15, !11, i64 112}
!31 = !{!15, !16, i64 120}
!32 = !{!33, !33, i64 0}
!33 = !{!"long long", !8, i64 0}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{!16, !16, i64 0}
!39 = distinct !{!39, !40, !35}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = distinct !{}
!42 = !{!15, !7, i64 128}
!43 = !{!15, !7, i64 136}
!44 = !{!15, !7, i64 132}
!45 = !{!46, !46, i64 0}
!46 = !{!"double", !8, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.parallel_accesses", !41}
!49 = !{!50}
!50 = !{i64 2, i64 -1, i64 -1, i1 true}
!51 = !{!52, !46, i64 0}
!52 = !{!"", !46, i64 0, !46, i64 8}
!53 = !{!52, !46, i64 8}
!54 = !{i64 0, i64 8, !45, i64 8, i64 4, !12, i64 12, i64 4, !12}
!55 = !{i64 0, i64 4, !12, i64 4, i64 4, !12}
!56 = !{i64 0, i64 4, !12}
!57 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 8, !45, i64 24, i64 8, !45, i64 32, i64 8, !45, i64 40, i64 8, !45, i64 48, i64 8, !45, i64 56, i64 8, !45, i64 64, i64 2, !58}
!58 = !{!59, !59, i64 0}
!59 = !{!"short", !8, i64 0}
!60 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 8, !45, i64 24, i64 8, !45, i64 32, i64 8, !45, i64 40, i64 8, !45, i64 48, i64 8, !45, i64 56, i64 2, !58}
!61 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 8, !45, i64 24, i64 8, !45, i64 32, i64 8, !45, i64 40, i64 8, !45, i64 48, i64 2, !58}
!62 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 8, !45, i64 24, i64 8, !45, i64 32, i64 8, !45, i64 40, i64 2, !58}
!63 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 8, !45, i64 24, i64 8, !45, i64 32, i64 2, !58}
!64 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 8, !45, i64 24, i64 2, !58}
!65 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 2, !58}
!66 = !{i64 0, i64 8, !45, i64 8, i64 2, !58}
!67 = !{i64 0, i64 2, !58}
!68 = !{!6, !7, i64 24}

; __CLANG_OFFLOAD_BUNDLE____END__ host-x86_64-unknown-linux-gnu
