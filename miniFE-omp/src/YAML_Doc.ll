
; __CLANG_OFFLOAD_BUNDLE____START__ openmp-nvptx64-nvidia-cuda
; ModuleID = 'YAML_Doc.cpp'
source_filename = "YAML_Doc.cpp"
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
; ModuleID = '/var/tmp/YAML_Doc-ead0ee.bc'
source_filename = "YAML_Doc.cpp"
target datalayout = "e-m:e-i64:64-n32:64-S128-v256:256:256-v512:512:512"
target triple = "powerpc64le-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.YAML_Doc = type { %class.YAML_Element, %"class.std::basic_string", %"class.std::basic_string", %"class.std::basic_string", %"class.std::basic_string" }
%class.YAML_Element = type { %"class.std::basic_string", %"class.std::basic_string", %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<YAML_Element *, std::allocator<YAML_Element *>>::_Vector_impl" }
%"struct.std::_Vector_base<YAML_Element *, std::allocator<YAML_Element *>>::_Vector_impl" = type { %class.YAML_Element**, %class.YAML_Element**, %class.YAML_Element** }
%"class.std::basic_string" = type { %"struct.std::basic_string<char>::_Alloc_hider" }
%"struct.std::basic_string<char>::_Alloc_hider" = type { i8* }
%"struct.std::basic_string<char>::_Rep" = type { %"struct.std::basic_string<char>::_Rep_base" }
%"struct.std::basic_string<char>::_Rep_base" = type { i64, i64, i32 }
%"class.std::allocator" = type { i8 }
%"class.std::basic_ofstream" = type { %"class.std::basic_ostream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { i32 (...)** }
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
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZNSs4_Rep20_S_empty_rep_storageE = external global [0 x i64], align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Mini-Application Name: \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Mini-Application Version: \00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%04d:%02d:%02d-%02d:%02d:%02d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c".yaml\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"mkdir \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_YAML_Doc.cpp, i8* null }]

@_ZN8YAML_DocC1ERKSsS1_S1_S1_ = dso_local unnamed_addr alias void (%class.YAML_Doc*, %"class.std::basic_string"*, %"class.std::basic_string"*, %"class.std::basic_string"*, %"class.std::basic_string"*), void (%class.YAML_Doc*, %"class.std::basic_string"*, %"class.std::basic_string"*, %"class.std::basic_string"*, %"class.std::basic_string"*)* @_ZN8YAML_DocC2ERKSsS1_S1_S1_
@_ZN8YAML_DocD1Ev = dso_local unnamed_addr alias void (%class.YAML_Doc*), void (%class.YAML_Doc*)* @_ZN8YAML_DocD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_ZN8YAML_DocC2ERKSsS1_S1_S1_(%class.YAML_Doc* noundef nonnull align 8 dereferenceable(72) %this, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %miniApp_Name, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %miniApp_Version, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %destination_Directory, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %destination_FileName) unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 0
  %key.i = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 0, i32 0
  %_M_p.i.i.i = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p.i.i.i, align 8, !tbaa !4
  %value.i = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 0, i32 1
  %_M_p.i.i1.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %value.i, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p.i.i1.i, align 8, !tbaa !4
  %children.i = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 0, i32 2
  %1 = bitcast %"class.std::vector"* %children.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false) #11
  %call2.i.i2.i = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key.i, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 noundef 0)
          to label %invoke.cont4.i unwind label %lpad3.i

invoke.cont4.i:                                   ; preds = %entry
  %call2.i.i4.i = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %value.i, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 noundef 0)
          to label %_ZN12YAML_ElementC2Ev.exit unwind label %lpad3.i

lpad3.i:                                          ; preds = %invoke.cont4.i, %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %_M_start.i.i.i = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %children.i, i64 0, i32 0, i32 0, i32 0
  %3 = load %class.YAML_Element**, %class.YAML_Element*** %_M_start.i.i.i, align 8, !tbaa !9
  %tobool.not.i.i.i.i = icmp eq %class.YAML_Element** %3, null
  br i1 %tobool.not.i.i.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad3.i
  %4 = bitcast %class.YAML_Element** %3 to i8*
  tail call void @_ZdlPv(i8* noundef nonnull %4) #11
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i

common.resume:                                    ; preds = %lpad9, %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i
  %common.resume.op = phi { i8*, i32 } [ %2, %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i ], [ %5, %lpad9 ]
  resume { i8*, i32 } %common.resume.op

_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i:  ; preds = %if.then.i.i.i.i, %lpad3.i
  tail call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %value.i) #11
  tail call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %key.i) #11
  br label %common.resume

_ZN12YAML_ElementC2Ev.exit:                       ; preds = %invoke.cont4.i
  %miniAppName = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 1
  %_M_p.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %miniAppName, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p.i.i, align 8, !tbaa !4
  %miniAppVersion = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 2
  %_M_p.i.i1 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %miniAppVersion, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p.i.i1, align 8, !tbaa !4
  %destinationDirectory = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 3
  %_M_p.i.i2 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %destinationDirectory, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p.i.i2, align 8, !tbaa !4
  %destinationFileName = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 4
  %_M_p.i.i3 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %destinationFileName, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p.i.i3, align 8, !tbaa !4
  %call.i4 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %miniAppName, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %miniApp_Name)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %_ZN12YAML_ElementC2Ev.exit
  %call.i5 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %miniAppVersion, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %miniApp_Version)
          to label %invoke.cont12 unwind label %lpad9

invoke.cont12:                                    ; preds = %invoke.cont10
  %call.i7 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %destinationDirectory, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %destination_Directory)
          to label %invoke.cont15 unwind label %lpad9

invoke.cont15:                                    ; preds = %invoke.cont12
  %call.i9 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %destinationFileName, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %destination_FileName)
          to label %invoke.cont18 unwind label %lpad9

invoke.cont18:                                    ; preds = %invoke.cont15
  ret void

lpad9:                                            ; preds = %invoke.cont15, %invoke.cont12, %invoke.cont10, %_ZN12YAML_ElementC2Ev.exit
  %5 = landingpad { i8*, i32 }
          cleanup
  tail call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %destinationFileName) #11
  tail call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %destinationDirectory) #11
  tail call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %miniAppVersion) #11
  tail call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %miniAppName) #11
  tail call void @_ZN12YAML_ElementD2Ev(%class.YAML_Element* noundef nonnull align 8 dereferenceable(40) %0) #11
  br label %common.resume
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind uwtable
declare void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4 align 2

; Function Attrs: nounwind
declare void @_ZN12YAML_ElementD2Ev(%class.YAML_Element* noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: nounwind
declare extern_weak noundef signext i32 @__pthread_key_create(i32* noundef, void (i8*)* noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @_ZN8YAML_DocD2Ev(%class.YAML_Doc* noundef nonnull align 8 dereferenceable(72) %this) unnamed_addr #4 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %ref.tmp.i29 = alloca %"class.std::allocator", align 1
  %ref.tmp.i15 = alloca %"class.std::allocator", align 1
  %ref.tmp.i1 = alloca %"class.std::allocator", align 1
  %ref.tmp.i = alloca %"class.std::allocator", align 1
  %_M_p.i.i.i = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 4, i32 0, i32 0
  %0 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i = getelementptr inbounds i8, i8* %0, i64 -24
  %1 = bitcast i8* %arrayidx.i.i to %"struct.std::basic_string<char>::_Rep"*
  %2 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %2) #11
  %cmp.not.i.i = icmp eq i8* %arrayidx.i.i, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i, label %_ZNSsD2Ev.exit, label %if.then.i.i, !prof !14

if.then.i.i:                                      ; preds = %entry
  %_M_refcount.i.i = getelementptr inbounds i8, i8* %0, i64 -8
  %3 = bitcast i8* %_M_refcount.i.i to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  %4 = atomicrmw volatile add i32* %3, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  %5 = load i32, i32* %3, align 8, !tbaa !15
  %add.i.i.i.i = add nsw i32 %5, -1
  store i32 %add.i.i.i.i, i32* %3, align 8, !tbaa !15
  br label %invoke.cont.i.i

invoke.cont.i.i:                                  ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %4, %if.then.i.i.i ], [ %5, %if.else.i.i.i ]
  %cmp3.i.i = icmp slt i32 %retval.0.i.i.i, 1
  br i1 %cmp3.i.i, label %if.then4.i.i, label %_ZNSsD2Ev.exit

if.then4.i.i:                                     ; preds = %invoke.cont.i.i
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %1, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i) #11
  br label %_ZNSsD2Ev.exit

_ZNSsD2Ev.exit:                                   ; preds = %entry, %invoke.cont.i.i, %if.then4.i.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %2) #11
  %_M_p.i.i.i2 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 3, i32 0, i32 0
  %6 = load i8*, i8** %_M_p.i.i.i2, align 8, !tbaa !12
  %arrayidx.i.i3 = getelementptr inbounds i8, i8* %6, i64 -24
  %7 = bitcast i8* %arrayidx.i.i3 to %"struct.std::basic_string<char>::_Rep"*
  %8 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i1, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %8) #11
  %cmp.not.i.i4 = icmp eq i8* %arrayidx.i.i3, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i4, label %_ZNSsD2Ev.exit14, label %if.then.i.i6, !prof !14

if.then.i.i6:                                     ; preds = %_ZNSsD2Ev.exit
  %_M_refcount.i.i5 = getelementptr inbounds i8, i8* %6, i64 -8
  %9 = bitcast i8* %_M_refcount.i.i5 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i7, label %if.else.i.i.i9

if.then.i.i.i7:                                   ; preds = %if.then.i.i6
  %10 = atomicrmw volatile add i32* %9, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i12

if.else.i.i.i9:                                   ; preds = %if.then.i.i6
  %11 = load i32, i32* %9, align 8, !tbaa !15
  %add.i.i.i.i8 = add nsw i32 %11, -1
  store i32 %add.i.i.i.i8, i32* %9, align 8, !tbaa !15
  br label %invoke.cont.i.i12

invoke.cont.i.i12:                                ; preds = %if.else.i.i.i9, %if.then.i.i.i7
  %retval.0.i.i.i10 = phi i32 [ %10, %if.then.i.i.i7 ], [ %11, %if.else.i.i.i9 ]
  %cmp3.i.i11 = icmp slt i32 %retval.0.i.i.i10, 1
  br i1 %cmp3.i.i11, label %if.then4.i.i13, label %_ZNSsD2Ev.exit14

if.then4.i.i13:                                   ; preds = %invoke.cont.i.i12
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %7, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i1) #11
  br label %_ZNSsD2Ev.exit14

_ZNSsD2Ev.exit14:                                 ; preds = %_ZNSsD2Ev.exit, %invoke.cont.i.i12, %if.then4.i.i13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %8) #11
  %_M_p.i.i.i16 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 2, i32 0, i32 0
  %12 = load i8*, i8** %_M_p.i.i.i16, align 8, !tbaa !12
  %arrayidx.i.i17 = getelementptr inbounds i8, i8* %12, i64 -24
  %13 = bitcast i8* %arrayidx.i.i17 to %"struct.std::basic_string<char>::_Rep"*
  %14 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i15, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %14) #11
  %cmp.not.i.i18 = icmp eq i8* %arrayidx.i.i17, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i18, label %_ZNSsD2Ev.exit28, label %if.then.i.i20, !prof !14

if.then.i.i20:                                    ; preds = %_ZNSsD2Ev.exit14
  %_M_refcount.i.i19 = getelementptr inbounds i8, i8* %12, i64 -8
  %15 = bitcast i8* %_M_refcount.i.i19 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i21, label %if.else.i.i.i23

if.then.i.i.i21:                                  ; preds = %if.then.i.i20
  %16 = atomicrmw volatile add i32* %15, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i26

if.else.i.i.i23:                                  ; preds = %if.then.i.i20
  %17 = load i32, i32* %15, align 8, !tbaa !15
  %add.i.i.i.i22 = add nsw i32 %17, -1
  store i32 %add.i.i.i.i22, i32* %15, align 8, !tbaa !15
  br label %invoke.cont.i.i26

