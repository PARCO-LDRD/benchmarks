
; __CLANG_OFFLOAD_BUNDLE____START__ openmp-nvptx64-nvidia-cuda
; ModuleID = 'YAML_Element.cpp'
source_filename = "YAML_Element.cpp"
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
; ModuleID = '/var/tmp/YAML_Element-047449.bc'
source_filename = "YAML_Element.cpp"
target datalayout = "e-m:e-i64:64-n32:64-S128-v256:256:256-v512:512:512"
target triple = "powerpc64le-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.YAML_Element = type { %"class.std::basic_string", %"class.std::basic_string", %"class.std::vector" }
%"class.std::basic_string" = type { %"struct.std::basic_string<char>::_Alloc_hider" }
%"struct.std::basic_string<char>::_Alloc_hider" = type { i8* }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<YAML_Element *, std::allocator<YAML_Element *>>::_Vector_impl" }
%"struct.std::_Vector_base<YAML_Element *, std::allocator<YAML_Element *>>::_Vector_impl" = type { %class.YAML_Element**, %class.YAML_Element**, %class.YAML_Element** }
%"struct.std::basic_string<char>::_Rep" = type { %"struct.std::basic_string<char>::_Rep_base" }
%"struct.std::basic_string<char>::_Rep_base" = type { i64, i64, i32 }
%"class.std::allocator" = type { i8 }
%"class.std::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { i32 (...)**, i64 }
%"class.std::basic_ostream.base" = type { i32 (...)** }
%"class.std::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::basic_string" }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::__gnu_cxx_ldbl128::num_put"*, %"class.std::__gnu_cxx_ldbl128::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::__gnu_cxx_ldbl128::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::__gnu_cxx_ldbl128::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZNSs4_Rep20_S_empty_rep_storageE = external global [0 x i64], align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE = external unnamed_addr constant [10 x i8*], align 8
@_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE = external unnamed_addr constant { [16 x i8*] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x i8*] }, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_YAML_Element.cpp, i8* null }]

@_ZN12YAML_ElementC1ERKSsS1_ = dso_local unnamed_addr alias void (%class.YAML_Element*, %"class.std::basic_string"*, %"class.std::basic_string"*), void (%class.YAML_Element*, %"class.std::basic_string"*, %"class.std::basic_string"*)* @_ZN12YAML_ElementC2ERKSsS1_
@_ZN12YAML_ElementD1Ev = dso_local unnamed_addr alias void (%class.YAML_Element*), void (%class.YAML_Element*)* @_ZN12YAML_ElementD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_ZN12YAML_ElementC2ERKSsS1_(%class.YAML_Element* noundef nonnull align 8 dereferenceable(40) %this, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key_arg, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %value_arg) unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %key = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 0
  %_M_p.i.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p.i.i, align 8, !tbaa !4
  %value = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  %_M_p.i.i1 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %value, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p.i.i1, align 8, !tbaa !4
  %children = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2
  %0 = bitcast %"class.std::vector"* %children to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false) #12
  %call.i2 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key_arg)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %entry
  %call.i3 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %value, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %value_arg)
          to label %invoke.cont6 unwind label %lpad3

invoke.cont6:                                     ; preds = %invoke.cont4
  ret void

lpad3:                                            ; preds = %invoke.cont4, %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %_M_start.i.i = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %children, i64 0, i32 0, i32 0, i32 0
  %2 = load %class.YAML_Element**, %class.YAML_Element*** %_M_start.i.i, align 8, !tbaa !9
  %tobool.not.i.i.i = icmp eq %class.YAML_Element** %2, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lpad3
  %3 = bitcast %class.YAML_Element** %2 to i8*
  tail call void @_ZdlPv(i8* noundef nonnull %3) #12
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit

_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit:    ; preds = %lpad3, %if.then.i.i.i
  tail call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %value) #12
  tail call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key) #12
  resume { i8*, i32 } %1
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind uwtable
declare void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4 align 2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: nounwind
declare extern_weak noundef signext i32 @__pthread_key_create(i32* noundef, void (i8*)* noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @_ZN12YAML_ElementD2Ev(%class.YAML_Element* nocapture noundef nonnull align 8 dereferenceable(40) %this) unnamed_addr #4 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %ref.tmp.i7 = alloca %"class.std::allocator", align 1
  %ref.tmp.i = alloca %"class.std::allocator", align 1
  %_M_finish.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 1
  %_M_start.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 0
  %0 = load %class.YAML_Element**, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  %1 = load %class.YAML_Element**, %class.YAML_Element*** %_M_start.i, align 8, !tbaa !9
  %cmp27.not = icmp eq %class.YAML_Element** %0, %1
  br i1 %cmp27.not, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE5clearEv.exit, label %for.body

for.cond.cleanup:                                 ; preds = %for.inc
  %tobool.not.i.i = icmp eq %class.YAML_Element** %20, %19
  br i1 %tobool.not.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE5clearEv.exit, label %invoke.cont.i.i

invoke.cont.i.i:                                  ; preds = %for.cond.cleanup
  store %class.YAML_Element** %19, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE5clearEv.exit

_ZNSt6vectorIP12YAML_ElementSaIS1_EE5clearEv.exit: ; preds = %entry, %for.cond.cleanup, %invoke.cont.i.i
  %.lcssa36 = phi %class.YAML_Element** [ %19, %for.cond.cleanup ], [ %19, %invoke.cont.i.i ], [ %0, %entry ]
  %tobool.not.i.i.i = icmp eq %class.YAML_Element** %.lcssa36, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE5clearEv.exit
  %2 = bitcast %class.YAML_Element** %.lcssa36 to i8*
  tail call void @_ZdlPv(i8* noundef nonnull %2) #12
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit

_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit:    ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE5clearEv.exit, %if.then.i.i.i
  %_M_p.i.i.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1, i32 0, i32 0
  %3 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !13
  %arrayidx.i.i = getelementptr inbounds i8, i8* %3, i64 -24
  %4 = bitcast i8* %arrayidx.i.i to %"struct.std::basic_string<char>::_Rep"*
  %5 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #12
  %cmp.not.i.i = icmp eq i8* %arrayidx.i.i, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i, label %_ZNSsD2Ev.exit, label %if.then.i.i, !prof !15

if.then.i.i:                                      ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit
  %_M_refcount.i.i = getelementptr inbounds i8, i8* %3, i64 -8
  %6 = bitcast i8* %_M_refcount.i.i to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i5, label %if.else.i.i.i

if.then.i.i.i5:                                   ; preds = %if.then.i.i
  %7 = atomicrmw volatile add i32* %6, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i6

if.else.i.i.i:                                    ; preds = %if.then.i.i
  %8 = load i32, i32* %6, align 8, !tbaa !16
  %add.i.i.i.i = add nsw i32 %8, -1
  store i32 %add.i.i.i.i, i32* %6, align 8, !tbaa !16
  br label %invoke.cont.i.i6

invoke.cont.i.i6:                                 ; preds = %if.else.i.i.i, %if.then.i.i.i5
  %retval.0.i.i.i = phi i32 [ %7, %if.then.i.i.i5 ], [ %8, %if.else.i.i.i ]
  %cmp3.i.i = icmp slt i32 %retval.0.i.i.i, 1
  br i1 %cmp3.i.i, label %if.then4.i.i, label %_ZNSsD2Ev.exit

if.then4.i.i:                                     ; preds = %invoke.cont.i.i6
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %4, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i) #12
  br label %_ZNSsD2Ev.exit

_ZNSsD2Ev.exit:                                   ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit, %invoke.cont.i.i6, %if.then4.i.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #12
  %_M_p.i.i.i8 = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 0, i32 0, i32 0
  %9 = load i8*, i8** %_M_p.i.i.i8, align 8, !tbaa !13
  %arrayidx.i.i9 = getelementptr inbounds i8, i8* %9, i64 -24
  %10 = bitcast i8* %arrayidx.i.i9 to %"struct.std::basic_string<char>::_Rep"*
  %11 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %11) #12
  %cmp.not.i.i10 = icmp eq i8* %arrayidx.i.i9, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i10, label %_ZNSsD2Ev.exit20, label %if.then.i.i12, !prof !15

if.then.i.i12:                                    ; preds = %_ZNSsD2Ev.exit
  %_M_refcount.i.i11 = getelementptr inbounds i8, i8* %9, i64 -8
  %12 = bitcast i8* %_M_refcount.i.i11 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i13, label %if.else.i.i.i15

if.then.i.i.i13:                                  ; preds = %if.then.i.i12
  %13 = atomicrmw volatile add i32* %12, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i18

if.else.i.i.i15:                                  ; preds = %if.then.i.i12
  %14 = load i32, i32* %12, align 8, !tbaa !16
  %add.i.i.i.i14 = add nsw i32 %14, -1
  store i32 %add.i.i.i.i14, i32* %12, align 8, !tbaa !16
  br label %invoke.cont.i.i18

invoke.cont.i.i18:                                ; preds = %if.else.i.i.i15, %if.then.i.i.i13
  %retval.0.i.i.i16 = phi i32 [ %13, %if.then.i.i.i13 ], [ %14, %if.else.i.i.i15 ]
  %cmp3.i.i17 = icmp slt i32 %retval.0.i.i.i16, 1
  br i1 %cmp3.i.i17, label %if.then4.i.i19, label %_ZNSsD2Ev.exit20

if.then4.i.i19:                                   ; preds = %invoke.cont.i.i18
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %10, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i7) #12
  br label %_ZNSsD2Ev.exit20

_ZNSsD2Ev.exit20:                                 ; preds = %_ZNSsD2Ev.exit, %invoke.cont.i.i18, %if.then4.i.i19
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %11) #12
  ret void

for.body:                                         ; preds = %entry, %for.inc
  %15 = phi %class.YAML_Element** [ %19, %for.inc ], [ %1, %entry ]
  %16 = phi %class.YAML_Element** [ %20, %for.inc ], [ %0, %entry ]
  %i.028 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  %add.ptr.i = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %15, i64 %i.028
  %17 = load %class.YAML_Element*, %class.YAML_Element** %add.ptr.i, align 8, !tbaa !18
  %isnull = icmp eq %class.YAML_Element* %17, null
  br i1 %isnull, label %for.inc, label %delete.notnull

delete.notnull:                                   ; preds = %for.body
  tail call void @_ZN12YAML_ElementD2Ev(%class.YAML_Element* noundef nonnull align 8 dereferenceable(40) %17) #12
  %18 = bitcast %class.YAML_Element* %17 to i8*
  tail call void @_ZdlPv(i8* noundef %18) #13
  %.pre = load %class.YAML_Element**, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  %.pre32 = load %class.YAML_Element**, %class.YAML_Element*** %_M_start.i, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body, %delete.notnull
  %19 = phi %class.YAML_Element** [ %15, %for.body ], [ %.pre32, %delete.notnull ]
  %20 = phi %class.YAML_Element** [ %16, %for.body ], [ %.pre, %delete.notnull ]
  %inc = add nuw i64 %i.028, 1
  %sub.ptr.lhs.cast.i = ptrtoint %class.YAML_Element** %20 to i64
  %sub.ptr.rhs.cast.i = ptrtoint %class.YAML_Element** %19 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 3
  %cmp = icmp ult i64 %inc, %sub.ptr.div.i
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !19
}

; Function Attrs: uwtable
define dso_local noundef %class.YAML_Element* @_ZN12YAML_Element3addERKSsd(%class.YAML_Element* noundef nonnull align 8 dereferenceable(40) %this, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key_arg, double noundef %value_arg) local_unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i = alloca %"class.std::allocator", align 1
  %converted_value = alloca %"class.std::basic_string", align 8
  %value = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  %call2.i.i = tail call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %value, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 noundef 0)
  %0 = bitcast %"class.std::basic_string"* %converted_value to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  call void @_ZN12YAML_Element24convert_double_to_stringEd(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %converted_value, %class.YAML_Element* nonnull align 8 undef, double noundef %value_arg)
  %call2 = invoke noalias noundef nonnull dereferenceable(40) i8* @_Znwm(i64 noundef 40) #14
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast i8* %call2 to %class.YAML_Element*
  %key.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %1, i64 0, i32 0
  %_M_p.i.i.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %1, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p.i.i.i, align 8, !tbaa !4
  %value.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %1, i64 0, i32 1
  %_M_p.i.i1.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %value.i, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p.i.i1.i, align 8, !tbaa !4
  %children.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %1, i64 0, i32 2
  %2 = bitcast %"class.std::vector"* %children.i to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false) #12
  %call.i2.i = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key.i, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key_arg)
          to label %invoke.cont4.i unwind label %lpad3.i

invoke.cont4.i:                                   ; preds = %invoke.cont
  %call.i3.i = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %value.i, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %converted_value)
          to label %invoke.cont4 unwind label %lpad3.i

lpad3.i:                                          ; preds = %invoke.cont4.i, %invoke.cont
  %3 = landingpad { i8*, i32 }
          cleanup
  %_M_start.i.i.i = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %children.i, i64 0, i32 0, i32 0, i32 0
  %4 = load %class.YAML_Element**, %class.YAML_Element*** %_M_start.i.i.i, align 8, !tbaa !9
  %tobool.not.i.i.i.i = icmp eq %class.YAML_Element** %4, null
  br i1 %tobool.not.i.i.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad3.i
  %5 = bitcast %class.YAML_Element** %4 to i8*
  call void @_ZdlPv(i8* noundef nonnull %5) #12
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i

_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i:  ; preds = %if.then.i.i.i.i, %lpad3.i
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %value.i) #12
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key.i) #12
  call void @_ZdlPv(i8* noundef nonnull %call2) #13
  br label %ehcleanup

