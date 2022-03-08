
; __CLANG_OFFLOAD_BUNDLE____START__ openmp-nvptx64-nvidia-cuda
; ModuleID = '../utils/param_utils.cpp'
source_filename = "../utils/param_utils.cpp"
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
; ModuleID = '/var/tmp/param_utils-8e5b1a.bc'
source_filename = "../utils/param_utils.cpp"
target datalayout = "e-m:e-i64:64-n32:64-S128-v256:256:256-v512:512:512"
target triple = "powerpc64le-unknown-linux-gnu"

%"class.std::basic_string" = type { %"struct.std::basic_string<char>::_Alloc_hider" }
%"struct.std::basic_string<char>::_Alloc_hider" = type { i8* }
%"class.std::allocator" = type { i8 }
%"struct.std::basic_string<char>::_Rep" = type { %"struct.std::basic_string<char>::_Rep_base" }
%"struct.std::basic_string<char>::_Rep_base" = type { i64, i64, i32 }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { i32 (...)**, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, i8*, i64, i8, i8, i8, i8, i8*, i8*, i8, %"class.std::codecvt"*, i8*, i64, i8*, i8* }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%union.pthread_mutex_t = type { %"struct.(anonymous union)::__pthread_mutex_s" }
%"struct.(anonymous union)::__pthread_mutex_s" = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%"class.std::__basic_file" = type <{ %struct._IO_FILE*, i8, [7 x i8] }>
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"class.std::codecvt" = type { %"class.std::__codecvt_abstract_base.base", %struct.__locale_struct* }
%"class.std::__codecvt_abstract_base.base" = type { %"class.std::locale::facet.base" }
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::__gnu_cxx_ldbl128::num_put"*, %"class.std::__gnu_cxx_ldbl128::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::__gnu_cxx_ldbl128::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::__gnu_cxx_ldbl128::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@_ZNSs4_Rep20_S_empty_rep_storageE = external global [0 x i64], align 8

; Function Attrs: uwtable
define dso_local void @_ZN7Mantevo21read_args_into_stringEiPPcRSs(i32 noundef signext %argc, i8** nocapture noundef readonly %argv, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %arg_string) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i14 = alloca %"class.std::allocator", align 1
  %ref.tmp.i = alloca %"class.std::allocator", align 1
  %ref.tmp = alloca %"class.std::basic_string", align 8
  %ref.tmp1 = alloca %"class.std::basic_string", align 8
  %ref.tmp3 = alloca %"class.std::allocator", align 1
  %0 = load i8*, i8** %argv, align 8, !tbaa !4
  %call.i.i.i = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #8
  %call2.i.i = tail call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %arg_string, i8* noundef %0, i64 noundef %call.i.i.i)
  %1 = bitcast %"class.std::basic_string"* %ref.tmp to i8*
  %2 = bitcast %"class.std::basic_string"* %ref.tmp1 to i8*
  %3 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp3, i64 0, i32 0
  %_M_p.i.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  %4 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i, i64 0, i32 0
  %_M_p.i.i.i15 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp1, i64 0, i32 0, i32 0
  %5 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i14, i64 0, i32 0
  %cmp33 = icmp sgt i32 %argc, 1
  br i1 %cmp33, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %argc to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %_ZNSsD2Ev.exit27, %entry
  ret void

for.body:                                         ; preds = %for.body.preheader, %_ZNSsD2Ev.exit27
  %indvars.iv = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next, %_ZNSsD2Ev.exit27 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8
  %arrayidx2 = getelementptr inbounds i8*, i8** %argv, i64 %indvars.iv
  %6 = load i8*, i8** %arrayidx2, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #8
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp1, i8* noundef %6, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp3)
  call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %call2.i.i1011 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6insertEmPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp1, i64 noundef 0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 noundef 1)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %for.body
  %_M_p2.i.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %call2.i.i1011, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %_M_p2.i.i.i, align 8, !tbaa !11, !noalias !8
  store i8* %7, i8** %_M_p.i.i.i, align 8, !tbaa !11, !alias.scope !8
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p2.i.i.i, align 8, !tbaa !13, !noalias !8
  %call.i12 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %arg_string, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %invoke.cont5
  %8 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !13
  %arrayidx.i.i = getelementptr inbounds i8, i8* %8, i64 -24
  %9 = bitcast i8* %arrayidx.i.i to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #8
  %cmp.not.i.i = icmp eq i8* %arrayidx.i.i, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i, label %_ZNSsD2Ev.exit, label %if.then.i.i, !prof !15