invoke.cont.i.i26:                                ; preds = %if.else.i.i.i23, %if.then.i.i.i21
  %retval.0.i.i.i24 = phi i32 [ %16, %if.then.i.i.i21 ], [ %17, %if.else.i.i.i23 ]
  %cmp3.i.i25 = icmp slt i32 %retval.0.i.i.i24, 1
  br i1 %cmp3.i.i25, label %if.then4.i.i27, label %_ZNSsD2Ev.exit28

if.then4.i.i27:                                   ; preds = %invoke.cont.i.i26
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %13, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i15) #11
  br label %_ZNSsD2Ev.exit28

_ZNSsD2Ev.exit28:                                 ; preds = %_ZNSsD2Ev.exit14, %invoke.cont.i.i26, %if.then4.i.i27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %14) #11
  %_M_p.i.i.i30 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 1, i32 0, i32 0
  %18 = load i8*, i8** %_M_p.i.i.i30, align 8, !tbaa !12
  %arrayidx.i.i31 = getelementptr inbounds i8, i8* %18, i64 -24
  %19 = bitcast i8* %arrayidx.i.i31 to %"struct.std::basic_string<char>::_Rep"*
  %20 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i29, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %20) #11
  %cmp.not.i.i32 = icmp eq i8* %arrayidx.i.i31, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i32, label %_ZNSsD2Ev.exit42, label %if.then.i.i34, !prof !14

if.then.i.i34:                                    ; preds = %_ZNSsD2Ev.exit28
  %_M_refcount.i.i33 = getelementptr inbounds i8, i8* %18, i64 -8
  %21 = bitcast i8* %_M_refcount.i.i33 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i35, label %if.else.i.i.i37

if.then.i.i.i35:                                  ; preds = %if.then.i.i34
  %22 = atomicrmw volatile add i32* %21, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i40

if.else.i.i.i37:                                  ; preds = %if.then.i.i34
  %23 = load i32, i32* %21, align 8, !tbaa !15
  %add.i.i.i.i36 = add nsw i32 %23, -1
  store i32 %add.i.i.i.i36, i32* %21, align 8, !tbaa !15
  br label %invoke.cont.i.i40

invoke.cont.i.i40:                                ; preds = %if.else.i.i.i37, %if.then.i.i.i35
  %retval.0.i.i.i38 = phi i32 [ %22, %if.then.i.i.i35 ], [ %23, %if.else.i.i.i37 ]
  %cmp3.i.i39 = icmp slt i32 %retval.0.i.i.i38, 1
  br i1 %cmp3.i.i39, label %if.then4.i.i41, label %_ZNSsD2Ev.exit42

if.then4.i.i41:                                   ; preds = %invoke.cont.i.i40
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %19, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i29) #11
  br label %_ZNSsD2Ev.exit42

_ZNSsD2Ev.exit42:                                 ; preds = %_ZNSsD2Ev.exit28, %invoke.cont.i.i40, %if.then4.i.i41
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %20) #11
  %24 = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 0
  call void @_ZN12YAML_ElementD2Ev(%class.YAML_Element* noundef nonnull align 8 dereferenceable(40) %24) #11
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN8YAML_Doc12generateYAMLEv(%"class.std::basic_string"* noalias nonnull sret(%"class.std::basic_string") align 8 %agg.result, %class.YAML_Doc* noundef nonnull align 8 dereferenceable(72) %this) local_unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i416 = alloca %"class.std::allocator", align 1
  %ref.tmp.i380 = alloca %"class.std::allocator", align 1
  %ref.tmp.i351 = alloca %"class.std::allocator", align 1
  %ref.tmp.i337 = alloca %"class.std::allocator", align 1
  %ref.tmp.i323 = alloca %"class.std::allocator", align 1
  %ref.tmp.i289 = alloca %"class.std::allocator", align 1
  %ref.tmp.i275 = alloca %"class.std::allocator", align 1
  %ref.tmp.i261 = alloca %"class.std::allocator", align 1
  %ref.tmp.i231 = alloca %"class.std::allocator", align 1
  %ref.tmp.i217 = alloca %"class.std::allocator", align 1
  %ref.tmp.i203 = alloca %"class.std::allocator", align 1
  %ref.tmp.i171 = alloca %"class.std::allocator", align 1
  %ref.tmp.i157 = alloca %"class.std::allocator", align 1
  %ref.tmp.i143 = alloca %"class.std::allocator", align 1
  %ref.tmp.i122 = alloca %"class.std::allocator", align 1
  %ref.tmp.i108 = alloca %"class.std::allocator", align 1
  %ref.tmp.i94 = alloca %"class.std::allocator", align 1
  %ref.tmp.i63 = alloca %"class.std::allocator", align 1
  %ref.tmp.i49 = alloca %"class.std::allocator", align 1
  %ref.tmp.i = alloca %"class.std::allocator", align 1
  %ref.tmp = alloca %"class.std::basic_string", align 8
  %ref.tmp2 = alloca %"class.std::basic_string", align 8
  %ref.tmp3 = alloca %"class.std::basic_string", align 8
  %ref.tmp14 = alloca %"class.std::basic_string", align 8
  %ref.tmp15 = alloca %"class.std::basic_string", align 8
  %ref.tmp16 = alloca %"class.std::basic_string", align 8
  %ref.tmp33 = alloca %"class.std::basic_string", align 8
  %ref.tmp34 = alloca %"class.std::basic_string", align 8
  %agg.tmp = alloca %"class.std::basic_string", align 8
  %ref.tmp37 = alloca %"class.std::allocator", align 1
  %rawtime = alloca i64, align 8
  %sdate = alloca [25 x i8], align 1
  %filename = alloca %"class.std::basic_string", align 8
  %ref.tmp64 = alloca %"class.std::basic_string", align 8
  %ref.tmp65 = alloca %"class.std::basic_string", align 8
  %ref.tmp66 = alloca %"class.std::basic_string", align 8
  %ref.tmp87 = alloca %"class.std::basic_string", align 8
  %ref.tmp88 = alloca %"class.std::basic_string", align 8
  %ref.tmp89 = alloca %"class.std::basic_string", align 8
  %ref.tmp91 = alloca %"class.std::allocator", align 1
  %mkdir_cmd = alloca %"class.std::basic_string", align 8
  %ref.tmp122 = alloca %"class.std::basic_string", align 8
  %ref.tmp123 = alloca %"class.std::basic_string", align 8
  %ref.tmp140 = alloca %"class.std::basic_string", align 8
  %myfile = alloca %"class.std::basic_ofstream", align 8
  %_M_p.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %agg.result, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p.i.i, align 8, !tbaa !4
  %0 = bitcast %"class.std::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  %1 = bitcast %"class.std::basic_string"* %ref.tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #11
  %2 = bitcast %"class.std::basic_string"* %ref.tmp3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #11
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp3, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %agg.result)
          to label %.noexc unwind label %lpad

.noexc:                                           ; preds = %entry
  %call2.i1.i = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp3, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 noundef 23)
          to label %invoke.cont unwind label %lpad.i

lpad.i:                                           ; preds = %.noexc
  %3 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp3) #11
  br label %ehcleanup11

invoke.cont:                                      ; preds = %.noexc
  %miniAppName = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 1
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %call.i42 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp3, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %miniAppName)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %invoke.cont
  %_M_p.i.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp2, i64 0, i32 0, i32 0
  %_M_p2.i.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %call.i42, i64 0, i32 0, i32 0
  %4 = load i8*, i8** %_M_p2.i.i.i, align 8, !tbaa !4, !noalias !17
  store i8* %4, i8** %_M_p.i.i.i, align 8, !tbaa !4, !alias.scope !17
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p2.i.i.i, align 8, !tbaa !12, !noalias !17
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %call2.i.i46 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef 1)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %invoke.cont5
  %_M_p.i.i.i44 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  %_M_p2.i.i.i45 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %call2.i.i46, i64 0, i32 0, i32 0
  %5 = load i8*, i8** %_M_p2.i.i.i45, align 8, !tbaa !4, !noalias !20
  store i8* %5, i8** %_M_p.i.i.i44, align 8, !tbaa !4, !alias.scope !20
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p2.i.i.i45, align 8, !tbaa !12, !noalias !20
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %agg.result, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %invoke.cont7
  %6 = load i8*, i8** %_M_p.i.i.i44, align 8, !tbaa !12
  %arrayidx.i.i = getelementptr inbounds i8, i8* %6, i64 -24
  %7 = bitcast i8* %arrayidx.i.i to %"struct.std::basic_string<char>::_Rep"*
  %8 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %8) #11
  %cmp.not.i.i = icmp eq i8* %arrayidx.i.i, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i, label %_ZNSsD2Ev.exit, label %if.then.i.i, !prof !14

if.then.i.i:                                      ; preds = %invoke.cont9
  %_M_refcount.i.i = getelementptr inbounds i8, i8* %6, i64 -8
  %9 = bitcast i8* %_M_refcount.i.i to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  %10 = atomicrmw volatile add i32* %9, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  %11 = load i32, i32* %9, align 8, !tbaa !15
  %add.i.i.i.i = add nsw i32 %11, -1
  store i32 %add.i.i.i.i, i32* %9, align 8, !tbaa !15
  br label %invoke.cont.i.i

invoke.cont.i.i:                                  ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %10, %if.then.i.i.i ], [ %11, %if.else.i.i.i ]
  %cmp3.i.i = icmp slt i32 %retval.0.i.i.i, 1
  br i1 %cmp3.i.i, label %if.then4.i.i, label %_ZNSsD2Ev.exit

if.then4.i.i:                                     ; preds = %invoke.cont.i.i
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %7, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i) #11
  br label %_ZNSsD2Ev.exit

_ZNSsD2Ev.exit:                                   ; preds = %invoke.cont9, %invoke.cont.i.i, %if.then4.i.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %8) #11
  %12 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i51 = getelementptr inbounds i8, i8* %12, i64 -24
  %13 = bitcast i8* %arrayidx.i.i51 to %"struct.std::basic_string<char>::_Rep"*
  %14 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i49, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %14) #11
  %cmp.not.i.i52 = icmp eq i8* %arrayidx.i.i51, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i52, label %_ZNSsD2Ev.exit62, label %if.then.i.i54, !prof !14

if.then.i.i54:                                    ; preds = %_ZNSsD2Ev.exit
  %_M_refcount.i.i53 = getelementptr inbounds i8, i8* %12, i64 -8
  %15 = bitcast i8* %_M_refcount.i.i53 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i55, label %if.else.i.i.i57

if.then.i.i.i55:                                  ; preds = %if.then.i.i54
  %16 = atomicrmw volatile add i32* %15, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i60

if.else.i.i.i57:                                  ; preds = %if.then.i.i54
  %17 = load i32, i32* %15, align 8, !tbaa !15
  %add.i.i.i.i56 = add nsw i32 %17, -1
  store i32 %add.i.i.i.i56, i32* %15, align 8, !tbaa !15
  br label %invoke.cont.i.i60

invoke.cont.i.i60:                                ; preds = %if.else.i.i.i57, %if.then.i.i.i55
  %retval.0.i.i.i58 = phi i32 [ %16, %if.then.i.i.i55 ], [ %17, %if.else.i.i.i57 ]
  %cmp3.i.i59 = icmp slt i32 %retval.0.i.i.i58, 1
  br i1 %cmp3.i.i59, label %if.then4.i.i61, label %_ZNSsD2Ev.exit62

if.then4.i.i61:                                   ; preds = %invoke.cont.i.i60
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %13, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i49) #11
  br label %_ZNSsD2Ev.exit62

