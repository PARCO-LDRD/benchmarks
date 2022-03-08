
; __CLANG_OFFLOAD_BUNDLE____START__ openmp-nvptx64-nvidia-cuda
; ModuleID = '../utils/BoxPartition.cpp'
source_filename = "../utils/BoxPartition.cpp"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

@__omp_rtl_debug_kind = weak_odr hidden local_unnamed_addr constant i32 0
@__omp_rtl_assume_teams_oversubscription = weak_odr hidden local_unnamed_addr constant i32 0
@__omp_rtl_assume_threads_oversubscription = weak_odr hidden local_unnamed_addr constant i32 0

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!nvvm.annotations = !{}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"openmp-device", i32 50}
!3 = !{i32 7, !"PIC Level", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 14.0.0 (git@github.com:koparasy/ML-LLVM.git 57f6b002589ddbfa715ddd9ea752700e004464bf)"}

; __CLANG_OFFLOAD_BUNDLE____END__ openmp-nvptx64-nvidia-cuda

; __CLANG_OFFLOAD_BUNDLE____START__ host-powerpc64le-unknown-linux-gnu
; ModuleID = '/var/tmp/BoxPartition-ab9e44.bc'
source_filename = "../utils/BoxPartition.cpp"
target datalayout = "e-m:e-i64:64-n32:64-S128-v256:256:256-v512:512:512"
target triple = "powerpc64le-unknown-linux-gnu"

%struct.Box = type { [6 x i32] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef signext i32 @_Z13box_map_localRK3BoxiPKiiii(%struct.Box* nocapture noundef nonnull readonly align 4 dereferenceable(24) %box_local, i32 noundef signext %ghost, i32* nocapture noundef readonly %box_local_map, i32 noundef signext %local_x, i32 noundef signext %local_y, i32 noundef signext %local_z) local_unnamed_addr #0 {
entry:
  %mul.i = shl nsw i32 %ghost, 1
  %arrayidx.i.i = getelementptr inbounds %struct.Box, %struct.Box* %box_local, i64 0, i32 0, i64 0
  %arrayidx.i = getelementptr inbounds %struct.Box, %struct.Box* %box_local, i64 0, i32 0, i64 1
  %0 = load i32, i32* %arrayidx.i, align 4, !tbaa !4
  %add.i = add nsw i32 %0, %mul.i
  %1 = load i32, i32* %arrayidx.i.i, align 4, !tbaa !4
  %sub.i = sub i32 %add.i, %1
  %arrayidx.i31.i = getelementptr inbounds %struct.Box, %struct.Box* %box_local, i64 0, i32 0, i64 2
  %arrayidx5.i = getelementptr inbounds %struct.Box, %struct.Box* %box_local, i64 0, i32 0, i64 3
  %2 = load i32, i32* %arrayidx5.i, align 4, !tbaa !4
  %add6.i = add nsw i32 %2, %mul.i
  %3 = load i32, i32* %arrayidx.i31.i, align 4, !tbaa !4
  %sub9.i = sub i32 %add6.i, %3
  %arrayidx.i33.i = getelementptr inbounds %struct.Box, %struct.Box* %box_local, i64 0, i32 0, i64 4
  %arrayidx12.i = getelementptr inbounds %struct.Box, %struct.Box* %box_local, i64 0, i32 0, i64 5
  %4 = load i32, i32* %arrayidx12.i, align 4, !tbaa !4
  %add13.i = add nsw i32 %4, %mul.i
  %5 = load i32, i32* %arrayidx.i33.i, align 4, !tbaa !4
  %sub16.i = sub i32 %add13.i, %5
  %add17.i = add nsw i32 %local_x, %ghost
  %add18.i = add nsw i32 %local_y, %ghost
  %add19.i = add nsw i32 %local_z, %ghost
  %cmp.i = icmp sgt i32 %add17.i, -1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %cmp20.i = icmp slt i32 %add17.i, %sub.i
  %cmp22.i = icmp sgt i32 %add18.i, -1
  %or.cond.i = select i1 %cmp20.i, i1 %cmp22.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true23.i, label %if.end

land.lhs.true23.i:                                ; preds = %land.lhs.true.i
  %cmp24.i = icmp slt i32 %add18.i, %sub9.i
  %cmp26.i = icmp sgt i32 %add19.i, -1
  %or.cond1.i = select i1 %cmp24.i, i1 %cmp26.i, i1 false
  %cmp28.i = icmp slt i32 %add19.i, %sub16.i
  %or.cond29.i = select i1 %or.cond1.i, i1 %cmp28.i, i1 false
  br i1 %or.cond29.i, label %_ZL19box_map_local_entryRK3Boxiiii.exit, label %if.end

_ZL19box_map_local_entryRK3Boxiiii.exit:          ; preds = %land.lhs.true23.i
  %mul29.i = mul nsw i32 %sub9.i, %add19.i
  %mul3028.i = add i32 %mul29.i, %add18.i
  %add32.i = mul i32 %mul3028.i, %sub.i
  %add33.i = add nsw i32 %add32.i, %add17.i
  %cmp = icmp sgt i32 %add33.i, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_ZL19box_map_local_entryRK3Boxiiii.exit
  %idxprom6 = zext i32 %add33.i to i64
  %arrayidx = getelementptr inbounds i32, i32* %box_local_map, i64 %idxprom6
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true.i, %land.lhs.true23.i, %if.then, %_ZL19box_map_local_entryRK3Boxiiii.exit
  %result.0 = phi i32 [ %6, %if.then ], [ %add33.i, %_ZL19box_map_local_entryRK3Boxiiii.exit ], [ -1, %land.lhs.true23.i ], [ -1, %land.lhs.true.i ], [ -1, %entry ]
  ret i32 %result.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local void @_Z13box_partitioniiiRK3BoxPS_(i32 noundef signext %ip, i32 noundef signext %up, i32 noundef signext %axis, %struct.Box* nocapture noundef nonnull readonly align 4 dereferenceable(24) %box, %struct.Box* noundef %p_box) local_unnamed_addr #2 {
entry:
  %dbox = alloca %struct.Box, align 16
  %dbox78 = alloca %struct.Box, align 16
  %sub = sub nsw i32 %up, %ip
  %cmp = icmp eq i32 %sub, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx.i = getelementptr inbounds %struct.Box, %struct.Box* %box, i64 0, i32 0, i64 0
  %0 = load i32, i32* %arrayidx.i, align 4, !tbaa !4
  %idxprom = sext i32 %ip to i64
  %arrayidx.i64 = getelementptr inbounds %struct.Box, %struct.Box* %p_box, i64 %idxprom, i32 0, i64 0
  store i32 %0, i32* %arrayidx.i64, align 4, !tbaa !4
  %arrayidx5 = getelementptr inbounds %struct.Box, %struct.Box* %box, i64 0, i32 0, i64 1
  %1 = load i32, i32* %arrayidx5, align 4, !tbaa !4
  %arrayidx9 = getelementptr inbounds %struct.Box, %struct.Box* %p_box, i64 %idxprom, i32 0, i64 1
  store i32 %1, i32* %arrayidx9, align 4, !tbaa !4
  %arrayidx.i67 = getelementptr inbounds %struct.Box, %struct.Box* %box, i64 0, i32 0, i64 2
  %2 = load i32, i32* %arrayidx.i67, align 4, !tbaa !4
  %arrayidx.i68 = getelementptr inbounds %struct.Box, %struct.Box* %p_box, i64 %idxprom, i32 0, i64 2
  store i32 %2, i32* %arrayidx.i68, align 4, !tbaa !4
  %arrayidx17 = getelementptr inbounds %struct.Box, %struct.Box* %box, i64 0, i32 0, i64 3
  %3 = load i32, i32* %arrayidx17, align 4, !tbaa !4
  %arrayidx21 = getelementptr inbounds %struct.Box, %struct.Box* %p_box, i64 %idxprom, i32 0, i64 3
  store i32 %3, i32* %arrayidx21, align 4, !tbaa !4
  %arrayidx.i71 = getelementptr inbounds %struct.Box, %struct.Box* %box, i64 0, i32 0, i64 4
  %4 = load i32, i32* %arrayidx.i71, align 4, !tbaa !4
  %arrayidx.i72 = getelementptr inbounds %struct.Box, %struct.Box* %p_box, i64 %idxprom, i32 0, i64 4
  store i32 %4, i32* %arrayidx.i72, align 4, !tbaa !4
  %arrayidx29 = getelementptr inbounds %struct.Box, %struct.Box* %box, i64 0, i32 0, i64 5
  %5 = load i32, i32* %arrayidx29, align 4, !tbaa !4
  %arrayidx33 = getelementptr inbounds %struct.Box, %struct.Box* %p_box, i64 %idxprom, i32 0, i64 5
  store i32 %5, i32* %arrayidx33, align 4, !tbaa !4
  br label %if.end114

if.else:                                          ; preds = %entry
  %mul.i = shl nsw i32 %axis, 1
  %idxprom.i = sext i32 %mul.i to i64
  %arrayidx.i75 = getelementptr inbounds %struct.Box, %struct.Box* %box, i64 0, i32 0, i64 %idxprom.i
  %arrayidx35 = getelementptr inbounds i32, i32* %arrayidx.i75, i64 1
  %6 = load i32, i32* %arrayidx35, align 4, !tbaa !4
  %7 = load i32, i32* %arrayidx.i75, align 4, !tbaa !4
  %sub38 = sub nsw i32 %6, %7
  %div = sdiv i32 %sub, 2
  %sub39 = sub nsw i32 %sub, %div
  %conv = sitofp i32 %sub38 to double
  %conv40 = sitofp i32 %sub39 to double
  %conv41 = sitofp i32 %sub to double
  %div42 = fdiv contract double %conv40, %conv41
  %mul = fmul contract double %div42, %conv
  %conv43 = fptosi double %mul to i32
  %sub44 = sub nsw i32 %sub38, %conv43
  %add = add nsw i32 %axis, 2
  %rem = srem i32 %add, 3
  %sub.off = add i32 %sub, 1
  %8 = icmp ult i32 %sub.off, 3
  br i1 %8, label %if.end, label %if.then45

if.then45:                                        ; preds = %if.else
  %9 = bitcast %struct.Box* %dbox to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #10
  %10 = bitcast %struct.Box* %box to <4 x i32>*
  %11 = load <4 x i32>, <4 x i32>* %10, align 4, !tbaa !4
  %12 = bitcast %struct.Box* %dbox to <4 x i32>*
  store <4 x i32> %11, <4 x i32>* %12, align 16, !tbaa !4
  %arrayidx.i87 = getelementptr inbounds %struct.Box, %struct.Box* %box, i64 0, i32 0, i64 4
  %13 = load i32, i32* %arrayidx.i87, align 4, !tbaa !4
  %arrayidx.i88 = getelementptr inbounds %struct.Box, %struct.Box* %dbox, i64 0, i32 0, i64 4
  store i32 %13, i32* %arrayidx.i88, align 16, !tbaa !4
  %arrayidx67 = getelementptr inbounds %struct.Box, %struct.Box* %box, i64 0, i32 0, i64 5
  %14 = load i32, i32* %arrayidx67, align 4, !tbaa !4
  %arrayidx69 = getelementptr inbounds %struct.Box, %struct.Box* %dbox, i64 0, i32 0, i64 5
  store i32 %14, i32* %arrayidx69, align 4, !tbaa !4
  %arrayidx.i93 = getelementptr inbounds %struct.Box, %struct.Box* %dbox, i64 0, i32 0, i64 %idxprom.i
  %15 = load i32, i32* %arrayidx.i93, align 8, !tbaa !4
  %add72 = add nsw i32 %15, %sub44
  %arrayidx74 = getelementptr inbounds i32, i32* %arrayidx.i93, i64 1
  store i32 %add72, i32* %arrayidx74, align 4, !tbaa !4
  %add75 = add nsw i32 %div, %ip
  call void @_Z13box_partitioniiiRK3BoxPS_(i32 noundef signext %ip, i32 noundef signext %add75, i32 noundef signext %rem, %struct.Box* noundef nonnull align 4 dereferenceable(24) %dbox, %struct.Box* noundef %p_box)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #10
  br label %if.end

if.end:                                           ; preds = %if.then45, %if.else
  %tobool76.not = icmp eq i32 %sub39, 0
  br i1 %tobool76.not, label %if.end114, label %if.then77

if.then77:                                        ; preds = %if.end
  %16 = bitcast %struct.Box* %dbox78 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %16) #10
  %17 = bitcast %struct.Box* %box to <4 x i32>*
  %18 = load <4 x i32>, <4 x i32>* %17, align 4, !tbaa !4
  %19 = bitcast %struct.Box* %dbox78 to <4 x i32>*
  store <4 x i32> %18, <4 x i32>* %19, align 16, !tbaa !4
  %arrayidx.i105 = getelementptr inbounds %struct.Box, %struct.Box* %box, i64 0, i32 0, i64 4
  %20 = load i32, i32* %arrayidx.i105, align 4, !tbaa !4
  %arrayidx.i106 = getelementptr inbounds %struct.Box, %struct.Box* %dbox78, i64 0, i32 0, i64 4
  store i32 %20, i32* %arrayidx.i106, align 16, !tbaa !4
  %arrayidx100 = getelementptr inbounds %struct.Box, %struct.Box* %box, i64 0, i32 0, i64 5
  %21 = load i32, i32* %arrayidx100, align 4, !tbaa !4
  %arrayidx102 = getelementptr inbounds %struct.Box, %struct.Box* %dbox78, i64 0, i32 0, i64 5
  store i32 %21, i32* %arrayidx102, align 4, !tbaa !4
  %add103 = add nsw i32 %div, %ip
  %arrayidx.i111 = getelementptr inbounds %struct.Box, %struct.Box* %dbox78, i64 0, i32 0, i64 %idxprom.i
  %22 = load i32, i32* %arrayidx.i111, align 8, !tbaa !4
  %add106 = add nsw i32 %22, %sub44
  store i32 %add106, i32* %arrayidx.i111, align 8, !tbaa !4
  %add109 = add i32 %22, %sub38
  %arrayidx111 = getelementptr inbounds i32, i32* %arrayidx.i111, i64 1
  store i32 %add109, i32* %arrayidx111, align 4, !tbaa !4
  call void @_Z13box_partitioniiiRK3BoxPS_(i32 noundef signext %add103, i32 noundef signext %up, i32 noundef signext %rem, %struct.Box* noundef nonnull align 4 dereferenceable(24) %dbox78, %struct.Box* noundef %p_box)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %16) #10
  br label %if.end114