invoke.cont4:                                     ; preds = %invoke.cont4.i
  %_M_finish.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 1
  %6 = load %class.YAML_Element**, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  %_M_end_of_storage.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 2
  %7 = load %class.YAML_Element**, %class.YAML_Element*** %_M_end_of_storage.i, align 8, !tbaa !21
  %cmp.not.i = icmp eq %class.YAML_Element** %6, %7
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %invoke.cont4
  %8 = bitcast %class.YAML_Element** %6 to i8**
  store i8* %call2, i8** %8, align 8, !tbaa !18
  %9 = load %class.YAML_Element**, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  %incdec.ptr.i = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %9, i64 1
  store %class.YAML_Element** %incdec.ptr.i, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  br label %invoke.cont5

if.else.i:                                        ; preds = %invoke.cont4
  %coerce.val.pi.i.i = ptrtoint %class.YAML_Element** %6 to i64
  %_M_start.i.i.i.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 0
  %10 = load %class.YAML_Element**, %class.YAML_Element*** %_M_start.i.i.i.i, align 8, !tbaa !9
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint %class.YAML_Element** %10 to i64
  %sub.ptr.sub.i.i.i.i = sub i64 %coerce.val.pi.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %sub.ptr.div.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i, 3
  %cmp.i.i.i.i = icmp eq i64 %sub.ptr.sub.i.i.i.i, 0
  %.sroa.speculated.i.i.i = select i1 %cmp.i.i.i.i, i64 1, i64 %sub.ptr.div.i.i.i.i
  %add.i.i.i = add nsw i64 %.sroa.speculated.i.i.i, %sub.ptr.div.i.i.i.i
  %cmp7.i.i.i = icmp ult i64 %add.i.i.i, %sub.ptr.div.i.i.i.i
  %cmp9.i.i.i = icmp ugt i64 %add.i.i.i, 2305843009213693951
  %or.cond.i.i.i = or i1 %cmp7.i.i.i, %cmp9.i.i.i
  %cond.i.i.i = select i1 %or.cond.i.i.i, i64 2305843009213693951, i64 %add.i.i.i
  %cmp.not.i.i.i = icmp eq i64 %cond.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %invoke.cont.i.i, label %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i

_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i: ; preds = %if.else.i
  %mul.i.i.i.i.i = shl nuw i64 %cond.i.i.i, 3
  %call2.i.i.i.i.i2 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef %mul.i.i.i.i.i) #15
          to label %call2.i.i.i.i.i.noexc unwind label %lpad

call2.i.i.i.i.i.noexc:                            ; preds = %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i
  %11 = bitcast i8* %call2.i.i.i.i.i2 to %class.YAML_Element**
  br label %invoke.cont.i.i

invoke.cont.i.i:                                  ; preds = %call2.i.i.i.i.i.noexc, %if.else.i
  %cond.i31.i.i = phi %class.YAML_Element** [ %11, %call2.i.i.i.i.i.noexc ], [ null, %if.else.i ]
  %add.ptr.i.i = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %cond.i31.i.i, i64 %sub.ptr.div.i.i.i.i
  %12 = bitcast %class.YAML_Element** %add.ptr.i.i to i8**
  store i8* %call2, i8** %12, align 8, !tbaa !18
  br i1 %cmp.i.i.i.i, label %invoke.cont16.i.i, label %if.then.i.i.i.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i.i.i.i:                      ; preds = %invoke.cont.i.i
  %13 = bitcast %class.YAML_Element** %cond.i31.i.i to i8*
  %14 = bitcast %class.YAML_Element** %10 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 %sub.ptr.sub.i.i.i.i, i1 false) #12
  br label %invoke.cont16.i.i

invoke.cont16.i.i:                                ; preds = %if.then.i.i.i.i.i.i.i.i.i.i, %invoke.cont.i.i
  %incdec.ptr.i.i = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %add.ptr.i.i, i64 1
  %tobool.not.i.i.i = icmp eq %class.YAML_Element** %10, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %if.then.i41.i.i

if.then.i41.i.i:                                  ; preds = %invoke.cont16.i.i
  %15 = bitcast %class.YAML_Element** %10 to i8*
  call void @_ZdlPv(i8* noundef nonnull %15) #12
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %if.then.i41.i.i, %invoke.cont16.i.i
  store %class.YAML_Element** %cond.i31.i.i, %class.YAML_Element*** %_M_start.i.i.i.i, align 8, !tbaa !9
  store %class.YAML_Element** %incdec.ptr.i.i, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  %add.ptr32.i.i = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %cond.i31.i.i, i64 %cond.i.i.i
  store %class.YAML_Element** %add.ptr32.i.i, %class.YAML_Element*** %_M_end_of_storage.i, align 8, !tbaa !21
  br label %invoke.cont5

invoke.cont5:                                     ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %if.then.i
  %_M_p.i.i.i3 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %converted_value, i64 0, i32 0, i32 0
  %16 = load i8*, i8** %_M_p.i.i.i3, align 8, !tbaa !13
  %arrayidx.i.i = getelementptr inbounds i8, i8* %16, i64 -24
  %17 = bitcast i8* %arrayidx.i.i to %"struct.std::basic_string<char>::_Rep"*
  %18 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #12
  %cmp.not.i.i = icmp eq i8* %arrayidx.i.i, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i, label %_ZNSsD2Ev.exit, label %if.then.i.i, !prof !15

if.then.i.i:                                      ; preds = %invoke.cont5
  %_M_refcount.i.i = getelementptr inbounds i8, i8* %16, i64 -8
  %19 = bitcast i8* %_M_refcount.i.i to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  %20 = atomicrmw volatile add i32* %19, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i4

if.else.i.i.i:                                    ; preds = %if.then.i.i
  %21 = load i32, i32* %19, align 8, !tbaa !16
  %add.i.i.i.i = add nsw i32 %21, -1
  store i32 %add.i.i.i.i, i32* %19, align 8, !tbaa !16
  br label %invoke.cont.i.i4

invoke.cont.i.i4:                                 ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %20, %if.then.i.i.i ], [ %21, %if.else.i.i.i ]
  %cmp3.i.i = icmp slt i32 %retval.0.i.i.i, 1
  br i1 %cmp3.i.i, label %if.then4.i.i, label %_ZNSsD2Ev.exit

if.then4.i.i:                                     ; preds = %invoke.cont.i.i4
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %17, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i) #12
  br label %_ZNSsD2Ev.exit

_ZNSsD2Ev.exit:                                   ; preds = %invoke.cont5, %invoke.cont.i.i4, %if.then4.i.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret %class.YAML_Element* %1

lpad:                                             ; preds = %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i, %entry
  %22 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

ehcleanup:                                        ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, %lpad
  %.pn = phi { i8*, i32 } [ %22, %lpad ], [ %3, %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %converted_value) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  resume { i8*, i32 } %.pn
}

; Function Attrs: uwtable
define dso_local void @_ZN12YAML_Element24convert_double_to_stringEd(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8 %agg.result, %class.YAML_Element* nocapture nonnull readnone align 8 %this, double noundef %value_arg) local_unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i.i.i.i = alloca %"class.std::allocator", align 1
  %strm = alloca %"class.std::basic_stringstream", align 8
  %0 = bitcast %"class.std::basic_stringstream"* %strm to i8*
  call void @llvm.lifetime.start.p0i8(i64 368, i8* nonnull %0) #12
  call void @_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_stringstream"* noundef nonnull align 8 dereferenceable(104) %strm, i32 noundef signext 24)
  %add.ptr = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 0, i32 1
  %1 = bitcast %"class.std::basic_ostream.base"* %add.ptr to %"class.std::basic_ostream"*
  %call.i1 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %1, double noundef %value_arg)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_stringbuf.i = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %agg.result, %"class.std::basic_stringbuf"* noundef nonnull align 8 dereferenceable(80) %_M_stringbuf.i)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %2 = load i32 (...)**, i32 (...)*** bitcast ([10 x i8*]* @_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE to i32 (...)***), align 8
  %3 = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** %2, i32 (...)*** %3, align 8, !tbaa !22
  %4 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 8) to i32 (...)***), align 8
  %vbase.offset.ptr1.i.i = getelementptr i32 (...)*, i32 (...)** %2, i64 -3
  %5 = bitcast i32 (...)** %vbase.offset.ptr1.i.i to i64*
  %vbase.offset.i.i = load i64, i64* %5, align 8
  %add.ptr.i.i = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i
  %6 = bitcast i8* %add.ptr.i.i to i32 (...)***
  store i32 (...)** %4, i32 (...)*** %6, align 8, !tbaa !22
  %7 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 9) to i32 (...)***), align 8
  %8 = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** %7, i32 (...)*** %8, align 8, !tbaa !22
  %9 = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %9, align 8, !tbaa !22
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 1, i32 2, i32 0, i32 0
  %10 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !13
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %10, i64 -24
  %11 = bitcast i8* %arrayidx.i.i.i.i.i to %"struct.std::basic_string<char>::_Rep"*
  %12 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i.i.i.i, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %12) #12
  %cmp.not.i.i.i.i.i = icmp eq i8* %arrayidx.i.i.i.i.i, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i.i.i.i, label %_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %if.then.i.i.i.i.i, !prof !15

if.then.i.i.i.i.i:                                ; preds = %invoke.cont3
  %_M_refcount.i.i.i.i.i = getelementptr inbounds i8, i8* %10, i64 -8
  %13 = bitcast i8* %_M_refcount.i.i.i.i.i to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i
  %14 = atomicrmw volatile add i32* %13, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i
  %15 = load i32, i32* %13, align 8, !tbaa !16
  %add.i.i.i.i.i.i.i = add nsw i32 %15, -1
  store i32 %add.i.i.i.i.i.i.i, i32* %13, align 8, !tbaa !16
  br label %invoke.cont.i.i.i.i.i

invoke.cont.i.i.i.i.i:                            ; preds = %if.else.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi i32 [ %14, %if.then.i.i.i.i.i.i ], [ %15, %if.else.i.i.i.i.i.i ]
  %cmp3.i.i.i.i.i = icmp slt i32 %retval.0.i.i.i.i.i.i, 1
  br i1 %cmp3.i.i.i.i.i, label %if.then4.i.i.i.i.i, label %_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

if.then4.i.i.i.i.i:                               ; preds = %invoke.cont.i.i.i.i.i
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %11, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i.i.i.i) #12
  br label %_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %invoke.cont3, %invoke.cont.i.i.i.i.i, %if.then4.i.i.i.i.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %12) #12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %9, align 8, !tbaa !22
  %_M_buf_locale.i.i.i.i = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* noundef nonnull align 8 dereferenceable(8) %_M_buf_locale.i.i.i.i) #12
  %16 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 2) to i32 (...)***), align 8
  store i32 (...)** %16, i32 (...)*** %3, align 8, !tbaa !22
  %17 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 3) to i32 (...)***), align 8
  %vbase.offset.ptr1.i.i.i.i = getelementptr i32 (...)*, i32 (...)** %16, i64 -3
  %18 = bitcast i32 (...)** %vbase.offset.ptr1.i.i.i.i to i64*
  %vbase.offset.i.i.i.i = load i64, i64* %18, align 8
  %add.ptr.i.i.i.i = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i.i.i
  %19 = bitcast i8* %add.ptr.i.i.i.i to i32 (...)***
  store i32 (...)** %17, i32 (...)*** %19, align 8, !tbaa !22
  %20 = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %20, align 8, !tbaa !24
  %21 = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* noundef nonnull align 8 dereferenceable(216) %21) #12
  call void @llvm.lifetime.end.p0i8(i64 368, i8* nonnull %0) #12
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %22 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_stringstream"* noundef nonnull align 8 dereferenceable(104) %strm) #12
  call void @llvm.lifetime.end.p0i8(i64 368, i8* nonnull %0) #12
  resume { i8*, i32 } %22
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #8

; Function Attrs: uwtable
define dso_local noundef %class.YAML_Element* @_ZN12YAML_Element3addERKSsi(%class.YAML_Element* noundef nonnull align 8 dereferenceable(40) %this, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key_arg, i32 noundef signext %value_arg) local_unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i = alloca %"class.std::allocator", align 1
  %converted_value = alloca %"class.std::basic_string", align 8
  %value = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  %call2.i.i = tail call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %value, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 noundef 0)
  %0 = bitcast %"class.std::basic_string"* %converted_value to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  call void @_ZN12YAML_Element21convert_int_to_stringEi(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %converted_value, %class.YAML_Element* nonnull align 8 undef, i32 noundef signext %value_arg)
  %call2 = invoke noalias noundef nonnull dereferenceable(40) i8* @_Znwm(i64 noundef 40) #14
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast i8* %call2 to %class.YAML_Element*
  %key.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %1, i64 0, i32 0
  %_M_p.i.i.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %1, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p.i.i.i, align 8, !tbaa !4
  %value.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %1, i64 0, i32 1
  %_M_p.i.i1.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %value.i, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p.i.i1.i, align 8, !tbaa !4
  %children.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %1, i64 0, i32 2
  %2 = bitcast %"class.std::vector"* %children.i to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false) #12
  %call.i2.i = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key.i, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key_arg)
          to label %invoke.cont4.i unwind label %lpad3.i

invoke.cont4.i:                                   ; preds = %invoke.cont
  %call.i3.i = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %value.i, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %converted_value)
          to label %invoke.cont4 unwind label %lpad3.i