_ZNSsD2Ev.exit62:                                 ; preds = %_ZNSsD2Ev.exit, %invoke.cont.i.i60, %if.then4.i.i61
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %14) #11
  %_M_p.i.i.i64 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp3, i64 0, i32 0, i32 0
  %18 = load i8*, i8** %_M_p.i.i.i64, align 8, !tbaa !12
  %arrayidx.i.i65 = getelementptr inbounds i8, i8* %18, i64 -24
  %19 = bitcast i8* %arrayidx.i.i65 to %"struct.std::basic_string<char>::_Rep"*
  %20 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i63, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %20) #11
  %cmp.not.i.i66 = icmp eq i8* %arrayidx.i.i65, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i66, label %_ZNSsD2Ev.exit76, label %if.then.i.i68, !prof !14

if.then.i.i68:                                    ; preds = %_ZNSsD2Ev.exit62
  %_M_refcount.i.i67 = getelementptr inbounds i8, i8* %18, i64 -8
  %21 = bitcast i8* %_M_refcount.i.i67 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i69, label %if.else.i.i.i71

if.then.i.i.i69:                                  ; preds = %if.then.i.i68
  %22 = atomicrmw volatile add i32* %21, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i74

if.else.i.i.i71:                                  ; preds = %if.then.i.i68
  %23 = load i32, i32* %21, align 8, !tbaa !15
  %add.i.i.i.i70 = add nsw i32 %23, -1
  store i32 %add.i.i.i.i70, i32* %21, align 8, !tbaa !15
  br label %invoke.cont.i.i74

invoke.cont.i.i74:                                ; preds = %if.else.i.i.i71, %if.then.i.i.i69
  %retval.0.i.i.i72 = phi i32 [ %22, %if.then.i.i.i69 ], [ %23, %if.else.i.i.i71 ]
  %cmp3.i.i73 = icmp slt i32 %retval.0.i.i.i72, 1
  br i1 %cmp3.i.i73, label %if.then4.i.i75, label %_ZNSsD2Ev.exit76

if.then4.i.i75:                                   ; preds = %invoke.cont.i.i74
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %19, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i63) #11
  br label %_ZNSsD2Ev.exit76

_ZNSsD2Ev.exit76:                                 ; preds = %_ZNSsD2Ev.exit62, %invoke.cont.i.i74, %if.then4.i.i75
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %20) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  %24 = bitcast %"class.std::basic_string"* %ref.tmp14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #11
  %25 = bitcast %"class.std::basic_string"* %ref.tmp15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #11
  %26 = bitcast %"class.std::basic_string"* %ref.tmp16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #11
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp16, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %agg.result)
          to label %.noexc80 unwind label %lpad17

.noexc80:                                         ; preds = %_ZNSsD2Ev.exit76
  %call2.i1.i78 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp16, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 noundef 26)
          to label %invoke.cont18 unwind label %lpad.i79

lpad.i79:                                         ; preds = %.noexc80
  %27 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp16) #11
  br label %ehcleanup29

invoke.cont18:                                    ; preds = %.noexc80
  %miniAppVersion = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 2
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %call.i85 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp16, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %miniAppVersion)
          to label %invoke.cont20 unwind label %lpad19

invoke.cont20:                                    ; preds = %invoke.cont18
  %_M_p.i.i.i83 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp15, i64 0, i32 0, i32 0
  %_M_p2.i.i.i84 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %call.i85, i64 0, i32 0, i32 0
  %28 = load i8*, i8** %_M_p2.i.i.i84, align 8, !tbaa !4, !noalias !23
  store i8* %28, i8** %_M_p.i.i.i83, align 8, !tbaa !4, !alias.scope !23
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p2.i.i.i84, align 8, !tbaa !12, !noalias !23
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %call2.i.i90 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp15, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef 1)
          to label %invoke.cont22 unwind label %lpad21

invoke.cont22:                                    ; preds = %invoke.cont20
  %_M_p.i.i.i88 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp14, i64 0, i32 0, i32 0
  %_M_p2.i.i.i89 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %call2.i.i90, i64 0, i32 0, i32 0
  %29 = load i8*, i8** %_M_p2.i.i.i89, align 8, !tbaa !4, !noalias !26
  store i8* %29, i8** %_M_p.i.i.i88, align 8, !tbaa !4, !alias.scope !26
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p2.i.i.i89, align 8, !tbaa !12, !noalias !26
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %agg.result, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp14)
          to label %invoke.cont24 unwind label %lpad23

invoke.cont24:                                    ; preds = %invoke.cont22
  %30 = load i8*, i8** %_M_p.i.i.i88, align 8, !tbaa !12
  %arrayidx.i.i96 = getelementptr inbounds i8, i8* %30, i64 -24
  %31 = bitcast i8* %arrayidx.i.i96 to %"struct.std::basic_string<char>::_Rep"*
  %32 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i94, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %32) #11
  %cmp.not.i.i97 = icmp eq i8* %arrayidx.i.i96, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i97, label %_ZNSsD2Ev.exit107, label %if.then.i.i99, !prof !14

if.then.i.i99:                                    ; preds = %invoke.cont24
  %_M_refcount.i.i98 = getelementptr inbounds i8, i8* %30, i64 -8
  %33 = bitcast i8* %_M_refcount.i.i98 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i100, label %if.else.i.i.i102

if.then.i.i.i100:                                 ; preds = %if.then.i.i99
  %34 = atomicrmw volatile add i32* %33, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i105

if.else.i.i.i102:                                 ; preds = %if.then.i.i99
  %35 = load i32, i32* %33, align 8, !tbaa !15
  %add.i.i.i.i101 = add nsw i32 %35, -1
  store i32 %add.i.i.i.i101, i32* %33, align 8, !tbaa !15
  br label %invoke.cont.i.i105

invoke.cont.i.i105:                               ; preds = %if.else.i.i.i102, %if.then.i.i.i100
  %retval.0.i.i.i103 = phi i32 [ %34, %if.then.i.i.i100 ], [ %35, %if.else.i.i.i102 ]
  %cmp3.i.i104 = icmp slt i32 %retval.0.i.i.i103, 1
  br i1 %cmp3.i.i104, label %if.then4.i.i106, label %_ZNSsD2Ev.exit107

if.then4.i.i106:                                  ; preds = %invoke.cont.i.i105
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %31, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i94) #11
  br label %_ZNSsD2Ev.exit107

_ZNSsD2Ev.exit107:                                ; preds = %invoke.cont24, %invoke.cont.i.i105, %if.then4.i.i106
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %32) #11
  %36 = load i8*, i8** %_M_p.i.i.i83, align 8, !tbaa !12
  %arrayidx.i.i110 = getelementptr inbounds i8, i8* %36, i64 -24
  %37 = bitcast i8* %arrayidx.i.i110 to %"struct.std::basic_string<char>::_Rep"*
  %38 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i108, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %38) #11
  %cmp.not.i.i111 = icmp eq i8* %arrayidx.i.i110, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i111, label %_ZNSsD2Ev.exit121, label %if.then.i.i113, !prof !14

if.then.i.i113:                                   ; preds = %_ZNSsD2Ev.exit107
  %_M_refcount.i.i112 = getelementptr inbounds i8, i8* %36, i64 -8
  %39 = bitcast i8* %_M_refcount.i.i112 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i114, label %if.else.i.i.i116

if.then.i.i.i114:                                 ; preds = %if.then.i.i113
  %40 = atomicrmw volatile add i32* %39, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i119

if.else.i.i.i116:                                 ; preds = %if.then.i.i113
  %41 = load i32, i32* %39, align 8, !tbaa !15
  %add.i.i.i.i115 = add nsw i32 %41, -1
  store i32 %add.i.i.i.i115, i32* %39, align 8, !tbaa !15
  br label %invoke.cont.i.i119

invoke.cont.i.i119:                               ; preds = %if.else.i.i.i116, %if.then.i.i.i114
  %retval.0.i.i.i117 = phi i32 [ %40, %if.then.i.i.i114 ], [ %41, %if.else.i.i.i116 ]
  %cmp3.i.i118 = icmp slt i32 %retval.0.i.i.i117, 1
  br i1 %cmp3.i.i118, label %if.then4.i.i120, label %_ZNSsD2Ev.exit121

if.then4.i.i120:                                  ; preds = %invoke.cont.i.i119
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %37, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i108) #11
  br label %_ZNSsD2Ev.exit121

_ZNSsD2Ev.exit121:                                ; preds = %_ZNSsD2Ev.exit107, %invoke.cont.i.i119, %if.then4.i.i120
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %38) #11
  %_M_p.i.i.i123 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp16, i64 0, i32 0, i32 0
  %42 = load i8*, i8** %_M_p.i.i.i123, align 8, !tbaa !12
  %arrayidx.i.i124 = getelementptr inbounds i8, i8* %42, i64 -24
  %43 = bitcast i8* %arrayidx.i.i124 to %"struct.std::basic_string<char>::_Rep"*
  %44 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i122, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %44) #11
  %cmp.not.i.i125 = icmp eq i8* %arrayidx.i.i124, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i125, label %_ZNSsD2Ev.exit135, label %if.then.i.i127, !prof !14

if.then.i.i127:                                   ; preds = %_ZNSsD2Ev.exit121
  %_M_refcount.i.i126 = getelementptr inbounds i8, i8* %42, i64 -8
  %45 = bitcast i8* %_M_refcount.i.i126 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i128, label %if.else.i.i.i130

if.then.i.i.i128:                                 ; preds = %if.then.i.i127
  %46 = atomicrmw volatile add i32* %45, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i133

if.else.i.i.i130:                                 ; preds = %if.then.i.i127
  %47 = load i32, i32* %45, align 8, !tbaa !15
  %add.i.i.i.i129 = add nsw i32 %47, -1
  store i32 %add.i.i.i.i129, i32* %45, align 8, !tbaa !15
  br label %invoke.cont.i.i133

invoke.cont.i.i133:                               ; preds = %if.else.i.i.i130, %if.then.i.i.i128
  %retval.0.i.i.i131 = phi i32 [ %46, %if.then.i.i.i128 ], [ %47, %if.else.i.i.i130 ]
  %cmp3.i.i132 = icmp slt i32 %retval.0.i.i.i131, 1
  br i1 %cmp3.i.i132, label %if.then4.i.i134, label %_ZNSsD2Ev.exit135

if.then4.i.i134:                                  ; preds = %invoke.cont.i.i133
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %43, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i122) #11
  br label %_ZNSsD2Ev.exit135

_ZNSsD2Ev.exit135:                                ; preds = %_ZNSsD2Ev.exit121, %invoke.cont.i.i133, %if.then4.i.i134
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %44) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #11
  %_M_finish.i = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 0, i32 2, i32 0, i32 0, i32 1
  %_M_start.i = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %48 = bitcast %"class.std::basic_string"* %ref.tmp33 to i8*
  %49 = bitcast %"class.std::basic_string"* %ref.tmp34 to i8*
  %50 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp37, i64 0, i32 0
  %_M_p.i.i.i138 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp33, i64 0, i32 0, i32 0
  %51 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i143, i64 0, i32 0
  %_M_p.i.i.i158 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp34, i64 0, i32 0, i32 0
  %52 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i157, i64 0, i32 0
  %_M_p.i.i.i172 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %agg.tmp, i64 0, i32 0, i32 0
  %53 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i171, i64 0, i32 0
  %54 = load %class.YAML_Element**, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !29
  %55 = load %class.YAML_Element**, %class.YAML_Element*** %_M_start.i, align 8, !tbaa !9
  %cmp445.not = icmp eq %class.YAML_Element** %54, %55
  br i1 %cmp445.not, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %_ZNSsD2Ev.exit184, %_ZNSsD2Ev.exit135
  %56 = bitcast i64* %rawtime to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %56) #11
  %call55 = call i64 @time(i64* noundef nonnull %rawtime) #11
  %call56 = call %struct.tm* @localtime(i64* noundef nonnull %rawtime) #11
  %57 = getelementptr inbounds [25 x i8], [25 x i8]* %sdate, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 25, i8* nonnull %57) #11
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %call56, i64 0, i32 5
  %58 = load i32, i32* %tm_year, align 4, !tbaa !30
  %add = add nsw i32 %58, 1900
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %call56, i64 0, i32 4
  %59 = load i32, i32* %tm_mon, align 8, !tbaa !33
  %add57 = add nsw i32 %59, 1
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %call56, i64 0, i32 3
  %60 = load i32, i32* %tm_mday, align 4, !tbaa !34
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %call56, i64 0, i32 2
  %61 = load i32, i32* %tm_hour, align 8, !tbaa !35
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %call56, i64 0, i32 1
  %62 = load i32, i32* %tm_min, align 4, !tbaa !36
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %call56, i64 0, i32 0
  %63 = load i32, i32* %tm_sec, align 8, !tbaa !37
  %call58 = call signext i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %57, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 noundef signext %add, i32 noundef signext %add57, i32 noundef signext %60, i32 noundef signext %61, i32 noundef signext %62, i32 noundef signext %63) #11
  %64 = bitcast %"class.std::basic_string"* %filename to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %64) #11
  %_M_p.i.i136 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %filename, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p.i.i136, align 8, !tbaa !4
  %destinationFileName = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 4
  %call.i = call noundef signext i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %destinationFileName, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #11
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then, label %if.else