if.then.i.i:                                      ; preds = %invoke.cont7
  %_M_refcount.i.i = getelementptr inbounds i8, i8* %8, i64 -8
  %10 = bitcast i8* %_M_refcount.i.i to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  %11 = atomicrmw volatile add i32* %10, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  %12 = load i32, i32* %10, align 8, !tbaa !16
  %add.i.i.i.i = add nsw i32 %12, -1
  store i32 %add.i.i.i.i, i32* %10, align 8, !tbaa !16
  br label %invoke.cont.i.i

invoke.cont.i.i:                                  ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %11, %if.then.i.i.i ], [ %12, %if.else.i.i.i ]
  %cmp3.i.i = icmp slt i32 %retval.0.i.i.i, 1
  br i1 %cmp3.i.i, label %if.then4.i.i, label %_ZNSsD2Ev.exit

if.then4.i.i:                                     ; preds = %invoke.cont.i.i
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %9, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i) #8
  br label %_ZNSsD2Ev.exit

_ZNSsD2Ev.exit:                                   ; preds = %invoke.cont7, %invoke.cont.i.i, %if.then4.i.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #8
  %13 = load i8*, i8** %_M_p.i.i.i15, align 8, !tbaa !13
  %arrayidx.i.i16 = getelementptr inbounds i8, i8* %13, i64 -24
  %14 = bitcast i8* %arrayidx.i.i16 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #8
  %cmp.not.i.i17 = icmp eq i8* %arrayidx.i.i16, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i17, label %_ZNSsD2Ev.exit27, label %if.then.i.i19, !prof !15

if.then.i.i19:                                    ; preds = %_ZNSsD2Ev.exit
  %_M_refcount.i.i18 = getelementptr inbounds i8, i8* %13, i64 -8
  %15 = bitcast i8* %_M_refcount.i.i18 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i20, label %if.else.i.i.i22

if.then.i.i.i20:                                  ; preds = %if.then.i.i19
  %16 = atomicrmw volatile add i32* %15, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i25

if.else.i.i.i22:                                  ; preds = %if.then.i.i19
  %17 = load i32, i32* %15, align 8, !tbaa !16
  %add.i.i.i.i21 = add nsw i32 %17, -1
  store i32 %add.i.i.i.i21, i32* %15, align 8, !tbaa !16
  br label %invoke.cont.i.i25

invoke.cont.i.i25:                                ; preds = %if.else.i.i.i22, %if.then.i.i.i20
  %retval.0.i.i.i23 = phi i32 [ %16, %if.then.i.i.i20 ], [ %17, %if.else.i.i.i22 ]
  %cmp3.i.i24 = icmp slt i32 %retval.0.i.i.i23, 1
  br i1 %cmp3.i.i24, label %if.then4.i.i26, label %_ZNSsD2Ev.exit27

if.then4.i.i26:                                   ; preds = %invoke.cont.i.i25
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %14, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i14) #8
  br label %_ZNSsD2Ev.exit27

_ZNSsD2Ev.exit27:                                 ; preds = %_ZNSsD2Ev.exit, %invoke.cont.i.i25, %if.then4.i.i26
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !18

lpad4:                                            ; preds = %for.body
  %18 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

lpad6:                                            ; preds = %invoke.cont5
  %19 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp) #8
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad6, %lpad4
  %.pn = phi { i8*, i32 } [ %19, %lpad6 ], [ %18, %lpad4 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp1) #8
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  resume { i8*, i32 } %.pn
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i8* noundef, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind uwtable
declare void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3 align 2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6insertEmPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

; Function Attrs: nounwind
declare extern_weak noundef signext i32 @__pthread_key_create(i32* noundef, void (i8*)* noundef) #5