if.end114:                                        ; preds = %if.end, %if.then77, %if.then
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_(i32 noundef signext %np, i32 noundef signext %my_p, %struct.Box* nocapture noundef nonnull readonly align 4 dereferenceable(24) %root_box, i32 noundef signext %ghost, %struct.Box** nocapture noundef %pbox, i32** nocapture noundef writeonly %map_local_id, i32** nocapture noundef writeonly %map_recv_pc, i32** nocapture noundef writeonly %map_send_pc, i32** nocapture noundef writeonly %map_send_id) local_unnamed_addr #3 {
entry:
  %conv = sext i32 %np to i64
  %0 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 24)
  %1 = extractvalue { i64, i1 } %0, 1
  %2 = extractvalue { i64, i1 } %0, 0
  %3 = select i1 %1, i64 -1, i64 %2
  %call = tail call noalias noundef nonnull i8* @_Znam(i64 noundef %3) #11
  %4 = bitcast i8* %call to %struct.Box*
  %5 = bitcast %struct.Box** %pbox to i8**
  store i8* %call, i8** %5, align 8, !tbaa !8
  tail call void @_Z13box_partitioniiiRK3BoxPS_(i32 noundef signext 0, i32 noundef signext %np, i32 noundef signext 2, %struct.Box* noundef nonnull align 4 dereferenceable(24) %root_box, %struct.Box* noundef nonnull %4)
  %6 = load %struct.Box*, %struct.Box** %pbox, align 8, !tbaa !8
  %idxprom.i = sext i32 %my_p to i64
  %arrayidx.i.i = getelementptr inbounds %struct.Box, %struct.Box* %6, i64 %idxprom.i, i32 0, i64 0
  %7 = load i32, i32* %arrayidx.i.i, align 4, !tbaa !4
  %arrayidx.i162.i = getelementptr inbounds %struct.Box, %struct.Box* %6, i64 %idxprom.i, i32 0, i64 2
  %8 = load i32, i32* %arrayidx.i162.i, align 4, !tbaa !4
  %arrayidx.i163.i = getelementptr inbounds %struct.Box, %struct.Box* %6, i64 %idxprom.i, i32 0, i64 4
  %9 = load i32, i32* %arrayidx.i163.i, align 4, !tbaa !4
  %arrayidx7.i = getelementptr inbounds %struct.Box, %struct.Box* %6, i64 %idxprom.i, i32 0, i64 1
  %10 = load i32, i32* %arrayidx7.i, align 4, !tbaa !4
  %sub.i = sub nsw i32 %10, %7
  %arrayidx11.i = getelementptr inbounds %struct.Box, %struct.Box* %6, i64 %idxprom.i, i32 0, i64 3
  %11 = load i32, i32* %arrayidx11.i, align 4, !tbaa !4
  %sub14.i = sub nsw i32 %11, %8
  %arrayidx16.i = getelementptr inbounds %struct.Box, %struct.Box* %6, i64 %idxprom.i, i32 0, i64 5
  %12 = load i32, i32* %arrayidx16.i, align 4, !tbaa !4
  %sub19.i = sub nsw i32 %12, %9
  %mul.i = shl nsw i32 %ghost, 1
  %add.i = add nsw i32 %sub.i, %mul.i
  %add21.i = add nsw i32 %sub14.i, %mul.i
  %add23.i = add nsw i32 %sub19.i, %mul.i
  %mul24.i = mul nsw i32 %add21.i, %add.i
  %mul25.i = mul nsw i32 %mul24.i, %add23.i
  %conv.i = sext i32 %mul25.i to i64
  %mul26.i = shl nsw i64 %conv.i, 2
  %call27.i = tail call noalias align 16 i8* @malloc(i64 noundef %mul26.i) #10
  %13 = bitcast i8* %call27.i to i32*
  %add28.i = add nsw i32 %np, 1
  %conv29.i = sext i32 %add28.i to i64
  %mul30.i = shl nsw i64 %conv29.i, 2
  %call31.i = tail call noalias align 16 i8* @malloc(i64 noundef %mul30.i) #10
  %14 = bitcast i8* %call31.i to i32*
  %call35.i = tail call noalias align 16 i8* @malloc(i64 noundef %mul30.i) #10
  %15 = bitcast i8* %call35.i to i32*
  %sub38.i = sub nsw i32 %7, %ghost
  %add43.i = add nsw i32 %10, %ghost
  %sub48.i = sub nsw i32 %8, %ghost
  %add53.i = add nsw i32 %11, %ghost
  %sub58.i = sub nsw i32 %9, %ghost
  %add63.i = add nsw i32 %12, %ghost
  %cmp226.i = icmp sgt i32 %mul25.i, 0
  br i1 %cmp226.i, label %for.body.preheader.i, label %for.cond68.preheader.i

for.body.preheader.i:                             ; preds = %entry
  %16 = zext i32 %mul25.i to i64
  %17 = shl nuw nsw i64 %16, 2
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %call27.i, i8 -1, i64 %17, i1 false) #10
  br label %for.cond68.preheader.i

for.cond68.preheader.i:                           ; preds = %for.body.preheader.i, %entry
  %sub103.i = sub nsw i32 0, %ghost
  %add105.i = add i32 %sub19.i, %ghost
  %add110.i = add i32 %sub14.i, %ghost
  %add115.i = add i32 %sub.i, %ghost
  %cmp116228.i = icmp sgt i32 %add115.i, %sub103.i
  %cmp111313.i = icmp sgt i32 %add110.i, %sub103.i
  %cmp106511.i = icmp sgt i32 %add105.i, %sub103.i
  %cmp69683.i = icmp sgt i32 %np, 0
  br i1 %cmp69683.i, label %for.body70.preheader.i, label %_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit

for.body70.preheader.i:                           ; preds = %for.cond68.preheader.i
  %wide.trip.count.i = zext i32 %np to i64
  br label %for.body70.i