lpad:                                             ; preds = %entry
  %65 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup11

lpad4:                                            ; preds = %invoke.cont
  %66 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup10

lpad6:                                            ; preds = %invoke.cont5
  %67 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

lpad8:                                            ; preds = %invoke.cont7
  %68 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp) #11
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad8, %lpad6
  %.pn = phi { i8*, i32 } [ %68, %lpad8 ], [ %67, %lpad6 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp2) #11
  br label %ehcleanup10

ehcleanup10:                                      ; preds = %ehcleanup, %lpad4
  %.pn.pn = phi { i8*, i32 } [ %.pn, %ehcleanup ], [ %66, %lpad4 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp3) #11
  br label %ehcleanup11

ehcleanup11:                                      ; preds = %lpad, %lpad.i, %ehcleanup10
  %.pn.pn.pn = phi { i8*, i32 } [ %.pn.pn, %ehcleanup10 ], [ %65, %lpad ], [ %3, %lpad.i ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  br label %ehcleanup164

lpad17:                                           ; preds = %_ZNSsD2Ev.exit76
  %69 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup29

lpad19:                                           ; preds = %invoke.cont18
  %70 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup28

lpad21:                                           ; preds = %invoke.cont20
  %71 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup27

lpad23:                                           ; preds = %invoke.cont22
  %72 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp14) #11
  br label %ehcleanup27

ehcleanup27:                                      ; preds = %lpad23, %lpad21
  %.pn15 = phi { i8*, i32 } [ %72, %lpad23 ], [ %71, %lpad21 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp15) #11
  br label %ehcleanup28

ehcleanup28:                                      ; preds = %ehcleanup27, %lpad19
  %.pn15.pn = phi { i8*, i32 } [ %.pn15, %ehcleanup27 ], [ %70, %lpad19 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp16) #11
  br label %ehcleanup29

ehcleanup29:                                      ; preds = %lpad17, %lpad.i79, %ehcleanup28
  %.pn15.pn.pn = phi { i8*, i32 } [ %.pn15.pn, %ehcleanup28 ], [ %69, %lpad17 ], [ %27, %lpad.i79 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #11
  br label %ehcleanup164

for.body:                                         ; preds = %_ZNSsD2Ev.exit135, %_ZNSsD2Ev.exit184
  %73 = phi %class.YAML_Element** [ %94, %_ZNSsD2Ev.exit184 ], [ %55, %_ZNSsD2Ev.exit135 ]
  %i.0446 = phi i64 [ %inc, %_ZNSsD2Ev.exit184 ], [ 0, %_ZNSsD2Ev.exit135 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %48) #11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %49) #11
  %add.ptr.i = getelementptr inbounds %class.YAML_Element*, %class.YAML_Element** %73, i64 %i.0446
  %74 = load %class.YAML_Element*, %class.YAML_Element** %add.ptr.i, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %50) #11
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %agg.tmp, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp37)
          to label %invoke.cont39 unwind label %lpad38

invoke.cont39:                                    ; preds = %for.body
  invoke void @_ZN12YAML_Element9printYAMLESs(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %ref.tmp34, %class.YAML_Element* noundef nonnull align 8 dereferenceable(40) %74, %"class.std::basic_string"* noundef nonnull %agg.tmp)
          to label %invoke.cont41 unwind label %lpad40

invoke.cont41:                                    ; preds = %invoke.cont39
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %75 = load i8*, i8** %_M_p.i.i, align 8, !tbaa !12, !noalias !39
  %arrayidx.i.i.i.i = getelementptr inbounds i8, i8* %75, i64 -24
  %_M_length.i.i.i = bitcast i8* %arrayidx.i.i.i.i to i64*
  %76 = load i64, i64* %_M_length.i.i.i, align 8, !tbaa !42, !noalias !39
  %call4.i.i.i140 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6insertEmPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp34, i64 noundef 0, i8* noundef nonnull %75, i64 noundef %76)
          to label %invoke.cont43 unwind label %lpad42

invoke.cont43:                                    ; preds = %invoke.cont41
  %_M_p2.i.i.i139 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %call4.i.i.i140, i64 0, i32 0, i32 0
  %77 = load i8*, i8** %_M_p2.i.i.i139, align 8, !tbaa !4, !noalias !39
  store i8* %77, i8** %_M_p.i.i.i138, align 8, !tbaa !4, !alias.scope !39
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p2.i.i.i139, align 8, !tbaa !12, !noalias !39
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %agg.result, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp33)
          to label %invoke.cont45 unwind label %lpad44

invoke.cont45:                                    ; preds = %invoke.cont43
  %78 = load i8*, i8** %_M_p.i.i.i138, align 8, !tbaa !12
  %arrayidx.i.i145 = getelementptr inbounds i8, i8* %78, i64 -24
  %79 = bitcast i8* %arrayidx.i.i145 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %51) #11
  %cmp.not.i.i146 = icmp eq i8* %arrayidx.i.i145, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i146, label %_ZNSsD2Ev.exit156, label %if.then.i.i148, !prof !14

if.then.i.i148:                                   ; preds = %invoke.cont45
  %_M_refcount.i.i147 = getelementptr inbounds i8, i8* %78, i64 -8
  %80 = bitcast i8* %_M_refcount.i.i147 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i149, label %if.else.i.i.i151

if.then.i.i.i149:                                 ; preds = %if.then.i.i148
  %81 = atomicrmw volatile add i32* %80, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i154

if.else.i.i.i151:                                 ; preds = %if.then.i.i148
  %82 = load i32, i32* %80, align 8, !tbaa !15
  %add.i.i.i.i150 = add nsw i32 %82, -1
  store i32 %add.i.i.i.i150, i32* %80, align 8, !tbaa !15
  br label %invoke.cont.i.i154

invoke.cont.i.i154:                               ; preds = %if.else.i.i.i151, %if.then.i.i.i149
  %retval.0.i.i.i152 = phi i32 [ %81, %if.then.i.i.i149 ], [ %82, %if.else.i.i.i151 ]
  %cmp3.i.i153 = icmp slt i32 %retval.0.i.i.i152, 1
  br i1 %cmp3.i.i153, label %if.then4.i.i155, label %_ZNSsD2Ev.exit156

if.then4.i.i155:                                  ; preds = %invoke.cont.i.i154
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %79, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i143) #11
  br label %_ZNSsD2Ev.exit156

_ZNSsD2Ev.exit156:                                ; preds = %invoke.cont45, %invoke.cont.i.i154, %if.then4.i.i155
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %51) #11
  %83 = load i8*, i8** %_M_p.i.i.i158, align 8, !tbaa !12
  %arrayidx.i.i159 = getelementptr inbounds i8, i8* %83, i64 -24
  %84 = bitcast i8* %arrayidx.i.i159 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %52) #11
  %cmp.not.i.i160 = icmp eq i8* %arrayidx.i.i159, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i160, label %_ZNSsD2Ev.exit170, label %if.then.i.i162, !prof !14

if.then.i.i162:                                   ; preds = %_ZNSsD2Ev.exit156
  %_M_refcount.i.i161 = getelementptr inbounds i8, i8* %83, i64 -8
  %85 = bitcast i8* %_M_refcount.i.i161 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i163, label %if.else.i.i.i165

if.then.i.i.i163:                                 ; preds = %if.then.i.i162
  %86 = atomicrmw volatile add i32* %85, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i168

if.else.i.i.i165:                                 ; preds = %if.then.i.i162
  %87 = load i32, i32* %85, align 8, !tbaa !15
  %add.i.i.i.i164 = add nsw i32 %87, -1
  store i32 %add.i.i.i.i164, i32* %85, align 8, !tbaa !15
  br label %invoke.cont.i.i168

invoke.cont.i.i168:                               ; preds = %if.else.i.i.i165, %if.then.i.i.i163
  %retval.0.i.i.i166 = phi i32 [ %86, %if.then.i.i.i163 ], [ %87, %if.else.i.i.i165 ]
  %cmp3.i.i167 = icmp slt i32 %retval.0.i.i.i166, 1
  br i1 %cmp3.i.i167, label %if.then4.i.i169, label %_ZNSsD2Ev.exit170

if.then4.i.i169:                                  ; preds = %invoke.cont.i.i168
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %84, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i157) #11
  br label %_ZNSsD2Ev.exit170

_ZNSsD2Ev.exit170:                                ; preds = %_ZNSsD2Ev.exit156, %invoke.cont.i.i168, %if.then4.i.i169
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %52) #11
  %88 = load i8*, i8** %_M_p.i.i.i172, align 8, !tbaa !12
  %arrayidx.i.i173 = getelementptr inbounds i8, i8* %88, i64 -24
  %89 = bitcast i8* %arrayidx.i.i173 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %53) #11
  %cmp.not.i.i174 = icmp eq i8* %arrayidx.i.i173, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i174, label %_ZNSsD2Ev.exit184, label %if.then.i.i176, !prof !14

if.then.i.i176:                                   ; preds = %_ZNSsD2Ev.exit170
  %_M_refcount.i.i175 = getelementptr inbounds i8, i8* %88, i64 -8
  %90 = bitcast i8* %_M_refcount.i.i175 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i177, label %if.else.i.i.i179

if.then.i.i.i177:                                 ; preds = %if.then.i.i176
  %91 = atomicrmw volatile add i32* %90, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i182

if.else.i.i.i179:                                 ; preds = %if.then.i.i176
  %92 = load i32, i32* %90, align 8, !tbaa !15
  %add.i.i.i.i178 = add nsw i32 %92, -1
  store i32 %add.i.i.i.i178, i32* %90, align 8, !tbaa !15
  br label %invoke.cont.i.i182

invoke.cont.i.i182:                               ; preds = %if.else.i.i.i179, %if.then.i.i.i177
  %retval.0.i.i.i180 = phi i32 [ %91, %if.then.i.i.i177 ], [ %92, %if.else.i.i.i179 ]
  %cmp3.i.i181 = icmp slt i32 %retval.0.i.i.i180, 1
  br i1 %cmp3.i.i181, label %if.then4.i.i183, label %_ZNSsD2Ev.exit184

if.then4.i.i183:                                  ; preds = %invoke.cont.i.i182
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %89, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i171) #11
  br label %_ZNSsD2Ev.exit184

_ZNSsD2Ev.exit184:                                ; preds = %_ZNSsD2Ev.exit170, %invoke.cont.i.i182, %if.then4.i.i183
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %53) #11
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %50) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %49) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %48) #11
  %inc = add nuw i64 %i.0446, 1
  %93 = load %class.YAML_Element**, %class.YAML_Element*** %_M_finish.i, align 8, !tbaa !29
  %94 = load %class.YAML_Element**, %class.YAML_Element*** %_M_start.i, align 8, !tbaa !9
  %sub.ptr.lhs.cast.i = ptrtoint %class.YAML_Element** %93 to i64
  %sub.ptr.rhs.cast.i = ptrtoint %class.YAML_Element** %94 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 3
  %cmp = icmp ult i64 %inc, %sub.ptr.div.i
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !44