; Function Attrs: uwtable
define dso_local void @_ZN7Mantevo21read_file_into_stringERKSsRSs(%"class.std::basic_string"* nocapture noundef nonnull readonly align 8 dereferenceable(8) %filename, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %file_contents) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i26 = alloca %"class.std::allocator", align 1
  %ref.tmp.i13 = alloca %"class.std::allocator", align 1
  %ref.tmp.i = alloca %"class.std::allocator", align 1
  %ifs = alloca %"class.std::basic_ifstream", align 8
  %line = alloca [256 x i8], align 1
  %ref.tmp = alloca %"class.std::basic_string", align 8
  %ref.tmp4 = alloca %"class.std::basic_string", align 8
  %ref.tmp6 = alloca %"class.std::allocator", align 1
  %_M_p.i.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %file_contents, i64 0, i32 0, i32 0
  %0 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !13
  %_M_refcount.i.i = getelementptr inbounds i8, i8* %0, i64 -8
  %1 = bitcast i8* %_M_refcount.i.i to i32*
  %2 = load atomic i32, i32* %1 acquire, align 8
  %cmp.i.i = icmp sgt i32 %2, 0
  %3 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !13
  %arrayidx.i2.i = getelementptr inbounds i8, i8* %3, i64 -24
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %4 = bitcast i8* %arrayidx.i2.i to %"struct.std::basic_string<char>::_Rep"*
  %5 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #8
  %cmp.not.i.i = icmp eq i8* %arrayidx.i2.i, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i, label %_ZNSs4_Rep10_M_disposeERKSaIcE.exit.i, label %if.then.i.i, !prof !15

if.then.i.i:                                      ; preds = %if.then.i
  %_M_refcount.i3.i = getelementptr inbounds i8, i8* %3, i64 -8
  %6 = bitcast i8* %_M_refcount.i3.i to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  %7 = atomicrmw volatile add i32* %6, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  %8 = load i32, i32* %6, align 8, !tbaa !16
  %add.i.i.i.i = add nsw i32 %8, -1
  store i32 %add.i.i.i.i, i32* %6, align 8, !tbaa !16
  br label %invoke.cont.i.i

invoke.cont.i.i:                                  ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %7, %if.then.i.i.i ], [ %8, %if.else.i.i.i ]
  %cmp3.i.i = icmp slt i32 %retval.0.i.i.i, 1
  br i1 %cmp3.i.i, label %if.then4.i.i, label %_ZNSs4_Rep10_M_disposeERKSaIcE.exit.i

if.then4.i.i:                                     ; preds = %invoke.cont.i.i
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %4, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i) #8
  br label %_ZNSs4_Rep10_M_disposeERKSaIcE.exit.i

_ZNSs4_Rep10_M_disposeERKSaIcE.exit.i:            ; preds = %if.then4.i.i, %invoke.cont.i.i, %if.then.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #8
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p.i.i.i, align 8, !tbaa !13
  br label %_ZNSs5clearEv.exit

if.else.i:                                        ; preds = %entry
  %cmp.not.i6.i = icmp eq i8* %arrayidx.i2.i, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i6.i, label %_ZNSs5clearEv.exit, label %if.then.i7.i, !prof !15

if.then.i7.i:                                     ; preds = %if.else.i
  %_M_refcount.i.i.i = getelementptr inbounds i8, i8* %3, i64 -8
  %9 = bitcast i8* %_M_refcount.i.i.i to i32*
  store i32 0, i32* %9, align 8, !tbaa !20
  %_M_length.i.i = bitcast i8* %arrayidx.i2.i to i64*
  store i64 0, i64* %_M_length.i.i, align 8, !tbaa !23
  store i8 0, i8* %3, align 1, !tbaa !24
  br label %_ZNSs5clearEv.exit