lpad3.i:                                          ; preds = %invoke.cont4.i, %invoke.cont
  %3 = landingpad { i8*, i32 }
          cleanup
  %_M_start.i.i.i = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %children.i, i64 0, i32 0, i32 0, i32 0
  %4 = load %class.YAML_Element**, %class.YAML_Element*** %_M_start.i.i.i, align 8, !tbaa !9
  %tobool.not.i.i.i.i = icmp eq %class.YAML_Element** %4, null
  br i1 %tobool.not.i.i.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad3.i
  %5 = bitcast %class.YAML_Element** %4 to i8*
  call void @_ZdlPv(i8* noundef nonnull %5) #12
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i

_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i:  ; preds = %if.then.i.i.i.i, %lpad3.i
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %value.i) #12
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key.i) #12
  call void @_ZdlPv(i8* noundef nonnull %call2) #13
  br label %ehcleanup

invoke.cont4:                                     ; preds = %invoke.cont4.i
  %_M_finish.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 1
  %6 = load %class.YAML_Element**, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  %_M_end_of_storage.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 2
  %7 = load %class.YAML_Element**, %class.YAML_Element*** %_M_end_of_storage.i, align 8, !tbaa !21
  %cmp.not.i = icmp eq %class.YAML_Element** %6, %7
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %invoke.cont4
  %8 = bitcast %class.YAML_Element** %6 to i8**
  store i8* %call2, i8** %8, align 8, !tbaa !18
  %9 = load %class.YAML_Element**, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  %incdec.ptr.i = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %9, i64 1
  store %class.YAML_Element** %incdec.ptr.i, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  br label %invoke.cont5

if.else.i:                                        ; preds = %invoke.cont4
  %coerce.val.pi.i.i = ptrtoint %class.YAML_Element** %6 to i64
  %_M_start.i.i.i.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 0
  %10 = load %class.YAML_Element**, %class.YAML_Element*** %_M_start.i.i.i.i, align 8, !tbaa !9
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint %class.YAML_Element** %10 to i64
  %sub.ptr.sub.i.i.i.i = sub i64 %coerce.val.pi.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %sub.ptr.div.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i, 3
  %cmp.i.i.i.i = icmp eq i64 %sub.ptr.sub.i.i.i.i, 0
  %.sroa.speculated.i.i.i = select i1 %cmp.i.i.i.i, i64 1, i64 %sub.ptr.div.i.i.i.i
  %add.i.i.i = add nsw i64 %.sroa.speculated.i.i.i, %sub.ptr.div.i.i.i.i
  %cmp7.i.i.i = icmp ult i64 %add.i.i.i, %sub.ptr.div.i.i.i.i
  %cmp9.i.i.i = icmp ugt i64 %add.i.i.i, 2305843009213693951
  %or.cond.i.i.i = or i1 %cmp7.i.i.i, %cmp9.i.i.i
  %cond.i.i.i = select i1 %or.cond.i.i.i, i64 2305843009213693951, i64 %add.i.i.i
  %cmp.not.i.i.i = icmp eq i64 %cond.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %invoke.cont.i.i, label %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i

_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i: ; preds = %if.else.i
  %mul.i.i.i.i.i = shl nuw i64 %cond.i.i.i, 3
  %call2.i.i.i.i.i2 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef %mul.i.i.i.i.i) #15
          to label %call2.i.i.i.i.i.noexc unwind label %lpad

call2.i.i.i.i.i.noexc:                            ; preds = %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i
  %11 = bitcast i8* %call2.i.i.i.i.i2 to %class.YAML_Element**
  br label %invoke.cont.i.i

invoke.cont.i.i:                                  ; preds = %call2.i.i.i.i.i.noexc, %if.else.i
  %cond.i31.i.i = phi %class.YAML_Element** [ %11, %call2.i.i.i.i.i.noexc ], [ null, %if.else.i ]
  %add.ptr.i.i = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %cond.i31.i.i, i64 %sub.ptr.div.i.i.i.i
  %12 = bitcast %class.YAML_Element** %add.ptr.i.i to i8**
  store i8* %call2, i8** %12, align 8, !tbaa !18
  br i1 %cmp.i.i.i.i, label %invoke.cont16.i.i, label %if.then.i.i.i.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i.i.i.i:                      ; preds = %invoke.cont.i.i
  %13 = bitcast %class.YAML_Element** %cond.i31.i.i to i8*
  %14 = bitcast %class.YAML_Element** %10 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 %sub.ptr.sub.i.i.i.i, i1 false) #12
  br label %invoke.cont16.i.i

invoke.cont16.i.i:                                ; preds = %if.then.i.i.i.i.i.i.i.i.i.i, %invoke.cont.i.i
  %incdec.ptr.i.i = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %add.ptr.i.i, i64 1
  %tobool.not.i.i.i = icmp eq %class.YAML_Element** %10, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %if.then.i41.i.i

if.then.i41.i.i:                                  ; preds = %invoke.cont16.i.i
  %15 = bitcast %class.YAML_Element** %10 to i8*
  call void @_ZdlPv(i8* noundef nonnull %15) #12
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %if.then.i41.i.i, %invoke.cont16.i.i
  store %class.YAML_Element** %cond.i31.i.i, %class.YAML_Element*** %_M_start.i.i.i.i, align 8, !tbaa !9
  store %class.YAML_Element** %incdec.ptr.i.i, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  %add.ptr32.i.i = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %cond.i31.i.i, i64 %cond.i.i.i
  store %class.YAML_Element** %add.ptr32.i.i, %class.YAML_Element*** %_M_end_of_storage.i, align 8, !tbaa !21
  br label %invoke.cont5

invoke.cont5:                                     ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %if.then.i
  %_M_p.i.i.i3 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %converted_value, i64 0, i32 0, i32 0
  %16 = load i8*, i8** %_M_p.i.i.i3, align 8, !tbaa !13
  %arrayidx.i.i = getelementptr inbounds i8, i8* %16, i64 -24
  %17 = bitcast i8* %arrayidx.i.i to %"struct.std::basic_string<char>::_Rep"*
  %18 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #12
  %cmp.not.i.i = icmp eq i8* %arrayidx.i.i, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i, label %_ZNSsD2Ev.exit, label %if.then.i.i, !prof !15

if.then.i.i:                                      ; preds = %invoke.cont5
  %_M_refcount.i.i = getelementptr inbounds i8, i8* %16, i64 -8
  %19 = bitcast i8* %_M_refcount.i.i to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  %20 = atomicrmw volatile add i32* %19, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i4

if.else.i.i.i:                                    ; preds = %if.then.i.i
  %21 = load i32, i32* %19, align 8, !tbaa !16
  %add.i.i.i.i = add nsw i32 %21, -1
  store i32 %add.i.i.i.i, i32* %19, align 8, !tbaa !16
  br label %invoke.cont.i.i4

invoke.cont.i.i4:                                 ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %20, %if.then.i.i.i ], [ %21, %if.else.i.i.i ]
  %cmp3.i.i = icmp slt i32 %retval.0.i.i.i, 1
  br i1 %cmp3.i.i, label %if.then4.i.i, label %_ZNSsD2Ev.exit

if.then4.i.i:                                     ; preds = %invoke.cont.i.i4
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %17, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i) #12
  br label %_ZNSsD2Ev.exit

_ZNSsD2Ev.exit:                                   ; preds = %invoke.cont5, %invoke.cont.i.i4, %if.then4.i.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret %class.YAML_Element* %1

lpad:                                             ; preds = %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i, %entry
  %22 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

ehcleanup:                                        ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, %lpad
  %.pn = phi { i8*, i32 } [ %22, %lpad ], [ %3, %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %converted_value) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  resume { i8*, i32 } %.pn
}

; Function Attrs: uwtable
define dso_local void @_ZN12YAML_Element21convert_int_to_stringEi(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8 %agg.result, %class.YAML_Element* nocapture nonnull readnone align 8 %this, i32 noundef signext %value_arg) local_unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i.i.i.i = alloca %"class.std::allocator", align 1
  %strm = alloca %"class.std::basic_stringstream", align 8
  %0 = bitcast %"class.std::basic_stringstream"* %strm to i8*
  call void @llvm.lifetime.start.p0i8(i64 368, i8* nonnull %0) #12
  call void @_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_stringstream"* noundef nonnull align 8 dereferenceable(104) %strm, i32 noundef signext 24)
  %add.ptr = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 0, i32 1
  %1 = bitcast %"class.std::basic_ostream.base"* %add.ptr to %"class.std::basic_ostream"*
  %call2 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %1, i32 noundef signext %value_arg)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_stringbuf.i = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %agg.result, %"class.std::basic_stringbuf"* noundef nonnull align 8 dereferenceable(80) %_M_stringbuf.i)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %2 = load i32 (...)**, i32 (...)*** bitcast ([10 x i8*]* @_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE to i32 (...)***), align 8
  %3 = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** %2, i32 (...)*** %3, align 8, !tbaa !22
  %4 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 8) to i32 (...)***), align 8
  %vbase.offset.ptr1.i.i = getelementptr i32 (...)*, i32 (...)** %2, i64 -3
  %5 = bitcast i32 (...)** %vbase.offset.ptr1.i.i to i64*
  %vbase.offset.i.i = load i64, i64* %5, align 8
  %add.ptr.i.i = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i
  %6 = bitcast i8* %add.ptr.i.i to i32 (...)***
  store i32 (...)** %4, i32 (...)*** %6, align 8, !tbaa !22
  %7 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 9) to i32 (...)***), align 8
  %8 = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** %7, i32 (...)*** %8, align 8, !tbaa !22
  %9 = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %9, align 8, !tbaa !22
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 1, i32 2, i32 0, i32 0
  %10 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !13
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %10, i64 -24
  %11 = bitcast i8* %arrayidx.i.i.i.i.i to %"struct.std::basic_string<char>::_Rep"*
  %12 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i.i.i.i, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %12) #12
  %cmp.not.i.i.i.i.i = icmp eq i8* %arrayidx.i.i.i.i.i, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i.i.i.i, label %_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %if.then.i.i.i.i.i, !prof !15

if.then.i.i.i.i.i:                                ; preds = %invoke.cont3
  %_M_refcount.i.i.i.i.i = getelementptr inbounds i8, i8* %10, i64 -8
  %13 = bitcast i8* %_M_refcount.i.i.i.i.i to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i
  %14 = atomicrmw volatile add i32* %13, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i
  %15 = load i32, i32* %13, align 8, !tbaa !16
  %add.i.i.i.i.i.i.i = add nsw i32 %15, -1
  store i32 %add.i.i.i.i.i.i.i, i32* %13, align 8, !tbaa !16
  br label %invoke.cont.i.i.i.i.i

invoke.cont.i.i.i.i.i:                            ; preds = %if.else.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi i32 [ %14, %if.then.i.i.i.i.i.i ], [ %15, %if.else.i.i.i.i.i.i ]
  %cmp3.i.i.i.i.i = icmp slt i32 %retval.0.i.i.i.i.i.i, 1
  br i1 %cmp3.i.i.i.i.i, label %if.then4.i.i.i.i.i, label %_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

if.then4.i.i.i.i.i:                               ; preds = %invoke.cont.i.i.i.i.i
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %11, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i.i.i.i) #12
  br label %_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %invoke.cont3, %invoke.cont.i.i.i.i.i, %if.then4.i.i.i.i.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %12) #12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %9, align 8, !tbaa !22
  %_M_buf_locale.i.i.i.i = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* noundef nonnull align 8 dereferenceable(8) %_M_buf_locale.i.i.i.i) #12
  %16 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 2) to i32 (...)***), align 8
  store i32 (...)** %16, i32 (...)*** %3, align 8, !tbaa !22
  %17 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 3) to i32 (...)***), align 8
  %vbase.offset.ptr1.i.i.i.i = getelementptr i32 (...)*, i32 (...)** %16, i64 -3
  %18 = bitcast i32 (...)** %vbase.offset.ptr1.i.i.i.i to i64*
  %vbase.offset.i.i.i.i = load i64, i64* %18, align 8
  %add.ptr.i.i.i.i = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i.i.i
  %19 = bitcast i8* %add.ptr.i.i.i.i to i32 (...)***
  store i32 (...)** %17, i32 (...)*** %19, align 8, !tbaa !22
  %20 = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %20, align 8, !tbaa !24
  %21 = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* noundef nonnull align 8 dereferenceable(216) %21) #12
  call void @llvm.lifetime.end.p0i8(i64 368, i8* nonnull %0) #12
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %22 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_stringstream"* noundef nonnull align 8 dereferenceable(104) %strm) #12
  call void @llvm.lifetime.end.p0i8(i64 368, i8* nonnull %0) #12
  resume { i8*, i32 } %22
}

; Function Attrs: uwtable
define dso_local noundef %class.YAML_Element* @_ZN12YAML_Element3addERKSsx(%class.YAML_Element* noundef nonnull align 8 dereferenceable(40) %this, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key_arg, i64 noundef %value_arg) local_unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i = alloca %"class.std::allocator", align 1
  %converted_value = alloca %"class.std::basic_string", align 8
  %value = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  %call2.i.i = tail call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %value, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 noundef 0)
  %0 = bitcast %"class.std::basic_string"* %converted_value to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  call void @_ZN12YAML_Element27convert_long_long_to_stringEx(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %converted_value, %class.YAML_Element* nonnull align 8 undef, i64 noundef %value_arg)
  %call2 = invoke noalias noundef nonnull dereferenceable(40) i8* @_Znwm(i64 noundef 40) #14
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast i8* %call2 to %class.YAML_Element*
  %key.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %1, i64 0, i32 0
  %_M_p.i.i.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %1, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p.i.i.i, align 8, !tbaa !4
  %value.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %1, i64 0, i32 1
  %_M_p.i.i1.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %value.i, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p.i.i1.i, align 8, !tbaa !4
  %children.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %1, i64 0, i32 2
  %2 = bitcast %"class.std::vector"* %children.i to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false) #12
  %call.i2.i = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key.i, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key_arg)
          to label %invoke.cont4.i unwind label %lpad3.i