lpad38:                                           ; preds = %for.body
  %95 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup50

lpad40:                                           ; preds = %invoke.cont39
  %96 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup49

lpad42:                                           ; preds = %invoke.cont41
  %97 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup48

lpad44:                                           ; preds = %invoke.cont43
  %98 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp33) #11
  br label %ehcleanup48

ehcleanup48:                                      ; preds = %lpad44, %lpad42
  %.pn37 = phi { i8*, i32 } [ %98, %lpad44 ], [ %97, %lpad42 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp34) #11
  br label %ehcleanup49

ehcleanup49:                                      ; preds = %ehcleanup48, %lpad40
  %.pn37.pn = phi { i8*, i32 } [ %.pn37, %ehcleanup48 ], [ %96, %lpad40 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %agg.tmp) #11
  br label %ehcleanup50

ehcleanup50:                                      ; preds = %ehcleanup49, %lpad38
  %.pn37.pn.pn = phi { i8*, i32 } [ %.pn37.pn, %ehcleanup49 ], [ %95, %lpad38 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %50) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %49) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %48) #11
  br label %ehcleanup164

if.then:                                          ; preds = %for.cond.cleanup
  %99 = bitcast %"class.std::basic_string"* %ref.tmp64 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %99) #11
  %100 = bitcast %"class.std::basic_string"* %ref.tmp65 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %100) #11
  %101 = bitcast %"class.std::basic_string"* %ref.tmp66 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %101) #11
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp66, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %miniAppName)
          to label %.noexc188 unwind label %lpad68

.noexc188:                                        ; preds = %if.then
  %call2.i1.i186 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp66, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 noundef 1)
          to label %invoke.cont69 unwind label %lpad.i187

lpad.i187:                                        ; preds = %.noexc188
  %102 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp66) #11
  br label %ehcleanup81

invoke.cont69:                                    ; preds = %.noexc188
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %call.i191194 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp66, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %miniAppVersion)
          to label %invoke.cont72 unwind label %lpad71

invoke.cont72:                                    ; preds = %invoke.cont69
  %_M_p.i.i.i192 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp65, i64 0, i32 0, i32 0
  %_M_p2.i.i.i193 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %call.i191194, i64 0, i32 0, i32 0
  %103 = load i8*, i8** %_M_p2.i.i.i193, align 8, !tbaa !4, !noalias !46
  store i8* %103, i8** %_M_p.i.i.i192, align 8, !tbaa !4, !alias.scope !46
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p2.i.i.i193, align 8, !tbaa !12, !noalias !46
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %call2.i.i199 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp65, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i64 noundef 1)
          to label %invoke.cont74 unwind label %lpad73

invoke.cont74:                                    ; preds = %invoke.cont72
  %_M_p.i.i.i197 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp64, i64 0, i32 0, i32 0
  %_M_p2.i.i.i198 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %call2.i.i199, i64 0, i32 0, i32 0
  %104 = load i8*, i8** %_M_p2.i.i.i198, align 8, !tbaa !4, !noalias !49
  store i8* %104, i8** %_M_p.i.i.i197, align 8, !tbaa !4, !alias.scope !49
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p2.i.i.i198, align 8, !tbaa !12, !noalias !49
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %filename, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp64)
          to label %invoke.cont76 unwind label %lpad75

invoke.cont76:                                    ; preds = %invoke.cont74
  %105 = load i8*, i8** %_M_p.i.i.i197, align 8, !tbaa !12
  %arrayidx.i.i205 = getelementptr inbounds i8, i8* %105, i64 -24
  %106 = bitcast i8* %arrayidx.i.i205 to %"struct.std::basic_string<char>::_Rep"*
  %107 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i203, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %107) #11
  %cmp.not.i.i206 = icmp eq i8* %arrayidx.i.i205, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i206, label %_ZNSsD2Ev.exit216, label %if.then.i.i208, !prof !14

if.then.i.i208:                                   ; preds = %invoke.cont76
  %_M_refcount.i.i207 = getelementptr inbounds i8, i8* %105, i64 -8
  %108 = bitcast i8* %_M_refcount.i.i207 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i209, label %if.else.i.i.i211

if.then.i.i.i209:                                 ; preds = %if.then.i.i208
  %109 = atomicrmw volatile add i32* %108, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i214

if.else.i.i.i211:                                 ; preds = %if.then.i.i208
  %110 = load i32, i32* %108, align 8, !tbaa !15
  %add.i.i.i.i210 = add nsw i32 %110, -1
  store i32 %add.i.i.i.i210, i32* %108, align 8, !tbaa !15
  br label %invoke.cont.i.i214

invoke.cont.i.i214:                               ; preds = %if.else.i.i.i211, %if.then.i.i.i209
  %retval.0.i.i.i212 = phi i32 [ %109, %if.then.i.i.i209 ], [ %110, %if.else.i.i.i211 ]
  %cmp3.i.i213 = icmp slt i32 %retval.0.i.i.i212, 1
  br i1 %cmp3.i.i213, label %if.then4.i.i215, label %_ZNSsD2Ev.exit216

if.then4.i.i215:                                  ; preds = %invoke.cont.i.i214
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %106, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i203) #11
  br label %_ZNSsD2Ev.exit216

_ZNSsD2Ev.exit216:                                ; preds = %invoke.cont76, %invoke.cont.i.i214, %if.then4.i.i215
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %107) #11
  %111 = load i8*, i8** %_M_p.i.i.i192, align 8, !tbaa !12
  %arrayidx.i.i219 = getelementptr inbounds i8, i8* %111, i64 -24
  %112 = bitcast i8* %arrayidx.i.i219 to %"struct.std::basic_string<char>::_Rep"*
  %113 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i217, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %113) #11
  %cmp.not.i.i220 = icmp eq i8* %arrayidx.i.i219, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i220, label %_ZNSsD2Ev.exit230, label %if.then.i.i222, !prof !14

if.then.i.i222:                                   ; preds = %_ZNSsD2Ev.exit216
  %_M_refcount.i.i221 = getelementptr inbounds i8, i8* %111, i64 -8
  %114 = bitcast i8* %_M_refcount.i.i221 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i223, label %if.else.i.i.i225

if.then.i.i.i223:                                 ; preds = %if.then.i.i222
  %115 = atomicrmw volatile add i32* %114, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i228

if.else.i.i.i225:                                 ; preds = %if.then.i.i222
  %116 = load i32, i32* %114, align 8, !tbaa !15
  %add.i.i.i.i224 = add nsw i32 %116, -1
  store i32 %add.i.i.i.i224, i32* %114, align 8, !tbaa !15
  br label %invoke.cont.i.i228

invoke.cont.i.i228:                               ; preds = %if.else.i.i.i225, %if.then.i.i.i223
  %retval.0.i.i.i226 = phi i32 [ %115, %if.then.i.i.i223 ], [ %116, %if.else.i.i.i225 ]
  %cmp3.i.i227 = icmp slt i32 %retval.0.i.i.i226, 1
  br i1 %cmp3.i.i227, label %if.then4.i.i229, label %_ZNSsD2Ev.exit230

if.then4.i.i229:                                  ; preds = %invoke.cont.i.i228
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %112, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i217) #11
  br label %_ZNSsD2Ev.exit230

_ZNSsD2Ev.exit230:                                ; preds = %_ZNSsD2Ev.exit216, %invoke.cont.i.i228, %if.then4.i.i229
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %113) #11
  %_M_p.i.i.i232 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp66, i64 0, i32 0, i32 0
  %117 = load i8*, i8** %_M_p.i.i.i232, align 8, !tbaa !12
  %arrayidx.i.i233 = getelementptr inbounds i8, i8* %117, i64 -24
  %118 = bitcast i8* %arrayidx.i.i233 to %"struct.std::basic_string<char>::_Rep"*
  %119 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i231, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %119) #11
  %cmp.not.i.i234 = icmp eq i8* %arrayidx.i.i233, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i234, label %_ZNSsD2Ev.exit244, label %if.then.i.i236, !prof !14

if.then.i.i236:                                   ; preds = %_ZNSsD2Ev.exit230
  %_M_refcount.i.i235 = getelementptr inbounds i8, i8* %117, i64 -8
  %120 = bitcast i8* %_M_refcount.i.i235 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i237, label %if.else.i.i.i239

if.then.i.i.i237:                                 ; preds = %if.then.i.i236
  %121 = atomicrmw volatile add i32* %120, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i242

if.else.i.i.i239:                                 ; preds = %if.then.i.i236
  %122 = load i32, i32* %120, align 8, !tbaa !15
  %add.i.i.i.i238 = add nsw i32 %122, -1
  store i32 %add.i.i.i.i238, i32* %120, align 8, !tbaa !15
  br label %invoke.cont.i.i242

invoke.cont.i.i242:                               ; preds = %if.else.i.i.i239, %if.then.i.i.i237
  %retval.0.i.i.i240 = phi i32 [ %121, %if.then.i.i.i237 ], [ %122, %if.else.i.i.i239 ]
  %cmp3.i.i241 = icmp slt i32 %retval.0.i.i.i240, 1
  br i1 %cmp3.i.i241, label %if.then4.i.i243, label %_ZNSsD2Ev.exit244

if.then4.i.i243:                                  ; preds = %invoke.cont.i.i242
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %118, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i231) #11
  br label %_ZNSsD2Ev.exit244

_ZNSsD2Ev.exit244:                                ; preds = %_ZNSsD2Ev.exit230, %invoke.cont.i.i242, %if.then4.i.i243
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %119) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %101) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %100) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %99) #11
  br label %if.end

lpad61:                                           ; preds = %if.else
  %123 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup159

lpad68:                                           ; preds = %if.then
  %124 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup81

lpad71:                                           ; preds = %invoke.cont69
  %125 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup80

lpad73:                                           ; preds = %invoke.cont72
  %126 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup79

lpad75:                                           ; preds = %invoke.cont74
  %127 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp64) #11
  br label %ehcleanup79

ehcleanup79:                                      ; preds = %lpad75, %lpad73
  %.pn32 = phi { i8*, i32 } [ %127, %lpad75 ], [ %126, %lpad73 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp65) #11
  br label %ehcleanup80

ehcleanup80:                                      ; preds = %ehcleanup79, %lpad71
  %.pn32.pn = phi { i8*, i32 } [ %.pn32, %ehcleanup79 ], [ %125, %lpad71 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp66) #11
  br label %ehcleanup81

ehcleanup81:                                      ; preds = %lpad68, %lpad.i187, %ehcleanup80
  %.pn32.pn.pn = phi { i8*, i32 } [ %.pn32.pn, %ehcleanup80 ], [ %124, %lpad68 ], [ %102, %lpad.i187 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %101) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %100) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %99) #11
  br label %ehcleanup159

if.else:                                          ; preds = %for.cond.cleanup
  %call.i245246 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %filename, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %destinationFileName)
          to label %if.end unwind label %lpad61

if.end:                                           ; preds = %if.else, %_ZNSsD2Ev.exit244
  %128 = bitcast %"class.std::basic_string"* %ref.tmp87 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %128) #11
  %129 = bitcast %"class.std::basic_string"* %ref.tmp88 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %129) #11
  %130 = bitcast %"class.std::basic_string"* %ref.tmp89 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %130) #11
  %131 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp91, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %131) #11
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp89, i8* noundef nonnull %57, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp91)
          to label %invoke.cont93 unwind label %lpad92

invoke.cont93:                                    ; preds = %if.end
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %132 = load i8*, i8** %_M_p.i.i136, align 8, !tbaa !12, !noalias !52
  %arrayidx.i.i.i.i248 = getelementptr inbounds i8, i8* %132, i64 -24
  %_M_length.i.i.i249 = bitcast i8* %arrayidx.i.i.i.i248 to i64*
  %133 = load i64, i64* %_M_length.i.i.i249, align 8, !tbaa !42, !noalias !52
  %call4.i.i.i252 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6insertEmPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp89, i64 noundef 0, i8* noundef nonnull %132, i64 noundef %133)
          to label %invoke.cont95 unwind label %lpad94