_ZNSs5clearEv.exit:                               ; preds = %_ZNSs4_Rep10_M_disposeERKSaIcE.exit.i, %if.else.i, %if.then.i7.i
  %10 = bitcast %"class.std::basic_ifstream"* %ifs to i8*
  call void @llvm.lifetime.start.p0i8(i64 520, i8* nonnull %10) #8
  %_M_p.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %filename, i64 0, i32 0, i32 0
  %11 = load i8*, i8** %_M_p.i.i, align 8, !tbaa !13
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ifstream"* noundef nonnull align 8 dereferenceable(256) %ifs, i8* noundef %11, i32 noundef signext 8)
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %12) #8
  %13 = bitcast %"class.std::basic_ifstream"* %ifs to i8**
  %14 = bitcast %"class.std::basic_ifstream"* %ifs to %"class.std::basic_istream"*
  %15 = bitcast %"class.std::basic_string"* %ref.tmp to i8*
  %16 = bitcast %"class.std::basic_string"* %ref.tmp4 to i8*
  %17 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp6, i64 0, i32 0
  %_M_p.i.i.i10 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  %18 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i13, i64 0, i32 0
  %_M_p.i.i.i27 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp4, i64 0, i32 0, i32 0
  %19 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i26, i64 0, i32 0
  %vtable51 = load i8*, i8** %13, align 8, !tbaa !25
  %vbase.offset.ptr52 = getelementptr i8, i8* %vtable51, i64 -24
  %20 = bitcast i8* %vbase.offset.ptr52 to i64*
  %vbase.offset53 = load i64, i64* %20, align 8
  %add.ptr54 = getelementptr inbounds i8, i8* %10, i64 %vbase.offset53
  %_M_streambuf_state.i.i55 = getelementptr inbounds i8, i8* %add.ptr54, i64 32
  %21 = bitcast i8* %_M_streambuf_state.i.i55 to i32*
  %22 = load i32, i32* %21, align 8, !tbaa !27
  %and.i.i56 = and i32 %22, 2
  %cmp.i.not57 = icmp eq i32 %and.i.i56, 0
  br i1 %cmp.i.not57, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %_ZNSs5clearEv.exit
  %add.ptr.i = getelementptr inbounds %"class.std::basic_ifstream", %"class.std::basic_ifstream"* %ifs, i64 0, i32 1, i32 19
  %23 = bitcast i8** %add.ptr.i to i8*
  %add.ptr = getelementptr inbounds %"class.std::basic_ifstream", %"class.std::basic_ifstream"* %ifs, i64 0, i32 1, i32 0, i32 2
  %24 = bitcast i8** %add.ptr to i8*
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %_ZNSsD2Ev.exit40
  %vbase.offset.i = phi i64 [ %vbase.offset53, %while.body.preheader ], [ %vbase.offset, %_ZNSsD2Ev.exit40 ]
  %_M_ctype.i.i = getelementptr inbounds i8, i8* %23, i64 %vbase.offset.i
  %25 = bitcast i8* %_M_ctype.i.i to %"class.std::ctype"**
  %26 = load %"class.std::ctype"*, %"class.std::ctype"** %25, align 8, !tbaa !33
  %tobool.not.i.i.i = icmp eq %"class.std::ctype"* %26, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i5, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i5:                                   ; preds = %while.body
  invoke void @_ZSt16__throw_bad_castv() #9
          to label %.noexc unwind label %lpad.loopexit.split-lp

.noexc:                                           ; preds = %if.then.i.i.i5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %while.body
  %_M_widen_ok.i.i.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %26, i64 0, i32 8
  %27 = load i8, i8* %_M_widen_ok.i.i.i, align 8, !tbaa !36
  %tobool.not.i1.i.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %26, i64 0, i32 9, i64 10
  %28 = load i8, i8* %arrayidx.i.i.i, align 1, !tbaa !24
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* noundef nonnull align 8 dereferenceable(570) %26)
          to label %.noexc7 unwind label %lpad.loopexit

.noexc7:                                          ; preds = %if.end.i.i.i
  %29 = bitcast %"class.std::ctype"* %26 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i.i.i = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %29, align 8, !tbaa !25
  %vfn.i.i.i = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.i.i, i64 6
  %30 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i.i.i, align 8
  %call.i.i.i8 = invoke noundef zeroext i8 %30(%"class.std::ctype"* noundef nonnull align 8 dereferenceable(570) %26, i8 noundef zeroext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %lpad.loopexit

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc7, %if.then.i2.i.i
  %retval.0.i.i.i6 = phi i8 [ %28, %if.then.i2.i.i ], [ %call.i.i.i8, %.noexc7 ]
  %call2.i9 = invoke noundef nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSi7getlineEPclc(%"class.std::basic_istream"* noundef nonnull align 8 dereferenceable(16) %14, i8* noundef nonnull %12, i64 noundef 256, i8 noundef zeroext %retval.0.i.i.i6)
          to label %invoke.cont2 unwind label %lpad.loopexit

invoke.cont2:                                     ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #8
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %17) #8
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp4, i8* noundef nonnull %12, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp6)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %invoke.cont2
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %call2.i.i11 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6insertEmPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp4, i64 noundef 0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 noundef 1)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont8
  %_M_p2.i.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %call2.i.i11, i64 0, i32 0, i32 0
  %31 = load i8*, i8** %_M_p2.i.i.i, align 8, !tbaa !11, !noalias !38
  store i8* %31, i8** %_M_p.i.i.i10, align 8, !tbaa !11, !alias.scope !38
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p2.i.i.i, align 8, !tbaa !13, !noalias !38
  %call.i12 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %file_contents, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp)
          to label %invoke.cont12 unwind label %lpad11