for.body70.i:                                     ; preds = %if.end188.i, %for.body70.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.body70.preheader.i ], [ %indvars.iv.next.i, %if.end188.i ]
  %iLocal.0688.i = phi i32 [ 0, %for.body70.preheader.i ], [ %iLocal.5.i, %if.end188.i ]
  %iSend.0687.i = phi i32 [ 0, %for.body70.preheader.i ], [ %iSend.5.i, %if.end188.i ]
  %send_id.0685.i = phi i32* [ null, %for.body70.preheader.i ], [ %send_id.6.i, %if.end188.i ]
  %send_id_size.0684.i = phi i32 [ 0, %for.body70.preheader.i ], [ %send_id_size.7.i, %if.end188.i ]
  %18 = trunc i64 %indvars.iv.i to i32
  %19 = add i32 %18, %my_p
  %rem.i = srem i32 %19, %np
  %arrayidx73.i = getelementptr inbounds i32, i32* %14, i64 %indvars.iv.i
  store i32 %iLocal.0688.i, i32* %arrayidx73.i, align 4, !tbaa !4
  %arrayidx75.i = getelementptr inbounds i32, i32* %15, i64 %indvars.iv.i
  store i32 %iSend.0687.i, i32* %arrayidx75.i, align 4, !tbaa !4
  %idxprom76.i = sext i32 %rem.i to i64
  %arrayidx.i11.i.i = getelementptr inbounds %struct.Box, %struct.Box* %6, i64 %idxprom76.i, i32 0, i64 0
  %20 = load i32, i32* %arrayidx.i11.i.i, align 4, !tbaa !4
  %cmp.not.i.i = icmp sgt i32 %add43.i, %20
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end188.i

lor.lhs.false.i.i:                                ; preds = %for.body70.i
  %arrayidx4.i.i = getelementptr inbounds %struct.Box, %struct.Box* %6, i64 %idxprom76.i, i32 0, i64 1
  %21 = load i32, i32* %arrayidx4.i.i, align 4, !tbaa !4
  %cmp7.not.i.i = icmp sgt i32 %21, %sub38.i
  br i1 %cmp7.not.i.i, label %lor.lhs.false8.i.i, label %if.end188.i

lor.lhs.false8.i.i:                               ; preds = %lor.lhs.false.i.i
  %arrayidx.i15.i.i = getelementptr inbounds %struct.Box, %struct.Box* %6, i64 %idxprom76.i, i32 0, i64 2
  %22 = load i32, i32* %arrayidx.i15.i.i, align 4, !tbaa !4
  %cmp13.not.i.i = icmp sgt i32 %add53.i, %22
  br i1 %cmp13.not.i.i, label %lor.lhs.false14.i.i, label %if.end188.i

lor.lhs.false14.i.i:                              ; preds = %lor.lhs.false8.i.i
  %arrayidx16.i.i = getelementptr inbounds %struct.Box, %struct.Box* %6, i64 %idxprom76.i, i32 0, i64 3
  %23 = load i32, i32* %arrayidx16.i.i, align 4, !tbaa !4
  %cmp19.not.i.i = icmp sgt i32 %23, %sub48.i
  br i1 %cmp19.not.i.i, label %lor.lhs.false20.i.i, label %if.end188.i

lor.lhs.false20.i.i:                              ; preds = %lor.lhs.false14.i.i
  %arrayidx.i19.i.i = getelementptr inbounds %struct.Box, %struct.Box* %6, i64 %idxprom76.i, i32 0, i64 4
  %24 = load i32, i32* %arrayidx.i19.i.i, align 4, !tbaa !4
  %cmp25.not.i.i = icmp sgt i32 %add63.i, %24
  br i1 %cmp25.not.i.i, label %_ZL12box_disjointRK3BoxS1_.exit.i, label %if.end188.i

_ZL12box_disjointRK3BoxS1_.exit.i:                ; preds = %lor.lhs.false20.i.i
  %arrayidx27.i.i = getelementptr inbounds %struct.Box, %struct.Box* %6, i64 %idxprom76.i, i32 0, i64 5
  %25 = load i32, i32* %arrayidx27.i.i, align 4, !tbaa !4
  %cmp30.i.not.i = icmp sgt i32 %25, %sub58.i
  br i1 %cmp30.i.not.i, label %if.then.i, label %if.end188.i

if.then.i:                                        ; preds = %_ZL12box_disjointRK3BoxS1_.exit.i
  %cmp140.i = icmp ne i32 %rem.i, %my_p
  %sub154.i = sub nsw i32 %24, %ghost
  %add157.i = add nsw i32 %25, %ghost
  %sub160.i = sub nsw i32 %22, %ghost
  %add163.i = add nsw i32 %23, %ghost
  %sub166.i = sub nsw i32 %20, %ghost
  %add169.i = add nsw i32 %21, %ghost
  br i1 %cmp106511.i, label %for.cond109.preheader.lr.ph.i, label %if.end188.i

for.cond109.preheader.lr.ph.i:                    ; preds = %if.then.i
  br i1 %cmp111313.i, label %for.cond109.preheader.lr.ph.split.us.i, label %if.end188.i

for.cond109.preheader.lr.ph.split.us.i:           ; preds = %for.cond109.preheader.lr.ph.i
  br i1 %cmp116228.i, label %for.cond109.preheader.us.us.i, label %if.end188.i

for.cond109.preheader.us.us.i:                    ; preds = %for.cond109.preheader.lr.ph.split.us.i, %for.cond109.for.inc185_crit_edge.split.us.split.us.us.us.i
  %iLocal.1516.us.us.i = phi i32 [ %.us-phi506.us.us.i, %for.cond109.for.inc185_crit_edge.split.us.split.us.us.us.i ], [ %iLocal.0688.i, %for.cond109.preheader.lr.ph.split.us.i ]
  %iSend.1515.us.us.i = phi i32 [ %.us-phi505.us.us.i, %for.cond109.for.inc185_crit_edge.split.us.split.us.us.us.i ], [ %iSend.0687.i, %for.cond109.preheader.lr.ph.split.us.i ]
  %local_z.0514.us.us.i = phi i32 [ %inc186.us.us.i, %for.cond109.for.inc185_crit_edge.split.us.split.us.us.us.i ], [ %sub103.i, %for.cond109.preheader.lr.ph.split.us.i ]
  %send_id.1513.us.us.i = phi i32* [ %.us-phi504.us.us.i, %for.cond109.for.inc185_crit_edge.split.us.split.us.us.us.i ], [ %send_id.0685.i, %for.cond109.preheader.lr.ph.split.us.i ]
  %send_id_size.1512.us.us.i = phi i32 [ %.us-phi503.us.us.i, %for.cond109.for.inc185_crit_edge.split.us.split.us.us.us.i ], [ %send_id_size.0684.i, %for.cond109.preheader.lr.ph.split.us.i ]
  %add118.us.us.i = add nsw i32 %local_z.0514.us.us.i, %9
  %add19.i.us.us.i = add nsw i32 %local_z.0514.us.us.i, %ghost
  %cmp26.i.us.us.i = icmp sgt i32 %add19.i.us.us.i, -1
  %cmp125.not.us.us.i = icmp sle i32 %24, %add118.us.us.i
  %cmp126.us.us.i = icmp slt i32 %add118.us.us.i, %25
  %or.cond150.us.us.i = select i1 %cmp125.not.us.us.i, i1 %cmp126.us.us.i, i1 false
  %cmp144.us.us.i = icmp slt i32 %local_z.0514.us.us.i, %sub19.i
  %cmp155.not.us.us.i = icmp sle i32 %sub154.i, %add118.us.us.i
  %cmp158.us.us.i = icmp slt i32 %add118.us.us.i, %add157.i
  br i1 %cmp26.i.us.us.i, label %for.cond114.preheader.lr.ph.split.us.split.us.us.us.i, label %if.then124.i

for.cond114.preheader.lr.ph.split.us.split.us.us.us.i: ; preds = %for.cond109.preheader.us.us.i
  %cmp142.us.us.i = icmp sgt i32 %local_z.0514.us.us.i, -1
  %or.cond.us.us.i = select i1 %cmp140.i, i1 %cmp142.us.us.i, i1 false
  br i1 %or.cond.us.us.i, label %for.cond114.preheader.us.us.us.us.us.i, label %for.cond114.preheader.us.us.us522.us.preheader.i

for.cond114.preheader.us.us.us522.us.preheader.i: ; preds = %for.cond114.preheader.lr.ph.split.us.split.us.us.us.i
  %26 = load i32, i32* %arrayidx7.i, align 4, !tbaa !4
  %add.i.us326.us.us.us.i = add nsw i32 %26, %mul.i
  %27 = load i32, i32* %arrayidx.i.i, align 4, !tbaa !4
  %sub.i.us328.us.us.us.i = sub i32 %add.i.us326.us.us.us.i, %27
  %28 = load i32, i32* %arrayidx11.i, align 4, !tbaa !4
  %add6.i.us329.us.us.us.i = add nsw i32 %28, %mul.i
  %29 = load i32, i32* %arrayidx.i162.i, align 4, !tbaa !4
  %sub9.i.us331.us.us.us.i = sub i32 %add6.i.us329.us.us.us.i, %29
  %30 = load i32, i32* %arrayidx16.i, align 4, !tbaa !4
  %add13.i.us332.us.us.us.i = add nsw i32 %30, %mul.i
  %31 = load i32, i32* %arrayidx.i163.i, align 4, !tbaa !4
  %sub16.i.us334.us.us.us.i = sub i32 %add13.i.us332.us.us.us.i, %31
  %cmp28.i.us341.us.us.us.i = icmp slt i32 %add19.i.us.us.i, %sub16.i.us334.us.us.us.i
  %mul29.i.us344.us.us.us.i = mul nsw i32 %sub9.i.us331.us.us.us.i, %add19.i.us.us.i
  br i1 %cmp28.i.us341.us.us.us.i, label %for.body117.lr.ph.split.us364.us.us532.us.i, label %if.then124.i