invoke.cont95:                                    ; preds = %invoke.cont93
  %_M_p.i.i.i250 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp88, i64 0, i32 0, i32 0
  %_M_p2.i.i.i251 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %call4.i.i.i252, i64 0, i32 0, i32 0
  %134 = load i8*, i8** %_M_p2.i.i.i251, align 8, !tbaa !4, !noalias !52
  store i8* %134, i8** %_M_p.i.i.i250, align 8, !tbaa !4, !alias.scope !52
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p2.i.i.i251, align 8, !tbaa !12, !noalias !52
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %call2.i.i257 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp88, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 noundef 5)
          to label %invoke.cont97 unwind label %lpad96

invoke.cont97:                                    ; preds = %invoke.cont95
  %_M_p.i.i.i255 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp87, i64 0, i32 0, i32 0
  %_M_p2.i.i.i256 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %call2.i.i257, i64 0, i32 0, i32 0
  %135 = load i8*, i8** %_M_p2.i.i.i256, align 8, !tbaa !4, !noalias !55
  store i8* %135, i8** %_M_p.i.i.i255, align 8, !tbaa !4, !alias.scope !55
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p2.i.i.i256, align 8, !tbaa !12, !noalias !55
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %filename, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp87)
          to label %invoke.cont99 unwind label %lpad98

invoke.cont99:                                    ; preds = %invoke.cont97
  %136 = load i8*, i8** %_M_p.i.i.i255, align 8, !tbaa !12
  %arrayidx.i.i263 = getelementptr inbounds i8, i8* %136, i64 -24
  %137 = bitcast i8* %arrayidx.i.i263 to %"struct.std::basic_string<char>::_Rep"*
  %138 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i261, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %138) #11
  %cmp.not.i.i264 = icmp eq i8* %arrayidx.i.i263, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i264, label %_ZNSsD2Ev.exit274, label %if.then.i.i266, !prof !14

if.then.i.i266:                                   ; preds = %invoke.cont99
  %_M_refcount.i.i265 = getelementptr inbounds i8, i8* %136, i64 -8
  %139 = bitcast i8* %_M_refcount.i.i265 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i267, label %if.else.i.i.i269

if.then.i.i.i267:                                 ; preds = %if.then.i.i266
  %140 = atomicrmw volatile add i32* %139, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i272

if.else.i.i.i269:                                 ; preds = %if.then.i.i266
  %141 = load i32, i32* %139, align 8, !tbaa !15
  %add.i.i.i.i268 = add nsw i32 %141, -1
  store i32 %add.i.i.i.i268, i32* %139, align 8, !tbaa !15
  br label %invoke.cont.i.i272

invoke.cont.i.i272:                               ; preds = %if.else.i.i.i269, %if.then.i.i.i267
  %retval.0.i.i.i270 = phi i32 [ %140, %if.then.i.i.i267 ], [ %141, %if.else.i.i.i269 ]
  %cmp3.i.i271 = icmp slt i32 %retval.0.i.i.i270, 1
  br i1 %cmp3.i.i271, label %if.then4.i.i273, label %_ZNSsD2Ev.exit274

if.then4.i.i273:                                  ; preds = %invoke.cont.i.i272
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %137, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i261) #11
  br label %_ZNSsD2Ev.exit274

_ZNSsD2Ev.exit274:                                ; preds = %invoke.cont99, %invoke.cont.i.i272, %if.then4.i.i273
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %138) #11
  %142 = load i8*, i8** %_M_p.i.i.i250, align 8, !tbaa !12
  %arrayidx.i.i277 = getelementptr inbounds i8, i8* %142, i64 -24
  %143 = bitcast i8* %arrayidx.i.i277 to %"struct.std::basic_string<char>::_Rep"*
  %144 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i275, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %144) #11
  %cmp.not.i.i278 = icmp eq i8* %arrayidx.i.i277, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i278, label %_ZNSsD2Ev.exit288, label %if.then.i.i280, !prof !14

if.then.i.i280:                                   ; preds = %_ZNSsD2Ev.exit274
  %_M_refcount.i.i279 = getelementptr inbounds i8, i8* %142, i64 -8
  %145 = bitcast i8* %_M_refcount.i.i279 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i281, label %if.else.i.i.i283

if.then.i.i.i281:                                 ; preds = %if.then.i.i280
  %146 = atomicrmw volatile add i32* %145, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i286

if.else.i.i.i283:                                 ; preds = %if.then.i.i280
  %147 = load i32, i32* %145, align 8, !tbaa !15
  %add.i.i.i.i282 = add nsw i32 %147, -1
  store i32 %add.i.i.i.i282, i32* %145, align 8, !tbaa !15
  br label %invoke.cont.i.i286

invoke.cont.i.i286:                               ; preds = %if.else.i.i.i283, %if.then.i.i.i281
  %retval.0.i.i.i284 = phi i32 [ %146, %if.then.i.i.i281 ], [ %147, %if.else.i.i.i283 ]
  %cmp3.i.i285 = icmp slt i32 %retval.0.i.i.i284, 1
  br i1 %cmp3.i.i285, label %if.then4.i.i287, label %_ZNSsD2Ev.exit288

if.then4.i.i287:                                  ; preds = %invoke.cont.i.i286
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %143, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i275) #11
  br label %_ZNSsD2Ev.exit288

_ZNSsD2Ev.exit288:                                ; preds = %_ZNSsD2Ev.exit274, %invoke.cont.i.i286, %if.then4.i.i287
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %144) #11
  %_M_p.i.i.i290 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp89, i64 0, i32 0, i32 0
  %148 = load i8*, i8** %_M_p.i.i.i290, align 8, !tbaa !12
  %arrayidx.i.i291 = getelementptr inbounds i8, i8* %148, i64 -24
  %149 = bitcast i8* %arrayidx.i.i291 to %"struct.std::basic_string<char>::_Rep"*
  %150 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i289, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %150) #11
  %cmp.not.i.i292 = icmp eq i8* %arrayidx.i.i291, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i292, label %_ZNSsD2Ev.exit302, label %if.then.i.i294, !prof !14

if.then.i.i294:                                   ; preds = %_ZNSsD2Ev.exit288
  %_M_refcount.i.i293 = getelementptr inbounds i8, i8* %148, i64 -8
  %151 = bitcast i8* %_M_refcount.i.i293 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i295, label %if.else.i.i.i297

if.then.i.i.i295:                                 ; preds = %if.then.i.i294
  %152 = atomicrmw volatile add i32* %151, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i300

if.else.i.i.i297:                                 ; preds = %if.then.i.i294
  %153 = load i32, i32* %151, align 8, !tbaa !15
  %add.i.i.i.i296 = add nsw i32 %153, -1
  store i32 %add.i.i.i.i296, i32* %151, align 8, !tbaa !15
  br label %invoke.cont.i.i300

invoke.cont.i.i300:                               ; preds = %if.else.i.i.i297, %if.then.i.i.i295
  %retval.0.i.i.i298 = phi i32 [ %152, %if.then.i.i.i295 ], [ %153, %if.else.i.i.i297 ]
  %cmp3.i.i299 = icmp slt i32 %retval.0.i.i.i298, 1
  br i1 %cmp3.i.i299, label %if.then4.i.i301, label %_ZNSsD2Ev.exit302

if.then4.i.i301:                                  ; preds = %invoke.cont.i.i300
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %149, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i289) #11
  br label %_ZNSsD2Ev.exit302

_ZNSsD2Ev.exit302:                                ; preds = %_ZNSsD2Ev.exit288, %invoke.cont.i.i300, %if.then4.i.i301
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %150) #11
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %131) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %130) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %129) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %128) #11
  %destinationDirectory = getelementptr inbounds %class.YAML_Doc, %class.YAML_Doc* %this, i64 0, i32 3
  %call.i.i = call noundef signext i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %destinationDirectory, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #11
  %cmp.i.i.not = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i.not, label %if.else139, label %land.lhs.true

land.lhs.true:                                    ; preds = %_ZNSsD2Ev.exit302
  %call.i.i303 = call noundef signext i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %destinationDirectory, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #11
  %cmp.i.i304.not = icmp eq i32 %call.i.i303, 0
  br i1 %cmp.i.i304.not, label %if.else139, label %if.then114

if.then114:                                       ; preds = %land.lhs.true
  %154 = bitcast %"class.std::basic_string"* %mkdir_cmd to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %154) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %_M_p.i.i.i306 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %mkdir_cmd, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p.i.i.i306, align 8, !tbaa !4, !alias.scope !58
  %_M_p.i.i.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %destinationDirectory, i64 0, i32 0, i32 0
  %155 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !12, !noalias !58
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %155, i64 -24
  %_M_length.i.i = bitcast i8* %arrayidx.i.i.i to i64*
  %156 = load i64, i64* %_M_length.i.i, align 8, !tbaa !42, !noalias !58
  %add.i = add i64 %156, 6
  invoke void @_ZNSs7reserveEm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %mkdir_cmd, i64 noundef %add.i)
          to label %invoke.cont.i unwind label %lpad.i307

invoke.cont.i:                                    ; preds = %if.then114
  %call3.i = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %mkdir_cmd, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i64 noundef 6)
          to label %invoke.cont2.i unwind label %lpad.i307

invoke.cont2.i:                                   ; preds = %invoke.cont.i
  %call5.i = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %mkdir_cmd, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %destinationDirectory)
          to label %invoke.cont117 unwind label %lpad.i307

lpad.i307:                                        ; preds = %invoke.cont2.i, %invoke.cont.i, %if.then114
  %157 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup138

invoke.cont117:                                   ; preds = %invoke.cont2.i
  %158 = load i8*, i8** %_M_p.i.i.i306, align 8, !tbaa !12
  %call121 = invoke signext i32 @system(i8* noundef %158)
          to label %invoke.cont120 unwind label %lpad119

invoke.cont120:                                   ; preds = %invoke.cont117
  %159 = bitcast %"class.std::basic_string"* %ref.tmp122 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %159) #11
  %160 = bitcast %"class.std::basic_string"* %ref.tmp123 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %160) #11
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp123, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %destinationDirectory)
          to label %.noexc313 unwind label %lpad125

.noexc313:                                        ; preds = %invoke.cont120
  %call2.i1.i311 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp123, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i64 noundef 1)
          to label %invoke.cont126 unwind label %lpad.i312

lpad.i312:                                        ; preds = %.noexc313
  %161 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp123) #11
  br label %ehcleanup135

invoke.cont126:                                   ; preds = %.noexc313
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %call.i316319 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp123, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %destinationFileName)
          to label %invoke.cont129 unwind label %lpad128

invoke.cont129:                                   ; preds = %invoke.cont126
  %_M_p.i.i.i317 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp122, i64 0, i32 0, i32 0
  %_M_p2.i.i.i318 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %call.i316319, i64 0, i32 0, i32 0
  %162 = load i8*, i8** %_M_p2.i.i.i318, align 8, !tbaa !4, !noalias !61
  store i8* %162, i8** %_M_p.i.i.i317, align 8, !tbaa !4, !alias.scope !61
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p2.i.i.i318, align 8, !tbaa !12, !noalias !61
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %filename, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp122)
          to label %invoke.cont131 unwind label %lpad130

invoke.cont131:                                   ; preds = %invoke.cont129
  %163 = load i8*, i8** %_M_p.i.i.i317, align 8, !tbaa !12
  %arrayidx.i.i325 = getelementptr inbounds i8, i8* %163, i64 -24
  %164 = bitcast i8* %arrayidx.i.i325 to %"struct.std::basic_string<char>::_Rep"*
  %165 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i323, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %165) #11
  %cmp.not.i.i326 = icmp eq i8* %arrayidx.i.i325, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i326, label %_ZNSsD2Ev.exit336, label %if.then.i.i328, !prof !14

if.then.i.i328:                                   ; preds = %invoke.cont131
  %_M_refcount.i.i327 = getelementptr inbounds i8, i8* %163, i64 -8
  %166 = bitcast i8* %_M_refcount.i.i327 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i329, label %if.else.i.i.i331