invoke.cont12:                                    ; preds = %invoke.cont10
  %32 = load i8*, i8** %_M_p.i.i.i10, align 8, !tbaa !13
  %arrayidx.i.i = getelementptr inbounds i8, i8* %32, i64 -24
  %33 = bitcast i8* %arrayidx.i.i to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #8
  %cmp.not.i.i15 = icmp eq i8* %arrayidx.i.i, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i15, label %_ZNSsD2Ev.exit, label %if.then.i.i17, !prof !15

if.then.i.i17:                                    ; preds = %invoke.cont12
  %_M_refcount.i.i16 = getelementptr inbounds i8, i8* %32, i64 -8
  %34 = bitcast i8* %_M_refcount.i.i16 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i18, label %if.else.i.i.i20

if.then.i.i.i18:                                  ; preds = %if.then.i.i17
  %35 = atomicrmw volatile add i32* %34, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i23

if.else.i.i.i20:                                  ; preds = %if.then.i.i17
  %36 = load i32, i32* %34, align 8, !tbaa !16
  %add.i.i.i.i19 = add nsw i32 %36, -1
  store i32 %add.i.i.i.i19, i32* %34, align 8, !tbaa !16
  br label %invoke.cont.i.i23

invoke.cont.i.i23:                                ; preds = %if.else.i.i.i20, %if.then.i.i.i18
  %retval.0.i.i.i21 = phi i32 [ %35, %if.then.i.i.i18 ], [ %36, %if.else.i.i.i20 ]
  %cmp3.i.i22 = icmp slt i32 %retval.0.i.i.i21, 1
  br i1 %cmp3.i.i22, label %if.then4.i.i24, label %_ZNSsD2Ev.exit

if.then4.i.i24:                                   ; preds = %invoke.cont.i.i23
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %33, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i13) #8
  br label %_ZNSsD2Ev.exit

_ZNSsD2Ev.exit:                                   ; preds = %invoke.cont12, %invoke.cont.i.i23, %if.then4.i.i24
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #8
  %37 = load i8*, i8** %_M_p.i.i.i27, align 8, !tbaa !13
  %arrayidx.i.i28 = getelementptr inbounds i8, i8* %37, i64 -24
  %38 = bitcast i8* %arrayidx.i.i28 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %19) #8
  %cmp.not.i.i29 = icmp eq i8* %arrayidx.i.i28, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i29, label %_ZNSsD2Ev.exit40, label %if.then.i.i31, !prof !15

if.then.i.i31:                                    ; preds = %_ZNSsD2Ev.exit
  %_M_refcount.i.i30 = getelementptr inbounds i8, i8* %37, i64 -8
  %39 = bitcast i8* %_M_refcount.i.i30 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i32, label %if.else.i.i.i34

if.then.i.i.i32:                                  ; preds = %if.then.i.i31
  %40 = atomicrmw volatile add i32* %39, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i37

if.else.i.i.i34:                                  ; preds = %if.then.i.i31
  %41 = load i32, i32* %39, align 8, !tbaa !16
  %add.i.i.i.i33 = add nsw i32 %41, -1
  store i32 %add.i.i.i.i33, i32* %39, align 8, !tbaa !16
  br label %invoke.cont.i.i37

invoke.cont.i.i37:                                ; preds = %if.else.i.i.i34, %if.then.i.i.i32
  %retval.0.i.i.i35 = phi i32 [ %40, %if.then.i.i.i32 ], [ %41, %if.else.i.i.i34 ]
  %cmp3.i.i36 = icmp slt i32 %retval.0.i.i.i35, 1
  br i1 %cmp3.i.i36, label %if.then4.i.i38, label %_ZNSsD2Ev.exit40

if.then4.i.i38:                                   ; preds = %invoke.cont.i.i37
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %38, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i26) #8
  br label %_ZNSsD2Ev.exit40

_ZNSsD2Ev.exit40:                                 ; preds = %_ZNSsD2Ev.exit, %invoke.cont.i.i37, %if.then4.i.i38
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %19) #8
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %17) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #8
  %vtable = load i8*, i8** %13, align 8, !tbaa !25
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %42 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %42, align 8
  %_M_streambuf_state.i.i = getelementptr inbounds i8, i8* %24, i64 %vbase.offset
  %43 = bitcast i8* %_M_streambuf_state.i.i to i32*
  %44 = load i32, i32* %43, align 8, !tbaa !27
  %and.i.i = and i32 %44, 2
  %cmp.i.not = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not, label %while.body, label %while.end, !llvm.loop !41