invoke.cont4.i:                                   ; preds = %invoke.cont
  %call.i3.i = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %value.i, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %converted_value)
          to label %invoke.cont4 unwind label %lpad3.i

lpad3.i:                                          ; preds = %invoke.cont4.i, %invoke.cont
  %3 = landingpad { i8*, i32 }
          cleanup
  %_M_start.i.i.i = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %children.i, i64 0, i32 0, i32 0, i32 0
  %4 = load %class.YAML_Element**, %class.YAML_Element*** %_M_start.i.i.i, align 8, !tbaa !9
  %tobool.not.i.i.i.i = icmp eq %class.YAML_Element** %4, null
  br i1 %tobool.not.i.i.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad3.i
  %5 = bitcast %class.YAML_Element** %4 to i8*
  call void @_ZdlPv(i8* noundef nonnull %5) #12
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i

_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i:  ; preds = %if.then.i.i.i.i, %lpad3.i
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %value.i) #12
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key.i) #12
  call void @_ZdlPv(i8* noundef nonnull %call2) #13
  br label %ehcleanup

invoke.cont4:                                     ; preds = %invoke.cont4.i
  %_M_finish.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 1
  %6 = load %class.YAML_Element**, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  %_M_end_of_storage.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 2
  %7 = load %class.YAML_Element**, %class.YAML_Element*** %_M_end_of_storage.i, align 8, !tbaa !21
  %cmp.not.i = icmp eq %class.YAML_Element** %6, %7
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %invoke.cont4
  %8 = bitcast %class.YAML_Element** %6 to i8**
  store i8* %call2, i8** %8, align 8, !tbaa !18
  %9 = load %class.YAML_Element**, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  %incdec.ptr.i = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %9, i64 1
  store %class.YAML_Element** %incdec.ptr.i, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  br label %invoke.cont5

if.else.i:                                        ; preds = %invoke.cont4
  %coerce.val.pi.i.i = ptrtoint %class.YAML_Element** %6 to i64
  %_M_start.i.i.i.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 0
  %10 = load %class.YAML_Element**, %class.YAML_Element*** %_M_start.i.i.i.i, align 8, !tbaa !9
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint %class.YAML_Element** %10 to i64
  %sub.ptr.sub.i.i.i.i = sub i64 %coerce.val.pi.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %sub.ptr.div.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i, 3
  %cmp.i.i.i.i = icmp eq i64 %sub.ptr.sub.i.i.i.i, 0
  %.sroa.speculated.i.i.i = select i1 %cmp.i.i.i.i, i64 1, i64 %sub.ptr.div.i.i.i.i
  %add.i.i.i = add nsw i64 %.sroa.speculated.i.i.i, %sub.ptr.div.i.i.i.i
  %cmp7.i.i.i = icmp ult i64 %add.i.i.i, %sub.ptr.div.i.i.i.i
  %cmp9.i.i.i = icmp ugt i64 %add.i.i.i, 2305843009213693951
  %or.cond.i.i.i = or i1 %cmp7.i.i.i, %cmp9.i.i.i
  %cond.i.i.i = select i1 %or.cond.i.i.i, i64 2305843009213693951, i64 %add.i.i.i
  %cmp.not.i.i.i = icmp eq i64 %cond.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %invoke.cont.i.i, label %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i

_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i: ; preds = %if.else.i
  %mul.i.i.i.i.i = shl nuw i64 %cond.i.i.i, 3
  %call2.i.i.i.i.i2 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef %mul.i.i.i.i.i) #15
          to label %call2.i.i.i.i.i.noexc unwind label %lpad

call2.i.i.i.i.i.noexc:                            ; preds = %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i
  %11 = bitcast i8* %call2.i.i.i.i.i2 to %class.YAML_Element**
  br label %invoke.cont.i.i

invoke.cont.i.i:                                  ; preds = %call2.i.i.i.i.i.noexc, %if.else.i
  %cond.i31.i.i = phi %class.YAML_Element** [ %11, %call2.i.i.i.i.i.noexc ], [ null, %if.else.i ]
  %add.ptr.i.i = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %cond.i31.i.i, i64 %sub.ptr.div.i.i.i.i
  %12 = bitcast %class.YAML_Element** %add.ptr.i.i to i8**
  store i8* %call2, i8** %12, align 8, !tbaa !18
  br i1 %cmp.i.i.i.i, label %invoke.cont16.i.i, label %if.then.i.i.i.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i.i.i.i:                      ; preds = %invoke.cont.i.i
  %13 = bitcast %class.YAML_Element** %cond.i31.i.i to i8*
  %14 = bitcast %class.YAML_Element** %10 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 %sub.ptr.sub.i.i.i.i, i1 false) #12
  br label %invoke.cont16.i.i

invoke.cont16.i.i:                                ; preds = %if.then.i.i.i.i.i.i.i.i.i.i, %invoke.cont.i.i
  %incdec.ptr.i.i = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %add.ptr.i.i, i64 1
  %tobool.not.i.i.i = icmp eq %class.YAML_Element** %10, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %if.then.i41.i.i

if.then.i41.i.i:                                  ; preds = %invoke.cont16.i.i
  %15 = bitcast %class.YAML_Element** %10 to i8*
  call void @_ZdlPv(i8* noundef nonnull %15) #12
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %if.then.i41.i.i, %invoke.cont16.i.i
  store %class.YAML_Element** %cond.i31.i.i, %class.YAML_Element*** %_M_start.i.i.i.i, align 8, !tbaa !9
  store %class.YAML_Element** %incdec.ptr.i.i, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  %add.ptr32.i.i = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %cond.i31.i.i, i64 %cond.i.i.i
  store %class.YAML_Element** %add.ptr32.i.i, %class.YAML_Element*** %_M_end_of_storage.i, align 8, !tbaa !21
  br label %invoke.cont5

invoke.cont5:                                     ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %if.then.i
  %_M_p.i.i.i3 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %converted_value, i64 0, i32 0, i32 0
  %16 = load i8*, i8** %_M_p.i.i.i3, align 8, !tbaa !13
  %arrayidx.i.i = getelementptr inbounds i8, i8* %16, i64 -24
  %17 = bitcast i8* %arrayidx.i.i to %"struct.std::basic_string<char>::_Rep"*
  %18 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #12
  %cmp.not.i.i = icmp eq i8* %arrayidx.i.i, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i, label %_ZNSsD2Ev.exit, label %if.then.i.i, !prof !15

if.then.i.i:                                      ; preds = %invoke.cont5
  %_M_refcount.i.i = getelementptr inbounds i8, i8* %16, i64 -8
  %19 = bitcast i8* %_M_refcount.i.i to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  %20 = atomicrmw volatile add i32* %19, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i4

if.else.i.i.i:                                    ; preds = %if.then.i.i
  %21 = load i32, i32* %19, align 8, !tbaa !16
  %add.i.i.i.i = add nsw i32 %21, -1
  store i32 %add.i.i.i.i, i32* %19, align 8, !tbaa !16
  br label %invoke.cont.i.i4

invoke.cont.i.i4:                                 ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %20, %if.then.i.i.i ], [ %21, %if.else.i.i.i ]
  %cmp3.i.i = icmp slt i32 %retval.0.i.i.i, 1
  br i1 %cmp3.i.i, label %if.then4.i.i, label %_ZNSsD2Ev.exit

if.then4.i.i:                                     ; preds = %invoke.cont.i.i4
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %17, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i) #12
  br label %_ZNSsD2Ev.exit

_ZNSsD2Ev.exit:                                   ; preds = %invoke.cont5, %invoke.cont.i.i4, %if.then4.i.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret %class.YAML_Element* %1

lpad:                                             ; preds = %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i, %entry
  %22 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

ehcleanup:                                        ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, %lpad
  %.pn = phi { i8*, i32 } [ %22, %lpad ], [ %3, %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %converted_value) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  resume { i8*, i32 } %.pn
}

; Function Attrs: uwtable
define dso_local void @_ZN12YAML_Element27convert_long_long_to_stringEx(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8 %agg.result, %class.YAML_Element* nocapture nonnull readnone align 8 %this, i64 noundef %value_arg) local_unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i.i.i.i = alloca %"class.std::allocator", align 1
  %strm = alloca %"class.std::basic_stringstream", align 8
  %0 = bitcast %"class.std::basic_stringstream"* %strm to i8*
  call void @llvm.lifetime.start.p0i8(i64 368, i8* nonnull %0) #12
  call void @_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_stringstream"* noundef nonnull align 8 dereferenceable(104) %strm, i32 noundef signext 24)
  %add.ptr = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 0, i32 1
  %1 = bitcast %"class.std::basic_ostream.base"* %add.ptr to %"class.std::basic_ostream"*
  %call.i1 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIxEERSoT_(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %value_arg)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_stringbuf.i = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %agg.result, %"class.std::basic_stringbuf"* noundef nonnull align 8 dereferenceable(80) %_M_stringbuf.i)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %2 = load i32 (...)**, i32 (...)*** bitcast ([10 x i8*]* @_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE to i32 (...)***), align 8
  %3 = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** %2, i32 (...)*** %3, align 8, !tbaa !22
  %4 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 8) to i32 (...)***), align 8
  %vbase.offset.ptr1.i.i = getelementptr i32 (...)*, i32 (...)** %2, i64 -3
  %5 = bitcast i32 (...)** %vbase.offset.ptr1.i.i to i64*
  %vbase.offset.i.i = load i64, i64* %5, align 8
  %add.ptr.i.i = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i
  %6 = bitcast i8* %add.ptr.i.i to i32 (...)***
  store i32 (...)** %4, i32 (...)*** %6, align 8, !tbaa !22
  %7 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 9) to i32 (...)***), align 8
  %8 = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** %7, i32 (...)*** %8, align 8, !tbaa !22
  %9 = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %9, align 8, !tbaa !22
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 1, i32 2, i32 0, i32 0
  %10 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !13
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %10, i64 -24
  %11 = bitcast i8* %arrayidx.i.i.i.i.i to %"struct.std::basic_string<char>::_Rep"*
  %12 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i.i.i.i, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %12) #12
  %cmp.not.i.i.i.i.i = icmp eq i8* %arrayidx.i.i.i.i.i, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i.i.i.i, label %_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %if.then.i.i.i.i.i, !prof !15

if.then.i.i.i.i.i:                                ; preds = %invoke.cont3
  %_M_refcount.i.i.i.i.i = getelementptr inbounds i8, i8* %10, i64 -8
  %13 = bitcast i8* %_M_refcount.i.i.i.i.i to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i
  %14 = atomicrmw volatile add i32* %13, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i
  %15 = load i32, i32* %13, align 8, !tbaa !16
  %add.i.i.i.i.i.i.i = add nsw i32 %15, -1
  store i32 %add.i.i.i.i.i.i.i, i32* %13, align 8, !tbaa !16
  br label %invoke.cont.i.i.i.i.i

invoke.cont.i.i.i.i.i:                            ; preds = %if.else.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi i32 [ %14, %if.then.i.i.i.i.i.i ], [ %15, %if.else.i.i.i.i.i.i ]
  %cmp3.i.i.i.i.i = icmp slt i32 %retval.0.i.i.i.i.i.i, 1
  br i1 %cmp3.i.i.i.i.i, label %if.then4.i.i.i.i.i, label %_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

if.then4.i.i.i.i.i:                               ; preds = %invoke.cont.i.i.i.i.i
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %11, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i.i.i.i) #12
  br label %_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %invoke.cont3, %invoke.cont.i.i.i.i.i, %if.then4.i.i.i.i.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %12) #12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %9, align 8, !tbaa !22
  %_M_buf_locale.i.i.i.i = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* noundef nonnull align 8 dereferenceable(8) %_M_buf_locale.i.i.i.i) #12
  %16 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 2) to i32 (...)***), align 8
  store i32 (...)** %16, i32 (...)*** %3, align 8, !tbaa !22
  %17 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 3) to i32 (...)***), align 8
  %vbase.offset.ptr1.i.i.i.i = getelementptr i32 (...)*, i32 (...)** %16, i64 -3
  %18 = bitcast i32 (...)** %vbase.offset.ptr1.i.i.i.i to i64*
  %vbase.offset.i.i.i.i = load i64, i64* %18, align 8
  %add.ptr.i.i.i.i = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i.i.i
  %19 = bitcast i8* %add.ptr.i.i.i.i to i32 (...)***
  store i32 (...)** %17, i32 (...)*** %19, align 8, !tbaa !22
  %20 = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %20, align 8, !tbaa !24
  %21 = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* noundef nonnull align 8 dereferenceable(216) %21) #12
  call void @llvm.lifetime.end.p0i8(i64 368, i8* nonnull %0) #12
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %22 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_stringstream"* noundef nonnull align 8 dereferenceable(104) %strm) #12
  call void @llvm.lifetime.end.p0i8(i64 368, i8* nonnull %0) #12
  resume { i8*, i32 } %22
}