for.body117.lr.ph.split.us364.us.us532.us.i:      ; preds = %for.cond114.preheader.us.us.us522.us.preheader.i, %for.cond114.for.inc182_crit_edge.split.us362.split.us.us.us.us.i
  %iLocal.2318.us.us.us523.us.i = phi i32 [ %.us-phi.us404.us.us.i, %for.cond114.for.inc182_crit_edge.split.us362.split.us.us.us.us.i ], [ %iLocal.1516.us.us.i, %for.cond114.preheader.us.us.us522.us.preheader.i ]
  %local_y.0316.us.us.us524.us.i = phi i32 [ %inc183.us.us.us533.us.i, %for.cond114.for.inc182_crit_edge.split.us362.split.us.us.us.us.i ], [ %sub103.i, %for.cond114.preheader.us.us.us522.us.preheader.i ]
  %add119.us.us.us525.us.i = add nsw i32 %local_y.0316.us.us.us524.us.i, %8
  %add18.i.us.us.us526.us.i = add nsw i32 %local_y.0316.us.us.us524.us.i, %ghost
  %cmp24.i.us340.us.us.us.i = icmp slt i32 %add18.i.us.us.us526.us.i, %sub9.i.us331.us.us.us.i
  %mul3028.i.us345.us.us.us.i = add i32 %add18.i.us.us.us526.us.i, %mul29.i.us344.us.us.us.i
  %add32.i.us346.us.us.us.i = mul i32 %mul3028.i.us345.us.us.us.i, %sub.i.us328.us.us.us.i
  br i1 %cmp24.i.us340.us.us.us.i, label %for.body117.lr.ph.split.split.split.us366.split.us.us.us.us.i, label %if.then124.i

for.body117.lr.ph.split.split.split.us366.split.us.us.us.us.i: ; preds = %for.body117.lr.ph.split.us364.us.us532.us.i
  %cmp128.not.us.us.us528.us.i = icmp sle i32 %22, %add119.us.us.us525.us.i
  %or.cond151.us.us.us529.us.i = select i1 %or.cond150.us.us.i, i1 %cmp128.not.us.us.us528.us.i, i1 false
  %cmp130.us.us.us530.us.i = icmp slt i32 %add119.us.us.us525.us.i, %23
  %or.cond152.us.us.us531.us.i = select i1 %or.cond151.us.us.us529.us.i, i1 %cmp130.us.us.us530.us.i, i1 false
  br i1 %or.cond152.us.us.us531.us.i, label %for.body117.us322.us.us390.us.us.i, label %for.body117.us322.us.us.us.us.us.i

for.body117.us322.us.us390.us.us.i:               ; preds = %for.body117.lr.ph.split.split.split.us366.split.us.us.us.us.i, %if.end139.us358.us.us.us.us.i
  %iLocal.3234.us323.us.us.us.us.i = phi i32 [ %iLocal.4.us359.us.us.us.us.i, %if.end139.us358.us.us.us.us.i ], [ %iLocal.2318.us.us.us523.us.i, %for.body117.lr.ph.split.split.split.us366.split.us.us.us.us.i ]
  %local_x.0231.us324.us.us391.us.us.i = phi i32 [ %inc180.us360.us.us400.us.us.i, %if.end139.us358.us.us.us.us.i ], [ %sub103.i, %for.body117.lr.ph.split.split.split.us366.split.us.us.us.us.i ]
  %add120.us325.us.us.us.us.i = add nsw i32 %local_x.0231.us324.us.us391.us.us.i, %7
  %add17.i.us335.us.us392.us.us.i = add nsw i32 %local_x.0231.us324.us.us391.us.us.i, %ghost
  %cmp20.i.us338.us.us395.us.us.i = icmp slt i32 %add17.i.us335.us.us392.us.us.i, %sub.i.us328.us.us.us.i
  br i1 %cmp20.i.us338.us.us395.us.us.i, label %land.lhs.true23.i.us339.us.us396.us.us.i, label %if.then124.i

land.lhs.true23.i.us339.us.us396.us.us.i:         ; preds = %for.body117.us322.us.us390.us.us.i
  %add33.i.us347.us.us397.us.us.i = add nuw nsw i32 %add17.i.us335.us.us392.us.us.i, %add32.i.us346.us.us.us.i
  %cmp123.us348.us.us398.us.us.i = icmp slt i32 %add33.i.us347.us.us397.us.us.i, 0
  br i1 %cmp123.us348.us.us398.us.us.i, label %if.then124.i, label %if.end.us349.us.us399.us.us.i

if.end.us349.us.us399.us.us.i:                    ; preds = %land.lhs.true23.i.us339.us.us396.us.us.i
  %cmp132.not.us350.us.us.us.us.i = icmp sle i32 %20, %add120.us325.us.us.us.us.i
  %cmp134.us352.us.us.us.us.i = icmp slt i32 %add120.us325.us.us.us.us.i, %21
  %or.cond154.us353.us.us.us.us.i = select i1 %cmp132.not.us350.us.us.us.us.i, i1 %cmp134.us352.us.us.us.us.i, i1 false
  br i1 %or.cond154.us353.us.us.us.us.i, label %if.then135.us354.us.us.us.us.i, label %if.end139.us358.us.us.us.us.i

if.then135.us354.us.us.us.us.i:                   ; preds = %if.end.us349.us.us399.us.us.i
  %inc136.us355.us.us.us.us.i = add nsw i32 %iLocal.3234.us323.us.us.us.us.i, 1
  %idxprom137208.us356.us.us.us.us.i = zext i32 %add33.i.us347.us.us397.us.us.i to i64
  %arrayidx138.us357.us.us.us.us.i = getelementptr inbounds i32, i32* %13, i64 %idxprom137208.us356.us.us.us.us.i
  store i32 %iLocal.3234.us323.us.us.us.us.i, i32* %arrayidx138.us357.us.us.us.us.i, align 4, !tbaa !4
  br label %if.end139.us358.us.us.us.us.i

if.end139.us358.us.us.us.us.i:                    ; preds = %if.then135.us354.us.us.us.us.i, %if.end.us349.us.us399.us.us.i
  %iLocal.4.us359.us.us.us.us.i = phi i32 [ %inc136.us355.us.us.us.us.i, %if.then135.us354.us.us.us.us.i ], [ %iLocal.3234.us323.us.us.us.us.i, %if.end.us349.us.us399.us.us.i ]
  %inc180.us360.us.us400.us.us.i = add i32 %local_x.0231.us324.us.us391.us.us.i, 1
  %exitcond712.not.i = icmp eq i32 %inc180.us360.us.us400.us.us.i, %add115.i
  br i1 %exitcond712.not.i, label %for.cond114.for.inc182_crit_edge.split.us362.split.us.us.us.us.i, label %for.body117.us322.us.us390.us.us.i, !llvm.loop !10

for.cond114.for.inc182_crit_edge.split.us362.split.us.us.us.us.i: ; preds = %if.end.us349.us.us.us.us.us.i, %if.end139.us358.us.us.us.us.i
  %.us-phi.us404.us.us.i = phi i32 [ %iLocal.4.us359.us.us.us.us.i, %if.end139.us358.us.us.us.us.i ], [ %iLocal.2318.us.us.us523.us.i, %if.end.us349.us.us.us.us.us.i ]
  %inc183.us.us.us533.us.i = add i32 %local_y.0316.us.us.us524.us.i, 1
  %exitcond713.not.i = icmp eq i32 %inc183.us.us.us533.us.i, %add110.i
  br i1 %exitcond713.not.i, label %for.cond109.for.inc185_crit_edge.split.us.split.us.us.us.i, label %for.body117.lr.ph.split.us364.us.us532.us.i, !llvm.loop !12

for.body117.us322.us.us.us.us.us.i:               ; preds = %for.body117.lr.ph.split.split.split.us366.split.us.us.us.us.i, %if.end.us349.us.us.us.us.us.i
  %local_x.0231.us324.us.us.us.us.us.i = phi i32 [ %inc180.us360.us.us.us.us.us.i, %if.end.us349.us.us.us.us.us.i ], [ %sub103.i, %for.body117.lr.ph.split.split.split.us366.split.us.us.us.us.i ]
  %add17.i.us335.us.us.us.us.us.i = add nsw i32 %local_x.0231.us324.us.us.us.us.us.i, %ghost
  %cmp20.i.us338.us.us.us.us.us.i = icmp sge i32 %add17.i.us335.us.us.us.us.us.i, %sub.i.us328.us.us.us.i
  %add33.i.us347.us.us.us.us.us.i = add nuw nsw i32 %add17.i.us335.us.us.us.us.us.i, %add32.i.us346.us.us.us.i
  %cmp123.us348.us.us.us.us.us.i = icmp slt i32 %add33.i.us347.us.us.us.us.us.i, 0
  %or.cond692.i = select i1 %cmp20.i.us338.us.us.us.us.us.i, i1 true, i1 %cmp123.us348.us.us.us.us.us.i
  br i1 %or.cond692.i, label %if.then124.i, label %if.end.us349.us.us.us.us.us.i

if.end.us349.us.us.us.us.us.i:                    ; preds = %for.body117.us322.us.us.us.us.us.i
  %inc180.us360.us.us.us.us.us.i = add i32 %local_x.0231.us324.us.us.us.us.us.i, 1
  %exitcond.not.i = icmp eq i32 %inc180.us360.us.us.us.us.us.i, %add115.i
  br i1 %exitcond.not.i, label %for.cond114.for.inc182_crit_edge.split.us362.split.us.us.us.us.i, label %for.body117.us322.us.us.us.us.us.i, !llvm.loop !10

for.cond109.for.inc185_crit_edge.split.us.split.us.us.us.i: ; preds = %for.cond114.for.inc182_crit_edge.split.us362.split.us.us.us.us.i, %for.cond114.for.inc182_crit_edge.split.us.us.us.us.us.us.i
  %.us-phi503.us.us.i = phi i32 [ %.us-phi507.us.us.i, %for.cond114.for.inc182_crit_edge.split.us.us.us.us.us.us.i ], [ %send_id_size.1512.us.us.i, %for.cond114.for.inc182_crit_edge.split.us362.split.us.us.us.us.i ]
  %.us-phi504.us.us.i = phi i32* [ %.us-phi508.us.us.i, %for.cond114.for.inc182_crit_edge.split.us.us.us.us.us.us.i ], [ %send_id.1513.us.us.i, %for.cond114.for.inc182_crit_edge.split.us362.split.us.us.us.us.i ]
  %.us-phi505.us.us.i = phi i32 [ %.us-phi509.us.us.i, %for.cond114.for.inc182_crit_edge.split.us.us.us.us.us.us.i ], [ %iSend.1515.us.us.i, %for.cond114.for.inc182_crit_edge.split.us362.split.us.us.us.us.i ]
  %.us-phi506.us.us.i = phi i32 [ %.us-phi510.us.us.i, %for.cond114.for.inc182_crit_edge.split.us.us.us.us.us.us.i ], [ %.us-phi.us404.us.us.i, %for.cond114.for.inc182_crit_edge.split.us362.split.us.us.us.us.i ]
  %inc186.us.us.i = add i32 %local_z.0514.us.us.i, 1
  %exitcond718.not.i = icmp eq i32 %inc186.us.us.i, %add105.i
  br i1 %exitcond718.not.i, label %if.end188.i, label %for.cond109.preheader.us.us.i, !llvm.loop !13