if.then.i.i.i329:                                 ; preds = %if.then.i.i328
  %167 = atomicrmw volatile add i32* %166, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i334

if.else.i.i.i331:                                 ; preds = %if.then.i.i328
  %168 = load i32, i32* %166, align 8, !tbaa !15
  %add.i.i.i.i330 = add nsw i32 %168, -1
  store i32 %add.i.i.i.i330, i32* %166, align 8, !tbaa !15
  br label %invoke.cont.i.i334

invoke.cont.i.i334:                               ; preds = %if.else.i.i.i331, %if.then.i.i.i329
  %retval.0.i.i.i332 = phi i32 [ %167, %if.then.i.i.i329 ], [ %168, %if.else.i.i.i331 ]
  %cmp3.i.i333 = icmp slt i32 %retval.0.i.i.i332, 1
  br i1 %cmp3.i.i333, label %if.then4.i.i335, label %_ZNSsD2Ev.exit336

if.then4.i.i335:                                  ; preds = %invoke.cont.i.i334
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %164, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i323) #11
  br label %_ZNSsD2Ev.exit336

_ZNSsD2Ev.exit336:                                ; preds = %invoke.cont131, %invoke.cont.i.i334, %if.then4.i.i335
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %165) #11
  %_M_p.i.i.i338 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp123, i64 0, i32 0, i32 0
  %169 = load i8*, i8** %_M_p.i.i.i338, align 8, !tbaa !12
  %arrayidx.i.i339 = getelementptr inbounds i8, i8* %169, i64 -24
  %170 = bitcast i8* %arrayidx.i.i339 to %"struct.std::basic_string<char>::_Rep"*
  %171 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i337, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %171) #11
  %cmp.not.i.i340 = icmp eq i8* %arrayidx.i.i339, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i340, label %_ZNSsD2Ev.exit350, label %if.then.i.i342, !prof !14

if.then.i.i342:                                   ; preds = %_ZNSsD2Ev.exit336
  %_M_refcount.i.i341 = getelementptr inbounds i8, i8* %169, i64 -8
  %172 = bitcast i8* %_M_refcount.i.i341 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i343, label %if.else.i.i.i345

if.then.i.i.i343:                                 ; preds = %if.then.i.i342
  %173 = atomicrmw volatile add i32* %172, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i348

if.else.i.i.i345:                                 ; preds = %if.then.i.i342
  %174 = load i32, i32* %172, align 8, !tbaa !15
  %add.i.i.i.i344 = add nsw i32 %174, -1
  store i32 %add.i.i.i.i344, i32* %172, align 8, !tbaa !15
  br label %invoke.cont.i.i348

invoke.cont.i.i348:                               ; preds = %if.else.i.i.i345, %if.then.i.i.i343
  %retval.0.i.i.i346 = phi i32 [ %173, %if.then.i.i.i343 ], [ %174, %if.else.i.i.i345 ]
  %cmp3.i.i347 = icmp slt i32 %retval.0.i.i.i346, 1
  br i1 %cmp3.i.i347, label %if.then4.i.i349, label %_ZNSsD2Ev.exit350

if.then4.i.i349:                                  ; preds = %invoke.cont.i.i348
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %170, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i337) #11
  br label %_ZNSsD2Ev.exit350

_ZNSsD2Ev.exit350:                                ; preds = %_ZNSsD2Ev.exit336, %invoke.cont.i.i348, %if.then4.i.i349
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %171) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %160) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %159) #11
  %175 = load i8*, i8** %_M_p.i.i.i306, align 8, !tbaa !12
  %arrayidx.i.i353 = getelementptr inbounds i8, i8* %175, i64 -24
  %176 = bitcast i8* %arrayidx.i.i353 to %"struct.std::basic_string<char>::_Rep"*
  %177 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i351, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %177) #11
  %cmp.not.i.i354 = icmp eq i8* %arrayidx.i.i353, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i354, label %_ZNSsD2Ev.exit364, label %if.then.i.i356, !prof !14

if.then.i.i356:                                   ; preds = %_ZNSsD2Ev.exit350
  %_M_refcount.i.i355 = getelementptr inbounds i8, i8* %175, i64 -8
  %178 = bitcast i8* %_M_refcount.i.i355 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i357, label %if.else.i.i.i359

if.then.i.i.i357:                                 ; preds = %if.then.i.i356
  %179 = atomicrmw volatile add i32* %178, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i362

if.else.i.i.i359:                                 ; preds = %if.then.i.i356
  %180 = load i32, i32* %178, align 8, !tbaa !15
  %add.i.i.i.i358 = add nsw i32 %180, -1
  store i32 %add.i.i.i.i358, i32* %178, align 8, !tbaa !15
  br label %invoke.cont.i.i362

invoke.cont.i.i362:                               ; preds = %if.else.i.i.i359, %if.then.i.i.i357
  %retval.0.i.i.i360 = phi i32 [ %179, %if.then.i.i.i357 ], [ %180, %if.else.i.i.i359 ]
  %cmp3.i.i361 = icmp slt i32 %retval.0.i.i.i360, 1
  br i1 %cmp3.i.i361, label %if.then4.i.i363, label %_ZNSsD2Ev.exit364

if.then4.i.i363:                                  ; preds = %invoke.cont.i.i362
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %176, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i351) #11
  br label %_ZNSsD2Ev.exit364

_ZNSsD2Ev.exit364:                                ; preds = %_ZNSsD2Ev.exit350, %invoke.cont.i.i362, %if.then4.i.i363
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %177) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %154) #11
  br label %if.end148

lpad92:                                           ; preds = %if.end
  %181 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup104

lpad94:                                           ; preds = %invoke.cont93
  %182 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup103

lpad96:                                           ; preds = %invoke.cont95
  %183 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup102

lpad98:                                           ; preds = %invoke.cont97
  %184 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp87) #11
  br label %ehcleanup102

ehcleanup102:                                     ; preds = %lpad98, %lpad96
  %.pn19 = phi { i8*, i32 } [ %184, %lpad98 ], [ %183, %lpad96 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp88) #11
  br label %ehcleanup103

ehcleanup103:                                     ; preds = %ehcleanup102, %lpad94
  %.pn19.pn = phi { i8*, i32 } [ %.pn19, %ehcleanup102 ], [ %182, %lpad94 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp89) #11
  br label %ehcleanup104

ehcleanup104:                                     ; preds = %ehcleanup103, %lpad92
  %.pn19.pn.pn = phi { i8*, i32 } [ %.pn19.pn, %ehcleanup103 ], [ %181, %lpad92 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %131) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %130) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %129) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %128) #11
  br label %ehcleanup159

lpad119:                                          ; preds = %invoke.cont117
  %185 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup138

lpad125:                                          ; preds = %invoke.cont120
  %186 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup135

lpad128:                                          ; preds = %invoke.cont126
  %187 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup134

lpad130:                                          ; preds = %invoke.cont129
  %188 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp122) #11
  br label %ehcleanup134

ehcleanup134:                                     ; preds = %lpad130, %lpad128
  %.pn27 = phi { i8*, i32 } [ %188, %lpad130 ], [ %187, %lpad128 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp123) #11
  br label %ehcleanup135

ehcleanup135:                                     ; preds = %lpad125, %lpad.i312, %ehcleanup134
  %.pn27.pn = phi { i8*, i32 } [ %.pn27, %ehcleanup134 ], [ %186, %lpad125 ], [ %161, %lpad.i312 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %160) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %159) #11
  br label %ehcleanup138

ehcleanup138:                                     ; preds = %lpad119, %ehcleanup135, %lpad.i307
  %.pn27.pn.pn.pn = phi { i8*, i32 } [ %157, %lpad.i307 ], [ %.pn27.pn, %ehcleanup135 ], [ %185, %lpad119 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %mkdir_cmd) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %154) #11
  br label %ehcleanup159

if.else139:                                       ; preds = %land.lhs.true, %_ZNSsD2Ev.exit302
  %189 = bitcast %"class.std::basic_string"* %ref.tmp140 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %189) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %_M_p.i.i.i366 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp140, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p.i.i.i366, align 8, !tbaa !4, !alias.scope !64
  %190 = load i8*, i8** %_M_p.i.i136, align 8, !tbaa !12, !noalias !64
  %arrayidx.i.i.i368 = getelementptr inbounds i8, i8* %190, i64 -24
  %_M_length.i.i369 = bitcast i8* %arrayidx.i.i.i368 to i64*
  %191 = load i64, i64* %_M_length.i.i369, align 8, !tbaa !42, !noalias !64
  %add.i370 = add i64 %191, 2
  invoke void @_ZNSs7reserveEm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp140, i64 noundef %add.i370)
          to label %invoke.cont.i372 unwind label %lpad.i375

invoke.cont.i372:                                 ; preds = %if.else139
  %call3.i371 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp140, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i64 noundef 2)
          to label %invoke.cont2.i374 unwind label %lpad.i375

invoke.cont2.i374:                                ; preds = %invoke.cont.i372
  %call5.i373 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp140, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %filename)
          to label %invoke.cont142 unwind label %lpad.i375

lpad.i375:                                        ; preds = %invoke.cont2.i374, %invoke.cont.i372, %if.else139
  %192 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup147

invoke.cont142:                                   ; preds = %invoke.cont2.i374
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %filename, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp140)
          to label %invoke.cont144 unwind label %lpad143

invoke.cont144:                                   ; preds = %invoke.cont142
  %193 = load i8*, i8** %_M_p.i.i.i366, align 8, !tbaa !12
  %arrayidx.i.i382 = getelementptr inbounds i8, i8* %193, i64 -24
  %194 = bitcast i8* %arrayidx.i.i382 to %"struct.std::basic_string<char>::_Rep"*
  %195 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i380, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %195) #11
  %cmp.not.i.i383 = icmp eq i8* %arrayidx.i.i382, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i383, label %_ZNSsD2Ev.exit393, label %if.then.i.i385, !prof !14

if.then.i.i385:                                   ; preds = %invoke.cont144
  %_M_refcount.i.i384 = getelementptr inbounds i8, i8* %193, i64 -8
  %196 = bitcast i8* %_M_refcount.i.i384 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i386, label %if.else.i.i.i388

if.then.i.i.i386:                                 ; preds = %if.then.i.i385
  %197 = atomicrmw volatile add i32* %196, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i391

if.else.i.i.i388:                                 ; preds = %if.then.i.i385
  %198 = load i32, i32* %196, align 8, !tbaa !15
  %add.i.i.i.i387 = add nsw i32 %198, -1
  store i32 %add.i.i.i.i387, i32* %196, align 8, !tbaa !15
  br label %invoke.cont.i.i391

invoke.cont.i.i391:                               ; preds = %if.else.i.i.i388, %if.then.i.i.i386
  %retval.0.i.i.i389 = phi i32 [ %197, %if.then.i.i.i386 ], [ %198, %if.else.i.i.i388 ]
  %cmp3.i.i390 = icmp slt i32 %retval.0.i.i.i389, 1
  br i1 %cmp3.i.i390, label %if.then4.i.i392, label %_ZNSsD2Ev.exit393

if.then4.i.i392:                                  ; preds = %invoke.cont.i.i391
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %194, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i380) #11
  br label %_ZNSsD2Ev.exit393

_ZNSsD2Ev.exit393:                                ; preds = %invoke.cont144, %invoke.cont.i.i391, %if.then4.i.i392
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %195) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %189) #11
  br label %if.end148

lpad143:                                          ; preds = %invoke.cont142
  %199 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup147

ehcleanup147:                                     ; preds = %lpad.i375, %lpad143
  %.pn23 = phi { i8*, i32 } [ %199, %lpad143 ], [ %192, %lpad.i375 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp140) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %189) #11
  br label %ehcleanup159