; Function Attrs: uwtable
define dso_local noundef %class.YAML_Element* @_ZN12YAML_Element3addERKSsm(%class.YAML_Element* noundef nonnull align 8 dereferenceable(40) %this, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key_arg, i64 noundef %value_arg) local_unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i = alloca %"class.std::allocator", align 1
  %converted_value = alloca %"class.std::basic_string", align 8
  %value = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  %call2.i.i = tail call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %value, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 noundef 0)
  %0 = bitcast %"class.std::basic_string"* %converted_value to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  call void @_ZN12YAML_Element24convert_size_t_to_stringEm(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %converted_value, %class.YAML_Element* nonnull align 8 undef, i64 noundef %value_arg)
  %call2 = invoke noalias noundef nonnull dereferenceable(40) i8* @_Znwm(i64 noundef 40) #14
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast i8* %call2 to %class.YAML_Element*
  %key.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %1, i64 0, i32 0
  %_M_p.i.i.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %1, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p.i.i.i, align 8, !tbaa !4
  %value.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %1, i64 0, i32 1
  %_M_p.i.i1.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %value.i, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p.i.i1.i, align 8, !tbaa !4
  %children.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %1, i64 0, i32 2
  %2 = bitcast %"class.std::vector"* %children.i to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false) #12
  %call.i2.i = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key.i, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key_arg)
          to label %invoke.cont4.i unwind label %lpad3.i

invoke.cont4.i:                                   ; preds = %invoke.cont
  %call.i3.i = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %value.i, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %converted_value)
          to label %invoke.cont4 unwind label %lpad3.i

lpad3.i:                                          ; preds = %invoke.cont4.i, %invoke.cont
  %3 = landingpad { i8*, i32 }
          cleanup
  %_M_start.i.i.i = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %children.i, i64 0, i32 0, i32 0, i32 0
  %4 = load %class.YAML_Element**, %class.YAML_Element*** %_M_start.i.i.i, align 8, !tbaa !9
  %tobool.not.i.i.i.i = icmp eq %class.YAML_Element** %4, null
  br i1 %tobool.not.i.i.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad3.i
  %5 = bitcast %class.YAML_Element** %4 to i8*
  call void @_ZdlPv(i8* noundef nonnull %5) #12
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i

_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i:  ; preds = %if.then.i.i.i.i, %lpad3.i
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %value.i) #12
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key.i) #12
  call void @_ZdlPv(i8* noundef nonnull %call2) #13
  br label %ehcleanup

invoke.cont4:                                     ; preds = %invoke.cont4.i
  %_M_finish.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 1
  %6 = load %class.YAML_Element**, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  %_M_end_of_storage.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 2
  %7 = load %class.YAML_Element**, %class.YAML_Element*** %_M_end_of_storage.i, align 8, !tbaa !21
  %cmp.not.i = icmp eq %class.YAML_Element** %6, %7
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %invoke.cont4
  %8 = bitcast %class.YAML_Element** %6 to i8**
  store i8* %call2, i8** %8, align 8, !tbaa !18
  %9 = load %class.YAML_Element**, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  %incdec.ptr.i = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %9, i64 1
  store %class.YAML_Element** %incdec.ptr.i, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  br label %invoke.cont5

if.else.i:                                        ; preds = %invoke.cont4
  %coerce.val.pi.i.i = ptrtoint %class.YAML_Element** %6 to i64
  %_M_start.i.i.i.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 0
  %10 = load %class.YAML_Element**, %class.YAML_Element*** %_M_start.i.i.i.i, align 8, !tbaa !9
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint %class.YAML_Element** %10 to i64
  %sub.ptr.sub.i.i.i.i = sub i64 %coerce.val.pi.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %sub.ptr.div.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i, 3
  %cmp.i.i.i.i = icmp eq i64 %sub.ptr.sub.i.i.i.i, 0
  %.sroa.speculated.i.i.i = select i1 %cmp.i.i.i.i, i64 1, i64 %sub.ptr.div.i.i.i.i
  %add.i.i.i = add nsw i64 %.sroa.speculated.i.i.i, %sub.ptr.div.i.i.i.i
  %cmp7.i.i.i = icmp ult i64 %add.i.i.i, %sub.ptr.div.i.i.i.i
  %cmp9.i.i.i = icmp ugt i64 %add.i.i.i, 2305843009213693951
  %or.cond.i.i.i = or i1 %cmp7.i.i.i, %cmp9.i.i.i
  %cond.i.i.i = select i1 %or.cond.i.i.i, i64 2305843009213693951, i64 %add.i.i.i
  %cmp.not.i.i.i = icmp eq i64 %cond.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %invoke.cont.i.i, label %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i

_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i: ; preds = %if.else.i
  %mul.i.i.i.i.i = shl nuw i64 %cond.i.i.i, 3
  %call2.i.i.i.i.i2 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef %mul.i.i.i.i.i) #15
          to label %call2.i.i.i.i.i.noexc unwind label %lpad

call2.i.i.i.i.i.noexc:                            ; preds = %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i
  %11 = bitcast i8* %call2.i.i.i.i.i2 to %class.YAML_Element**
  br label %invoke.cont.i.i

invoke.cont.i.i:                                  ; preds = %call2.i.i.i.i.i.noexc, %if.else.i
  %cond.i31.i.i = phi %class.YAML_Element** [ %11, %call2.i.i.i.i.i.noexc ], [ null, %if.else.i ]
  %add.ptr.i.i = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %cond.i31.i.i, i64 %sub.ptr.div.i.i.i.i
  %12 = bitcast %class.YAML_Element** %add.ptr.i.i to i8**
  store i8* %call2, i8** %12, align 8, !tbaa !18
  br i1 %cmp.i.i.i.i, label %invoke.cont16.i.i, label %if.then.i.i.i.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i.i.i.i:                      ; preds = %invoke.cont.i.i
  %13 = bitcast %class.YAML_Element** %cond.i31.i.i to i8*
  %14 = bitcast %class.YAML_Element** %10 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 %sub.ptr.sub.i.i.i.i, i1 false) #12
  br label %invoke.cont16.i.i

invoke.cont16.i.i:                                ; preds = %if.then.i.i.i.i.i.i.i.i.i.i, %invoke.cont.i.i
  %incdec.ptr.i.i = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %add.ptr.i.i, i64 1
  %tobool.not.i.i.i = icmp eq %class.YAML_Element** %10, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %if.then.i41.i.i

if.then.i41.i.i:                                  ; preds = %invoke.cont16.i.i
  %15 = bitcast %class.YAML_Element** %10 to i8*
  call void @_ZdlPv(i8* noundef nonnull %15) #12
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %if.then.i41.i.i, %invoke.cont16.i.i
  store %class.YAML_Element** %cond.i31.i.i, %class.YAML_Element*** %_M_start.i.i.i.i, align 8, !tbaa !9
  store %class.YAML_Element** %incdec.ptr.i.i, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  %add.ptr32.i.i = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %cond.i31.i.i, i64 %cond.i.i.i
  store %class.YAML_Element** %add.ptr32.i.i, %class.YAML_Element*** %_M_end_of_storage.i, align 8, !tbaa !21
  br label %invoke.cont5

invoke.cont5:                                     ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %if.then.i
  %_M_p.i.i.i3 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %converted_value, i64 0, i32 0, i32 0
  %16 = load i8*, i8** %_M_p.i.i.i3, align 8, !tbaa !13
  %arrayidx.i.i = getelementptr inbounds i8, i8* %16, i64 -24
  %17 = bitcast i8* %arrayidx.i.i to %"struct.std::basic_string<char>::_Rep"*
  %18 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #12
  %cmp.not.i.i = icmp eq i8* %arrayidx.i.i, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i, label %_ZNSsD2Ev.exit, label %if.then.i.i, !prof !15

if.then.i.i:                                      ; preds = %invoke.cont5
  %_M_refcount.i.i = getelementptr inbounds i8, i8* %16, i64 -8
  %19 = bitcast i8* %_M_refcount.i.i to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  %20 = atomicrmw volatile add i32* %19, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i4

if.else.i.i.i:                                    ; preds = %if.then.i.i
  %21 = load i32, i32* %19, align 8, !tbaa !16
  %add.i.i.i.i = add nsw i32 %21, -1
  store i32 %add.i.i.i.i, i32* %19, align 8, !tbaa !16
  br label %invoke.cont.i.i4

invoke.cont.i.i4:                                 ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %20, %if.then.i.i.i ], [ %21, %if.else.i.i.i ]
  %cmp3.i.i = icmp slt i32 %retval.0.i.i.i, 1
  br i1 %cmp3.i.i, label %if.then4.i.i, label %_ZNSsD2Ev.exit

if.then4.i.i:                                     ; preds = %invoke.cont.i.i4
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %17, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i) #12
  br label %_ZNSsD2Ev.exit

_ZNSsD2Ev.exit:                                   ; preds = %invoke.cont5, %invoke.cont.i.i4, %if.then4.i.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret %class.YAML_Element* %1

lpad:                                             ; preds = %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i, %entry
  %22 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

ehcleanup:                                        ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, %lpad
  %.pn = phi { i8*, i32 } [ %22, %lpad ], [ %3, %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %converted_value) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  resume { i8*, i32 } %.pn
}

; Function Attrs: uwtable
define dso_local void @_ZN12YAML_Element24convert_size_t_to_stringEm(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8 %agg.result, %class.YAML_Element* nocapture nonnull readnone align 8 %this, i64 noundef %value_arg) local_unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i.i.i.i = alloca %"class.std::allocator", align 1
  %strm = alloca %"class.std::basic_stringstream", align 8
  %0 = bitcast %"class.std::basic_stringstream"* %strm to i8*
  call void @llvm.lifetime.start.p0i8(i64 368, i8* nonnull %0) #12
  call void @_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_stringstream"* noundef nonnull align 8 dereferenceable(104) %strm, i32 noundef signext 24)
  %add.ptr = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 0, i32 1
  %1 = bitcast %"class.std::basic_ostream.base"* %add.ptr to %"class.std::basic_ostream"*
  %call.i1 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %value_arg)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_stringbuf.i = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %agg.result, %"class.std::basic_stringbuf"* noundef nonnull align 8 dereferenceable(80) %_M_stringbuf.i)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %2 = load i32 (...)**, i32 (...)*** bitcast ([10 x i8*]* @_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE to i32 (...)***), align 8
  %3 = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** %2, i32 (...)*** %3, align 8, !tbaa !22
  %4 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 8) to i32 (...)***), align 8
  %vbase.offset.ptr1.i.i = getelementptr i32 (...)*, i32 (...)** %2, i64 -3
  %5 = bitcast i32 (...)** %vbase.offset.ptr1.i.i to i64*
  %vbase.offset.i.i = load i64, i64* %5, align 8
  %add.ptr.i.i = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i
  %6 = bitcast i8* %add.ptr.i.i to i32 (...)***
  store i32 (...)** %4, i32 (...)*** %6, align 8, !tbaa !22
  %7 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 9) to i32 (...)***), align 8
  %8 = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** %7, i32 (...)*** %8, align 8, !tbaa !22
  %9 = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %9, align 8, !tbaa !22
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 1, i32 2, i32 0, i32 0
  %10 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !13
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %10, i64 -24
  %11 = bitcast i8* %arrayidx.i.i.i.i.i to %"struct.std::basic_string<char>::_Rep"*
  %12 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i.i.i.i, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %12) #12
  %cmp.not.i.i.i.i.i = icmp eq i8* %arrayidx.i.i.i.i.i, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i.i.i.i, label %_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %if.then.i.i.i.i.i, !prof !15

if.then.i.i.i.i.i:                                ; preds = %invoke.cont3
  %_M_refcount.i.i.i.i.i = getelementptr inbounds i8, i8* %10, i64 -8
  %13 = bitcast i8* %_M_refcount.i.i.i.i.i to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i
  %14 = atomicrmw volatile add i32* %13, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i
  %15 = load i32, i32* %13, align 8, !tbaa !16
  %add.i.i.i.i.i.i.i = add nsw i32 %15, -1
  store i32 %add.i.i.i.i.i.i.i, i32* %13, align 8, !tbaa !16
  br label %invoke.cont.i.i.i.i.i

invoke.cont.i.i.i.i.i:                            ; preds = %if.else.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi i32 [ %14, %if.then.i.i.i.i.i.i ], [ %15, %if.else.i.i.i.i.i.i ]
  %cmp3.i.i.i.i.i = icmp slt i32 %retval.0.i.i.i.i.i.i, 1
  br i1 %cmp3.i.i.i.i.i, label %if.then4.i.i.i.i.i, label %_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

if.then4.i.i.i.i.i:                               ; preds = %invoke.cont.i.i.i.i.i
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %11, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i.i.i.i) #12
  br label %_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %invoke.cont3, %invoke.cont.i.i.i.i.i, %if.then4.i.i.i.i.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %12) #12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %9, align 8, !tbaa !22
  %_M_buf_locale.i.i.i.i = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* noundef nonnull align 8 dereferenceable(8) %_M_buf_locale.i.i.i.i) #12
  %16 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 2) to i32 (...)***), align 8
  store i32 (...)** %16, i32 (...)*** %3, align 8, !tbaa !22
  %17 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 3) to i32 (...)***), align 8
  %vbase.offset.ptr1.i.i.i.i = getelementptr i32 (...)*, i32 (...)** %16, i64 -3
  %18 = bitcast i32 (...)** %vbase.offset.ptr1.i.i.i.i to i64*
  %vbase.offset.i.i.i.i = load i64, i64* %18, align 8
  %add.ptr.i.i.i.i = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i.i.i
  %19 = bitcast i8* %add.ptr.i.i.i.i to i32 (...)***
  store i32 (...)** %17, i32 (...)*** %19, align 8, !tbaa !22
  %20 = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %20, align 8, !tbaa !24
  %21 = getelementptr inbounds %"class.std::basic_stringstream", %"class.std::basic_stringstream"* %strm, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* noundef nonnull align 8 dereferenceable(216) %21) #12
  call void @llvm.lifetime.end.p0i8(i64 368, i8* nonnull %0) #12
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %22 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_stringstream"* noundef nonnull align 8 dereferenceable(104) %strm) #12
  call void @llvm.lifetime.end.p0i8(i64 368, i8* nonnull %0) #12
  resume { i8*, i32 } %22
}