for.cond114.preheader.us.us.us.us.us.i:           ; preds = %for.cond114.preheader.lr.ph.split.us.split.us.us.us.i, %for.cond114.for.inc182_crit_edge.split.us.us.us.us.us.us.i
  %iLocal.2318.us.us.us.us.us.i = phi i32 [ %.us-phi510.us.us.i, %for.cond114.for.inc182_crit_edge.split.us.us.us.us.us.us.i ], [ %iLocal.1516.us.us.i, %for.cond114.preheader.lr.ph.split.us.split.us.us.us.i ]
  %iSend.2317.us.us.us.us.us.i = phi i32 [ %.us-phi509.us.us.i, %for.cond114.for.inc182_crit_edge.split.us.us.us.us.us.us.i ], [ %iSend.1515.us.us.i, %for.cond114.preheader.lr.ph.split.us.split.us.us.us.i ]
  %local_y.0316.us.us.us.us.us.i = phi i32 [ %inc183.us.us.us.us.us.i, %for.cond114.for.inc182_crit_edge.split.us.us.us.us.us.us.i ], [ %sub103.i, %for.cond114.preheader.lr.ph.split.us.split.us.us.us.i ]
  %send_id.2315.us.us.us.us.us.i = phi i32* [ %.us-phi508.us.us.i, %for.cond114.for.inc182_crit_edge.split.us.us.us.us.us.us.i ], [ %send_id.1513.us.us.i, %for.cond114.preheader.lr.ph.split.us.split.us.us.us.i ]
  %send_id_size.2314.us.us.us.us.us.i = phi i32 [ %.us-phi507.us.us.i, %for.cond114.for.inc182_crit_edge.split.us.us.us.us.us.us.i ], [ %send_id_size.1512.us.us.i, %for.cond114.preheader.lr.ph.split.us.split.us.us.us.i ]
  %add119.us.us.us.us.us.i = add nsw i32 %local_y.0316.us.us.us.us.us.i, %8
  %add18.i.us.us.us.us.us.i = add nsw i32 %local_y.0316.us.us.us.us.us.i, %ghost
  %cmp22.i.us.us.us.us.us.i = icmp sgt i32 %add18.i.us.us.us.us.us.i, -1
  %cmp128.not.us.us.us.us.us.i = icmp sle i32 %22, %add119.us.us.us.us.us.i
  %or.cond151.us.us.us.us.us.i = select i1 %or.cond150.us.us.i, i1 %cmp128.not.us.us.us.us.us.i, i1 false
  %cmp130.us.us.us.us.us.i = icmp slt i32 %add119.us.us.us.us.us.i, %23
  %or.cond152.us.us.us.us.us.i = select i1 %or.cond151.us.us.us.us.us.i, i1 %cmp130.us.us.us.us.us.i, i1 false
  %cmp148.us.us.us.us.us.i = icmp slt i32 %local_y.0316.us.us.us.us.us.i, %sub14.i
  %cmp161.not.us.us.us.us.us.i = icmp sle i32 %sub160.i, %add119.us.us.us.us.us.i
  %cmp164.us.us.us.us.us.i = icmp slt i32 %add119.us.us.us.us.us.i, %add163.i
  br i1 %cmp22.i.us.us.us.us.us.i, label %for.body117.lr.ph.split.us364.us.us.us.us.i, label %if.then124.i

for.body117.lr.ph.split.us364.us.us.us.us.i:      ; preds = %for.cond114.preheader.us.us.us.us.us.i
  %cmp146.us.us.us.us.us.i = icmp sgt i32 %local_y.0316.us.us.us.us.us.i, -1
  %or.cond1.us.us.us.us.us.i = select i1 %cmp144.us.us.i, i1 %cmp146.us.us.us.us.us.i, i1 false
  br i1 %or.cond1.us.us.us.us.us.i, label %for.body117.us289.us.us.us.us.us.us.i, label %for.body117.lr.ph.split.split.split.us.us.us.us.split.us580.us.i

for.body117.lr.ph.split.split.split.us.us.us.us.split.us580.us.i: ; preds = %for.body117.lr.ph.split.us364.us.us.us.us.i
  %32 = load i32, i32* %arrayidx7.i, align 4, !tbaa !4
  %add.i.us296.us.us.us.us542.us.i = add nsw i32 %32, %mul.i
  %33 = load i32, i32* %arrayidx.i.i, align 4, !tbaa !4
  %sub.i.us298.us.us.us.us544.us.i = sub i32 %add.i.us296.us.us.us.us542.us.i, %33
  %34 = load i32, i32* %arrayidx11.i, align 4, !tbaa !4
  %add6.i.us299.us.us.us.us545.us.i = add nsw i32 %34, %mul.i
  %35 = load i32, i32* %arrayidx.i162.i, align 4, !tbaa !4
  %sub9.i.us301.us.us.us.us547.us.i = sub i32 %add6.i.us299.us.us.us.us545.us.i, %35
  %36 = load i32, i32* %arrayidx16.i, align 4, !tbaa !4
  %add13.i.us302.us.us.us.us548.us.i = add nsw i32 %36, %mul.i
  %37 = load i32, i32* %arrayidx.i163.i, align 4, !tbaa !4
  %sub16.i.us304.us.us.us.us550.us.i = sub i32 %add13.i.us302.us.us.us.us548.us.i, %37
  %cmp24.i.us.us.us.us.us556.us.i = icmp slt i32 %add18.i.us.us.us.us.us.i, %sub9.i.us301.us.us.us.us547.us.i
  %cmp28.i.us.us.us.us.us557.us.i = icmp slt i32 %add19.i.us.us.i, %sub16.i.us304.us.us.us.us550.us.i
  %or.cond29.i.us.us.us.us.us558.us.i = select i1 %cmp24.i.us.us.us.us.us556.us.i, i1 %cmp28.i.us.us.us.us.us557.us.i, i1 false
  %mul29.i.us.us.us.us.us560.us.i = mul nsw i32 %sub9.i.us301.us.us.us.us547.us.i, %add19.i.us.us.i
  %mul3028.i.us.us.us.us.us561.us.i = add i32 %mul29.i.us.us.us.us.us560.us.i, %add18.i.us.us.us.us.us.i
  %add32.i.us.us.us.us.us562.us.i = mul i32 %mul3028.i.us.us.us.us.us561.us.i, %sub.i.us298.us.us.us.us544.us.i
  br i1 %or.cond29.i.us.us.us.us.us558.us.i, label %for.body117.lr.ph.split.split.split.us.us.us.us.split.us580.split.us.us.i, label %if.then124.i

for.cond114.for.inc182_crit_edge.split.us.us.us.us.us.us.i: ; preds = %if.end.us.us.us.us.us565.us.us.us.i, %if.end139.us.us.us.us.us574.us.us.i, %if.end178.us.us.us.us.us.us.us.i
  %.us-phi507.us.us.i = phi i32 [ %send_id_size.6.us.us.us.us.us.us.us.i, %if.end178.us.us.us.us.us.us.us.i ], [ %send_id_size.2314.us.us.us.us.us.i, %if.end139.us.us.us.us.us574.us.us.i ], [ %send_id_size.2314.us.us.us.us.us.i, %if.end.us.us.us.us.us565.us.us.us.i ]
  %.us-phi508.us.us.i = phi i32* [ %send_id.5.us.us.us.us.us.us.us.i, %if.end178.us.us.us.us.us.us.us.i ], [ %send_id.2315.us.us.us.us.us.i, %if.end139.us.us.us.us.us574.us.us.i ], [ %send_id.2315.us.us.us.us.us.i, %if.end.us.us.us.us.us565.us.us.us.i ]
  %.us-phi509.us.us.i = phi i32 [ %iSend.4.us.us.us.us.us.us.us.i, %if.end178.us.us.us.us.us.us.us.i ], [ %iSend.2317.us.us.us.us.us.i, %if.end139.us.us.us.us.us574.us.us.i ], [ %iSend.2317.us.us.us.us.us.i, %if.end.us.us.us.us.us565.us.us.us.i ]
  %.us-phi510.us.us.i = phi i32 [ %iLocal.4.us.us.us.us.us.us.us.i, %if.end178.us.us.us.us.us.us.us.i ], [ %iLocal.4.us.us.us.us.us575.us.us.i, %if.end139.us.us.us.us.us574.us.us.i ], [ %iLocal.2318.us.us.us.us.us.i, %if.end.us.us.us.us.us565.us.us.us.i ]
  %inc183.us.us.us.us.us.i = add i32 %local_y.0316.us.us.us.us.us.i, 1
  %exitcond717.not.i = icmp eq i32 %inc183.us.us.us.us.us.i, %add110.i
  br i1 %exitcond717.not.i, label %for.cond109.for.inc185_crit_edge.split.us.split.us.us.us.i, label %for.cond114.preheader.us.us.us.us.us.i, !llvm.loop !12