lpad.loopexit:                                    ; preds = %if.end.i.i.i, %.noexc7, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %lpad.loopexit41 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup18

lpad.loopexit.split-lp:                           ; preds = %if.then.i.i.i5
  %lpad.loopexit.split-lp42 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup18

lpad7:                                            ; preds = %invoke.cont2
  %45 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup14

lpad9:                                            ; preds = %invoke.cont8
  %46 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

lpad11:                                           ; preds = %invoke.cont10
  %47 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp) #8
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad11, %lpad9
  %.pn = phi { i8*, i32 } [ %47, %lpad11 ], [ %46, %lpad9 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp4) #8
  br label %ehcleanup14

ehcleanup14:                                      ; preds = %ehcleanup, %lpad7
  %.pn.pn = phi { i8*, i32 } [ %.pn, %ehcleanup ], [ %45, %lpad7 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %17) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #8
  br label %ehcleanup18

while.end:                                        ; preds = %_ZNSsD2Ev.exit40, %_ZNSs5clearEv.exit
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %12) #8
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ifstream"* noundef nonnull align 8 dereferenceable(256) %ifs) #8
  call void @llvm.lifetime.end.p0i8(i64 520, i8* nonnull %10) #8
  ret void

ehcleanup18:                                      ; preds = %lpad.loopexit, %lpad.loopexit.split-lp, %ehcleanup14
  %.pn.pn.pn = phi { i8*, i32 } [ %.pn.pn, %ehcleanup14 ], [ %lpad.loopexit41, %lpad.loopexit ], [ %lpad.loopexit.split-lp42, %lpad.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %12) #8
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ifstream"* noundef nonnull align 8 dereferenceable(256) %ifs) #8
  call void @llvm.lifetime.end.p0i8(i64 520, i8* nonnull %10) #8
  resume { i8*, i32 } %.pn.pn.pn
}

; Function Attrs: uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ifstream"* noundef nonnull align 8 dereferenceable(256), i8* noundef, i32 noundef signext) unnamed_addr #0 align 2

; Function Attrs: nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ifstream"* noundef nonnull align 8 dereferenceable(256)) unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSi7getlineEPclc(%"class.std::basic_istream"* noundef nonnull align 8 dereferenceable(16), i8* noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #3 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #5 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #7 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!nvvm.annotations = !{}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0 (git@github.com:koparasy/ML-LLVM.git 57f6b002589ddbfa715ddd9ea752700e004464bf)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_OS6_: %agg.result"}
!10 = distinct !{!10, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_OS6_"}
!11 = !{!12, !5, i64 0}
!12 = !{!"_ZTSNSs12_Alloc_hiderE", !5, i64 0}
!13 = !{!14, !5, i64 0}
!14 = !{!"_ZTSSs", !12, i64 0}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !6, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!21, !17, i64 16}
!21 = !{!"_ZTSNSs9_Rep_baseE", !22, i64 0, !22, i64 8, !17, i64 16}
!22 = !{!"long", !6, i64 0}
!23 = !{!21, !22, i64 0}
!24 = !{!6, !6, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"vtable pointer", !7, i64 0}
!27 = !{!28, !30, i64 32}
!28 = !{!"_ZTSSt8ios_base", !22, i64 8, !22, i64 16, !29, i64 24, !30, i64 28, !30, i64 32, !5, i64 40, !31, i64 48, !6, i64 64, !17, i64 192, !5, i64 200, !32, i64 208}
!29 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!30 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!31 = !{!"_ZTSNSt8ios_base6_WordsE", !5, i64 0, !22, i64 8}
!32 = !{!"_ZTSSt6locale", !5, i64 0}
!33 = !{!34, !5, i64 240}
!34 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !5, i64 216, !6, i64 224, !35, i64 225, !5, i64 232, !5, i64 240, !5, i64 248, !5, i64 256}
!35 = !{!"bool", !6, i64 0}
!36 = !{!37, !6, i64 56}
!37 = !{!"_ZTSSt5ctypeIcE", !5, i64 16, !35, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_OS6_: %agg.result"}
!40 = distinct !{!40, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_OS6_"}
!41 = distinct !{!41, !19}

; __CLANG_OFFLOAD_BUNDLE____END__ host-powerpc64le-unknown-linux-gnu