; Function Attrs: uwtable
define dso_local noundef %class.YAML_Element* @_ZN12YAML_Element3addERKSsS1_(%class.YAML_Element* noundef nonnull align 8 dereferenceable(40) %this, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key_arg, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %value_arg) local_unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %value = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  %call2.i.i = tail call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %value, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 noundef 0)
  %call2 = tail call noalias noundef nonnull dereferenceable(40) i8* @_Znwm(i64 noundef 40) #14
  %0 = bitcast i8* %call2 to %class.YAML_Element*
  %key.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %0, i64 0, i32 0
  %_M_p.i.i.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %0, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p.i.i.i, align 8, !tbaa !4
  %value.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %0, i64 0, i32 1
  %_M_p.i.i1.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %value.i, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p.i.i1.i, align 8, !tbaa !4
  %children.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %0, i64 0, i32 2
  %1 = bitcast %"class.std::vector"* %children.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false) #12
  %call.i2.i = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key.i, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key_arg)
          to label %invoke.cont4.i unwind label %lpad3.i

invoke.cont4.i:                                   ; preds = %entry
  %call.i3.i = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %value.i, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %value_arg)
          to label %invoke.cont unwind label %lpad3.i

lpad3.i:                                          ; preds = %invoke.cont4.i, %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %_M_start.i.i.i = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %children.i, i64 0, i32 0, i32 0, i32 0
  %3 = load %class.YAML_Element**, %class.YAML_Element*** %_M_start.i.i.i, align 8, !tbaa !9
  %tobool.not.i.i.i.i = icmp eq %class.YAML_Element** %3, null
  br i1 %tobool.not.i.i.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad3.i
  %4 = bitcast %class.YAML_Element** %3 to i8*
  tail call void @_ZdlPv(i8* noundef nonnull %4) #12
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i

_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i:  ; preds = %if.then.i.i.i.i, %lpad3.i
  tail call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %value.i) #12
  tail call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key.i) #12
  tail call void @_ZdlPv(i8* noundef nonnull %call2) #13
  resume { i8*, i32 } %2

invoke.cont:                                      ; preds = %invoke.cont4.i
  %_M_finish.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 1
  %5 = load %class.YAML_Element**, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  %_M_end_of_storage.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 2
  %6 = load %class.YAML_Element**, %class.YAML_Element*** %_M_end_of_storage.i, align 8, !tbaa !21
  %cmp.not.i = icmp eq %class.YAML_Element** %5, %6
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %invoke.cont
  %7 = bitcast %class.YAML_Element** %5 to i8**
  store i8* %call2, i8** %7, align 8, !tbaa !18
  %8 = load %class.YAML_Element**, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  %incdec.ptr.i = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %8, i64 1
  store %class.YAML_Element** %incdec.ptr.i, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit

if.else.i:                                        ; preds = %invoke.cont
  %coerce.val.pi.i.i = ptrtoint %class.YAML_Element** %5 to i64
  %_M_start.i.i.i.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 0
  %9 = load %class.YAML_Element**, %class.YAML_Element*** %_M_start.i.i.i.i, align 8, !tbaa !9
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint %class.YAML_Element** %9 to i64
  %sub.ptr.sub.i.i.i.i = sub i64 %coerce.val.pi.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %sub.ptr.div.i.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i.i, 3
  %cmp.i.i.i.i = icmp eq i64 %sub.ptr.sub.i.i.i.i, 0
  %.sroa.speculated.i.i.i = select i1 %cmp.i.i.i.i, i64 1, i64 %sub.ptr.div.i.i.i.i
  %add.i.i.i = add nsw i64 %.sroa.speculated.i.i.i, %sub.ptr.div.i.i.i.i
  %cmp7.i.i.i = icmp ult i64 %add.i.i.i, %sub.ptr.div.i.i.i.i
  %cmp9.i.i.i = icmp ugt i64 %add.i.i.i, 2305843009213693951
  %or.cond.i.i.i = or i1 %cmp7.i.i.i, %cmp9.i.i.i
  %cond.i.i.i = select i1 %or.cond.i.i.i, i64 2305843009213693951, i64 %add.i.i.i
  %cmp.not.i.i.i = icmp eq i64 %cond.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %invoke.cont.i.i, label %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i

_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i: ; preds = %if.else.i
  %mul.i.i.i.i.i = shl nuw i64 %cond.i.i.i, 3
  %call2.i.i.i.i.i = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef %mul.i.i.i.i.i) #15
  %10 = bitcast i8* %call2.i.i.i.i.i to %class.YAML_Element**
  br label %invoke.cont.i.i

invoke.cont.i.i:                                  ; preds = %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i, %if.else.i
  %cond.i31.i.i = phi %class.YAML_Element** [ %10, %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i ], [ null, %if.else.i ]
  %add.ptr.i.i = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %cond.i31.i.i, i64 %sub.ptr.div.i.i.i.i
  %11 = bitcast %class.YAML_Element** %add.ptr.i.i to i8**
  store i8* %call2, i8** %11, align 8, !tbaa !18
  br i1 %cmp.i.i.i.i, label %invoke.cont16.i.i, label %if.then.i.i.i.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i.i.i.i:                      ; preds = %invoke.cont.i.i
  %12 = bitcast %class.YAML_Element** %cond.i31.i.i to i8*
  %13 = bitcast %class.YAML_Element** %9 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 %sub.ptr.sub.i.i.i.i, i1 false) #12
  br label %invoke.cont16.i.i

invoke.cont16.i.i:                                ; preds = %if.then.i.i.i.i.i.i.i.i.i.i, %invoke.cont.i.i
  %incdec.ptr.i.i = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %add.ptr.i.i, i64 1
  %tobool.not.i.i.i = icmp eq %class.YAML_Element** %9, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %if.then.i41.i.i

if.then.i41.i.i:                                  ; preds = %invoke.cont16.i.i
  %14 = bitcast %class.YAML_Element** %9 to i8*
  tail call void @_ZdlPv(i8* noundef nonnull %14) #12
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %if.then.i41.i.i, %invoke.cont16.i.i
  store %class.YAML_Element** %cond.i31.i.i, %class.YAML_Element*** %_M_start.i.i.i.i, align 8, !tbaa !9
  store %class.YAML_Element** %incdec.ptr.i.i, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  %add.ptr32.i.i = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %cond.i31.i.i, i64 %cond.i.i.i
  store %class.YAML_Element** %add.ptr32.i.i, %class.YAML_Element*** %_M_end_of_storage.i, align 8, !tbaa !21
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit: ; preds = %if.then.i, %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  ret %class.YAML_Element* %0
}

; Function Attrs: uwtable
define dso_local noundef %class.YAML_Element* @_ZN12YAML_Element3getERKSs(%class.YAML_Element* nocapture noundef nonnull readonly align 8 dereferenceable(40) %this, %"class.std::basic_string"* nocapture noundef nonnull readonly align 8 dereferenceable(8) %key_arg) local_unnamed_addr #3 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %ref.tmp.i = alloca %"class.std::allocator", align 1
  %ref.tmp = alloca %"class.std::basic_string", align 8
  %_M_finish.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 1
  %_M_start.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 0
  %0 = bitcast %"class.std::basic_string"* %ref.tmp to i8*
  %_M_p.i.i.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  %_M_p.i.i.i4.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %key_arg, i64 0, i32 0, i32 0
  %1 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i, i64 0, i32 0
  %2 = load %class.YAML_Element**, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  %3 = load %class.YAML_Element**, %class.YAML_Element*** %_M_start.i, align 8, !tbaa !9
  %cmp14.not = icmp eq %class.YAML_Element** %2, %3
  br i1 %cmp14.not, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %4 = phi %class.YAML_Element** [ %18, %for.inc ], [ %3, %entry ]
  %i.015 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  %add.ptr.i = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %4, i64 %i.015
  %5 = load %class.YAML_Element*, %class.YAML_Element** %add.ptr.i, align 8, !tbaa !18
  %key.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %5, i64 0, i32 0
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key.i)
  %6 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !13
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %6, i64 -24
  %_M_length.i.i = bitcast i8* %arrayidx.i.i.i to i64*
  %7 = load i64, i64* %_M_length.i.i, align 8, !tbaa !27
  %8 = load i8*, i8** %_M_p.i.i.i4.i, align 8, !tbaa !13
  %arrayidx.i.i5.i = getelementptr inbounds i8, i8* %8, i64 -24
  %_M_length.i6.i = bitcast i8* %arrayidx.i.i5.i to i64*
  %9 = load i64, i64* %_M_length.i6.i, align 8, !tbaa !27
  %cmp.i = icmp eq i64 %7, %9
  br i1 %cmp.i, label %land.rhs.i, label %_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKSbIS2_St11char_traitsIS2_ESaIS2_EESA_.exit

land.rhs.i:                                       ; preds = %for.body
  %cmp.i.i = icmp eq i64 %7, 0
  br i1 %cmp.i.i, label %_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKSbIS2_St11char_traitsIS2_ESaIS2_EESA_.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %land.rhs.i
  %bcmp.i = call i32 @bcmp(i8* nonnull %6, i8* nonnull %8, i64 %7) #12
  %phi.cmp.i = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKSbIS2_St11char_traitsIS2_ESaIS2_EESA_.exit

_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKSbIS2_St11char_traitsIS2_ESaIS2_EESA_.exit: ; preds = %for.body, %land.rhs.i, %if.end.i.i
  %10 = phi i1 [ false, %for.body ], [ %phi.cmp.i, %if.end.i.i ], [ true, %land.rhs.i ]
  %11 = bitcast i8* %arrayidx.i.i.i to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1) #12
  %cmp.not.i.i = icmp eq i8* %arrayidx.i.i.i, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i, label %_ZNSsD2Ev.exit, label %if.then.i.i, !prof !15

if.then.i.i:                                      ; preds = %_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKSbIS2_St11char_traitsIS2_ESaIS2_EESA_.exit
  %_M_refcount.i.i = getelementptr inbounds i8, i8* %6, i64 -8
  %12 = bitcast i8* %_M_refcount.i.i to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  %13 = atomicrmw volatile add i32* %12, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  %14 = load i32, i32* %12, align 8, !tbaa !16
  %add.i.i.i.i = add nsw i32 %14, -1
  store i32 %add.i.i.i.i, i32* %12, align 8, !tbaa !16
  br label %invoke.cont.i.i

invoke.cont.i.i:                                  ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %13, %if.then.i.i.i ], [ %14, %if.else.i.i.i ]
  %cmp3.i.i = icmp slt i32 %retval.0.i.i.i, 1
  br i1 %cmp3.i.i, label %if.then4.i.i, label %_ZNSsD2Ev.exit

if.then4.i.i:                                     ; preds = %invoke.cont.i.i
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %11, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i) #12
  br label %_ZNSsD2Ev.exit

_ZNSsD2Ev.exit:                                   ; preds = %_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKSbIS2_St11char_traitsIS2_ESaIS2_EESA_.exit, %invoke.cont.i.i, %if.then4.i.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  br i1 %10, label %if.then, label %for.inc

if.then:                                          ; preds = %_ZNSsD2Ev.exit
  %15 = load %class.YAML_Element**, %class.YAML_Element*** %_M_start.i, align 8, !tbaa !9
  %add.ptr.i7 = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %15, i64 %i.015
  %16 = load %class.YAML_Element*, %class.YAML_Element** %add.ptr.i7, align 8, !tbaa !18
  br label %cleanup

for.inc:                                          ; preds = %_ZNSsD2Ev.exit
  %inc = add nuw i64 %i.015, 1
  %17 = load %class.YAML_Element**, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  %18 = load %class.YAML_Element**, %class.YAML_Element*** %_M_start.i, align 8, !tbaa !9
  %sub.ptr.lhs.cast.i = ptrtoint %class.YAML_Element** %17 to i64
  %sub.ptr.rhs.cast.i = ptrtoint %class.YAML_Element** %18 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 3
  %cmp = icmp ult i64 %inc, %sub.ptr.div.i
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !29

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %spec.select = phi %class.YAML_Element* [ %16, %if.then ], [ null, %entry ], [ null, %for.inc ]
  ret %class.YAML_Element* %spec.select
}

declare void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: uwtable
define dso_local void @_ZN12YAML_Element9printYAMLESs(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8 %agg.result, %class.YAML_Element* noundef nonnull align 8 dereferenceable(40) %this, %"class.std::basic_string"* noundef nonnull %space) local_unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i108 = alloca %"class.std::allocator", align 1
  %ref.tmp.i94 = alloca %"class.std::allocator", align 1
  %ref.tmp.i80 = alloca %"class.std::allocator", align 1
  %ref.tmp.i60 = alloca %"class.std::allocator", align 1
  %ref.tmp.i43 = alloca %"class.std::allocator", align 1
  %ref.tmp.i29 = alloca %"class.std::allocator", align 1
  %ref.tmp.i = alloca %"class.std::allocator", align 1
  %ref.tmp = alloca %"class.std::basic_string", align 8
  %ref.tmp2 = alloca %"class.std::basic_string", align 8
  %ref.tmp3 = alloca %"class.std::basic_string", align 8
  %ref.tmp12 = alloca %"class.std::basic_string", align 8
  %ref.tmp26 = alloca %"class.std::basic_string", align 8
  %ref.tmp27 = alloca %"class.std::basic_string", align 8
  %agg.tmp = alloca %"class.std::basic_string", align 8
  %0 = bitcast %"class.std::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  %1 = bitcast %"class.std::basic_string"* %ref.tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %2 = bitcast %"class.std::basic_string"* %ref.tmp3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #12
  %key = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 0
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp3, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %space)
  %call.i = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp3, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key)
          to label %_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_.exit unwind label %lpad.i