for.body117.us289.us.us.us.us.us.us.i:            ; preds = %for.body117.lr.ph.split.us364.us.us.us.us.i, %if.end178.us.us.us.us.us.us.us.i
  %iLocal.3234.us290.us.us.us.us.us.us.i = phi i32 [ %iLocal.4.us.us.us.us.us.us.us.i, %if.end178.us.us.us.us.us.us.us.i ], [ %iLocal.2318.us.us.us.us.us.i, %for.body117.lr.ph.split.us364.us.us.us.us.i ]
  %iSend.3233.us291.us.us.us.us.us.us.i = phi i32 [ %iSend.4.us.us.us.us.us.us.us.i, %if.end178.us.us.us.us.us.us.us.i ], [ %iSend.2317.us.us.us.us.us.i, %for.body117.lr.ph.split.us364.us.us.us.us.i ]
  %local_x.0231.us292.us.us.us.us.us.us.i = phi i32 [ %inc180.us.us.us.us.us.us.us.i, %if.end178.us.us.us.us.us.us.us.i ], [ %sub103.i, %for.body117.lr.ph.split.us364.us.us.us.us.i ]
  %send_id.3230.us293.us.us.us.us.us.us.i = phi i32* [ %send_id.5.us.us.us.us.us.us.us.i, %if.end178.us.us.us.us.us.us.us.i ], [ %send_id.2315.us.us.us.us.us.i, %for.body117.lr.ph.split.us364.us.us.us.us.i ]
  %send_id_size.3229.us294.us.us.us.us.us.us.i = phi i32 [ %send_id_size.6.us.us.us.us.us.us.us.i, %if.end178.us.us.us.us.us.us.us.i ], [ %send_id_size.2314.us.us.us.us.us.i, %for.body117.lr.ph.split.us364.us.us.us.us.i ]
  %add120.us295.us.us.us.us.us.us.i = add nsw i32 %local_x.0231.us292.us.us.us.us.us.us.i, %7
  %38 = load i32, i32* %arrayidx7.i, align 4, !tbaa !4
  %add.i.us296.us.us.us.us.us.us.i = add nsw i32 %38, %mul.i
  %39 = load i32, i32* %arrayidx.i.i, align 4, !tbaa !4
  %sub.i.us298.us.us.us.us.us.us.i = sub i32 %add.i.us296.us.us.us.us.us.us.i, %39
  %40 = load i32, i32* %arrayidx11.i, align 4, !tbaa !4
  %add6.i.us299.us.us.us.us.us.us.i = add nsw i32 %40, %mul.i
  %41 = load i32, i32* %arrayidx.i162.i, align 4, !tbaa !4
  %sub9.i.us301.us.us.us.us.us.us.i = sub i32 %add6.i.us299.us.us.us.us.us.us.i, %41
  %add17.i.us305.us.us.us.us.us.us.i = add nsw i32 %local_x.0231.us292.us.us.us.us.us.us.i, %ghost
  %cmp20.i.us308.us.us.us.us.us.us.i = icmp slt i32 %add17.i.us305.us.us.us.us.us.us.i, %sub.i.us298.us.us.us.us.us.us.i
  br i1 %cmp20.i.us308.us.us.us.us.us.us.i, label %land.lhs.true23.i.us309.us.us.us.us.us.us.i, label %if.then124.i

land.lhs.true23.i.us309.us.us.us.us.us.us.i:      ; preds = %for.body117.us289.us.us.us.us.us.us.i
  %42 = load i32, i32* %arrayidx16.i, align 4, !tbaa !4
  %add13.i.us302.us.us.us.us.us.us.i = add nsw i32 %42, %mul.i
  %43 = load i32, i32* %arrayidx.i163.i, align 4, !tbaa !4
  %sub16.i.us304.us.us.us.us.us.us.i = sub i32 %add13.i.us302.us.us.us.us.us.us.i, %43
  %cmp24.i.us.us.us.us.us.us.us.i = icmp slt i32 %add18.i.us.us.us.us.us.i, %sub9.i.us301.us.us.us.us.us.us.i
  %cmp28.i.us.us.us.us.us.us.us.i = icmp slt i32 %add19.i.us.us.i, %sub16.i.us304.us.us.us.us.us.us.i
  %or.cond29.i.us.us.us.us.us.us.us.i = select i1 %cmp24.i.us.us.us.us.us.us.us.i, i1 %cmp28.i.us.us.us.us.us.us.us.i, i1 false
  br i1 %or.cond29.i.us.us.us.us.us.us.us.i, label %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.i, label %if.then124.i

_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.i: ; preds = %land.lhs.true23.i.us309.us.us.us.us.us.us.i
  %mul29.i.us.us.us.us.us.us.us.i = mul nsw i32 %sub9.i.us301.us.us.us.us.us.us.i, %add19.i.us.us.i
  %mul3028.i.us.us.us.us.us.us.us.i = add i32 %mul29.i.us.us.us.us.us.us.us.i, %add18.i.us.us.us.us.us.i
  %add32.i.us.us.us.us.us.us.us.i = mul i32 %mul3028.i.us.us.us.us.us.us.us.i, %sub.i.us298.us.us.us.us.us.us.i
  %add33.i.us.us.us.us.us.us.us.i = add nsw i32 %add32.i.us.us.us.us.us.us.us.i, %add17.i.us305.us.us.us.us.us.us.i
  %cmp123.us.us.us.us.us.us.us.i = icmp slt i32 %add33.i.us.us.us.us.us.us.us.i, 0
  br i1 %cmp123.us.us.us.us.us.us.us.i, label %if.then124.i, label %if.end.us.us.us.us.us.us.us.i

if.end.us.us.us.us.us.us.us.i:                    ; preds = %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.i
  %cmp132.not.us.us.us.us.us.us.us.i = icmp sle i32 %20, %add120.us295.us.us.us.us.us.us.i
  %or.cond153.us.us.us.us.us.us.us.i = select i1 %or.cond152.us.us.us.us.us.i, i1 %cmp132.not.us.us.us.us.us.us.us.i, i1 false
  %cmp134.us.us.us.us.us.us.us.i = icmp slt i32 %add120.us295.us.us.us.us.us.us.i, %21
  %or.cond154.us.us.us.us.us.us.us.i = select i1 %or.cond153.us.us.us.us.us.us.us.i, i1 %cmp134.us.us.us.us.us.us.us.i, i1 false
  br i1 %or.cond154.us.us.us.us.us.us.us.i, label %if.then135.us.us.us.us.us.us.us.i, label %if.end139.us.us.us.us.us.us.us.i

if.then135.us.us.us.us.us.us.us.i:                ; preds = %if.end.us.us.us.us.us.us.us.i
  %inc136.us.us.us.us.us.us.us.i = add nsw i32 %iLocal.3234.us290.us.us.us.us.us.us.i, 1
  %idxprom137208.us.us.us.us.us.us.us.i = zext i32 %add33.i.us.us.us.us.us.us.us.i to i64
  %arrayidx138.us.us.us.us.us.us.us.i = getelementptr inbounds i32, i32* %13, i64 %idxprom137208.us.us.us.us.us.us.us.i
  store i32 %iLocal.3234.us290.us.us.us.us.us.us.i, i32* %arrayidx138.us.us.us.us.us.us.us.i, align 4, !tbaa !4
  br label %if.end139.us.us.us.us.us.us.us.i

if.end139.us.us.us.us.us.us.us.i:                 ; preds = %if.then135.us.us.us.us.us.us.us.i, %if.end.us.us.us.us.us.us.us.i
  %iLocal.4.us.us.us.us.us.us.us.i = phi i32 [ %inc136.us.us.us.us.us.us.us.i, %if.then135.us.us.us.us.us.us.us.i ], [ %iLocal.3234.us290.us.us.us.us.us.us.i, %if.end.us.us.us.us.us.us.us.i ]
  %cmp150.us.us.us.us.us.us.us.i = icmp sgt i32 %local_x.0231.us292.us.us.us.us.us.us.i, -1
  %or.cond2.us.us.us.us.us.us.us.i = select i1 %cmp148.us.us.us.us.us.i, i1 %cmp150.us.us.us.us.us.us.us.i, i1 false
  %cmp152.us.us.us.us.us.us.us.i = icmp slt i32 %local_x.0231.us292.us.us.us.us.us.us.i, %sub.i
  %or.cond155.us.us.us.us.us.us.us.i = select i1 %or.cond2.us.us.us.us.us.us.us.i, i1 %cmp152.us.us.us.us.us.us.us.i, i1 false
  %or.cond156.us.us.us.us.us.us.us.i = select i1 %or.cond155.us.us.us.us.us.us.us.i, i1 %cmp155.not.us.us.i, i1 false
  %or.cond157.us.us.us.us.us.us.us.i = select i1 %or.cond156.us.us.us.us.us.us.us.i, i1 %cmp158.us.us.i, i1 false
  %or.cond158.us.us.us.us.us.us.us.i = select i1 %or.cond157.us.us.us.us.us.us.us.i, i1 %cmp161.not.us.us.us.us.us.i, i1 false
  %or.cond159.us.us.us.us.us.us.us.i = select i1 %or.cond158.us.us.us.us.us.us.us.i, i1 %cmp164.us.us.us.us.us.i, i1 false
  %cmp167.not.us.us.us.us.us.us.us.i = icmp sle i32 %sub166.i, %add120.us295.us.us.us.us.us.us.i
  %or.cond160.us.us.us.us.us.us.us.i = select i1 %or.cond159.us.us.us.us.us.us.us.i, i1 %cmp167.not.us.us.us.us.us.us.us.i, i1 false
  %cmp170.us.us.us.us.us.us.us.i = icmp slt i32 %add120.us295.us.us.us.us.us.us.i, %add169.i
  %or.cond161.us.us.us.us.us.us.us.i = select i1 %or.cond160.us.us.us.us.us.us.us.i, i1 %cmp170.us.us.us.us.us.us.us.i, i1 false
  br i1 %or.cond161.us.us.us.us.us.us.us.i, label %while.cond.i.us.us.us.us.us.us.us.i, label %if.end178.us.us.us.us.us.us.us.i

while.cond.i.us.us.us.us.us.us.us.i:              ; preds = %if.end139.us.us.us.us.us.us.us.i, %while.cond.i.us.us.us.us.us.us.us.i
  %k.0.i.us.us.us.us.us.us.us.i = phi i32 [ %shl.i.us.us.us.us.us.us.us.i, %while.cond.i.us.us.us.us.us.us.us.i ], [ 32, %if.end139.us.us.us.us.us.us.us.i ]
  %cmp.i191.not.us.us.us.us.us.us.us.i = icmp sgt i32 %k.0.i.us.us.us.us.us.us.us.i, %iSend.3233.us291.us.us.us.us.us.us.i
  %shl.i.us.us.us.us.us.us.us.i = shl i32 %k.0.i.us.us.us.us.us.us.us.i, 1
  br i1 %cmp.i191.not.us.us.us.us.us.us.us.i, label %while.end.i.us.us.us.us.us.us.us.i, label %while.cond.i.us.us.us.us.us.us.us.i, !llvm.loop !14