if.end148:                                        ; preds = %_ZNSsD2Ev.exit393, %_ZNSsD2Ev.exit364
  %200 = bitcast %"class.std::basic_ofstream"* %myfile to i8*
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %200) #11
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248) %myfile)
          to label %invoke.cont150 unwind label %lpad149

invoke.cont150:                                   ; preds = %if.end148
  %201 = load i8*, i8** %_M_p.i.i136, align 8, !tbaa !12
  %_M_filebuf.i = getelementptr inbounds %"class.std::basic_ofstream", %"class.std::basic_ofstream"* %myfile, i64 0, i32 1
  %call2.i396 = invoke noundef %"class.std::basic_filebuf"* @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(%"class.std::basic_filebuf"* noundef nonnull align 8 dereferenceable(240) %_M_filebuf.i, i8* noundef %201, i32 noundef signext 16)
          to label %call2.i.noexc unwind label %lpad152

call2.i.noexc:                                    ; preds = %invoke.cont150
  %tobool.not.i = icmp eq %"class.std::basic_filebuf"* %call2.i396, null
  %202 = bitcast %"class.std::basic_ofstream"* %myfile to i8**
  %vtable.i = load i8*, i8** %202, align 8, !tbaa !67
  %vbase.offset.ptr.i = getelementptr i8, i8* %vtable.i, i64 -24
  %203 = bitcast i8* %vbase.offset.ptr.i to i64*
  %vbase.offset.i = load i64, i64* %203, align 8
  %add.ptr.i395 = getelementptr inbounds i8, i8* %200, i64 %vbase.offset.i
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %call2.i.noexc
  %_M_streambuf_state.i.i.i = getelementptr inbounds i8, i8* %add.ptr.i395, i64 32
  %204 = bitcast i8* %_M_streambuf_state.i.i.i to i32*
  %205 = load i32, i32* %204, align 8, !tbaa !69
  %or.i.i.i = or i32 %205, 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %call2.i.noexc
  %.sink.i = phi i32 [ %or.i.i.i, %if.then.i ], [ 0, %call2.i.noexc ]
  %206 = bitcast i8* %add.ptr.i395 to %"class.std::basic_ios"*
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* noundef nonnull align 8 dereferenceable(264) %206, i32 noundef signext %.sink.i)
          to label %invoke.cont153 unwind label %lpad152

invoke.cont153:                                   ; preds = %if.end.i
  %207 = bitcast %"class.std::basic_ofstream"* %myfile to %"class.std::basic_ostream"*
  %208 = load i8*, i8** %_M_p.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i399 = getelementptr inbounds i8, i8* %208, i64 -24
  %_M_length.i.i400 = bitcast i8* %arrayidx.i.i.i399 to i64*
  %209 = load i64, i64* %_M_length.i.i400, align 8, !tbaa !42
  %call2.i402 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %207, i8* noundef nonnull %208, i64 noundef %209)
          to label %invoke.cont154 unwind label %lpad152

invoke.cont154:                                   ; preds = %invoke.cont153
  %call.i404414 = invoke noundef %"class.std::basic_filebuf"* @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(%"class.std::basic_filebuf"* noundef nonnull align 8 dereferenceable(240) %_M_filebuf.i)
          to label %call.i404.noexc unwind label %lpad152

call.i404.noexc:                                  ; preds = %invoke.cont154
  %tobool.not.i405 = icmp eq %"class.std::basic_filebuf"* %call.i404414, null
  br i1 %tobool.not.i405, label %if.then.i412, label %invoke.cont156

if.then.i412:                                     ; preds = %call.i404.noexc
  %vtable.i406 = load i8*, i8** %202, align 8, !tbaa !67
  %vbase.offset.ptr.i407 = getelementptr i8, i8* %vtable.i406, i64 -24
  %210 = bitcast i8* %vbase.offset.ptr.i407 to i64*
  %vbase.offset.i408 = load i64, i64* %210, align 8
  %add.ptr.i409 = getelementptr inbounds i8, i8* %200, i64 %vbase.offset.i408
  %211 = bitcast i8* %add.ptr.i409 to %"class.std::basic_ios"*
  %_M_streambuf_state.i.i.i410 = getelementptr inbounds i8, i8* %add.ptr.i409, i64 32
  %212 = bitcast i8* %_M_streambuf_state.i.i.i410 to i32*
  %213 = load i32, i32* %212, align 8, !tbaa !69
  %or.i.i.i411 = or i32 %213, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* noundef nonnull align 8 dereferenceable(264) %211, i32 noundef signext %or.i.i.i411)
          to label %invoke.cont156 unwind label %lpad152

invoke.cont156:                                   ; preds = %call.i404.noexc, %if.then.i412
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248) %myfile) #11
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %200) #11
  %214 = load i8*, i8** %_M_p.i.i136, align 8, !tbaa !12
  %arrayidx.i.i418 = getelementptr inbounds i8, i8* %214, i64 -24
  %215 = bitcast i8* %arrayidx.i.i418 to %"struct.std::basic_string<char>::_Rep"*
  %216 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i416, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %216) #11
  %cmp.not.i.i419 = icmp eq i8* %arrayidx.i.i418, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i419, label %_ZNSsD2Ev.exit429, label %if.then.i.i421, !prof !14

if.then.i.i421:                                   ; preds = %invoke.cont156
  %_M_refcount.i.i420 = getelementptr inbounds i8, i8* %214, i64 -8
  %217 = bitcast i8* %_M_refcount.i.i420 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i422, label %if.else.i.i.i424

if.then.i.i.i422:                                 ; preds = %if.then.i.i421
  %218 = atomicrmw volatile add i32* %217, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i427

if.else.i.i.i424:                                 ; preds = %if.then.i.i421
  %219 = load i32, i32* %217, align 8, !tbaa !15
  %add.i.i.i.i423 = add nsw i32 %219, -1
  store i32 %add.i.i.i.i423, i32* %217, align 8, !tbaa !15
  br label %invoke.cont.i.i427

invoke.cont.i.i427:                               ; preds = %if.else.i.i.i424, %if.then.i.i.i422
  %retval.0.i.i.i425 = phi i32 [ %218, %if.then.i.i.i422 ], [ %219, %if.else.i.i.i424 ]
  %cmp3.i.i426 = icmp slt i32 %retval.0.i.i.i425, 1
  br i1 %cmp3.i.i426, label %if.then4.i.i428, label %_ZNSsD2Ev.exit429

if.then4.i.i428:                                  ; preds = %invoke.cont.i.i427
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %215, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i416) #11
  br label %_ZNSsD2Ev.exit429

_ZNSsD2Ev.exit429:                                ; preds = %invoke.cont156, %invoke.cont.i.i427, %if.then4.i.i428
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %216) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %64) #11
  call void @llvm.lifetime.end.p0i8(i64 25, i8* nonnull %57) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %56) #11
  ret void

lpad149:                                          ; preds = %if.end148
  %220 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup158

lpad152:                                          ; preds = %if.then.i412, %invoke.cont154, %invoke.cont153, %if.end.i, %invoke.cont150
  %221 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248) %myfile) #11
  br label %ehcleanup158

ehcleanup158:                                     ; preds = %lpad152, %lpad149
  %.pn25 = phi { i8*, i32 } [ %221, %lpad152 ], [ %220, %lpad149 ]
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %200) #11
  br label %ehcleanup159

ehcleanup159:                                     ; preds = %ehcleanup158, %ehcleanup147, %ehcleanup138, %ehcleanup104, %ehcleanup81, %lpad61
  %.pn25.pn = phi { i8*, i32 } [ %.pn25, %ehcleanup158 ], [ %.pn27.pn.pn.pn, %ehcleanup138 ], [ %.pn23, %ehcleanup147 ], [ %.pn19.pn.pn, %ehcleanup104 ], [ %.pn32.pn.pn, %ehcleanup81 ], [ %123, %lpad61 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %filename) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %64) #11
  call void @llvm.lifetime.end.p0i8(i64 25, i8* nonnull %57) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %56) #11
  br label %ehcleanup164

ehcleanup164:                                     ; preds = %ehcleanup159, %ehcleanup50, %ehcleanup29, %ehcleanup11
  %.pn37.pn.pn.pn = phi { i8*, i32 } [ %.pn37.pn.pn, %ehcleanup50 ], [ %.pn25.pn, %ehcleanup159 ], [ %.pn15.pn.pn, %ehcleanup29 ], [ %.pn.pn.pn, %ehcleanup11 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %agg.result) #11
  resume { i8*, i32 } %.pn37.pn.pn.pn
}

declare void @_ZN12YAML_Element9printYAMLESs(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8, %class.YAML_Element* noundef nonnull align 8 dereferenceable(40), %"class.std::basic_string"* noundef) local_unnamed_addr #0

declare void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i8* noundef, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare i64 @time(i64* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64* noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef signext i32 @sprintf(i8* noalias nocapture noundef writeonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree
declare noundef signext i32 @system(i8* nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248)) unnamed_addr #3 align 2

; Function Attrs: nounwind uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248)) unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i8* noundef, i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZNSs4swapERSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6insertEmPKcm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare noundef signext i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i8* noundef) local_unnamed_addr #1

declare void @_ZNSs7reserveEm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

declare noundef %"class.std::basic_filebuf"* @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(%"class.std::basic_filebuf"* noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #0

declare noundef %"class.std::basic_filebuf"* @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(%"class.std::basic_filebuf"* noundef nonnull align 8 dereferenceable(240), i8* noundef, i32 noundef signext) local_unnamed_addr #0

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* noundef nonnull align 8 dereferenceable(264), i32 noundef signext) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_YAML_Doc.cpp() #3 section ".text.startup" {
entry:
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %0 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #11
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #4 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #5 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #8 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #11 = { nounwind }

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
!12 = !{!13, !6, i64 0}
!13 = !{!"_ZTSSs", !5, i64 0}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !7, i64 0}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_RKS6_: %agg.result"}
!19 = distinct !{!19, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_RKS6_"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_: %agg.result"}
!22 = distinct !{!22, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_RKS6_: %agg.result"}
!25 = distinct !{!25, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_RKS6_"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_: %agg.result"}
!28 = distinct !{!28, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_"}
!29 = !{!10, !6, i64 8}
!30 = !{!31, !16, i64 20}
!31 = !{!"_ZTS2tm", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !32, i64 40, !6, i64 48}
!32 = !{!"long", !7, i64 0}
!33 = !{!31, !16, i64 16}
!34 = !{!31, !16, i64 12}
!35 = !{!31, !16, i64 8}
!36 = !{!31, !16, i64 4}
!37 = !{!31, !16, i64 0}
!38 = !{!6, !6, i64 0}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_OS6_: %agg.result"}
!41 = distinct !{!41, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_OS6_"}
!42 = !{!43, !32, i64 0}
!43 = !{!"_ZTSNSs9_Rep_baseE", !32, i64 0, !32, i64 8, !16, i64 16}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_RKS6_: %agg.result"}
!48 = distinct !{!48, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_RKS6_"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_: %agg.result"}
!51 = distinct !{!51, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_OS6_: %agg.result"}
!54 = distinct !{!54, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_OS6_"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_: %agg.result"}
!57 = distinct !{!57, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_: %agg.result"}
!60 = distinct !{!60, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_RKS6_: %agg.result"}
!63 = distinct !{!63, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_RKS6_"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_: %agg.result"}
!66 = distinct !{!66, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_"}
!67 = !{!68, !68, i64 0}
!68 = !{!"vtable pointer", !8, i64 0}
!69 = !{!70, !72, i64 32}
!70 = !{!"_ZTSSt8ios_base", !32, i64 8, !32, i64 16, !71, i64 24, !72, i64 28, !72, i64 32, !6, i64 40, !73, i64 48, !7, i64 64, !16, i64 192, !6, i64 200, !74, i64 208}
!71 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!72 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!73 = !{!"_ZTSNSt8ios_base6_WordsE", !6, i64 0, !32, i64 8}
!74 = !{!"_ZTSSt6locale", !6, i64 0}

; __CLANG_OFFLOAD_BUNDLE____END__ host-powerpc64le-unknown-linux-gnu