common.resume:                                    ; preds = %ehcleanup8, %ehcleanup48, %lpad.i
  %common.resume.op = phi { i8*, i32 } [ %3, %lpad.i ], [ %.pn14.pn, %ehcleanup48 ], [ %.pn.pn, %ehcleanup8 ]
  resume { i8*, i32 } %common.resume.op

lpad.i:                                           ; preds = %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp3) #12
  br label %common.resume

_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_.exit: ; preds = %entry
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %call2.i.i18 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 noundef 2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_.exit
  %_M_p.i.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp2, i64 0, i32 0, i32 0
  %_M_p2.i.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %call2.i.i18, i64 0, i32 0, i32 0
  %4 = load i8*, i8** %_M_p2.i.i.i, align 8, !tbaa !4, !noalias !30
  store i8* %4, i8** %_M_p.i.i.i, align 8, !tbaa !4, !alias.scope !30
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p2.i.i.i, align 8, !tbaa !13, !noalias !30
  %value = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 1
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %call.i1922 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp2, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %value)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %invoke.cont
  %_M_p.i.i.i20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  %_M_p2.i.i.i21 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %call.i1922, i64 0, i32 0, i32 0
  %5 = load i8*, i8** %_M_p2.i.i.i21, align 8, !tbaa !4, !noalias !33
  store i8* %5, i8** %_M_p.i.i.i20, align 8, !tbaa !4, !alias.scope !33
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p2.i.i.i21, align 8, !tbaa !13, !noalias !33
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %call2.i.i26 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 noundef 1)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %invoke.cont5
  %_M_p.i.i.i24 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %agg.result, i64 0, i32 0, i32 0
  %_M_p2.i.i.i25 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %call2.i.i26, i64 0, i32 0, i32 0
  %6 = load i8*, i8** %_M_p2.i.i.i25, align 8, !tbaa !4, !noalias !36
  store i8* %6, i8** %_M_p.i.i.i24, align 8, !tbaa !4, !alias.scope !36
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p2.i.i.i25, align 8, !tbaa !13, !noalias !36
  %7 = load i8*, i8** %_M_p.i.i.i20, align 8, !tbaa !13
  %arrayidx.i.i = getelementptr inbounds i8, i8* %7, i64 -24
  %8 = bitcast i8* %arrayidx.i.i to %"struct.std::basic_string<char>::_Rep"*
  %9 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %9) #12
  %cmp.not.i.i = icmp eq i8* %arrayidx.i.i, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i, label %_ZNSsD2Ev.exit, label %if.then.i.i, !prof !15

if.then.i.i:                                      ; preds = %invoke.cont7
  %_M_refcount.i.i = getelementptr inbounds i8, i8* %7, i64 -8
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
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %8, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i) #12
  br label %_ZNSsD2Ev.exit

_ZNSsD2Ev.exit:                                   ; preds = %invoke.cont7, %invoke.cont.i.i, %if.then4.i.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %9) #12
  %13 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !13
  %arrayidx.i.i31 = getelementptr inbounds i8, i8* %13, i64 -24
  %14 = bitcast i8* %arrayidx.i.i31 to %"struct.std::basic_string<char>::_Rep"*
  %15 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i29, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %15) #12
  %cmp.not.i.i32 = icmp eq i8* %arrayidx.i.i31, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i32, label %_ZNSsD2Ev.exit42, label %if.then.i.i34, !prof !15

if.then.i.i34:                                    ; preds = %_ZNSsD2Ev.exit
  %_M_refcount.i.i33 = getelementptr inbounds i8, i8* %13, i64 -8
  %16 = bitcast i8* %_M_refcount.i.i33 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i35, label %if.else.i.i.i37

if.then.i.i.i35:                                  ; preds = %if.then.i.i34
  %17 = atomicrmw volatile add i32* %16, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i40

if.else.i.i.i37:                                  ; preds = %if.then.i.i34
  %18 = load i32, i32* %16, align 8, !tbaa !16
  %add.i.i.i.i36 = add nsw i32 %18, -1
  store i32 %add.i.i.i.i36, i32* %16, align 8, !tbaa !16
  br label %invoke.cont.i.i40

invoke.cont.i.i40:                                ; preds = %if.else.i.i.i37, %if.then.i.i.i35
  %retval.0.i.i.i38 = phi i32 [ %17, %if.then.i.i.i35 ], [ %18, %if.else.i.i.i37 ]
  %cmp3.i.i39 = icmp slt i32 %retval.0.i.i.i38, 1
  br i1 %cmp3.i.i39, label %if.then4.i.i41, label %_ZNSsD2Ev.exit42

if.then4.i.i41:                                   ; preds = %invoke.cont.i.i40
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %14, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i29) #12
  br label %_ZNSsD2Ev.exit42

_ZNSsD2Ev.exit42:                                 ; preds = %_ZNSsD2Ev.exit, %invoke.cont.i.i40, %if.then4.i.i41
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %15) #12
  %_M_p.i.i.i44 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp3, i64 0, i32 0, i32 0
  %19 = load i8*, i8** %_M_p.i.i.i44, align 8, !tbaa !13
  %arrayidx.i.i45 = getelementptr inbounds i8, i8* %19, i64 -24
  %20 = bitcast i8* %arrayidx.i.i45 to %"struct.std::basic_string<char>::_Rep"*
  %21 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i43, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %21) #12
  %cmp.not.i.i46 = icmp eq i8* %arrayidx.i.i45, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i46, label %_ZNSsD2Ev.exit56, label %if.then.i.i48, !prof !15

if.then.i.i48:                                    ; preds = %_ZNSsD2Ev.exit42
  %_M_refcount.i.i47 = getelementptr inbounds i8, i8* %19, i64 -8
  %22 = bitcast i8* %_M_refcount.i.i47 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i49, label %if.else.i.i.i51

if.then.i.i.i49:                                  ; preds = %if.then.i.i48
  %23 = atomicrmw volatile add i32* %22, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i54

if.else.i.i.i51:                                  ; preds = %if.then.i.i48
  %24 = load i32, i32* %22, align 8, !tbaa !16
  %add.i.i.i.i50 = add nsw i32 %24, -1
  store i32 %add.i.i.i.i50, i32* %22, align 8, !tbaa !16
  br label %invoke.cont.i.i54

invoke.cont.i.i54:                                ; preds = %if.else.i.i.i51, %if.then.i.i.i49
  %retval.0.i.i.i52 = phi i32 [ %23, %if.then.i.i.i49 ], [ %24, %if.else.i.i.i51 ]
  %cmp3.i.i53 = icmp slt i32 %retval.0.i.i.i52, 1
  br i1 %cmp3.i.i53, label %if.then4.i.i55, label %_ZNSsD2Ev.exit56

if.then4.i.i55:                                   ; preds = %invoke.cont.i.i54
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %20, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i43) #12
  br label %_ZNSsD2Ev.exit56

_ZNSsD2Ev.exit56:                                 ; preds = %_ZNSsD2Ev.exit42, %invoke.cont.i.i54, %if.then4.i.i55
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %21) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  %25 = bitcast %"class.std::basic_string"* %ref.tmp12 to i8*
  %_M_p.i.i.i61 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp12, i64 0, i32 0, i32 0
  %26 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i60, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #12
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp12, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %space)
          to label %.noexc unwind label %lpad13

lpad:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_.exit
  %27 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup8

lpad4:                                            ; preds = %invoke.cont
  %28 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

lpad6:                                            ; preds = %invoke.cont5
  %29 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp) #12
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad6, %lpad4
  %.pn = phi { i8*, i32 } [ %29, %lpad6 ], [ %28, %lpad4 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp2) #12
  br label %ehcleanup8

ehcleanup8:                                       ; preds = %ehcleanup, %lpad
  %.pn.pn = phi { i8*, i32 } [ %.pn, %ehcleanup ], [ %27, %lpad ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp3) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  br label %common.resume

.noexc:                                           ; preds = %_ZNSsD2Ev.exit56
  %call2.i1.i = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef 1)
          to label %invoke.cont14 unwind label %lpad.i58

lpad.i58:                                         ; preds = %.noexc.1, %.noexc
  %30 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp12) #12
  br label %ehcleanup18

invoke.cont14:                                    ; preds = %.noexc
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %space, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp12)
          to label %invoke.cont16 unwind label %lpad15

invoke.cont16:                                    ; preds = %invoke.cont14
  %31 = load i8*, i8** %_M_p.i.i.i61, align 8, !tbaa !13
  %arrayidx.i.i62 = getelementptr inbounds i8, i8* %31, i64 -24
  %32 = bitcast i8* %arrayidx.i.i62 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %26) #12
  %cmp.not.i.i63 = icmp eq i8* %arrayidx.i.i62, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i63, label %_ZNSsD2Ev.exit73, label %if.then.i.i65, !prof !15

if.then.i.i65:                                    ; preds = %invoke.cont16
  %_M_refcount.i.i64 = getelementptr inbounds i8, i8* %31, i64 -8
  %33 = bitcast i8* %_M_refcount.i.i64 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i66, label %if.else.i.i.i68

if.then.i.i.i66:                                  ; preds = %if.then.i.i65
  %34 = atomicrmw volatile add i32* %33, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i71

if.else.i.i.i68:                                  ; preds = %if.then.i.i65
  %35 = load i32, i32* %33, align 8, !tbaa !16
  %add.i.i.i.i67 = add nsw i32 %35, -1
  store i32 %add.i.i.i.i67, i32* %33, align 8, !tbaa !16
  br label %invoke.cont.i.i71

invoke.cont.i.i71:                                ; preds = %if.else.i.i.i68, %if.then.i.i.i66
  %retval.0.i.i.i69 = phi i32 [ %34, %if.then.i.i.i66 ], [ %35, %if.else.i.i.i68 ]
  %cmp3.i.i70 = icmp slt i32 %retval.0.i.i.i69, 1
  br i1 %cmp3.i.i70, label %if.then4.i.i72, label %_ZNSsD2Ev.exit73

if.then4.i.i72:                                   ; preds = %invoke.cont.i.i71
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %32, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i60) #12
  br label %_ZNSsD2Ev.exit73

_ZNSsD2Ev.exit73:                                 ; preds = %invoke.cont16, %invoke.cont.i.i71, %if.then4.i.i72
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %26) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #12
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #12
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp12, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %space)
          to label %.noexc.1 unwind label %lpad13

.noexc.1:                                         ; preds = %_ZNSsD2Ev.exit73
  %call2.i1.i.1 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 noundef 1)
          to label %invoke.cont14.1 unwind label %lpad.i58

invoke.cont14.1:                                  ; preds = %.noexc.1
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %space, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp12)
          to label %invoke.cont16.1 unwind label %lpad15

invoke.cont16.1:                                  ; preds = %invoke.cont14.1
  %36 = load i8*, i8** %_M_p.i.i.i61, align 8, !tbaa !13
  %arrayidx.i.i62.1 = getelementptr inbounds i8, i8* %36, i64 -24
  %37 = bitcast i8* %arrayidx.i.i62.1 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %26) #12
  %cmp.not.i.i63.1 = icmp eq i8* %arrayidx.i.i62.1, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i63.1, label %_ZNSsD2Ev.exit73.1, label %if.then.i.i65.1, !prof !15

if.then.i.i65.1:                                  ; preds = %invoke.cont16.1
  %_M_refcount.i.i64.1 = getelementptr inbounds i8, i8* %36, i64 -8
  %38 = bitcast i8* %_M_refcount.i.i64.1 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i66.1, label %if.else.i.i.i68.1

if.else.i.i.i68.1:                                ; preds = %if.then.i.i65.1
  %39 = load i32, i32* %38, align 8, !tbaa !16
  %add.i.i.i.i67.1 = add nsw i32 %39, -1
  store i32 %add.i.i.i.i67.1, i32* %38, align 8, !tbaa !16
  br label %invoke.cont.i.i71.1

if.then.i.i.i66.1:                                ; preds = %if.then.i.i65.1
  %40 = atomicrmw volatile add i32* %38, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i71.1

invoke.cont.i.i71.1:                              ; preds = %if.then.i.i.i66.1, %if.else.i.i.i68.1
  %retval.0.i.i.i69.1 = phi i32 [ %40, %if.then.i.i.i66.1 ], [ %39, %if.else.i.i.i68.1 ]
  %cmp3.i.i70.1 = icmp slt i32 %retval.0.i.i.i69.1, 1
  br i1 %cmp3.i.i70.1, label %if.then4.i.i72.1, label %_ZNSsD2Ev.exit73.1

if.then4.i.i72.1:                                 ; preds = %invoke.cont.i.i71.1
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %37, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i60) #12
  br label %_ZNSsD2Ev.exit73.1

_ZNSsD2Ev.exit73.1:                               ; preds = %if.then4.i.i72.1, %invoke.cont.i.i71.1, %invoke.cont16.1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %26) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #12
  %_M_finish.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 1
  %_M_start.i = getelementptr inbounds %class.YAML_Element, %class.YAML_Element* %this, i64 0, i32 2, i32 0, i32 0, i32 0
  %41 = bitcast %"class.std::basic_string"* %ref.tmp26 to i8*
  %42 = bitcast %"class.std::basic_string"* %ref.tmp27 to i8*
  %_M_p.i.i.i75 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp26, i64 0, i32 0, i32 0
  %43 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i80, i64 0, i32 0
  %_M_p.i.i.i95 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp27, i64 0, i32 0, i32 0
  %44 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i94, i64 0, i32 0
  %_M_p.i.i.i109 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %agg.tmp, i64 0, i32 0, i32 0
  %45 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i108, i64 0, i32 0
  %46 = load %class.YAML_Element**, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  %47 = load %class.YAML_Element**, %class.YAML_Element*** %_M_start.i, align 8, !tbaa !9
  %cmp23137.not = icmp eq %class.YAML_Element** %46, %47
  br i1 %cmp23137.not, label %nrvo.skipdtor, label %for.body25