while.end.i.us.us.us.us.us.us.us.i:               ; preds = %while.cond.i.us.us.us.us.us.us.us.i
  %add172.us.us.us.us.us.us.us.i = add nsw i32 %iSend.3233.us291.us.us.us.us.us.us.i, 1
  %cmp1.i.us.us.us.us.us.us.us.i = icmp eq i32* %send_id.3230.us293.us.us.us.us.us.us.i, null
  br i1 %cmp1.i.us.us.us.us.us.us.us.i, label %if.then.i193.us.us.us.us.us.us.us.i, label %if.else.i.us.us.us.us.us.us.us.i

if.else.i.us.us.us.us.us.us.us.i:                 ; preds = %while.end.i.us.us.us.us.us.us.us.i
  %cmp2.i.us.us.us.us.us.us.us.i = icmp slt i32 %send_id_size.3229.us294.us.us.us.us.us.us.i, %k.0.i.us.us.us.us.us.us.us.i
  br i1 %cmp2.i.us.us.us.us.us.us.us.i, label %if.then3.i.us.us.us.us.us.us.us.i, label %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.i

if.then3.i.us.us.us.us.us.us.us.i:                ; preds = %if.else.i.us.us.us.us.us.us.us.i
  %44 = bitcast i32* %send_id.3230.us293.us.us.us.us.us.us.i to i8*
  %conv4.i.us.us.us.us.us.us.us.i = sext i32 %k.0.i.us.us.us.us.us.us.us.i to i64
  %mul5.i.us.us.us.us.us.us.us.i = shl nsw i64 %conv4.i.us.us.us.us.us.us.us.i, 2
  %call6.i.us.us.us.us.us.us.us.i = tail call align 16 i8* @realloc(i8* noundef nonnull %44, i64 noundef %mul5.i.us.us.us.us.us.us.us.i) #10
  br label %if.end7.sink.split.i.us.us.us.us.us.us.us.i

if.then.i193.us.us.us.us.us.us.us.i:              ; preds = %while.end.i.us.us.us.us.us.us.us.i
  %conv.i.us.us.us.us.us.us.us.i = sext i32 %k.0.i.us.us.us.us.us.us.us.i to i64
  %mul.i192.us.us.us.us.us.us.us.i = shl nsw i64 %conv.i.us.us.us.us.us.us.us.i, 2
  %call.i.us.us.us.us.us.us.us.i = tail call noalias align 16 i8* @malloc(i64 noundef %mul.i192.us.us.us.us.us.us.us.i) #10
  br label %if.end7.sink.split.i.us.us.us.us.us.us.us.i

if.end7.sink.split.i.us.us.us.us.us.us.us.i:      ; preds = %if.then.i193.us.us.us.us.us.us.us.i, %if.then3.i.us.us.us.us.us.us.us.i
  %call6.sink.i.us.us.us.us.us.us.us.i = phi i8* [ %call6.i.us.us.us.us.us.us.us.i, %if.then3.i.us.us.us.us.us.us.us.i ], [ %call.i.us.us.us.us.us.us.us.i, %if.then.i193.us.us.us.us.us.us.us.i ]
  %45 = bitcast i8* %call6.sink.i.us.us.us.us.us.us.us.i to i32*
  br label %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.i

_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.i: ; preds = %if.end7.sink.split.i.us.us.us.us.us.us.us.i, %if.else.i.us.us.us.us.us.us.us.i
  %send_id_size.5.us.us.us.us.us.us.us.i = phi i32 [ %k.0.i.us.us.us.us.us.us.us.i, %if.end7.sink.split.i.us.us.us.us.us.us.us.i ], [ %send_id_size.3229.us294.us.us.us.us.us.us.i, %if.else.i.us.us.us.us.us.us.us.i ]
  %send_id.4.us.us.us.us.us.us.us.i = phi i32* [ %45, %if.end7.sink.split.i.us.us.us.us.us.us.us.i ], [ %send_id.3230.us293.us.us.us.us.us.us.i, %if.else.i.us.us.us.us.us.us.us.i ]
  %idxprom173.us.us.us.us.us.us.us.i = sext i32 %add33.i.us.us.us.us.us.us.us.i to i64
  %arrayidx174.us.us.us.us.us.us.us.i = getelementptr inbounds i32, i32* %13, i64 %idxprom173.us.us.us.us.us.us.us.i
  %46 = load i32, i32* %arrayidx174.us.us.us.us.us.us.us.i, align 4, !tbaa !4
  %idxprom175.us.us.us.us.us.us.us.i = sext i32 %iSend.3233.us291.us.us.us.us.us.us.i to i64
  %arrayidx176.us.us.us.us.us.us.us.i = getelementptr inbounds i32, i32* %send_id.4.us.us.us.us.us.us.us.i, i64 %idxprom175.us.us.us.us.us.us.us.i
  store i32 %46, i32* %arrayidx176.us.us.us.us.us.us.us.i, align 4, !tbaa !4
  br label %if.end178.us.us.us.us.us.us.us.i

if.end178.us.us.us.us.us.us.us.i:                 ; preds = %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.i, %if.end139.us.us.us.us.us.us.us.i
  %send_id_size.6.us.us.us.us.us.us.us.i = phi i32 [ %send_id_size.5.us.us.us.us.us.us.us.i, %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.i ], [ %send_id_size.3229.us294.us.us.us.us.us.us.i, %if.end139.us.us.us.us.us.us.us.i ]
  %send_id.5.us.us.us.us.us.us.us.i = phi i32* [ %send_id.4.us.us.us.us.us.us.us.i, %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.i ], [ %send_id.3230.us293.us.us.us.us.us.us.i, %if.end139.us.us.us.us.us.us.us.i ]
  %iSend.4.us.us.us.us.us.us.us.i = phi i32 [ %add172.us.us.us.us.us.us.us.i, %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.i ], [ %iSend.3233.us291.us.us.us.us.us.us.i, %if.end139.us.us.us.us.us.us.us.i ]
  %inc180.us.us.us.us.us.us.us.i = add i32 %local_x.0231.us292.us.us.us.us.us.us.i, 1
  %exitcond716.not.i = icmp eq i32 %inc180.us.us.us.us.us.us.us.i, %add115.i
  br i1 %exitcond716.not.i, label %for.cond114.for.inc182_crit_edge.split.us.us.us.us.us.us.i, label %for.body117.us289.us.us.us.us.us.us.i, !llvm.loop !10

for.body117.lr.ph.split.split.split.us.us.us.us.split.us580.split.us.us.i: ; preds = %for.body117.lr.ph.split.split.split.us.us.us.us.split.us580.us.i
  br i1 %or.cond152.us.us.us.us.us.i, label %for.body117.us289.us.us.us.us538.us.us633.i, label %for.body117.us289.us.us.us.us538.us.us.us.i

for.body117.us289.us.us.us.us538.us.us633.i:      ; preds = %for.body117.lr.ph.split.split.split.us.us.us.us.split.us580.split.us.us.i, %if.end139.us.us.us.us.us574.us.us.i
  %iLocal.3234.us290.us.us.us.us539.us.us.i = phi i32 [ %iLocal.4.us.us.us.us.us575.us.us.i, %if.end139.us.us.us.us.us574.us.us.i ], [ %iLocal.2318.us.us.us.us.us.i, %for.body117.lr.ph.split.split.split.us.us.us.us.split.us580.split.us.us.i ]
  %local_x.0231.us292.us.us.us.us540.us.us634.i = phi i32 [ %inc180.us.us.us.us.us576.us.us643.i, %if.end139.us.us.us.us.us574.us.us.i ], [ %sub103.i, %for.body117.lr.ph.split.split.split.us.us.us.us.split.us580.split.us.us.i ]
  %add120.us295.us.us.us.us541.us.us.i = add nsw i32 %local_x.0231.us292.us.us.us.us540.us.us634.i, %7
  %add17.i.us305.us.us.us.us551.us.us635.i = add nsw i32 %local_x.0231.us292.us.us.us.us540.us.us634.i, %ghost
  %cmp20.i.us308.us.us.us.us554.us.us638.i = icmp slt i32 %add17.i.us305.us.us.us.us551.us.us635.i, %sub.i.us298.us.us.us.us544.us.i
  br i1 %cmp20.i.us308.us.us.us.us554.us.us638.i, label %land.lhs.true23.i.us309.us.us.us.us555.us.us639.i, label %if.then124.i

land.lhs.true23.i.us309.us.us.us.us555.us.us639.i: ; preds = %for.body117.us289.us.us.us.us538.us.us633.i
  %add33.i.us.us.us.us.us563.us.us640.i = add nuw nsw i32 %add17.i.us305.us.us.us.us551.us.us635.i, %add32.i.us.us.us.us.us562.us.i
  %cmp123.us.us.us.us.us564.us.us641.i = icmp slt i32 %add33.i.us.us.us.us.us563.us.us640.i, 0
  br i1 %cmp123.us.us.us.us.us564.us.us641.i, label %if.then124.i, label %if.end.us.us.us.us.us565.us.us642.i

if.end.us.us.us.us.us565.us.us642.i:              ; preds = %land.lhs.true23.i.us309.us.us.us.us555.us.us639.i
  %cmp132.not.us.us.us.us.us566.us.us.i = icmp sle i32 %20, %add120.us295.us.us.us.us541.us.us.i
  %cmp134.us.us.us.us.us568.us.us.i = icmp slt i32 %add120.us295.us.us.us.us541.us.us.i, %21
  %or.cond154.us.us.us.us.us569.us.us.i = select i1 %cmp132.not.us.us.us.us.us566.us.us.i, i1 %cmp134.us.us.us.us.us568.us.us.i, i1 false
  br i1 %or.cond154.us.us.us.us.us569.us.us.i, label %if.then135.us.us.us.us.us570.us.us.i, label %if.end139.us.us.us.us.us574.us.us.i