lpad13:                                           ; preds = %_ZNSsD2Ev.exit73, %_ZNSsD2Ev.exit56
  %48 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup18

lpad15:                                           ; preds = %invoke.cont14.1, %invoke.cont14
  %49 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp12) #12
  br label %ehcleanup18

ehcleanup18:                                      ; preds = %lpad13, %lpad.i58, %lpad15
  %.pn14 = phi { i8*, i32 } [ %49, %lpad15 ], [ %48, %lpad13 ], [ %30, %lpad.i58 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #12
  br label %ehcleanup48

for.body25:                                       ; preds = %_ZNSsD2Ev.exit73.1, %_ZNSsD2Ev.exit121
  %50 = phi %class.YAML_Element** [ %71, %_ZNSsD2Ev.exit121 ], [ %47, %_ZNSsD2Ev.exit73.1 ]
  %i20.0138 = phi i64 [ %inc45, %_ZNSsD2Ev.exit121 ], [ 0, %_ZNSsD2Ev.exit73.1 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #12
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %42) #12
  %add.ptr.i = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %50, i64 %i20.0138
  %51 = load %class.YAML_Element*, %class.YAML_Element** %add.ptr.i, align 8, !tbaa !18
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %agg.tmp, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %space)
          to label %invoke.cont31 unwind label %lpad30

invoke.cont31:                                    ; preds = %for.body25
  invoke void @_ZN12YAML_Element9printYAMLESs(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %ref.tmp27, %class.YAML_Element* noundef nonnull align 8 dereferenceable(40) %51, %"class.std::basic_string"* noundef nonnull %agg.tmp)
          to label %invoke.cont33 unwind label %lpad32

invoke.cont33:                                    ; preds = %invoke.cont31
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %52 = load i8*, i8** %_M_p.i.i.i24, align 8, !tbaa !13, !noalias !39
  %arrayidx.i.i.i.i = getelementptr inbounds i8, i8* %52, i64 -24
  %_M_length.i.i.i = bitcast i8* %arrayidx.i.i.i.i to i64*
  %53 = load i64, i64* %_M_length.i.i.i, align 8, !tbaa !27, !noalias !39
  %call4.i.i.i77 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6insertEmPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp27, i64 noundef 0, i8* noundef nonnull %52, i64 noundef %53)
          to label %invoke.cont35 unwind label %lpad34

invoke.cont35:                                    ; preds = %invoke.cont33
  %_M_p2.i.i.i76 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %call4.i.i.i77, i64 0, i32 0, i32 0
  %54 = load i8*, i8** %_M_p2.i.i.i76, align 8, !tbaa !4, !noalias !39
  store i8* %54, i8** %_M_p.i.i.i75, align 8, !tbaa !4, !alias.scope !39
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p2.i.i.i76, align 8, !tbaa !13, !noalias !39
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %agg.result, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp26)
          to label %invoke.cont37 unwind label %lpad36

invoke.cont37:                                    ; preds = %invoke.cont35
  %55 = load i8*, i8** %_M_p.i.i.i75, align 8, !tbaa !13
  %arrayidx.i.i82 = getelementptr inbounds i8, i8* %55, i64 -24
  %56 = bitcast i8* %arrayidx.i.i82 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %43) #12
  %cmp.not.i.i83 = icmp eq i8* %arrayidx.i.i82, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i83, label %_ZNSsD2Ev.exit93, label %if.then.i.i85, !prof !15

if.then.i.i85:                                    ; preds = %invoke.cont37
  %_M_refcount.i.i84 = getelementptr inbounds i8, i8* %55, i64 -8
  %57 = bitcast i8* %_M_refcount.i.i84 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i86, label %if.else.i.i.i88

if.then.i.i.i86:                                  ; preds = %if.then.i.i85
  %58 = atomicrmw volatile add i32* %57, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i91

if.else.i.i.i88:                                  ; preds = %if.then.i.i85
  %59 = load i32, i32* %57, align 8, !tbaa !16
  %add.i.i.i.i87 = add nsw i32 %59, -1
  store i32 %add.i.i.i.i87, i32* %57, align 8, !tbaa !16
  br label %invoke.cont.i.i91

invoke.cont.i.i91:                                ; preds = %if.else.i.i.i88, %if.then.i.i.i86
  %retval.0.i.i.i89 = phi i32 [ %58, %if.then.i.i.i86 ], [ %59, %if.else.i.i.i88 ]
  %cmp3.i.i90 = icmp slt i32 %retval.0.i.i.i89, 1
  br i1 %cmp3.i.i90, label %if.then4.i.i92, label %_ZNSsD2Ev.exit93

if.then4.i.i92:                                   ; preds = %invoke.cont.i.i91
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %56, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i80) #12
  br label %_ZNSsD2Ev.exit93

_ZNSsD2Ev.exit93:                                 ; preds = %invoke.cont37, %invoke.cont.i.i91, %if.then4.i.i92
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %43) #12
  %60 = load i8*, i8** %_M_p.i.i.i95, align 8, !tbaa !13
  %arrayidx.i.i96 = getelementptr inbounds i8, i8* %60, i64 -24
  %61 = bitcast i8* %arrayidx.i.i96 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %44) #12
  %cmp.not.i.i97 = icmp eq i8* %arrayidx.i.i96, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i97, label %_ZNSsD2Ev.exit107, label %if.then.i.i99, !prof !15

if.then.i.i99:                                    ; preds = %_ZNSsD2Ev.exit93
  %_M_refcount.i.i98 = getelementptr inbounds i8, i8* %60, i64 -8
  %62 = bitcast i8* %_M_refcount.i.i98 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i100, label %if.else.i.i.i102

if.then.i.i.i100:                                 ; preds = %if.then.i.i99
  %63 = atomicrmw volatile add i32* %62, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i105

if.else.i.i.i102:                                 ; preds = %if.then.i.i99
  %64 = load i32, i32* %62, align 8, !tbaa !16
  %add.i.i.i.i101 = add nsw i32 %64, -1
  store i32 %add.i.i.i.i101, i32* %62, align 8, !tbaa !16
  br label %invoke.cont.i.i105

invoke.cont.i.i105:                               ; preds = %if.else.i.i.i102, %if.then.i.i.i100
  %retval.0.i.i.i103 = phi i32 [ %63, %if.then.i.i.i100 ], [ %64, %if.else.i.i.i102 ]
  %cmp3.i.i104 = icmp slt i32 %retval.0.i.i.i103, 1
  br i1 %cmp3.i.i104, label %if.then4.i.i106, label %_ZNSsD2Ev.exit107

if.then4.i.i106:                                  ; preds = %invoke.cont.i.i105
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %61, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i94) #12
  br label %_ZNSsD2Ev.exit107

_ZNSsD2Ev.exit107:                                ; preds = %_ZNSsD2Ev.exit93, %invoke.cont.i.i105, %if.then4.i.i106
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %44) #12
  %65 = load i8*, i8** %_M_p.i.i.i109, align 8, !tbaa !13
  %arrayidx.i.i110 = getelementptr inbounds i8, i8* %65, i64 -24
  %66 = bitcast i8* %arrayidx.i.i110 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %45) #12
  %cmp.not.i.i111 = icmp eq i8* %arrayidx.i.i110, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i111, label %_ZNSsD2Ev.exit121, label %if.then.i.i113, !prof !15

if.then.i.i113:                                   ; preds = %_ZNSsD2Ev.exit107
  %_M_refcount.i.i112 = getelementptr inbounds i8, i8* %65, i64 -8
  %67 = bitcast i8* %_M_refcount.i.i112 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i114, label %if.else.i.i.i116

if.then.i.i.i114:                                 ; preds = %if.then.i.i113
  %68 = atomicrmw volatile add i32* %67, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i119

if.else.i.i.i116:                                 ; preds = %if.then.i.i113
  %69 = load i32, i32* %67, align 8, !tbaa !16
  %add.i.i.i.i115 = add nsw i32 %69, -1
  store i32 %add.i.i.i.i115, i32* %67, align 8, !tbaa !16
  br label %invoke.cont.i.i119

invoke.cont.i.i119:                               ; preds = %if.else.i.i.i116, %if.then.i.i.i114
  %retval.0.i.i.i117 = phi i32 [ %68, %if.then.i.i.i114 ], [ %69, %if.else.i.i.i116 ]
  %cmp3.i.i118 = icmp slt i32 %retval.0.i.i.i117, 1
  br i1 %cmp3.i.i118, label %if.then4.i.i120, label %_ZNSsD2Ev.exit121

if.then4.i.i120:                                  ; preds = %invoke.cont.i.i119
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %66, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i108) #12
  br label %_ZNSsD2Ev.exit121

_ZNSsD2Ev.exit121:                                ; preds = %_ZNSsD2Ev.exit107, %invoke.cont.i.i119, %if.then4.i.i120
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %45) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #12
  %inc45 = add nuw i64 %i20.0138, 1
  %70 = load %class.YAML_Element**, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !12
  %71 = load %class.YAML_Element**, %class.YAML_Element*** %_M_start.i, align 8, !tbaa !9
  %sub.ptr.lhs.cast.i = ptrtoint %class.YAML_Element** %70 to i64
  %sub.ptr.rhs.cast.i = ptrtoint %class.YAML_Element** %71 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 3
  %cmp23 = icmp ult i64 %inc45, %sub.ptr.div.i
  br i1 %cmp23, label %for.body25, label %nrvo.skipdtor, !llvm.loop !42

lpad30:                                           ; preds = %for.body25
  %72 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup42

lpad32:                                           ; preds = %invoke.cont31
  %73 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup41

lpad34:                                           ; preds = %invoke.cont33
  %74 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup40

lpad36:                                           ; preds = %invoke.cont35
  %75 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp26) #12
  br label %ehcleanup40

ehcleanup40:                                      ; preds = %lpad36, %lpad34
  %.pn10 = phi { i8*, i32 } [ %75, %lpad36 ], [ %74, %lpad34 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp27) #12
  br label %ehcleanup41

ehcleanup41:                                      ; preds = %ehcleanup40, %lpad32
  %.pn10.pn = phi { i8*, i32 } [ %.pn10, %ehcleanup40 ], [ %73, %lpad32 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %agg.tmp) #12
  br label %ehcleanup42

ehcleanup42:                                      ; preds = %ehcleanup41, %lpad30
  %.pn10.pn.pn = phi { i8*, i32 } [ %.pn10.pn, %ehcleanup41 ], [ %72, %lpad30 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #12
  br label %ehcleanup48

nrvo.skipdtor:                                    ; preds = %_ZNSsD2Ev.exit121, %_ZNSsD2Ev.exit73.1
  ret void

ehcleanup48:                                      ; preds = %ehcleanup42, %ehcleanup18
  %.pn14.pn = phi { i8*, i32 } [ %.pn14, %ehcleanup18 ], [ %.pn10.pn.pn, %ehcleanup42 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %agg.result) #12
  br label %common.resume
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i8* noundef, i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare void @_ZNSs4swapERSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6insertEmPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
declare void @_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_stringstream"* noundef nonnull align 8 dereferenceable(104), i32 noundef signext) unnamed_addr #3 align 2

; Function Attrs: nounwind uwtable
declare void @_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_stringstream"* noundef nonnull align 8 dereferenceable(104)) unnamed_addr #4 align 2

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(%"class.std::locale"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* noundef nonnull align 8 dereferenceable(216)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: uwtable
declare void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8, %"class.std::basic_stringbuf"* noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i32 noundef signext) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIxEERSoT_(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_YAML_Element.cpp() #3 section ".text.startup" {
entry:
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %0 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #12
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #11

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #4 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #6 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #7 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!nvvm.annotations = !{}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0 (git@github.com:koparasy/ML-LLVM.git 57f6b002589ddbfa715ddd9ea752700e004464bf)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"_ZTSNSs12_Alloc_hiderE", !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"_ZTSSt12_Vector_baseIP12YAML_ElementSaIS1_EE", !11, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseIP12YAML_ElementSaIS1_EE12_Vector_implE", !6, i64 0, !6, i64 8, !6, i64 16}
!12 = !{!10, !6, i64 8}
!13 = !{!14, !6, i64 0}
!14 = !{!"_ZTSSs", !5, i64 0}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !7, i64 0}
!18 = !{!6, !6, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!10, !6, i64 16}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !8, i64 0}
!24 = !{!25, !26, i64 8}
!25 = !{!"_ZTSSi", !26, i64 8}
!26 = !{!"long", !7, i64 0}
!27 = !{!28, !26, i64 0}
!28 = !{!"_ZTSNSs9_Rep_baseE", !26, i64 0, !26, i64 8, !17, i64 16}
!29 = distinct !{!29, !20}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_: %agg.result"}
!32 = distinct !{!32, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_RKS6_: %agg.result"}
!35 = distinct !{!35, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_RKS6_"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_: %agg.result"}
!38 = distinct !{!38, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_OS6_: %agg.result"}
!41 = distinct !{!41, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_OS6_"}
!42 = distinct !{!42, !20}

; __CLANG_OFFLOAD_BUNDLE____END__ host-powerpc64le-unknown-linux-gnu