if.then135.us.us.us.us.us570.us.us.i:             ; preds = %if.end.us.us.us.us.us565.us.us642.i
  %inc136.us.us.us.us.us571.us.us.i = add nsw i32 %iLocal.3234.us290.us.us.us.us539.us.us.i, 1
  %idxprom137208.us.us.us.us.us572.us.us.i = zext i32 %add33.i.us.us.us.us.us563.us.us640.i to i64
  %arrayidx138.us.us.us.us.us573.us.us.i = getelementptr inbounds i32, i32* %13, i64 %idxprom137208.us.us.us.us.us572.us.us.i
  store i32 %iLocal.3234.us290.us.us.us.us539.us.us.i, i32* %arrayidx138.us.us.us.us.us573.us.us.i, align 4, !tbaa !4
  br label %if.end139.us.us.us.us.us574.us.us.i

if.end139.us.us.us.us.us574.us.us.i:              ; preds = %if.then135.us.us.us.us.us570.us.us.i, %if.end.us.us.us.us.us565.us.us642.i
  %iLocal.4.us.us.us.us.us575.us.us.i = phi i32 [ %inc136.us.us.us.us.us571.us.us.i, %if.then135.us.us.us.us.us570.us.us.i ], [ %iLocal.3234.us290.us.us.us.us539.us.us.i, %if.end.us.us.us.us.us565.us.us642.i ]
  %inc180.us.us.us.us.us576.us.us643.i = add i32 %local_x.0231.us292.us.us.us.us540.us.us634.i, 1
  %exitcond715.not.i = icmp eq i32 %inc180.us.us.us.us.us576.us.us643.i, %add115.i
  br i1 %exitcond715.not.i, label %for.cond114.for.inc182_crit_edge.split.us.us.us.us.us.us.i, label %for.body117.us289.us.us.us.us538.us.us633.i, !llvm.loop !10

for.body117.us289.us.us.us.us538.us.us.us.i:      ; preds = %for.body117.lr.ph.split.split.split.us.us.us.us.split.us580.split.us.us.i, %if.end.us.us.us.us.us565.us.us.us.i
  %local_x.0231.us292.us.us.us.us540.us.us.us.i = phi i32 [ %inc180.us.us.us.us.us576.us.us.us.i, %if.end.us.us.us.us.us565.us.us.us.i ], [ %sub103.i, %for.body117.lr.ph.split.split.split.us.us.us.us.split.us580.split.us.us.i ]
  %add17.i.us305.us.us.us.us551.us.us.us.i = add nsw i32 %local_x.0231.us292.us.us.us.us540.us.us.us.i, %ghost
  %cmp20.i.us308.us.us.us.us554.us.us.us.i = icmp sge i32 %add17.i.us305.us.us.us.us551.us.us.us.i, %sub.i.us298.us.us.us.us544.us.i
  %add33.i.us.us.us.us.us563.us.us.us.i = add nuw nsw i32 %add17.i.us305.us.us.us.us551.us.us.us.i, %add32.i.us.us.us.us.us562.us.i
  %cmp123.us.us.us.us.us564.us.us.us.i = icmp slt i32 %add33.i.us.us.us.us.us563.us.us.us.i, 0
  %or.cond696.i = select i1 %cmp20.i.us308.us.us.us.us554.us.us.us.i, i1 true, i1 %cmp123.us.us.us.us.us564.us.us.us.i
  br i1 %or.cond696.i, label %if.then124.i, label %if.end.us.us.us.us.us565.us.us.us.i

if.end.us.us.us.us.us565.us.us.us.i:              ; preds = %for.body117.us289.us.us.us.us538.us.us.us.i
  %inc180.us.us.us.us.us576.us.us.us.i = add i32 %local_x.0231.us292.us.us.us.us540.us.us.us.i, 1
  %exitcond714.not.i = icmp eq i32 %inc180.us.us.us.us.us576.us.us.us.i, %add115.i
  br i1 %exitcond714.not.i, label %for.cond114.for.inc182_crit_edge.split.us.us.us.us.us.us.i, label %for.body117.us289.us.us.us.us538.us.us.us.i, !llvm.loop !10

if.then124.i:                                     ; preds = %for.cond109.preheader.us.us.i, %for.cond114.preheader.us.us.us522.us.preheader.i, %for.body117.lr.ph.split.us364.us.us532.us.i, %for.body117.lr.ph.split.split.split.us.us.us.us.split.us580.us.i, %for.cond114.preheader.us.us.us.us.us.i, %for.body117.us322.us.us.us.us.us.i, %land.lhs.true23.i.us339.us.us396.us.us.i, %for.body117.us322.us.us390.us.us.i, %for.body117.us289.us.us.us.us538.us.us.us.i, %land.lhs.true23.i.us309.us.us.us.us555.us.us639.i, %for.body117.us289.us.us.us.us538.us.us633.i, %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.i, %land.lhs.true23.i.us309.us.us.us.us.us.us.i, %for.body117.us289.us.us.us.us.us.us.i
  tail call void @abort() #12
  unreachable

if.end188.i:                                      ; preds = %for.cond109.for.inc185_crit_edge.split.us.split.us.us.us.i, %for.cond109.preheader.lr.ph.split.us.i, %for.cond109.preheader.lr.ph.i, %if.then.i, %_ZL12box_disjointRK3BoxS1_.exit.i, %lor.lhs.false20.i.i, %lor.lhs.false14.i.i, %lor.lhs.false8.i.i, %lor.lhs.false.i.i, %for.body70.i
  %send_id_size.7.i = phi i32 [ %send_id_size.0684.i, %_ZL12box_disjointRK3BoxS1_.exit.i ], [ %send_id_size.0684.i, %lor.lhs.false20.i.i ], [ %send_id_size.0684.i, %lor.lhs.false14.i.i ], [ %send_id_size.0684.i, %lor.lhs.false8.i.i ], [ %send_id_size.0684.i, %lor.lhs.false.i.i ], [ %send_id_size.0684.i, %for.body70.i ], [ %send_id_size.0684.i, %if.then.i ], [ %send_id_size.0684.i, %for.cond109.preheader.lr.ph.i ], [ %send_id_size.0684.i, %for.cond109.preheader.lr.ph.split.us.i ], [ %.us-phi503.us.us.i, %for.cond109.for.inc185_crit_edge.split.us.split.us.us.us.i ]
  %send_id.6.i = phi i32* [ %send_id.0685.i, %_ZL12box_disjointRK3BoxS1_.exit.i ], [ %send_id.0685.i, %lor.lhs.false20.i.i ], [ %send_id.0685.i, %lor.lhs.false14.i.i ], [ %send_id.0685.i, %lor.lhs.false8.i.i ], [ %send_id.0685.i, %lor.lhs.false.i.i ], [ %send_id.0685.i, %for.body70.i ], [ %send_id.0685.i, %if.then.i ], [ %send_id.0685.i, %for.cond109.preheader.lr.ph.i ], [ %send_id.0685.i, %for.cond109.preheader.lr.ph.split.us.i ], [ %.us-phi504.us.us.i, %for.cond109.for.inc185_crit_edge.split.us.split.us.us.us.i ]
  %iSend.5.i = phi i32 [ %iSend.0687.i, %_ZL12box_disjointRK3BoxS1_.exit.i ], [ %iSend.0687.i, %lor.lhs.false20.i.i ], [ %iSend.0687.i, %lor.lhs.false14.i.i ], [ %iSend.0687.i, %lor.lhs.false8.i.i ], [ %iSend.0687.i, %lor.lhs.false.i.i ], [ %iSend.0687.i, %for.body70.i ], [ %iSend.0687.i, %if.then.i ], [ %iSend.0687.i, %for.cond109.preheader.lr.ph.i ], [ %iSend.0687.i, %for.cond109.preheader.lr.ph.split.us.i ], [ %.us-phi505.us.us.i, %for.cond109.for.inc185_crit_edge.split.us.split.us.us.us.i ]
  %iLocal.5.i = phi i32 [ %iLocal.0688.i, %_ZL12box_disjointRK3BoxS1_.exit.i ], [ %iLocal.0688.i, %lor.lhs.false20.i.i ], [ %iLocal.0688.i, %lor.lhs.false14.i.i ], [ %iLocal.0688.i, %lor.lhs.false8.i.i ], [ %iLocal.0688.i, %lor.lhs.false.i.i ], [ %iLocal.0688.i, %for.body70.i ], [ %iLocal.0688.i, %if.then.i ], [ %iLocal.0688.i, %for.cond109.preheader.lr.ph.i ], [ %iLocal.0688.i, %for.cond109.preheader.lr.ph.split.us.i ], [ %.us-phi506.us.us.i, %for.cond109.for.inc185_crit_edge.split.us.split.us.us.us.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond721.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond721.not.i, label %_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit, label %for.body70.i, !llvm.loop !15

_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit: ; preds = %if.end188.i, %for.cond68.preheader.i
  %send_id.0.lcssa.i = phi i32* [ null, %for.cond68.preheader.i ], [ %send_id.6.i, %if.end188.i ]
  %iSend.0.lcssa.i = phi i32 [ 0, %for.cond68.preheader.i ], [ %iSend.5.i, %if.end188.i ]
  %iLocal.0.lcssa.i = phi i32 [ 0, %for.cond68.preheader.i ], [ %iLocal.5.i, %if.end188.i ]
  %arrayidx193.i = getelementptr inbounds i32, i32* %14, i64 %conv
  store i32 %iLocal.0.lcssa.i, i32* %arrayidx193.i, align 4, !tbaa !4
  %arrayidx195.i = getelementptr inbounds i32, i32* %15, i64 %conv
  store i32 %iSend.0.lcssa.i, i32* %arrayidx195.i, align 4, !tbaa !4
  %47 = bitcast i32** %map_local_id to i8**
  store i8* %call27.i, i8** %47, align 8, !tbaa !8
  %48 = bitcast i32** %map_recv_pc to i8**
  store i8* %call31.i, i8** %48, align 8, !tbaa !8
  %49 = bitcast i32** %map_send_pc to i8**
  store i8* %call35.i, i8** %49, align 8, !tbaa !8
  store i32* %send_id.0.lcssa.i, i32** %map_send_id, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #3 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #6 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #7 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nounwind }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!nvvm.annotations = !{}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0 (git@github.com:koparasy/ML-LLVM.git 57f6b002589ddbfa715ddd9ea752700e004464bf)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}

; __CLANG_OFFLOAD_BUNDLE____END__ host-powerpc64le-unknown-linux-gnu
