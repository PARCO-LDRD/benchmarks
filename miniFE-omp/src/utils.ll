
; __CLANG_OFFLOAD_BUNDLE____START__ openmp-nvptx64-nvidia-cuda
; ModuleID = '../utils/utils.cpp'
source_filename = "../utils/utils.cpp"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

@__omp_rtl_debug_kind = weak_odr hidden local_unnamed_addr constant i32 0
@__omp_rtl_assume_teams_oversubscription = weak_odr hidden local_unnamed_addr constant i32 0
@__omp_rtl_assume_threads_oversubscription = weak_odr hidden local_unnamed_addr constant i32 0

; Function Attrs: cold convergent mustprogress noinline nounwind optsize
define weak protected { double, double } @__muldc3(double noundef %__a, double noundef %__b, double noundef %__c, double noundef %__d) local_unnamed_addr #0 {
entry:
  %mul = fmul contract double %__a, %__c
  %mul1 = fmul contract double %__b, %__d
  %mul2 = fmul contract double %__a, %__d
  %mul3 = fmul contract double %__b, %__c
  %sub = fsub contract double %mul, %mul1
  %add = fadd contract double %mul3, %mul2
  %call = tail call i32 @__nv_isnand(double noundef %sub) #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end106, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call6 = tail call i32 @__nv_isnand(double noundef %add) #2
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end106, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call8 = tail call i32 @__nv_isinfd(double noundef %__a) #2
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %if.then12

lor.lhs.false:                                    ; preds = %if.then
  %call10 = tail call i32 @__nv_isinfd(double noundef %__b) #2
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end30, label %if.then12

if.then12:                                        ; preds = %lor.lhs.false, %if.then
  %call13 = tail call i32 @__nv_isinfd(double noundef %__a) #2
  %tobool14.not = icmp ne i32 %call13, 0
  %conv = uitofp i1 %tobool14.not to double
  %call15 = tail call contract double @__nv_copysign(double noundef %conv, double noundef %__a) #2
  %call16 = tail call i32 @__nv_isinfd(double noundef %__b) #2
  %tobool17.not = icmp ne i32 %call16, 0
  %conv19 = uitofp i1 %tobool17.not to double
  %call20 = tail call contract double @__nv_copysign(double noundef %conv19, double noundef %__b) #2
  %call21 = tail call i32 @__nv_isnand(double noundef %__c) #2
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end, label %if.then23

if.then23:                                        ; preds = %if.then12
  %call24 = tail call contract double @__nv_copysign(double noundef 0.000000e+00, double noundef %__c) #2
  br label %if.end

if.end:                                           ; preds = %if.then23, %if.then12
  %__c.addr.0 = phi double [ %call24, %if.then23 ], [ %__c, %if.then12 ]
  %call25 = tail call i32 @__nv_isnand(double noundef %__d) #2
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end30, label %if.then27

if.then27:                                        ; preds = %if.end
  %call28 = tail call contract double @__nv_copysign(double noundef 0.000000e+00, double noundef %__d) #2
  br label %if.end30

if.end30:                                         ; preds = %if.end, %if.then27, %lor.lhs.false
  %__d.addr.1 = phi double [ %__d, %lor.lhs.false ], [ %call28, %if.then27 ], [ %__d, %if.end ]
  %__c.addr.1 = phi double [ %__c, %lor.lhs.false ], [ %__c.addr.0, %if.then27 ], [ %__c.addr.0, %if.end ]
  %__b.addr.0 = phi double [ %__b, %lor.lhs.false ], [ %call20, %if.then27 ], [ %call20, %if.end ]
  %__a.addr.0 = phi double [ %__a, %lor.lhs.false ], [ %call15, %if.then27 ], [ %call15, %if.end ]
  %__recalc.0 = phi i32 [ 0, %lor.lhs.false ], [ 1, %if.then27 ], [ 1, %if.end ]
  %call31 = tail call i32 @__nv_isinfd(double noundef %__c.addr.1) #2
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %lor.lhs.false33, label %if.then36

lor.lhs.false33:                                  ; preds = %if.end30
  %call34 = tail call i32 @__nv_isinfd(double noundef %__d.addr.1) #2
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end57, label %if.then36

if.then36:                                        ; preds = %lor.lhs.false33, %if.end30
  %call37 = tail call i32 @__nv_isinfd(double noundef %__c.addr.1) #2
  %tobool38.not = icmp ne i32 %call37, 0
  %conv40 = uitofp i1 %tobool38.not to double
  %call41 = tail call contract double @__nv_copysign(double noundef %conv40, double noundef %__c.addr.1) #2
  %call42 = tail call i32 @__nv_isinfd(double noundef %__d.addr.1) #2
  %tobool43.not = icmp ne i32 %call42, 0
  %conv45 = uitofp i1 %tobool43.not to double
  %call46 = tail call contract double @__nv_copysign(double noundef %conv45, double noundef %__d.addr.1) #2
  %call47 = tail call i32 @__nv_isnand(double noundef %__a.addr.0) #2
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end51, label %if.then49

if.then49:                                        ; preds = %if.then36
  %call50 = tail call contract double @__nv_copysign(double noundef 0.000000e+00, double noundef %__a.addr.0) #2
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.then36
  %__a.addr.1 = phi double [ %call50, %if.then49 ], [ %__a.addr.0, %if.then36 ]
  %call52 = tail call i32 @__nv_isnand(double noundef %__b.addr.0) #2
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end57, label %if.then54

if.then54:                                        ; preds = %if.end51
  %call55 = tail call contract double @__nv_copysign(double noundef 0.000000e+00, double noundef %__b.addr.0) #2
  br label %if.end57

if.end57:                                         ; preds = %if.end51, %if.then54, %lor.lhs.false33
  %__d.addr.2 = phi double [ %__d.addr.1, %lor.lhs.false33 ], [ %call46, %if.then54 ], [ %call46, %if.end51 ]
  %__c.addr.2 = phi double [ %__c.addr.1, %lor.lhs.false33 ], [ %call41, %if.then54 ], [ %call41, %if.end51 ]
  %__b.addr.2 = phi double [ %__b.addr.0, %lor.lhs.false33 ], [ %call55, %if.then54 ], [ %__b.addr.0, %if.end51 ]
  %__a.addr.2 = phi double [ %__a.addr.0, %lor.lhs.false33 ], [ %__a.addr.1, %if.then54 ], [ %__a.addr.1, %if.end51 ]
  %__recalc.1 = phi i32 [ %__recalc.0, %lor.lhs.false33 ], [ 1, %if.then54 ], [ 1, %if.end51 ]
  %tobool58.not = icmp eq i32 %__recalc.1, 0
  br i1 %tobool58.not, label %land.lhs.true59, label %if.end92

land.lhs.true59:                                  ; preds = %if.end57
  %call60 = tail call i32 @__nv_isinfd(double noundef %mul) #2
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %lor.lhs.false62, label %if.then71

lor.lhs.false62:                                  ; preds = %land.lhs.true59
  %call63 = tail call i32 @__nv_isinfd(double noundef %mul1) #2
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %lor.lhs.false65, label %if.then71

lor.lhs.false65:                                  ; preds = %lor.lhs.false62
  %call66 = tail call i32 @__nv_isinfd(double noundef %mul2) #2
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %lor.lhs.false68, label %if.then71

lor.lhs.false68:                                  ; preds = %lor.lhs.false65
  %call69 = tail call i32 @__nv_isinfd(double noundef %mul3) #2
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end92, label %if.then71

if.then71:                                        ; preds = %lor.lhs.false68, %lor.lhs.false65, %lor.lhs.false62, %land.lhs.true59
  %call72 = tail call i32 @__nv_isnand(double noundef %__a.addr.2) #2
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end76, label %if.then74

if.then74:                                        ; preds = %if.then71
  %call75 = tail call contract double @__nv_copysign(double noundef 0.000000e+00, double noundef %__a.addr.2) #2
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.then71
  %__a.addr.3 = phi double [ %call75, %if.then74 ], [ %__a.addr.2, %if.then71 ]
  %call77 = tail call i32 @__nv_isnand(double noundef %__b.addr.2) #2
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end81, label %if.then79

if.then79:                                        ; preds = %if.end76
  %call80 = tail call contract double @__nv_copysign(double noundef 0.000000e+00, double noundef %__b.addr.2) #2
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.end76
  %__b.addr.3 = phi double [ %call80, %if.then79 ], [ %__b.addr.2, %if.end76 ]
  %call82 = tail call i32 @__nv_isnand(double noundef %__c.addr.2) #2
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end86, label %if.then84

if.then84:                                        ; preds = %if.end81
  %call85 = tail call contract double @__nv_copysign(double noundef 0.000000e+00, double noundef %__c.addr.2) #2
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.end81
  %__c.addr.3 = phi double [ %call85, %if.then84 ], [ %__c.addr.2, %if.end81 ]
  %call87 = tail call i32 @__nv_isnand(double noundef %__d.addr.2) #2
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end92, label %if.then89

if.then89:                                        ; preds = %if.end86
  %call90 = tail call contract double @__nv_copysign(double noundef 0.000000e+00, double noundef %__d.addr.2) #2
  br label %if.end92

if.end92:                                         ; preds = %if.end86, %if.then89, %lor.lhs.false68, %if.end57
  %__d.addr.4 = phi double [ %__d.addr.2, %if.end57 ], [ %__d.addr.2, %lor.lhs.false68 ], [ %call90, %if.then89 ], [ %__d.addr.2, %if.end86 ]
  %__c.addr.4 = phi double [ %__c.addr.2, %if.end57 ], [ %__c.addr.2, %lor.lhs.false68 ], [ %__c.addr.3, %if.then89 ], [ %__c.addr.3, %if.end86 ]
  %__b.addr.4 = phi double [ %__b.addr.2, %if.end57 ], [ %__b.addr.2, %lor.lhs.false68 ], [ %__b.addr.3, %if.then89 ], [ %__b.addr.3, %if.end86 ]
  %__a.addr.4 = phi double [ %__a.addr.2, %if.end57 ], [ %__a.addr.2, %lor.lhs.false68 ], [ %__a.addr.3, %if.then89 ], [ %__a.addr.3, %if.end86 ]
  %tobool93.not = phi i1 [ false, %if.end57 ], [ true, %lor.lhs.false68 ], [ false, %if.then89 ], [ false, %if.end86 ]
  br i1 %tobool93.not, label %if.end106, label %if.then94

if.then94:                                        ; preds = %if.end92
  %mul95 = fmul contract double %__c.addr.4, %__a.addr.4
  %mul96 = fmul contract double %__d.addr.4, %__b.addr.4
  %sub97 = fsub contract double %mul95, %mul96
  %mul98 = fmul contract double %sub97, 0x7FF0000000000000
  %mul100 = fmul contract double %__d.addr.4, %__a.addr.4
  %mul101 = fmul contract double %__c.addr.4, %__b.addr.4
  %add102 = fadd contract double %mul101, %mul100
  %mul103 = fmul contract double %add102, 0x7FF0000000000000
  br label %if.end106

if.end106:                                        ; preds = %if.end92, %if.then94, %land.lhs.true, %entry
  %z.sroa.6.1 = phi double [ %add, %land.lhs.true ], [ %add, %entry ], [ %mul103, %if.then94 ], [ %add, %if.end92 ]
  %z.sroa.0.1 = phi double [ %sub, %land.lhs.true ], [ %sub, %entry ], [ %mul98, %if.then94 ], [ %sub, %if.end92 ]
  %.fca.0.insert = insertvalue { double, double } poison, double %z.sroa.0.1, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %z.sroa.6.1, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: convergent
declare i32 @__nv_isnand(double noundef) local_unnamed_addr #1

; Function Attrs: convergent
declare i32 @__nv_isinfd(double noundef) local_unnamed_addr #1

; Function Attrs: convergent
declare double @__nv_copysign(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: cold convergent mustprogress noinline nounwind optsize
define weak protected { float, float } @__mulsc3(float noundef %__a, float noundef %__b, float noundef %__c, float noundef %__d) local_unnamed_addr #0 {
entry:
  %mul = fmul contract float %__a, %__c
  %mul1 = fmul contract float %__b, %__d
  %mul2 = fmul contract float %__a, %__d
  %mul3 = fmul contract float %__b, %__c
  %sub = fsub contract float %mul, %mul1
  %add = fadd contract float %mul3, %mul2
  %call = tail call i32 @__nv_isnanf(float noundef %sub) #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end106, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call6 = tail call i32 @__nv_isnanf(float noundef %add) #2
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end106, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call8 = tail call i32 @__nv_isinff(float noundef %__a) #2
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %if.then12

lor.lhs.false:                                    ; preds = %if.then
  %call10 = tail call i32 @__nv_isinff(float noundef %__b) #2
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end30, label %if.then12

if.then12:                                        ; preds = %lor.lhs.false, %if.then
  %call13 = tail call i32 @__nv_isinff(float noundef %__a) #2
  %tobool14.not = icmp ne i32 %call13, 0
  %conv = uitofp i1 %tobool14.not to float
  %call15 = tail call contract float @__nv_copysignf(float noundef %conv, float noundef %__a) #2
  %call16 = tail call i32 @__nv_isinff(float noundef %__b) #2
  %tobool17.not = icmp ne i32 %call16, 0
  %conv19 = uitofp i1 %tobool17.not to float
  %call20 = tail call contract float @__nv_copysignf(float noundef %conv19, float noundef %__b) #2
  %call21 = tail call i32 @__nv_isnanf(float noundef %__c) #2
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end, label %if.then23

if.then23:                                        ; preds = %if.then12
  %call24 = tail call contract float @__nv_copysignf(float noundef 0.000000e+00, float noundef %__c) #2
  br label %if.end

if.end:                                           ; preds = %if.then23, %if.then12
  %__c.addr.0 = phi float [ %call24, %if.then23 ], [ %__c, %if.then12 ]
  %call25 = tail call i32 @__nv_isnanf(float noundef %__d) #2
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end30, label %if.then27

if.then27:                                        ; preds = %if.end
  %call28 = tail call contract float @__nv_copysignf(float noundef 0.000000e+00, float noundef %__d) #2
  br label %if.end30

if.end30:                                         ; preds = %if.end, %if.then27, %lor.lhs.false
  %__d.addr.1 = phi float [ %__d, %lor.lhs.false ], [ %call28, %if.then27 ], [ %__d, %if.end ]
  %__c.addr.1 = phi float [ %__c, %lor.lhs.false ], [ %__c.addr.0, %if.then27 ], [ %__c.addr.0, %if.end ]
  %__b.addr.0 = phi float [ %__b, %lor.lhs.false ], [ %call20, %if.then27 ], [ %call20, %if.end ]
  %__a.addr.0 = phi float [ %__a, %lor.lhs.false ], [ %call15, %if.then27 ], [ %call15, %if.end ]
  %__recalc.0 = phi i32 [ 0, %lor.lhs.false ], [ 1, %if.then27 ], [ 1, %if.end ]
  %call31 = tail call i32 @__nv_isinff(float noundef %__c.addr.1) #2
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %lor.lhs.false33, label %if.then36

lor.lhs.false33:                                  ; preds = %if.end30
  %call34 = tail call i32 @__nv_isinff(float noundef %__d.addr.1) #2
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end57, label %if.then36

if.then36:                                        ; preds = %lor.lhs.false33, %if.end30
  %call37 = tail call i32 @__nv_isinff(float noundef %__c.addr.1) #2
  %tobool38.not = icmp ne i32 %call37, 0
  %conv40 = uitofp i1 %tobool38.not to float
  %call41 = tail call contract float @__nv_copysignf(float noundef %conv40, float noundef %__c.addr.1) #2
  %call42 = tail call i32 @__nv_isinff(float noundef %__d.addr.1) #2
  %tobool43.not = icmp ne i32 %call42, 0
  %conv45 = uitofp i1 %tobool43.not to float
  %call46 = tail call contract float @__nv_copysignf(float noundef %conv45, float noundef %__d.addr.1) #2
  %call47 = tail call i32 @__nv_isnanf(float noundef %__a.addr.0) #2
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end51, label %if.then49

if.then49:                                        ; preds = %if.then36
  %call50 = tail call contract float @__nv_copysignf(float noundef 0.000000e+00, float noundef %__a.addr.0) #2
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.then36
  %__a.addr.1 = phi float [ %call50, %if.then49 ], [ %__a.addr.0, %if.then36 ]
  %call52 = tail call i32 @__nv_isnanf(float noundef %__b.addr.0) #2
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end57, label %if.then54

if.then54:                                        ; preds = %if.end51
  %call55 = tail call contract float @__nv_copysignf(float noundef 0.000000e+00, float noundef %__b.addr.0) #2
  br label %if.end57

if.end57:                                         ; preds = %if.end51, %if.then54, %lor.lhs.false33
  %__d.addr.2 = phi float [ %__d.addr.1, %lor.lhs.false33 ], [ %call46, %if.then54 ], [ %call46, %if.end51 ]
  %__c.addr.2 = phi float [ %__c.addr.1, %lor.lhs.false33 ], [ %call41, %if.then54 ], [ %call41, %if.end51 ]
  %__b.addr.2 = phi float [ %__b.addr.0, %lor.lhs.false33 ], [ %call55, %if.then54 ], [ %__b.addr.0, %if.end51 ]
  %__a.addr.2 = phi float [ %__a.addr.0, %lor.lhs.false33 ], [ %__a.addr.1, %if.then54 ], [ %__a.addr.1, %if.end51 ]
  %__recalc.1 = phi i32 [ %__recalc.0, %lor.lhs.false33 ], [ 1, %if.then54 ], [ 1, %if.end51 ]
  %tobool58.not = icmp eq i32 %__recalc.1, 0
  br i1 %tobool58.not, label %land.lhs.true59, label %if.end92

land.lhs.true59:                                  ; preds = %if.end57
  %call60 = tail call i32 @__nv_isinff(float noundef %mul) #2
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %lor.lhs.false62, label %if.then71

lor.lhs.false62:                                  ; preds = %land.lhs.true59
  %call63 = tail call i32 @__nv_isinff(float noundef %mul1) #2
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %lor.lhs.false65, label %if.then71

lor.lhs.false65:                                  ; preds = %lor.lhs.false62
  %call66 = tail call i32 @__nv_isinff(float noundef %mul2) #2
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %lor.lhs.false68, label %if.then71

lor.lhs.false68:                                  ; preds = %lor.lhs.false65
  %call69 = tail call i32 @__nv_isinff(float noundef %mul3) #2
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end92, label %if.then71

if.then71:                                        ; preds = %lor.lhs.false68, %lor.lhs.false65, %lor.lhs.false62, %land.lhs.true59
  %call72 = tail call i32 @__nv_isnanf(float noundef %__a.addr.2) #2
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end76, label %if.then74

if.then74:                                        ; preds = %if.then71
  %call75 = tail call contract float @__nv_copysignf(float noundef 0.000000e+00, float noundef %__a.addr.2) #2
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.then71
  %__a.addr.3 = phi float [ %call75, %if.then74 ], [ %__a.addr.2, %if.then71 ]
  %call77 = tail call i32 @__nv_isnanf(float noundef %__b.addr.2) #2
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end81, label %if.then79

if.then79:                                        ; preds = %if.end76
  %call80 = tail call contract float @__nv_copysignf(float noundef 0.000000e+00, float noundef %__b.addr.2) #2
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.end76
  %__b.addr.3 = phi float [ %call80, %if.then79 ], [ %__b.addr.2, %if.end76 ]
  %call82 = tail call i32 @__nv_isnanf(float noundef %__c.addr.2) #2
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end86, label %if.then84

if.then84:                                        ; preds = %if.end81
  %call85 = tail call contract float @__nv_copysignf(float noundef 0.000000e+00, float noundef %__c.addr.2) #2
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.end81
  %__c.addr.3 = phi float [ %call85, %if.then84 ], [ %__c.addr.2, %if.end81 ]
  %call87 = tail call i32 @__nv_isnanf(float noundef %__d.addr.2) #2
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end92, label %if.then89

if.then89:                                        ; preds = %if.end86
  %call90 = tail call contract float @__nv_copysignf(float noundef 0.000000e+00, float noundef %__d.addr.2) #2
  br label %if.end92

if.end92:                                         ; preds = %if.end86, %if.then89, %lor.lhs.false68, %if.end57
  %__d.addr.4 = phi float [ %__d.addr.2, %if.end57 ], [ %__d.addr.2, %lor.lhs.false68 ], [ %call90, %if.then89 ], [ %__d.addr.2, %if.end86 ]
  %__c.addr.4 = phi float [ %__c.addr.2, %if.end57 ], [ %__c.addr.2, %lor.lhs.false68 ], [ %__c.addr.3, %if.then89 ], [ %__c.addr.3, %if.end86 ]
  %__b.addr.4 = phi float [ %__b.addr.2, %if.end57 ], [ %__b.addr.2, %lor.lhs.false68 ], [ %__b.addr.3, %if.then89 ], [ %__b.addr.3, %if.end86 ]
  %__a.addr.4 = phi float [ %__a.addr.2, %if.end57 ], [ %__a.addr.2, %lor.lhs.false68 ], [ %__a.addr.3, %if.then89 ], [ %__a.addr.3, %if.end86 ]
  %tobool93.not = phi i1 [ false, %if.end57 ], [ true, %lor.lhs.false68 ], [ false, %if.then89 ], [ false, %if.end86 ]
  br i1 %tobool93.not, label %if.end106, label %if.then94

if.then94:                                        ; preds = %if.end92
  %mul95 = fmul contract float %__c.addr.4, %__a.addr.4
  %mul96 = fmul contract float %__d.addr.4, %__b.addr.4
  %sub97 = fsub contract float %mul95, %mul96
  %mul98 = fmul contract float %sub97, 0x7FF0000000000000
  %mul100 = fmul contract float %__d.addr.4, %__a.addr.4
  %mul101 = fmul contract float %__c.addr.4, %__b.addr.4
  %add102 = fadd contract float %mul101, %mul100
  %mul103 = fmul contract float %add102, 0x7FF0000000000000
  br label %if.end106

if.end106:                                        ; preds = %if.end92, %if.then94, %land.lhs.true, %entry
  %z.sroa.6.1 = phi float [ %add, %land.lhs.true ], [ %add, %entry ], [ %mul103, %if.then94 ], [ %add, %if.end92 ]
  %z.sroa.0.1 = phi float [ %sub, %land.lhs.true ], [ %sub, %entry ], [ %mul98, %if.then94 ], [ %sub, %if.end92 ]
  %.fca.0.insert = insertvalue { float, float } poison, float %z.sroa.0.1, 0
  %.fca.1.insert = insertvalue { float, float } %.fca.0.insert, float %z.sroa.6.1, 1
  ret { float, float } %.fca.1.insert
}

; Function Attrs: convergent
declare i32 @__nv_isnanf(float noundef) local_unnamed_addr #1

; Function Attrs: convergent
declare i32 @__nv_isinff(float noundef) local_unnamed_addr #1

; Function Attrs: convergent
declare float @__nv_copysignf(float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: cold convergent mustprogress noinline nounwind optsize
define weak protected { double, double } @__divdc3(double noundef %__a, double noundef %__b, double noundef %__c, double noundef %__d) local_unnamed_addr #0 {
entry:
  %call = tail call contract double @__nv_fabs(double noundef %__c) #2
  %call1 = tail call contract double @__nv_fabs(double noundef %__d) #2
  %call2 = tail call contract double @__nv_fmax(double noundef %call, double noundef %call1) #2
  %call3 = tail call contract double @__nv_logb(double noundef %call2) #2
  %call4 = tail call i32 @__nv_isfinited(double noundef %call3) #2
  %tobool.not = icmp eq i32 %call4, 0
  %conv = fptosi double %call3 to i32
  %sub = sub nsw i32 0, %conv
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call5 = tail call contract double @__nv_scalbn(double noundef %__c, i32 noundef %sub) #2
  %call7 = tail call contract double @__nv_scalbn(double noundef %__d, i32 noundef %sub) #2
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %__c.addr.0 = phi double [ %call5, %if.then ], [ %__c, %entry ]
  %__d.addr.0 = phi double [ %call7, %if.then ], [ %__d, %entry ]
  %__ilogbw.0 = phi i32 [ %conv, %if.then ], [ 0, %entry ]
  %mul = fmul contract double %__c.addr.0, %__c.addr.0
  %mul8 = fmul contract double %__d.addr.0, %__d.addr.0
  %add = fadd contract double %mul, %mul8
  %mul9 = fmul contract double %__c.addr.0, %__a
  %mul10 = fmul contract double %__d.addr.0, %__b
  %add11 = fadd contract double %mul9, %mul10
  %div = fdiv contract double %add11, %add
  %sub12 = sub nsw i32 0, %__ilogbw.0
  %call13 = tail call contract double @__nv_scalbn(double noundef %div, i32 noundef %sub12) #2
  %mul14 = fmul contract double %__c.addr.0, %__b
  %mul15 = fmul contract double %__d.addr.0, %__a
  %sub16 = fsub contract double %mul14, %mul15
  %div17 = fdiv contract double %sub16, %add
  %call19 = tail call contract double @__nv_scalbn(double noundef %div17, i32 noundef %sub12) #2
  %call21 = tail call i32 @__nv_isnand(double noundef %call13) #2
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end101, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call24 = tail call i32 @__nv_isnand(double noundef %call19) #2
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end101, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  %cmp = fcmp contract oeq double %add, 0.000000e+00
  br i1 %cmp, label %land.lhs.true27, label %if.else

land.lhs.true27:                                  ; preds = %if.then26
  %call28 = tail call i32 @__nv_isnand(double noundef %__a) #2
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true27
  %call30 = tail call i32 @__nv_isnand(double noundef %__b) #2
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %if.else

if.then32:                                        ; preds = %lor.lhs.false, %land.lhs.true27
  %call33 = tail call contract double @__nv_copysign(double noundef 0x7FF0000000000000, double noundef %__c.addr.0) #2
  %mul34 = fmul contract double %call33, %__a
  %call36 = tail call contract double @__nv_copysign(double noundef 0x7FF0000000000000, double noundef %__c.addr.0) #2
  %mul37 = fmul contract double %call36, %__b
  br label %if.end101

if.else:                                          ; preds = %lor.lhs.false, %if.then26
  %call39 = tail call i32 @__nv_isinfd(double noundef %__a) #2
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %lor.lhs.false41, label %land.lhs.true44

lor.lhs.false41:                                  ; preds = %if.else
  %call42 = tail call i32 @__nv_isinfd(double noundef %__b) #2
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.else68, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %lor.lhs.false41, %if.else
  %call45 = tail call i32 @__nv_isfinited(double noundef %__c.addr.0) #2
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.else68, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %land.lhs.true44
  %call48 = tail call i32 @__nv_isfinited(double noundef %__d.addr.0) #2
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.else68, label %if.then50

if.then50:                                        ; preds = %land.lhs.true47
  %call51 = tail call i32 @__nv_isinfd(double noundef %__a) #2
  %tobool52.not = icmp eq i32 %call51, 0
  %cond = select contract i1 %tobool52.not, double 0.000000e+00, double 1.000000e+00
  %call53 = tail call contract double @__nv_copysign(double noundef %cond, double noundef %__a) #2
  %call54 = tail call i32 @__nv_isinfd(double noundef %__b) #2
  %tobool55.not = icmp eq i32 %call54, 0
  %cond56 = select contract i1 %tobool55.not, double 0.000000e+00, double 1.000000e+00
  %call57 = tail call contract double @__nv_copysign(double noundef %cond56, double noundef %__b) #2
  %mul58 = fmul contract double %__c.addr.0, %call53
  %mul59 = fmul contract double %__d.addr.0, %call57
  %add60 = fadd contract double %mul58, %mul59
  %mul61 = fmul contract double %add60, 0x7FF0000000000000
  %mul63 = fmul contract double %__c.addr.0, %call57
  %mul64 = fmul contract double %__d.addr.0, %call53
  %sub65 = fsub contract double %mul63, %mul64
  %mul66 = fmul contract double %sub65, 0x7FF0000000000000
  br label %if.end101

if.else68:                                        ; preds = %land.lhs.true47, %land.lhs.true44, %lor.lhs.false41
  %call69 = tail call i32 @__nv_isinfd(double noundef %call3) #2
  %tobool70 = icmp ne i32 %call69, 0
  %cmp72 = fcmp contract ogt double %call3, 0.000000e+00
  %or.cond = and i1 %cmp72, %tobool70
  br i1 %or.cond, label %land.lhs.true73, label %if.end101

land.lhs.true73:                                  ; preds = %if.else68
  %call74 = tail call i32 @__nv_isfinited(double noundef %__a) #2
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end101, label %land.lhs.true76

land.lhs.true76:                                  ; preds = %land.lhs.true73
  %call77 = tail call i32 @__nv_isfinited(double noundef %__b) #2
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end101, label %if.then79

if.then79:                                        ; preds = %land.lhs.true76
  %call80 = tail call i32 @__nv_isinfd(double noundef %__c.addr.0) #2
  %tobool81.not = icmp eq i32 %call80, 0
  %cond82 = select contract i1 %tobool81.not, double 0.000000e+00, double 1.000000e+00
  %call83 = tail call contract double @__nv_copysign(double noundef %cond82, double noundef %__c.addr.0) #2
  %call84 = tail call i32 @__nv_isinfd(double noundef %__d.addr.0) #2
  %tobool85.not = icmp eq i32 %call84, 0
  %cond86 = select contract i1 %tobool85.not, double 0.000000e+00, double 1.000000e+00
  %call87 = tail call contract double @__nv_copysign(double noundef %cond86, double noundef %__d.addr.0) #2
  %mul88 = fmul contract double %call83, %__a
  %mul89 = fmul contract double %call87, %__b
  %add90 = fadd contract double %mul88, %mul89
  %mul91 = fmul contract double %add90, 0.000000e+00
  %mul93 = fmul contract double %call83, %__b
  %mul94 = fmul contract double %call87, %__a
  %sub95 = fsub contract double %mul93, %mul94
  %mul96 = fmul contract double %sub95, 0.000000e+00
  br label %if.end101

if.end101:                                        ; preds = %if.then32, %if.else68, %land.lhs.true73, %land.lhs.true76, %if.then79, %if.then50, %land.lhs.true, %if.end
  %z.sroa.8.0 = phi double [ %mul66, %if.then50 ], [ %mul96, %if.then79 ], [ %call19, %land.lhs.true76 ], [ %call19, %land.lhs.true73 ], [ %call19, %if.else68 ], [ %mul37, %if.then32 ], [ %call19, %land.lhs.true ], [ %call19, %if.end ]
  %z.sroa.0.0 = phi double [ %mul61, %if.then50 ], [ %mul91, %if.then79 ], [ %call13, %land.lhs.true76 ], [ %call13, %land.lhs.true73 ], [ %call13, %if.else68 ], [ %mul34, %if.then32 ], [ %call13, %land.lhs.true ], [ %call13, %if.end ]
  %.fca.0.insert = insertvalue { double, double } poison, double %z.sroa.0.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %z.sroa.8.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: convergent
declare double @__nv_logb(double noundef) local_unnamed_addr #1

; Function Attrs: convergent
declare double @__nv_fmax(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: convergent
declare double @__nv_fabs(double noundef) local_unnamed_addr #1

; Function Attrs: convergent
declare i32 @__nv_isfinited(double noundef) local_unnamed_addr #1

; Function Attrs: convergent
declare double @__nv_scalbn(double noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold convergent mustprogress noinline nounwind optsize
define weak protected { float, float } @__divsc3(float noundef %__a, float noundef %__b, float noundef %__c, float noundef %__d) local_unnamed_addr #0 {
entry:
  %call = tail call contract float @__nv_fabsf(float noundef %__c) #2
  %call1 = tail call contract float @__nv_fabsf(float noundef %__d) #2
  %call2 = tail call contract float @__nv_fmaxf(float noundef %call, float noundef %call1) #2
  %call3 = tail call contract float @__nv_logbf(float noundef %call2) #2
  %call4 = tail call i32 @__nv_finitef(float noundef %call3) #2
  %tobool.not = icmp eq i32 %call4, 0
  %conv = fptosi float %call3 to i32
  %sub = sub nsw i32 0, %conv
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call5 = tail call contract float @__nv_scalbnf(float noundef %__c, i32 noundef %sub) #2
  %call7 = tail call contract float @__nv_scalbnf(float noundef %__d, i32 noundef %sub) #2
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %__c.addr.0 = phi float [ %call5, %if.then ], [ %__c, %entry ]
  %__d.addr.0 = phi float [ %call7, %if.then ], [ %__d, %entry ]
  %__ilogbw.0 = phi i32 [ %conv, %if.then ], [ 0, %entry ]
  %mul = fmul contract float %__c.addr.0, %__c.addr.0
  %mul8 = fmul contract float %__d.addr.0, %__d.addr.0
  %add = fadd contract float %mul, %mul8
  %mul9 = fmul contract float %__c.addr.0, %__a
  %mul10 = fmul contract float %__d.addr.0, %__b
  %add11 = fadd contract float %mul9, %mul10
  %div = fdiv contract float %add11, %add
  %sub12 = sub nsw i32 0, %__ilogbw.0
  %call13 = tail call contract float @__nv_scalbnf(float noundef %div, i32 noundef %sub12) #2
  %mul14 = fmul contract float %__c.addr.0, %__b
  %mul15 = fmul contract float %__d.addr.0, %__a
  %sub16 = fsub contract float %mul14, %mul15
  %div17 = fdiv contract float %sub16, %add
  %call19 = tail call contract float @__nv_scalbnf(float noundef %div17, i32 noundef %sub12) #2
  %call21 = tail call i32 @__nv_isnanf(float noundef %call13) #2
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end105, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call24 = tail call i32 @__nv_isnanf(float noundef %call19) #2
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end105, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  %cmp = fcmp contract oeq float %add, 0.000000e+00
  br i1 %cmp, label %land.lhs.true27, label %if.else

land.lhs.true27:                                  ; preds = %if.then26
  %call28 = tail call i32 @__nv_isnanf(float noundef %__a) #2
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true27
  %call30 = tail call i32 @__nv_isnanf(float noundef %__b) #2
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %if.else

if.then32:                                        ; preds = %lor.lhs.false, %land.lhs.true27
  %call33 = tail call contract float @__nv_copysignf(float noundef 0x7FF0000000000000, float noundef %__c.addr.0) #2
  %mul34 = fmul contract float %call33, %__a
  %call36 = tail call contract float @__nv_copysignf(float noundef 0x7FF0000000000000, float noundef %__c.addr.0) #2
  %mul37 = fmul contract float %call36, %__b
  br label %if.end105

if.else:                                          ; preds = %lor.lhs.false, %if.then26
  %call39 = tail call i32 @__nv_isinff(float noundef %__a) #2
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %lor.lhs.false41, label %land.lhs.true44

lor.lhs.false41:                                  ; preds = %if.else
  %call42 = tail call i32 @__nv_isinff(float noundef %__b) #2
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.else70, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %lor.lhs.false41, %if.else
  %call45 = tail call i32 @__nv_finitef(float noundef %__c.addr.0) #2
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.else70, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %land.lhs.true44
  %call48 = tail call i32 @__nv_finitef(float noundef %__d.addr.0) #2
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.else70, label %if.then50

if.then50:                                        ; preds = %land.lhs.true47
  %call51 = tail call i32 @__nv_isinff(float noundef %__a) #2
  %tobool52.not = icmp ne i32 %call51, 0
  %conv53 = uitofp i1 %tobool52.not to float
  %call54 = tail call contract float @__nv_copysignf(float noundef %conv53, float noundef %__a) #2
  %call55 = tail call i32 @__nv_isinff(float noundef %__b) #2
  %tobool56.not = icmp ne i32 %call55, 0
  %conv58 = uitofp i1 %tobool56.not to float
  %call59 = tail call contract float @__nv_copysignf(float noundef %conv58, float noundef %__b) #2
  %mul60 = fmul contract float %__c.addr.0, %call54
  %mul61 = fmul contract float %__d.addr.0, %call59
  %add62 = fadd contract float %mul60, %mul61
  %mul63 = fmul contract float %add62, 0x7FF0000000000000
  %mul65 = fmul contract float %__c.addr.0, %call59
  %mul66 = fmul contract float %__d.addr.0, %call54
  %sub67 = fsub contract float %mul65, %mul66
  %mul68 = fmul contract float %sub67, 0x7FF0000000000000
  br label %if.end105

if.else70:                                        ; preds = %land.lhs.true47, %land.lhs.true44, %lor.lhs.false41
  %call71 = tail call i32 @__nv_isinff(float noundef %call3) #2
  %tobool72 = icmp ne i32 %call71, 0
  %cmp74 = fcmp contract ogt float %call3, 0.000000e+00
  %or.cond = and i1 %cmp74, %tobool72
  br i1 %or.cond, label %land.lhs.true75, label %if.end105

land.lhs.true75:                                  ; preds = %if.else70
  %call76 = tail call i32 @__nv_finitef(float noundef %__a) #2
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end105, label %land.lhs.true78

land.lhs.true78:                                  ; preds = %land.lhs.true75
  %call79 = tail call i32 @__nv_finitef(float noundef %__b) #2
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end105, label %if.then81

if.then81:                                        ; preds = %land.lhs.true78
  %call82 = tail call i32 @__nv_isinff(float noundef %__c.addr.0) #2
  %tobool83.not = icmp ne i32 %call82, 0
  %conv85 = uitofp i1 %tobool83.not to float
  %call86 = tail call contract float @__nv_copysignf(float noundef %conv85, float noundef %__c.addr.0) #2
  %call87 = tail call i32 @__nv_isinff(float noundef %__d.addr.0) #2
  %tobool88.not = icmp ne i32 %call87, 0
  %conv90 = uitofp i1 %tobool88.not to float
  %call91 = tail call contract float @__nv_copysignf(float noundef %conv90, float noundef %__d.addr.0) #2
  %mul92 = fmul contract float %call86, %__a
  %mul93 = fmul contract float %call91, %__b
  %add94 = fadd contract float %mul92, %mul93
  %mul95 = fmul contract float %add94, 0.000000e+00
  %mul97 = fmul contract float %call86, %__b
  %mul98 = fmul contract float %call91, %__a
  %sub99 = fsub contract float %mul97, %mul98
  %mul100 = fmul contract float %sub99, 0.000000e+00
  br label %if.end105

if.end105:                                        ; preds = %if.then32, %if.else70, %land.lhs.true75, %land.lhs.true78, %if.then81, %if.then50, %land.lhs.true, %if.end
  %z.sroa.8.0 = phi float [ %mul68, %if.then50 ], [ %mul100, %if.then81 ], [ %call19, %land.lhs.true78 ], [ %call19, %land.lhs.true75 ], [ %call19, %if.else70 ], [ %mul37, %if.then32 ], [ %call19, %land.lhs.true ], [ %call19, %if.end ]
  %z.sroa.0.0 = phi float [ %mul63, %if.then50 ], [ %mul95, %if.then81 ], [ %call13, %land.lhs.true78 ], [ %call13, %land.lhs.true75 ], [ %call13, %if.else70 ], [ %mul34, %if.then32 ], [ %call13, %land.lhs.true ], [ %call13, %if.end ]
  %.fca.0.insert = insertvalue { float, float } poison, float %z.sroa.0.0, 0
  %.fca.1.insert = insertvalue { float, float } %.fca.0.insert, float %z.sroa.8.0, 1
  ret { float, float } %.fca.1.insert
}

; Function Attrs: convergent
declare float @__nv_logbf(float noundef) local_unnamed_addr #1

; Function Attrs: convergent
declare float @__nv_fmaxf(float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: convergent
declare float @__nv_fabsf(float noundef) local_unnamed_addr #1

; Function Attrs: convergent
declare i32 @__nv_finitef(float noundef) local_unnamed_addr #1

; Function Attrs: convergent
declare float @__nv_scalbnf(float noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold convergent mustprogress noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_70" "target-features"="+ptx32,+sm_70" }
attributes #1 = { convergent "frame-pointer"="all" "llvm.assume"="ompx_spmd_amenable,omp_no_openmp" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_70" "target-features"="+ptx32,+sm_70" }
attributes #2 = { convergent nounwind "llvm.assume"="ompx_spmd_amenable,omp_no_openmp" }

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
; ModuleID = '/var/tmp/utils-e65481.bc'
source_filename = "../utils/utils.cpp"
target datalayout = "e-m:e-i64:64-n32:64-S128-v256:256:256-v512:512:512"
target triple = "powerpc64le-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"struct.miniFE::Parameters" = type <{ i32, i32, i32, i32, i32, i32, float, [4 x i8], %"class.std::basic_string", i32, i32, i32, i32, i32, i32, i32, [4 x i8] }>
%"class.std::basic_string" = type { %"struct.std::basic_string<char>::_Alloc_hider" }
%"struct.std::basic_string<char>::_Alloc_hider" = type { i8* }
%"class.std::allocator" = type { i8 }
%"struct.std::basic_string<char>::_Rep" = type { %"struct.std::basic_string<char>::_Rep_base" }
%"struct.std::basic_string<char>::_Rep_base" = type { i64, i64, i32 }
%"class.std::basic_istringstream" = type { %"class.std::basic_istream.base", %"class.std::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { i32 (...)**, i64 }
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
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }

$_ZN7Mantevo15parse_parameterISsEET_RKSsS3_RKS1_ = comdat any

$_ZN7Mantevo15parse_parameterIiEET_RKSsS3_RKS1_ = comdat any

$_ZN7Mantevo15parse_parameterIfEET_RKSsS3_RKS1_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [8 x i8] c"garbage\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"input_file\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"nx\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ny\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"nz\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"load_imbalance\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"numthreads\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"mv_overlap_comm_comp\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"use_locking\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"elem_group_size\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"use_elem_mat_fields\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"verify_solution\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"num_devices\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"skip_device\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"numa\00", align 1
@_ZNSs4_Rep20_S_empty_rep_storageE = external global [0 x i64], align 8
@.str.18 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@_ZTTSt19basic_istringstreamIcSt11char_traitsIcESaIcEE = external unnamed_addr constant [4 x i8*], align 8
@_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE = external unnamed_addr constant { [16 x i8*] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x i8*] }, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_utils.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_ZN6miniFE14get_parametersEiPPcRNS_10ParametersE(i32 noundef signext %argc, i8** noundef %argv, %"struct.miniFE::Parameters"* noundef nonnull align 8 dereferenceable(68) %params) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i320 = alloca %"class.std::allocator", align 1
  %ref.tmp.i306 = alloca %"class.std::allocator", align 1
  %ref.tmp.i292 = alloca %"class.std::allocator", align 1
  %ref.tmp.i278 = alloca %"class.std::allocator", align 1
  %ref.tmp.i264 = alloca %"class.std::allocator", align 1
  %ref.tmp.i250 = alloca %"class.std::allocator", align 1
  %ref.tmp.i236 = alloca %"class.std::allocator", align 1
  %ref.tmp.i222 = alloca %"class.std::allocator", align 1
  %ref.tmp.i208 = alloca %"class.std::allocator", align 1
  %ref.tmp.i194 = alloca %"class.std::allocator", align 1
  %ref.tmp.i180 = alloca %"class.std::allocator", align 1
  %ref.tmp.i166 = alloca %"class.std::allocator", align 1
  %ref.tmp.i152 = alloca %"class.std::allocator", align 1
  %ref.tmp.i138 = alloca %"class.std::allocator", align 1
  %ref.tmp.i124 = alloca %"class.std::allocator", align 1
  %ref.tmp.i110 = alloca %"class.std::allocator", align 1
  %ref.tmp.i96 = alloca %"class.std::allocator", align 1
  %ref.tmp.i82 = alloca %"class.std::allocator", align 1
  %ref.tmp.i68 = alloca %"class.std::allocator", align 1
  %ref.tmp.i54 = alloca %"class.std::allocator", align 1
  %ref.tmp.i = alloca %"class.std::allocator", align 1
  %argstring = alloca %"class.std::basic_string", align 8
  %garbage = alloca %"class.std::basic_string", align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  %filename = alloca %"class.std::basic_string", align 8
  %ref.tmp3 = alloca %"class.std::basic_string", align 8
  %ref.tmp4 = alloca %"class.std::allocator", align 1
  %ref.tmp13 = alloca %"class.std::basic_string", align 8
  %ref.tmp14 = alloca %"class.std::allocator", align 1
  %ref.tmp17 = alloca i32, align 4
  %ref.tmp26 = alloca %"class.std::basic_string", align 8
  %ref.tmp27 = alloca %"class.std::allocator", align 1
  %ref.tmp38 = alloca %"class.std::basic_string", align 8
  %ref.tmp39 = alloca %"class.std::allocator", align 1
  %ref.tmp50 = alloca %"class.std::basic_string", align 8
  %ref.tmp51 = alloca %"class.std::allocator", align 1
  %ref.tmp54 = alloca float, align 4
  %ref.tmp63 = alloca %"class.std::basic_string", align 8
  %ref.tmp64 = alloca %"class.std::allocator", align 1
  %ref.tmp67 = alloca i32, align 4
  %ref.tmp76 = alloca %"class.std::basic_string", align 8
  %ref.tmp77 = alloca %"class.std::allocator", align 1
  %ref.tmp80 = alloca i32, align 4
  %ref.tmp89 = alloca %"class.std::basic_string", align 8
  %ref.tmp90 = alloca %"class.std::allocator", align 1
  %ref.tmp93 = alloca i32, align 4
  %ref.tmp102 = alloca %"class.std::basic_string", align 8
  %ref.tmp103 = alloca %"class.std::basic_string", align 8
  %ref.tmp104 = alloca %"class.std::allocator", align 1
  %ref.tmp107 = alloca %"class.std::basic_string", align 8
  %ref.tmp108 = alloca %"class.std::allocator", align 1
  %ref.tmp126 = alloca %"class.std::basic_string", align 8
  %ref.tmp127 = alloca %"class.std::allocator", align 1
  %ref.tmp130 = alloca i32, align 4
  %ref.tmp139 = alloca %"class.std::basic_string", align 8
  %ref.tmp140 = alloca %"class.std::allocator", align 1
  %ref.tmp143 = alloca i32, align 4
  %ref.tmp152 = alloca %"class.std::basic_string", align 8
  %ref.tmp153 = alloca %"class.std::allocator", align 1
  %ref.tmp156 = alloca i32, align 4
  %ref.tmp165 = alloca %"class.std::basic_string", align 8
  %ref.tmp166 = alloca %"class.std::allocator", align 1
  %ref.tmp169 = alloca i32, align 4
  %ref.tmp178 = alloca %"class.std::basic_string", align 8
  %ref.tmp179 = alloca %"class.std::allocator", align 1
  %ref.tmp182 = alloca i32, align 4
  %ref.tmp191 = alloca %"class.std::basic_string", align 8
  %ref.tmp192 = alloca %"class.std::allocator", align 1
  %ref.tmp195 = alloca i32, align 4
  %ref.tmp204 = alloca %"class.std::basic_string", align 8
  %ref.tmp205 = alloca %"class.std::allocator", align 1
  %ref.tmp208 = alloca i32, align 4
  %0 = bitcast %"class.std::basic_string"* %argstring to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %_M_p.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %argstring, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p.i.i, align 8, !tbaa !4
  invoke void @_ZN7Mantevo21read_args_into_stringEiPPcRSs(i32 noundef signext %argc, i8** noundef %argv, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %argstring)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = bitcast %"class.std::basic_string"* %garbage to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #10
  %2 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %2) #10
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %garbage, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %2) #10
  %3 = bitcast %"class.std::basic_string"* %filename to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #10
  %4 = bitcast %"class.std::basic_string"* %ref.tmp3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10
  %5 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #10
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp3, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp4)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont2
  invoke void @_ZN7Mantevo15parse_parameterISsEET_RKSsS3_RKS1_(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %filename, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %argstring, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp3, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %garbage)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %invoke.cont6
  %_M_p.i.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp3, i64 0, i32 0, i32 0
  %6 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !9
  %arrayidx.i.i = getelementptr inbounds i8, i8* %6, i64 -24
  %7 = bitcast i8* %arrayidx.i.i to %"struct.std::basic_string<char>::_Rep"*
  %8 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %8) #10
  %cmp.not.i.i = icmp eq i8* %arrayidx.i.i, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i, label %_ZNSsD2Ev.exit, label %if.then.i.i, !prof !11

if.then.i.i:                                      ; preds = %invoke.cont8
  %_M_refcount.i.i = getelementptr inbounds i8, i8* %6, i64 -8
  %9 = bitcast i8* %_M_refcount.i.i to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  %10 = atomicrmw volatile add i32* %9, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  %11 = load i32, i32* %9, align 8, !tbaa !12
  %add.i.i.i.i = add nsw i32 %11, -1
  store i32 %add.i.i.i.i, i32* %9, align 8, !tbaa !12
  br label %invoke.cont.i.i

invoke.cont.i.i:                                  ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %10, %if.then.i.i.i ], [ %11, %if.else.i.i.i ]
  %cmp3.i.i = icmp slt i32 %retval.0.i.i.i, 1
  br i1 %cmp3.i.i, label %if.then4.i.i, label %_ZNSsD2Ev.exit

if.then4.i.i:                                     ; preds = %invoke.cont.i.i
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %7, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i) #10
  br label %_ZNSsD2Ev.exit

_ZNSsD2Ev.exit:                                   ; preds = %invoke.cont8, %invoke.cont.i.i, %if.then4.i.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %filename, i64 0, i32 0, i32 0
  %12 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !9
  %arrayidx.i.i.i.i = getelementptr inbounds i8, i8* %12, i64 -24
  %_M_length.i.i.i = bitcast i8* %arrayidx.i.i.i.i to i64*
  %13 = load i64, i64* %_M_length.i.i.i, align 8, !tbaa !14
  %_M_p.i.i.i4.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %garbage, i64 0, i32 0, i32 0
  %14 = load i8*, i8** %_M_p.i.i.i4.i.i, align 8, !tbaa !9
  %arrayidx.i.i5.i.i = getelementptr inbounds i8, i8* %14, i64 -24
  %_M_length.i6.i.i = bitcast i8* %arrayidx.i.i5.i.i to i64*
  %15 = load i64, i64* %_M_length.i6.i.i, align 8, !tbaa !14
  %cmp.i.i = icmp eq i64 %13, %15
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.then

land.rhs.i.i:                                     ; preds = %_ZNSsD2Ev.exit
  %cmp.i.i.i = icmp eq i64 %13, 0
  br i1 %cmp.i.i.i, label %if.end, label %_ZStneIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_.exit: ; preds = %land.rhs.i.i
  %bcmp.i.i = call i32 @bcmp(i8* nonnull %12, i8* nonnull %14, i64 %13) #10
  %phi.cmp.i.i.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %phi.cmp.i.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %_ZNSsD2Ev.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_.exit
  invoke void @_ZN7Mantevo21read_file_into_stringERKSsRSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %filename, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %argstring)
          to label %if.end unwind label %lpad11

lpad:                                             ; preds = %entry
  %16 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup221

lpad1:                                            ; preds = %invoke.cont
  %17 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %2) #10
  br label %ehcleanup220

lpad5:                                            ; preds = %invoke.cont2
  %18 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

lpad7:                                            ; preds = %invoke.cont6
  %19 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp3) #10
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad7, %lpad5
  %.pn = phi { i8*, i32 } [ %19, %lpad7 ], [ %18, %lpad5 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10
  br label %ehcleanup218

lpad11:                                           ; preds = %if.then
  %20 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup217

if.end:                                           ; preds = %land.rhs.i.i, %if.then, %_ZStneIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_.exit
  %21 = bitcast %"class.std::basic_string"* %ref.tmp13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #10
  %22 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp14, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %22) #10
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp13, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp14)
          to label %invoke.cont16 unwind label %lpad15

invoke.cont16:                                    ; preds = %if.end
  %23 = bitcast i32* %ref.tmp17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #10
  store i32 10, i32* %ref.tmp17, align 4, !tbaa !12
  %call20 = invoke noundef signext i32 @_ZN7Mantevo15parse_parameterIiEET_RKSsS3_RKS1_(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %argstring, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp13, i32* noundef nonnull align 4 dereferenceable(4) %ref.tmp17)
          to label %invoke.cont19 unwind label %lpad18

invoke.cont19:                                    ; preds = %invoke.cont16
  %nx = getelementptr inbounds %"struct.miniFE::Parameters", %"struct.miniFE::Parameters"* %params, i64 0, i32 0
  store i32 %call20, i32* %nx, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #10
  %_M_p.i.i.i55 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp13, i64 0, i32 0, i32 0
  %24 = load i8*, i8** %_M_p.i.i.i55, align 8, !tbaa !9
  %arrayidx.i.i56 = getelementptr inbounds i8, i8* %24, i64 -24
  %25 = bitcast i8* %arrayidx.i.i56 to %"struct.std::basic_string<char>::_Rep"*
  %26 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i54, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %26) #10
  %cmp.not.i.i57 = icmp eq i8* %arrayidx.i.i56, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i57, label %_ZNSsD2Ev.exit67, label %if.then.i.i59, !prof !11

if.then.i.i59:                                    ; preds = %invoke.cont19
  %_M_refcount.i.i58 = getelementptr inbounds i8, i8* %24, i64 -8
  %27 = bitcast i8* %_M_refcount.i.i58 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i60, label %if.else.i.i.i62

if.then.i.i.i60:                                  ; preds = %if.then.i.i59
  %28 = atomicrmw volatile add i32* %27, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i65

if.else.i.i.i62:                                  ; preds = %if.then.i.i59
  %29 = load i32, i32* %27, align 8, !tbaa !12
  %add.i.i.i.i61 = add nsw i32 %29, -1
  store i32 %add.i.i.i.i61, i32* %27, align 8, !tbaa !12
  br label %invoke.cont.i.i65

invoke.cont.i.i65:                                ; preds = %if.else.i.i.i62, %if.then.i.i.i60
  %retval.0.i.i.i63 = phi i32 [ %28, %if.then.i.i.i60 ], [ %29, %if.else.i.i.i62 ]
  %cmp3.i.i64 = icmp slt i32 %retval.0.i.i.i63, 1
  br i1 %cmp3.i.i64, label %if.then4.i.i66, label %_ZNSsD2Ev.exit67

if.then4.i.i66:                                   ; preds = %invoke.cont.i.i65
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %25, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i54) #10
  br label %_ZNSsD2Ev.exit67

_ZNSsD2Ev.exit67:                                 ; preds = %invoke.cont19, %invoke.cont.i.i65, %if.then4.i.i66
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %26) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #10
  %30 = bitcast %"class.std::basic_string"* %ref.tmp26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #10
  %31 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp27, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %31) #10
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp26, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp27)
          to label %invoke.cont29 unwind label %lpad28

invoke.cont29:                                    ; preds = %_ZNSsD2Ev.exit67
  %call33 = invoke noundef signext i32 @_ZN7Mantevo15parse_parameterIiEET_RKSsS3_RKS1_(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %argstring, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp26, i32* noundef nonnull align 4 dereferenceable(4) %nx)
          to label %invoke.cont32 unwind label %lpad31

invoke.cont32:                                    ; preds = %invoke.cont29
  %ny = getelementptr inbounds %"struct.miniFE::Parameters", %"struct.miniFE::Parameters"* %params, i64 0, i32 1
  store i32 %call33, i32* %ny, align 4, !tbaa !20
  %_M_p.i.i.i69 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp26, i64 0, i32 0, i32 0
  %32 = load i8*, i8** %_M_p.i.i.i69, align 8, !tbaa !9
  %arrayidx.i.i70 = getelementptr inbounds i8, i8* %32, i64 -24
  %33 = bitcast i8* %arrayidx.i.i70 to %"struct.std::basic_string<char>::_Rep"*
  %34 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i68, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %34) #10
  %cmp.not.i.i71 = icmp eq i8* %arrayidx.i.i70, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i71, label %_ZNSsD2Ev.exit81, label %if.then.i.i73, !prof !11

if.then.i.i73:                                    ; preds = %invoke.cont32
  %_M_refcount.i.i72 = getelementptr inbounds i8, i8* %32, i64 -8
  %35 = bitcast i8* %_M_refcount.i.i72 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i74, label %if.else.i.i.i76

if.then.i.i.i74:                                  ; preds = %if.then.i.i73
  %36 = atomicrmw volatile add i32* %35, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i79

if.else.i.i.i76:                                  ; preds = %if.then.i.i73
  %37 = load i32, i32* %35, align 8, !tbaa !12
  %add.i.i.i.i75 = add nsw i32 %37, -1
  store i32 %add.i.i.i.i75, i32* %35, align 8, !tbaa !12
  br label %invoke.cont.i.i79

invoke.cont.i.i79:                                ; preds = %if.else.i.i.i76, %if.then.i.i.i74
  %retval.0.i.i.i77 = phi i32 [ %36, %if.then.i.i.i74 ], [ %37, %if.else.i.i.i76 ]
  %cmp3.i.i78 = icmp slt i32 %retval.0.i.i.i77, 1
  br i1 %cmp3.i.i78, label %if.then4.i.i80, label %_ZNSsD2Ev.exit81

if.then4.i.i80:                                   ; preds = %invoke.cont.i.i79
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %33, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i68) #10
  br label %_ZNSsD2Ev.exit81

_ZNSsD2Ev.exit81:                                 ; preds = %invoke.cont32, %invoke.cont.i.i79, %if.then4.i.i80
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %34) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %31) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #10
  %38 = bitcast %"class.std::basic_string"* %ref.tmp38 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %38) #10
  %39 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp39, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %39) #10
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp38, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp39)
          to label %invoke.cont41 unwind label %lpad40

invoke.cont41:                                    ; preds = %_ZNSsD2Ev.exit81
  %call45 = invoke noundef signext i32 @_ZN7Mantevo15parse_parameterIiEET_RKSsS3_RKS1_(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %argstring, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp38, i32* noundef nonnull align 4 dereferenceable(4) %ny)
          to label %invoke.cont44 unwind label %lpad43

invoke.cont44:                                    ; preds = %invoke.cont41
  %nz = getelementptr inbounds %"struct.miniFE::Parameters", %"struct.miniFE::Parameters"* %params, i64 0, i32 2
  store i32 %call45, i32* %nz, align 8, !tbaa !21
  %_M_p.i.i.i83 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp38, i64 0, i32 0, i32 0
  %40 = load i8*, i8** %_M_p.i.i.i83, align 8, !tbaa !9
  %arrayidx.i.i84 = getelementptr inbounds i8, i8* %40, i64 -24
  %41 = bitcast i8* %arrayidx.i.i84 to %"struct.std::basic_string<char>::_Rep"*
  %42 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i82, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %42) #10
  %cmp.not.i.i85 = icmp eq i8* %arrayidx.i.i84, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i85, label %_ZNSsD2Ev.exit95, label %if.then.i.i87, !prof !11

if.then.i.i87:                                    ; preds = %invoke.cont44
  %_M_refcount.i.i86 = getelementptr inbounds i8, i8* %40, i64 -8
  %43 = bitcast i8* %_M_refcount.i.i86 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i88, label %if.else.i.i.i90

if.then.i.i.i88:                                  ; preds = %if.then.i.i87
  %44 = atomicrmw volatile add i32* %43, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i93

if.else.i.i.i90:                                  ; preds = %if.then.i.i87
  %45 = load i32, i32* %43, align 8, !tbaa !12
  %add.i.i.i.i89 = add nsw i32 %45, -1
  store i32 %add.i.i.i.i89, i32* %43, align 8, !tbaa !12
  br label %invoke.cont.i.i93

invoke.cont.i.i93:                                ; preds = %if.else.i.i.i90, %if.then.i.i.i88
  %retval.0.i.i.i91 = phi i32 [ %44, %if.then.i.i.i88 ], [ %45, %if.else.i.i.i90 ]
  %cmp3.i.i92 = icmp slt i32 %retval.0.i.i.i91, 1
  br i1 %cmp3.i.i92, label %if.then4.i.i94, label %_ZNSsD2Ev.exit95

if.then4.i.i94:                                   ; preds = %invoke.cont.i.i93
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %41, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i82) #10
  br label %_ZNSsD2Ev.exit95

_ZNSsD2Ev.exit95:                                 ; preds = %invoke.cont44, %invoke.cont.i.i93, %if.then4.i.i94
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %42) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %39) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %38) #10
  %46 = bitcast %"class.std::basic_string"* %ref.tmp50 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %46) #10
  %47 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp51, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %47) #10
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp50, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp51)
          to label %invoke.cont53 unwind label %lpad52

invoke.cont53:                                    ; preds = %_ZNSsD2Ev.exit95
  %48 = bitcast float* %ref.tmp54 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %48) #10
  store float 0.000000e+00, float* %ref.tmp54, align 4, !tbaa !22
  %call57 = invoke noundef float @_ZN7Mantevo15parse_parameterIfEET_RKSsS3_RKS1_(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %argstring, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp50, float* noundef nonnull align 4 dereferenceable(4) %ref.tmp54)
          to label %invoke.cont56 unwind label %lpad55

invoke.cont56:                                    ; preds = %invoke.cont53
  %load_imbalance = getelementptr inbounds %"struct.miniFE::Parameters", %"struct.miniFE::Parameters"* %params, i64 0, i32 6
  store float %call57, float* %load_imbalance, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %48) #10
  %_M_p.i.i.i97 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp50, i64 0, i32 0, i32 0
  %49 = load i8*, i8** %_M_p.i.i.i97, align 8, !tbaa !9
  %arrayidx.i.i98 = getelementptr inbounds i8, i8* %49, i64 -24
  %50 = bitcast i8* %arrayidx.i.i98 to %"struct.std::basic_string<char>::_Rep"*
  %51 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i96, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %51) #10
  %cmp.not.i.i99 = icmp eq i8* %arrayidx.i.i98, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i99, label %_ZNSsD2Ev.exit109, label %if.then.i.i101, !prof !11

if.then.i.i101:                                   ; preds = %invoke.cont56
  %_M_refcount.i.i100 = getelementptr inbounds i8, i8* %49, i64 -8
  %52 = bitcast i8* %_M_refcount.i.i100 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i102, label %if.else.i.i.i104

if.then.i.i.i102:                                 ; preds = %if.then.i.i101
  %53 = atomicrmw volatile add i32* %52, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i107

if.else.i.i.i104:                                 ; preds = %if.then.i.i101
  %54 = load i32, i32* %52, align 8, !tbaa !12
  %add.i.i.i.i103 = add nsw i32 %54, -1
  store i32 %add.i.i.i.i103, i32* %52, align 8, !tbaa !12
  br label %invoke.cont.i.i107

invoke.cont.i.i107:                               ; preds = %if.else.i.i.i104, %if.then.i.i.i102
  %retval.0.i.i.i105 = phi i32 [ %53, %if.then.i.i.i102 ], [ %54, %if.else.i.i.i104 ]
  %cmp3.i.i106 = icmp slt i32 %retval.0.i.i.i105, 1
  br i1 %cmp3.i.i106, label %if.then4.i.i108, label %_ZNSsD2Ev.exit109

if.then4.i.i108:                                  ; preds = %invoke.cont.i.i107
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %50, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i96) #10
  br label %_ZNSsD2Ev.exit109

_ZNSsD2Ev.exit109:                                ; preds = %invoke.cont56, %invoke.cont.i.i107, %if.then4.i.i108
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %51) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %47) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46) #10
  %55 = bitcast %"class.std::basic_string"* %ref.tmp63 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %55) #10
  %56 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp64, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %56) #10
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp63, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp64)
          to label %invoke.cont66 unwind label %lpad65

invoke.cont66:                                    ; preds = %_ZNSsD2Ev.exit109
  %57 = bitcast i32* %ref.tmp67 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %57) #10
  store i32 1, i32* %ref.tmp67, align 4, !tbaa !12
  %call70 = invoke noundef signext i32 @_ZN7Mantevo15parse_parameterIiEET_RKSsS3_RKS1_(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %argstring, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp63, i32* noundef nonnull align 4 dereferenceable(4) %ref.tmp67)
          to label %invoke.cont69 unwind label %lpad68

invoke.cont69:                                    ; preds = %invoke.cont66
  %numthreads = getelementptr inbounds %"struct.miniFE::Parameters", %"struct.miniFE::Parameters"* %params, i64 0, i32 3
  store i32 %call70, i32* %numthreads, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %57) #10
  %_M_p.i.i.i111 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp63, i64 0, i32 0, i32 0
  %58 = load i8*, i8** %_M_p.i.i.i111, align 8, !tbaa !9
  %arrayidx.i.i112 = getelementptr inbounds i8, i8* %58, i64 -24
  %59 = bitcast i8* %arrayidx.i.i112 to %"struct.std::basic_string<char>::_Rep"*
  %60 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i110, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %60) #10
  %cmp.not.i.i113 = icmp eq i8* %arrayidx.i.i112, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i113, label %_ZNSsD2Ev.exit123, label %if.then.i.i115, !prof !11

if.then.i.i115:                                   ; preds = %invoke.cont69
  %_M_refcount.i.i114 = getelementptr inbounds i8, i8* %58, i64 -8
  %61 = bitcast i8* %_M_refcount.i.i114 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i116, label %if.else.i.i.i118

if.then.i.i.i116:                                 ; preds = %if.then.i.i115
  %62 = atomicrmw volatile add i32* %61, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i121

if.else.i.i.i118:                                 ; preds = %if.then.i.i115
  %63 = load i32, i32* %61, align 8, !tbaa !12
  %add.i.i.i.i117 = add nsw i32 %63, -1
  store i32 %add.i.i.i.i117, i32* %61, align 8, !tbaa !12
  br label %invoke.cont.i.i121

invoke.cont.i.i121:                               ; preds = %if.else.i.i.i118, %if.then.i.i.i116
  %retval.0.i.i.i119 = phi i32 [ %62, %if.then.i.i.i116 ], [ %63, %if.else.i.i.i118 ]
  %cmp3.i.i120 = icmp slt i32 %retval.0.i.i.i119, 1
  br i1 %cmp3.i.i120, label %if.then4.i.i122, label %_ZNSsD2Ev.exit123

if.then4.i.i122:                                  ; preds = %invoke.cont.i.i121
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %59, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i110) #10
  br label %_ZNSsD2Ev.exit123

_ZNSsD2Ev.exit123:                                ; preds = %invoke.cont69, %invoke.cont.i.i121, %if.then4.i.i122
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %60) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %56) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %55) #10
  %64 = bitcast %"class.std::basic_string"* %ref.tmp76 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %64) #10
  %65 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp77, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %65) #10
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp76, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp77)
          to label %invoke.cont79 unwind label %lpad78

invoke.cont79:                                    ; preds = %_ZNSsD2Ev.exit123
  %66 = bitcast i32* %ref.tmp80 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %66) #10
  store i32 0, i32* %ref.tmp80, align 4, !tbaa !12
  %call83 = invoke noundef signext i32 @_ZN7Mantevo15parse_parameterIiEET_RKSsS3_RKS1_(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %argstring, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp76, i32* noundef nonnull align 4 dereferenceable(4) %ref.tmp80)
          to label %invoke.cont82 unwind label %lpad81

invoke.cont82:                                    ; preds = %invoke.cont79
  %mv_overlap_comm_comp = getelementptr inbounds %"struct.miniFE::Parameters", %"struct.miniFE::Parameters"* %params, i64 0, i32 4
  store i32 %call83, i32* %mv_overlap_comm_comp, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %66) #10
  %_M_p.i.i.i125 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp76, i64 0, i32 0, i32 0
  %67 = load i8*, i8** %_M_p.i.i.i125, align 8, !tbaa !9
  %arrayidx.i.i126 = getelementptr inbounds i8, i8* %67, i64 -24
  %68 = bitcast i8* %arrayidx.i.i126 to %"struct.std::basic_string<char>::_Rep"*
  %69 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i124, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %69) #10
  %cmp.not.i.i127 = icmp eq i8* %arrayidx.i.i126, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i127, label %_ZNSsD2Ev.exit137, label %if.then.i.i129, !prof !11

if.then.i.i129:                                   ; preds = %invoke.cont82
  %_M_refcount.i.i128 = getelementptr inbounds i8, i8* %67, i64 -8
  %70 = bitcast i8* %_M_refcount.i.i128 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i130, label %if.else.i.i.i132

if.then.i.i.i130:                                 ; preds = %if.then.i.i129
  %71 = atomicrmw volatile add i32* %70, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i135

if.else.i.i.i132:                                 ; preds = %if.then.i.i129
  %72 = load i32, i32* %70, align 8, !tbaa !12
  %add.i.i.i.i131 = add nsw i32 %72, -1
  store i32 %add.i.i.i.i131, i32* %70, align 8, !tbaa !12
  br label %invoke.cont.i.i135

invoke.cont.i.i135:                               ; preds = %if.else.i.i.i132, %if.then.i.i.i130
  %retval.0.i.i.i133 = phi i32 [ %71, %if.then.i.i.i130 ], [ %72, %if.else.i.i.i132 ]
  %cmp3.i.i134 = icmp slt i32 %retval.0.i.i.i133, 1
  br i1 %cmp3.i.i134, label %if.then4.i.i136, label %_ZNSsD2Ev.exit137

if.then4.i.i136:                                  ; preds = %invoke.cont.i.i135
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %68, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i124) #10
  br label %_ZNSsD2Ev.exit137

_ZNSsD2Ev.exit137:                                ; preds = %invoke.cont82, %invoke.cont.i.i135, %if.then4.i.i136
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %69) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %65) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %64) #10
  %73 = bitcast %"class.std::basic_string"* %ref.tmp89 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %73) #10
  %74 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp90, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %74) #10
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp89, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp90)
          to label %invoke.cont92 unwind label %lpad91

invoke.cont92:                                    ; preds = %_ZNSsD2Ev.exit137
  %75 = bitcast i32* %ref.tmp93 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %75) #10
  store i32 0, i32* %ref.tmp93, align 4, !tbaa !12
  %call96 = invoke noundef signext i32 @_ZN7Mantevo15parse_parameterIiEET_RKSsS3_RKS1_(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %argstring, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp89, i32* noundef nonnull align 4 dereferenceable(4) %ref.tmp93)
          to label %invoke.cont95 unwind label %lpad94

invoke.cont95:                                    ; preds = %invoke.cont92
  %use_locking = getelementptr inbounds %"struct.miniFE::Parameters", %"struct.miniFE::Parameters"* %params, i64 0, i32 5
  store i32 %call96, i32* %use_locking, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %75) #10
  %_M_p.i.i.i139 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp89, i64 0, i32 0, i32 0
  %76 = load i8*, i8** %_M_p.i.i.i139, align 8, !tbaa !9
  %arrayidx.i.i140 = getelementptr inbounds i8, i8* %76, i64 -24
  %77 = bitcast i8* %arrayidx.i.i140 to %"struct.std::basic_string<char>::_Rep"*
  %78 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i138, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %78) #10
  %cmp.not.i.i141 = icmp eq i8* %arrayidx.i.i140, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i141, label %_ZNSsD2Ev.exit151, label %if.then.i.i143, !prof !11

if.then.i.i143:                                   ; preds = %invoke.cont95
  %_M_refcount.i.i142 = getelementptr inbounds i8, i8* %76, i64 -8
  %79 = bitcast i8* %_M_refcount.i.i142 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i144, label %if.else.i.i.i146

if.then.i.i.i144:                                 ; preds = %if.then.i.i143
  %80 = atomicrmw volatile add i32* %79, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i149

if.else.i.i.i146:                                 ; preds = %if.then.i.i143
  %81 = load i32, i32* %79, align 8, !tbaa !12
  %add.i.i.i.i145 = add nsw i32 %81, -1
  store i32 %add.i.i.i.i145, i32* %79, align 8, !tbaa !12
  br label %invoke.cont.i.i149

invoke.cont.i.i149:                               ; preds = %if.else.i.i.i146, %if.then.i.i.i144
  %retval.0.i.i.i147 = phi i32 [ %80, %if.then.i.i.i144 ], [ %81, %if.else.i.i.i146 ]
  %cmp3.i.i148 = icmp slt i32 %retval.0.i.i.i147, 1
  br i1 %cmp3.i.i148, label %if.then4.i.i150, label %_ZNSsD2Ev.exit151

if.then4.i.i150:                                  ; preds = %invoke.cont.i.i149
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %77, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i138) #10
  br label %_ZNSsD2Ev.exit151

_ZNSsD2Ev.exit151:                                ; preds = %invoke.cont95, %invoke.cont.i.i149, %if.then4.i.i150
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %78) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %74) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %73) #10
  %82 = bitcast %"class.std::basic_string"* %ref.tmp102 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %82) #10
  %83 = bitcast %"class.std::basic_string"* %ref.tmp103 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %83) #10
  %84 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp104, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %84) #10
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp103, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp104)
          to label %invoke.cont106 unwind label %lpad105

invoke.cont106:                                   ; preds = %_ZNSsD2Ev.exit151
  %85 = bitcast %"class.std::basic_string"* %ref.tmp107 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %85) #10
  %86 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp108, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %86) #10
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp107, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp108)
          to label %invoke.cont110 unwind label %lpad109

invoke.cont110:                                   ; preds = %invoke.cont106
  invoke void @_ZN7Mantevo15parse_parameterISsEET_RKSsS3_RKS1_(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %ref.tmp102, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %argstring, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp103, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp107)
          to label %invoke.cont112 unwind label %lpad111

invoke.cont112:                                   ; preds = %invoke.cont110
  %name = getelementptr inbounds %"struct.miniFE::Parameters", %"struct.miniFE::Parameters"* %params, i64 0, i32 8
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %name, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp102)
          to label %invoke.cont114 unwind label %lpad113

invoke.cont114:                                   ; preds = %invoke.cont112
  %_M_p.i.i.i153 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp102, i64 0, i32 0, i32 0
  %87 = load i8*, i8** %_M_p.i.i.i153, align 8, !tbaa !9
  %arrayidx.i.i154 = getelementptr inbounds i8, i8* %87, i64 -24
  %88 = bitcast i8* %arrayidx.i.i154 to %"struct.std::basic_string<char>::_Rep"*
  %89 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i152, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %89) #10
  %cmp.not.i.i155 = icmp eq i8* %arrayidx.i.i154, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i155, label %_ZNSsD2Ev.exit165, label %if.then.i.i157, !prof !11

if.then.i.i157:                                   ; preds = %invoke.cont114
  %_M_refcount.i.i156 = getelementptr inbounds i8, i8* %87, i64 -8
  %90 = bitcast i8* %_M_refcount.i.i156 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i158, label %if.else.i.i.i160

if.then.i.i.i158:                                 ; preds = %if.then.i.i157
  %91 = atomicrmw volatile add i32* %90, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i163

if.else.i.i.i160:                                 ; preds = %if.then.i.i157
  %92 = load i32, i32* %90, align 8, !tbaa !12
  %add.i.i.i.i159 = add nsw i32 %92, -1
  store i32 %add.i.i.i.i159, i32* %90, align 8, !tbaa !12
  br label %invoke.cont.i.i163

invoke.cont.i.i163:                               ; preds = %if.else.i.i.i160, %if.then.i.i.i158
  %retval.0.i.i.i161 = phi i32 [ %91, %if.then.i.i.i158 ], [ %92, %if.else.i.i.i160 ]
  %cmp3.i.i162 = icmp slt i32 %retval.0.i.i.i161, 1
  br i1 %cmp3.i.i162, label %if.then4.i.i164, label %_ZNSsD2Ev.exit165

if.then4.i.i164:                                  ; preds = %invoke.cont.i.i163
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %88, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i152) #10
  br label %_ZNSsD2Ev.exit165

_ZNSsD2Ev.exit165:                                ; preds = %invoke.cont114, %invoke.cont.i.i163, %if.then4.i.i164
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %89) #10
  %_M_p.i.i.i167 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp107, i64 0, i32 0, i32 0
  %93 = load i8*, i8** %_M_p.i.i.i167, align 8, !tbaa !9
  %arrayidx.i.i168 = getelementptr inbounds i8, i8* %93, i64 -24
  %94 = bitcast i8* %arrayidx.i.i168 to %"struct.std::basic_string<char>::_Rep"*
  %95 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i166, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %95) #10
  %cmp.not.i.i169 = icmp eq i8* %arrayidx.i.i168, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i169, label %_ZNSsD2Ev.exit179, label %if.then.i.i171, !prof !11

if.then.i.i171:                                   ; preds = %_ZNSsD2Ev.exit165
  %_M_refcount.i.i170 = getelementptr inbounds i8, i8* %93, i64 -8
  %96 = bitcast i8* %_M_refcount.i.i170 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i172, label %if.else.i.i.i174

if.then.i.i.i172:                                 ; preds = %if.then.i.i171
  %97 = atomicrmw volatile add i32* %96, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i177

if.else.i.i.i174:                                 ; preds = %if.then.i.i171
  %98 = load i32, i32* %96, align 8, !tbaa !12
  %add.i.i.i.i173 = add nsw i32 %98, -1
  store i32 %add.i.i.i.i173, i32* %96, align 8, !tbaa !12
  br label %invoke.cont.i.i177

invoke.cont.i.i177:                               ; preds = %if.else.i.i.i174, %if.then.i.i.i172
  %retval.0.i.i.i175 = phi i32 [ %97, %if.then.i.i.i172 ], [ %98, %if.else.i.i.i174 ]
  %cmp3.i.i176 = icmp slt i32 %retval.0.i.i.i175, 1
  br i1 %cmp3.i.i176, label %if.then4.i.i178, label %_ZNSsD2Ev.exit179

if.then4.i.i178:                                  ; preds = %invoke.cont.i.i177
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %94, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i166) #10
  br label %_ZNSsD2Ev.exit179

_ZNSsD2Ev.exit179:                                ; preds = %_ZNSsD2Ev.exit165, %invoke.cont.i.i177, %if.then4.i.i178
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %95) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %86) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %85) #10
  %_M_p.i.i.i181 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp103, i64 0, i32 0, i32 0
  %99 = load i8*, i8** %_M_p.i.i.i181, align 8, !tbaa !9
  %arrayidx.i.i182 = getelementptr inbounds i8, i8* %99, i64 -24
  %100 = bitcast i8* %arrayidx.i.i182 to %"struct.std::basic_string<char>::_Rep"*
  %101 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i180, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %101) #10
  %cmp.not.i.i183 = icmp eq i8* %arrayidx.i.i182, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i183, label %_ZNSsD2Ev.exit193, label %if.then.i.i185, !prof !11

if.then.i.i185:                                   ; preds = %_ZNSsD2Ev.exit179
  %_M_refcount.i.i184 = getelementptr inbounds i8, i8* %99, i64 -8
  %102 = bitcast i8* %_M_refcount.i.i184 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i186, label %if.else.i.i.i188

if.then.i.i.i186:                                 ; preds = %if.then.i.i185
  %103 = atomicrmw volatile add i32* %102, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i191

if.else.i.i.i188:                                 ; preds = %if.then.i.i185
  %104 = load i32, i32* %102, align 8, !tbaa !12
  %add.i.i.i.i187 = add nsw i32 %104, -1
  store i32 %add.i.i.i.i187, i32* %102, align 8, !tbaa !12
  br label %invoke.cont.i.i191

invoke.cont.i.i191:                               ; preds = %if.else.i.i.i188, %if.then.i.i.i186
  %retval.0.i.i.i189 = phi i32 [ %103, %if.then.i.i.i186 ], [ %104, %if.else.i.i.i188 ]
  %cmp3.i.i190 = icmp slt i32 %retval.0.i.i.i189, 1
  br i1 %cmp3.i.i190, label %if.then4.i.i192, label %_ZNSsD2Ev.exit193

if.then4.i.i192:                                  ; preds = %invoke.cont.i.i191
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %100, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i180) #10
  br label %_ZNSsD2Ev.exit193

_ZNSsD2Ev.exit193:                                ; preds = %_ZNSsD2Ev.exit179, %invoke.cont.i.i191, %if.then4.i.i192
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %101) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %84) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %83) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %82) #10
  %105 = bitcast %"class.std::basic_string"* %ref.tmp126 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %105) #10
  %106 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp127, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %106) #10
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp126, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp127)
          to label %invoke.cont129 unwind label %lpad128

invoke.cont129:                                   ; preds = %_ZNSsD2Ev.exit193
  %107 = bitcast i32* %ref.tmp130 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %107) #10
  store i32 1, i32* %ref.tmp130, align 4, !tbaa !12
  %call133 = invoke noundef signext i32 @_ZN7Mantevo15parse_parameterIiEET_RKSsS3_RKS1_(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %argstring, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp126, i32* noundef nonnull align 4 dereferenceable(4) %ref.tmp130)
          to label %invoke.cont132 unwind label %lpad131

invoke.cont132:                                   ; preds = %invoke.cont129
  %elem_group_size = getelementptr inbounds %"struct.miniFE::Parameters", %"struct.miniFE::Parameters"* %params, i64 0, i32 9
  store i32 %call133, i32* %elem_group_size, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %107) #10
  %_M_p.i.i.i195 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp126, i64 0, i32 0, i32 0
  %108 = load i8*, i8** %_M_p.i.i.i195, align 8, !tbaa !9
  %arrayidx.i.i196 = getelementptr inbounds i8, i8* %108, i64 -24
  %109 = bitcast i8* %arrayidx.i.i196 to %"struct.std::basic_string<char>::_Rep"*
  %110 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i194, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %110) #10
  %cmp.not.i.i197 = icmp eq i8* %arrayidx.i.i196, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i197, label %_ZNSsD2Ev.exit207, label %if.then.i.i199, !prof !11

if.then.i.i199:                                   ; preds = %invoke.cont132
  %_M_refcount.i.i198 = getelementptr inbounds i8, i8* %108, i64 -8
  %111 = bitcast i8* %_M_refcount.i.i198 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i200, label %if.else.i.i.i202

if.then.i.i.i200:                                 ; preds = %if.then.i.i199
  %112 = atomicrmw volatile add i32* %111, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i205

if.else.i.i.i202:                                 ; preds = %if.then.i.i199
  %113 = load i32, i32* %111, align 8, !tbaa !12
  %add.i.i.i.i201 = add nsw i32 %113, -1
  store i32 %add.i.i.i.i201, i32* %111, align 8, !tbaa !12
  br label %invoke.cont.i.i205

invoke.cont.i.i205:                               ; preds = %if.else.i.i.i202, %if.then.i.i.i200
  %retval.0.i.i.i203 = phi i32 [ %112, %if.then.i.i.i200 ], [ %113, %if.else.i.i.i202 ]
  %cmp3.i.i204 = icmp slt i32 %retval.0.i.i.i203, 1
  br i1 %cmp3.i.i204, label %if.then4.i.i206, label %_ZNSsD2Ev.exit207

if.then4.i.i206:                                  ; preds = %invoke.cont.i.i205
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %109, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i194) #10
  br label %_ZNSsD2Ev.exit207

_ZNSsD2Ev.exit207:                                ; preds = %invoke.cont132, %invoke.cont.i.i205, %if.then4.i.i206
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %110) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %106) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %105) #10
  %114 = bitcast %"class.std::basic_string"* %ref.tmp139 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %114) #10
  %115 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp140, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %115) #10
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp139, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp140)
          to label %invoke.cont142 unwind label %lpad141

invoke.cont142:                                   ; preds = %_ZNSsD2Ev.exit207
  %116 = bitcast i32* %ref.tmp143 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %116) #10
  store i32 1, i32* %ref.tmp143, align 4, !tbaa !12
  %call146 = invoke noundef signext i32 @_ZN7Mantevo15parse_parameterIiEET_RKSsS3_RKS1_(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %argstring, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp139, i32* noundef nonnull align 4 dereferenceable(4) %ref.tmp143)
          to label %invoke.cont145 unwind label %lpad144

invoke.cont145:                                   ; preds = %invoke.cont142
  %use_elem_mat_fields = getelementptr inbounds %"struct.miniFE::Parameters", %"struct.miniFE::Parameters"* %params, i64 0, i32 10
  store i32 %call146, i32* %use_elem_mat_fields, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %116) #10
  %_M_p.i.i.i209 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp139, i64 0, i32 0, i32 0
  %117 = load i8*, i8** %_M_p.i.i.i209, align 8, !tbaa !9
  %arrayidx.i.i210 = getelementptr inbounds i8, i8* %117, i64 -24
  %118 = bitcast i8* %arrayidx.i.i210 to %"struct.std::basic_string<char>::_Rep"*
  %119 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i208, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %119) #10
  %cmp.not.i.i211 = icmp eq i8* %arrayidx.i.i210, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i211, label %_ZNSsD2Ev.exit221, label %if.then.i.i213, !prof !11

if.then.i.i213:                                   ; preds = %invoke.cont145
  %_M_refcount.i.i212 = getelementptr inbounds i8, i8* %117, i64 -8
  %120 = bitcast i8* %_M_refcount.i.i212 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i214, label %if.else.i.i.i216

if.then.i.i.i214:                                 ; preds = %if.then.i.i213
  %121 = atomicrmw volatile add i32* %120, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i219

if.else.i.i.i216:                                 ; preds = %if.then.i.i213
  %122 = load i32, i32* %120, align 8, !tbaa !12
  %add.i.i.i.i215 = add nsw i32 %122, -1
  store i32 %add.i.i.i.i215, i32* %120, align 8, !tbaa !12
  br label %invoke.cont.i.i219

invoke.cont.i.i219:                               ; preds = %if.else.i.i.i216, %if.then.i.i.i214
  %retval.0.i.i.i217 = phi i32 [ %121, %if.then.i.i.i214 ], [ %122, %if.else.i.i.i216 ]
  %cmp3.i.i218 = icmp slt i32 %retval.0.i.i.i217, 1
  br i1 %cmp3.i.i218, label %if.then4.i.i220, label %_ZNSsD2Ev.exit221

if.then4.i.i220:                                  ; preds = %invoke.cont.i.i219
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %118, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i208) #10
  br label %_ZNSsD2Ev.exit221

_ZNSsD2Ev.exit221:                                ; preds = %invoke.cont145, %invoke.cont.i.i219, %if.then4.i.i220
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %119) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %115) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %114) #10
  %123 = bitcast %"class.std::basic_string"* %ref.tmp152 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %123) #10
  %124 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp153, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %124) #10
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp152, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp153)
          to label %invoke.cont155 unwind label %lpad154

invoke.cont155:                                   ; preds = %_ZNSsD2Ev.exit221
  %125 = bitcast i32* %ref.tmp156 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %125) #10
  store i32 0, i32* %ref.tmp156, align 4, !tbaa !12
  %call159 = invoke noundef signext i32 @_ZN7Mantevo15parse_parameterIiEET_RKSsS3_RKS1_(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %argstring, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp152, i32* noundef nonnull align 4 dereferenceable(4) %ref.tmp156)
          to label %invoke.cont158 unwind label %lpad157

invoke.cont158:                                   ; preds = %invoke.cont155
  %verify_solution = getelementptr inbounds %"struct.miniFE::Parameters", %"struct.miniFE::Parameters"* %params, i64 0, i32 11
  store i32 %call159, i32* %verify_solution, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %125) #10
  %_M_p.i.i.i223 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp152, i64 0, i32 0, i32 0
  %126 = load i8*, i8** %_M_p.i.i.i223, align 8, !tbaa !9
  %arrayidx.i.i224 = getelementptr inbounds i8, i8* %126, i64 -24
  %127 = bitcast i8* %arrayidx.i.i224 to %"struct.std::basic_string<char>::_Rep"*
  %128 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i222, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %128) #10
  %cmp.not.i.i225 = icmp eq i8* %arrayidx.i.i224, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i225, label %_ZNSsD2Ev.exit235, label %if.then.i.i227, !prof !11

if.then.i.i227:                                   ; preds = %invoke.cont158
  %_M_refcount.i.i226 = getelementptr inbounds i8, i8* %126, i64 -8
  %129 = bitcast i8* %_M_refcount.i.i226 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i228, label %if.else.i.i.i230

if.then.i.i.i228:                                 ; preds = %if.then.i.i227
  %130 = atomicrmw volatile add i32* %129, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i233

if.else.i.i.i230:                                 ; preds = %if.then.i.i227
  %131 = load i32, i32* %129, align 8, !tbaa !12
  %add.i.i.i.i229 = add nsw i32 %131, -1
  store i32 %add.i.i.i.i229, i32* %129, align 8, !tbaa !12
  br label %invoke.cont.i.i233

invoke.cont.i.i233:                               ; preds = %if.else.i.i.i230, %if.then.i.i.i228
  %retval.0.i.i.i231 = phi i32 [ %130, %if.then.i.i.i228 ], [ %131, %if.else.i.i.i230 ]
  %cmp3.i.i232 = icmp slt i32 %retval.0.i.i.i231, 1
  br i1 %cmp3.i.i232, label %if.then4.i.i234, label %_ZNSsD2Ev.exit235

if.then4.i.i234:                                  ; preds = %invoke.cont.i.i233
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %127, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i222) #10
  br label %_ZNSsD2Ev.exit235

_ZNSsD2Ev.exit235:                                ; preds = %invoke.cont158, %invoke.cont.i.i233, %if.then4.i.i234
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %128) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %124) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %123) #10
  %132 = bitcast %"class.std::basic_string"* %ref.tmp165 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %132) #10
  %133 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp166, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %133) #10
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp165, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp166)
          to label %invoke.cont168 unwind label %lpad167

invoke.cont168:                                   ; preds = %_ZNSsD2Ev.exit235
  %134 = bitcast i32* %ref.tmp169 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %134) #10
  store i32 0, i32* %ref.tmp169, align 4, !tbaa !12
  %call172 = invoke noundef signext i32 @_ZN7Mantevo15parse_parameterIiEET_RKSsS3_RKS1_(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %argstring, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp165, i32* noundef nonnull align 4 dereferenceable(4) %ref.tmp169)
          to label %invoke.cont171 unwind label %lpad170

invoke.cont171:                                   ; preds = %invoke.cont168
  %device = getelementptr inbounds %"struct.miniFE::Parameters", %"struct.miniFE::Parameters"* %params, i64 0, i32 12
  store i32 %call172, i32* %device, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %134) #10
  %_M_p.i.i.i237 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp165, i64 0, i32 0, i32 0
  %135 = load i8*, i8** %_M_p.i.i.i237, align 8, !tbaa !9
  %arrayidx.i.i238 = getelementptr inbounds i8, i8* %135, i64 -24
  %136 = bitcast i8* %arrayidx.i.i238 to %"struct.std::basic_string<char>::_Rep"*
  %137 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i236, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %137) #10
  %cmp.not.i.i239 = icmp eq i8* %arrayidx.i.i238, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i239, label %_ZNSsD2Ev.exit249, label %if.then.i.i241, !prof !11

if.then.i.i241:                                   ; preds = %invoke.cont171
  %_M_refcount.i.i240 = getelementptr inbounds i8, i8* %135, i64 -8
  %138 = bitcast i8* %_M_refcount.i.i240 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i242, label %if.else.i.i.i244

if.then.i.i.i242:                                 ; preds = %if.then.i.i241
  %139 = atomicrmw volatile add i32* %138, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i247

if.else.i.i.i244:                                 ; preds = %if.then.i.i241
  %140 = load i32, i32* %138, align 8, !tbaa !12
  %add.i.i.i.i243 = add nsw i32 %140, -1
  store i32 %add.i.i.i.i243, i32* %138, align 8, !tbaa !12
  br label %invoke.cont.i.i247

invoke.cont.i.i247:                               ; preds = %if.else.i.i.i244, %if.then.i.i.i242
  %retval.0.i.i.i245 = phi i32 [ %139, %if.then.i.i.i242 ], [ %140, %if.else.i.i.i244 ]
  %cmp3.i.i246 = icmp slt i32 %retval.0.i.i.i245, 1
  br i1 %cmp3.i.i246, label %if.then4.i.i248, label %_ZNSsD2Ev.exit249

if.then4.i.i248:                                  ; preds = %invoke.cont.i.i247
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %136, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i236) #10
  br label %_ZNSsD2Ev.exit249

_ZNSsD2Ev.exit249:                                ; preds = %invoke.cont171, %invoke.cont.i.i247, %if.then4.i.i248
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %137) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %133) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %132) #10
  %141 = bitcast %"class.std::basic_string"* %ref.tmp178 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %141) #10
  %142 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp179, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %142) #10
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp178, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp179)
          to label %invoke.cont181 unwind label %lpad180

invoke.cont181:                                   ; preds = %_ZNSsD2Ev.exit249
  %143 = bitcast i32* %ref.tmp182 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %143) #10
  store i32 2, i32* %ref.tmp182, align 4, !tbaa !12
  %call185 = invoke noundef signext i32 @_ZN7Mantevo15parse_parameterIiEET_RKSsS3_RKS1_(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %argstring, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp178, i32* noundef nonnull align 4 dereferenceable(4) %ref.tmp182)
          to label %invoke.cont184 unwind label %lpad183

invoke.cont184:                                   ; preds = %invoke.cont181
  %num_devices = getelementptr inbounds %"struct.miniFE::Parameters", %"struct.miniFE::Parameters"* %params, i64 0, i32 13
  store i32 %call185, i32* %num_devices, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %143) #10
  %_M_p.i.i.i251 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp178, i64 0, i32 0, i32 0
  %144 = load i8*, i8** %_M_p.i.i.i251, align 8, !tbaa !9
  %arrayidx.i.i252 = getelementptr inbounds i8, i8* %144, i64 -24
  %145 = bitcast i8* %arrayidx.i.i252 to %"struct.std::basic_string<char>::_Rep"*
  %146 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i250, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %146) #10
  %cmp.not.i.i253 = icmp eq i8* %arrayidx.i.i252, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i253, label %_ZNSsD2Ev.exit263, label %if.then.i.i255, !prof !11

if.then.i.i255:                                   ; preds = %invoke.cont184
  %_M_refcount.i.i254 = getelementptr inbounds i8, i8* %144, i64 -8
  %147 = bitcast i8* %_M_refcount.i.i254 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i256, label %if.else.i.i.i258

if.then.i.i.i256:                                 ; preds = %if.then.i.i255
  %148 = atomicrmw volatile add i32* %147, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i261

if.else.i.i.i258:                                 ; preds = %if.then.i.i255
  %149 = load i32, i32* %147, align 8, !tbaa !12
  %add.i.i.i.i257 = add nsw i32 %149, -1
  store i32 %add.i.i.i.i257, i32* %147, align 8, !tbaa !12
  br label %invoke.cont.i.i261

invoke.cont.i.i261:                               ; preds = %if.else.i.i.i258, %if.then.i.i.i256
  %retval.0.i.i.i259 = phi i32 [ %148, %if.then.i.i.i256 ], [ %149, %if.else.i.i.i258 ]
  %cmp3.i.i260 = icmp slt i32 %retval.0.i.i.i259, 1
  br i1 %cmp3.i.i260, label %if.then4.i.i262, label %_ZNSsD2Ev.exit263

if.then4.i.i262:                                  ; preds = %invoke.cont.i.i261
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %145, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i250) #10
  br label %_ZNSsD2Ev.exit263

_ZNSsD2Ev.exit263:                                ; preds = %invoke.cont184, %invoke.cont.i.i261, %if.then4.i.i262
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %146) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %142) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %141) #10
  %150 = bitcast %"class.std::basic_string"* %ref.tmp191 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %150) #10
  %151 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp192, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %151) #10
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp191, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp192)
          to label %invoke.cont194 unwind label %lpad193

invoke.cont194:                                   ; preds = %_ZNSsD2Ev.exit263
  %152 = bitcast i32* %ref.tmp195 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %152) #10
  store i32 9999, i32* %ref.tmp195, align 4, !tbaa !12
  %call198 = invoke noundef signext i32 @_ZN7Mantevo15parse_parameterIiEET_RKSsS3_RKS1_(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %argstring, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp191, i32* noundef nonnull align 4 dereferenceable(4) %ref.tmp195)
          to label %invoke.cont197 unwind label %lpad196

invoke.cont197:                                   ; preds = %invoke.cont194
  %skip_device = getelementptr inbounds %"struct.miniFE::Parameters", %"struct.miniFE::Parameters"* %params, i64 0, i32 14
  store i32 %call198, i32* %skip_device, align 4, !tbaa !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %152) #10
  %_M_p.i.i.i265 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp191, i64 0, i32 0, i32 0
  %153 = load i8*, i8** %_M_p.i.i.i265, align 8, !tbaa !9
  %arrayidx.i.i266 = getelementptr inbounds i8, i8* %153, i64 -24
  %154 = bitcast i8* %arrayidx.i.i266 to %"struct.std::basic_string<char>::_Rep"*
  %155 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i264, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %155) #10
  %cmp.not.i.i267 = icmp eq i8* %arrayidx.i.i266, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i267, label %_ZNSsD2Ev.exit277, label %if.then.i.i269, !prof !11

if.then.i.i269:                                   ; preds = %invoke.cont197
  %_M_refcount.i.i268 = getelementptr inbounds i8, i8* %153, i64 -8
  %156 = bitcast i8* %_M_refcount.i.i268 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i270, label %if.else.i.i.i272

if.then.i.i.i270:                                 ; preds = %if.then.i.i269
  %157 = atomicrmw volatile add i32* %156, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i275

if.else.i.i.i272:                                 ; preds = %if.then.i.i269
  %158 = load i32, i32* %156, align 8, !tbaa !12
  %add.i.i.i.i271 = add nsw i32 %158, -1
  store i32 %add.i.i.i.i271, i32* %156, align 8, !tbaa !12
  br label %invoke.cont.i.i275

invoke.cont.i.i275:                               ; preds = %if.else.i.i.i272, %if.then.i.i.i270
  %retval.0.i.i.i273 = phi i32 [ %157, %if.then.i.i.i270 ], [ %158, %if.else.i.i.i272 ]
  %cmp3.i.i274 = icmp slt i32 %retval.0.i.i.i273, 1
  br i1 %cmp3.i.i274, label %if.then4.i.i276, label %_ZNSsD2Ev.exit277

if.then4.i.i276:                                  ; preds = %invoke.cont.i.i275
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %154, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i264) #10
  br label %_ZNSsD2Ev.exit277

_ZNSsD2Ev.exit277:                                ; preds = %invoke.cont197, %invoke.cont.i.i275, %if.then4.i.i276
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %155) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %151) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %150) #10
  %159 = bitcast %"class.std::basic_string"* %ref.tmp204 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %159) #10
  %160 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp205, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %160) #10
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp204, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp205)
          to label %invoke.cont207 unwind label %lpad206

invoke.cont207:                                   ; preds = %_ZNSsD2Ev.exit277
  %161 = bitcast i32* %ref.tmp208 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %161) #10
  store i32 1, i32* %ref.tmp208, align 4, !tbaa !12
  %call211 = invoke noundef signext i32 @_ZN7Mantevo15parse_parameterIiEET_RKSsS3_RKS1_(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %argstring, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp204, i32* noundef nonnull align 4 dereferenceable(4) %ref.tmp208)
          to label %invoke.cont210 unwind label %lpad209

invoke.cont210:                                   ; preds = %invoke.cont207
  %numa = getelementptr inbounds %"struct.miniFE::Parameters", %"struct.miniFE::Parameters"* %params, i64 0, i32 15
  store i32 %call211, i32* %numa, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %161) #10
  %_M_p.i.i.i279 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp204, i64 0, i32 0, i32 0
  %162 = load i8*, i8** %_M_p.i.i.i279, align 8, !tbaa !9
  %arrayidx.i.i280 = getelementptr inbounds i8, i8* %162, i64 -24
  %163 = bitcast i8* %arrayidx.i.i280 to %"struct.std::basic_string<char>::_Rep"*
  %164 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i278, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %164) #10
  %cmp.not.i.i281 = icmp eq i8* %arrayidx.i.i280, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i281, label %_ZNSsD2Ev.exit291, label %if.then.i.i283, !prof !11

if.then.i.i283:                                   ; preds = %invoke.cont210
  %_M_refcount.i.i282 = getelementptr inbounds i8, i8* %162, i64 -8
  %165 = bitcast i8* %_M_refcount.i.i282 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i284, label %if.else.i.i.i286

if.then.i.i.i284:                                 ; preds = %if.then.i.i283
  %166 = atomicrmw volatile add i32* %165, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i289

if.else.i.i.i286:                                 ; preds = %if.then.i.i283
  %167 = load i32, i32* %165, align 8, !tbaa !12
  %add.i.i.i.i285 = add nsw i32 %167, -1
  store i32 %add.i.i.i.i285, i32* %165, align 8, !tbaa !12
  br label %invoke.cont.i.i289

invoke.cont.i.i289:                               ; preds = %if.else.i.i.i286, %if.then.i.i.i284
  %retval.0.i.i.i287 = phi i32 [ %166, %if.then.i.i.i284 ], [ %167, %if.else.i.i.i286 ]
  %cmp3.i.i288 = icmp slt i32 %retval.0.i.i.i287, 1
  br i1 %cmp3.i.i288, label %if.then4.i.i290, label %_ZNSsD2Ev.exit291

if.then4.i.i290:                                  ; preds = %invoke.cont.i.i289
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %163, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i278) #10
  br label %_ZNSsD2Ev.exit291

_ZNSsD2Ev.exit291:                                ; preds = %invoke.cont210, %invoke.cont.i.i289, %if.then4.i.i290
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %164) #10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %160) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %159) #10
  %168 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !9
  %arrayidx.i.i294 = getelementptr inbounds i8, i8* %168, i64 -24
  %169 = bitcast i8* %arrayidx.i.i294 to %"struct.std::basic_string<char>::_Rep"*
  %170 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i292, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %170) #10
  %cmp.not.i.i295 = icmp eq i8* %arrayidx.i.i294, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i295, label %_ZNSsD2Ev.exit305, label %if.then.i.i297, !prof !11

if.then.i.i297:                                   ; preds = %_ZNSsD2Ev.exit291
  %_M_refcount.i.i296 = getelementptr inbounds i8, i8* %168, i64 -8
  %171 = bitcast i8* %_M_refcount.i.i296 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i298, label %if.else.i.i.i300

if.then.i.i.i298:                                 ; preds = %if.then.i.i297
  %172 = atomicrmw volatile add i32* %171, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i303

if.else.i.i.i300:                                 ; preds = %if.then.i.i297
  %173 = load i32, i32* %171, align 8, !tbaa !12
  %add.i.i.i.i299 = add nsw i32 %173, -1
  store i32 %add.i.i.i.i299, i32* %171, align 8, !tbaa !12
  br label %invoke.cont.i.i303

invoke.cont.i.i303:                               ; preds = %if.else.i.i.i300, %if.then.i.i.i298
  %retval.0.i.i.i301 = phi i32 [ %172, %if.then.i.i.i298 ], [ %173, %if.else.i.i.i300 ]
  %cmp3.i.i302 = icmp slt i32 %retval.0.i.i.i301, 1
  br i1 %cmp3.i.i302, label %if.then4.i.i304, label %_ZNSsD2Ev.exit305

if.then4.i.i304:                                  ; preds = %invoke.cont.i.i303
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %169, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i292) #10
  br label %_ZNSsD2Ev.exit305

_ZNSsD2Ev.exit305:                                ; preds = %_ZNSsD2Ev.exit291, %invoke.cont.i.i303, %if.then4.i.i304
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %170) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #10
  %174 = load i8*, i8** %_M_p.i.i.i4.i.i, align 8, !tbaa !9
  %arrayidx.i.i308 = getelementptr inbounds i8, i8* %174, i64 -24
  %175 = bitcast i8* %arrayidx.i.i308 to %"struct.std::basic_string<char>::_Rep"*
  %176 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i306, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %176) #10
  %cmp.not.i.i309 = icmp eq i8* %arrayidx.i.i308, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i309, label %_ZNSsD2Ev.exit319, label %if.then.i.i311, !prof !11

if.then.i.i311:                                   ; preds = %_ZNSsD2Ev.exit305
  %_M_refcount.i.i310 = getelementptr inbounds i8, i8* %174, i64 -8
  %177 = bitcast i8* %_M_refcount.i.i310 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i312, label %if.else.i.i.i314

if.then.i.i.i312:                                 ; preds = %if.then.i.i311
  %178 = atomicrmw volatile add i32* %177, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i317

if.else.i.i.i314:                                 ; preds = %if.then.i.i311
  %179 = load i32, i32* %177, align 8, !tbaa !12
  %add.i.i.i.i313 = add nsw i32 %179, -1
  store i32 %add.i.i.i.i313, i32* %177, align 8, !tbaa !12
  br label %invoke.cont.i.i317

invoke.cont.i.i317:                               ; preds = %if.else.i.i.i314, %if.then.i.i.i312
  %retval.0.i.i.i315 = phi i32 [ %178, %if.then.i.i.i312 ], [ %179, %if.else.i.i.i314 ]
  %cmp3.i.i316 = icmp slt i32 %retval.0.i.i.i315, 1
  br i1 %cmp3.i.i316, label %if.then4.i.i318, label %_ZNSsD2Ev.exit319

if.then4.i.i318:                                  ; preds = %invoke.cont.i.i317
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %175, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i306) #10
  br label %_ZNSsD2Ev.exit319

_ZNSsD2Ev.exit319:                                ; preds = %_ZNSsD2Ev.exit305, %invoke.cont.i.i317, %if.then4.i.i318
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %176) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #10
  %180 = load i8*, i8** %_M_p.i.i, align 8, !tbaa !9
  %arrayidx.i.i322 = getelementptr inbounds i8, i8* %180, i64 -24
  %181 = bitcast i8* %arrayidx.i.i322 to %"struct.std::basic_string<char>::_Rep"*
  %182 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i320, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %182) #10
  %cmp.not.i.i323 = icmp eq i8* %arrayidx.i.i322, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i323, label %_ZNSsD2Ev.exit333, label %if.then.i.i325, !prof !11

if.then.i.i325:                                   ; preds = %_ZNSsD2Ev.exit319
  %_M_refcount.i.i324 = getelementptr inbounds i8, i8* %180, i64 -8
  %183 = bitcast i8* %_M_refcount.i.i324 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i326, label %if.else.i.i.i328

if.then.i.i.i326:                                 ; preds = %if.then.i.i325
  %184 = atomicrmw volatile add i32* %183, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i331

if.else.i.i.i328:                                 ; preds = %if.then.i.i325
  %185 = load i32, i32* %183, align 8, !tbaa !12
  %add.i.i.i.i327 = add nsw i32 %185, -1
  store i32 %add.i.i.i.i327, i32* %183, align 8, !tbaa !12
  br label %invoke.cont.i.i331

invoke.cont.i.i331:                               ; preds = %if.else.i.i.i328, %if.then.i.i.i326
  %retval.0.i.i.i329 = phi i32 [ %184, %if.then.i.i.i326 ], [ %185, %if.else.i.i.i328 ]
  %cmp3.i.i330 = icmp slt i32 %retval.0.i.i.i329, 1
  br i1 %cmp3.i.i330, label %if.then4.i.i332, label %_ZNSsD2Ev.exit333

if.then4.i.i332:                                  ; preds = %invoke.cont.i.i331
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %181, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i320) #10
  br label %_ZNSsD2Ev.exit333

_ZNSsD2Ev.exit333:                                ; preds = %_ZNSsD2Ev.exit319, %invoke.cont.i.i331, %if.then4.i.i332
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %182) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret void

lpad15:                                           ; preds = %if.end
  %186 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup23

lpad18:                                           ; preds = %invoke.cont16
  %187 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #10
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp13) #10
  br label %ehcleanup23

ehcleanup23:                                      ; preds = %lpad18, %lpad15
  %.pn18 = phi { i8*, i32 } [ %187, %lpad18 ], [ %186, %lpad15 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #10
  br label %ehcleanup217

lpad28:                                           ; preds = %_ZNSsD2Ev.exit67
  %188 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup35

lpad31:                                           ; preds = %invoke.cont29
  %189 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp26) #10
  br label %ehcleanup35

ehcleanup35:                                      ; preds = %lpad31, %lpad28
  %.pn20 = phi { i8*, i32 } [ %189, %lpad31 ], [ %188, %lpad28 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %31) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #10
  br label %ehcleanup217

lpad40:                                           ; preds = %_ZNSsD2Ev.exit81
  %190 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup47

lpad43:                                           ; preds = %invoke.cont41
  %191 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp38) #10
  br label %ehcleanup47

ehcleanup47:                                      ; preds = %lpad43, %lpad40
  %.pn22 = phi { i8*, i32 } [ %191, %lpad43 ], [ %190, %lpad40 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %39) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %38) #10
  br label %ehcleanup217

lpad52:                                           ; preds = %_ZNSsD2Ev.exit95
  %192 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup60

lpad55:                                           ; preds = %invoke.cont53
  %193 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %48) #10
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp50) #10
  br label %ehcleanup60

ehcleanup60:                                      ; preds = %lpad55, %lpad52
  %.pn24 = phi { i8*, i32 } [ %193, %lpad55 ], [ %192, %lpad52 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %47) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46) #10
  br label %ehcleanup217

lpad65:                                           ; preds = %_ZNSsD2Ev.exit109
  %194 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup73

lpad68:                                           ; preds = %invoke.cont66
  %195 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %57) #10
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp63) #10
  br label %ehcleanup73

ehcleanup73:                                      ; preds = %lpad68, %lpad65
  %.pn26 = phi { i8*, i32 } [ %195, %lpad68 ], [ %194, %lpad65 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %56) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %55) #10
  br label %ehcleanup217

lpad78:                                           ; preds = %_ZNSsD2Ev.exit123
  %196 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup86

lpad81:                                           ; preds = %invoke.cont79
  %197 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %66) #10
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp76) #10
  br label %ehcleanup86

ehcleanup86:                                      ; preds = %lpad81, %lpad78
  %.pn28 = phi { i8*, i32 } [ %197, %lpad81 ], [ %196, %lpad78 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %65) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %64) #10
  br label %ehcleanup217

lpad91:                                           ; preds = %_ZNSsD2Ev.exit137
  %198 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup99

lpad94:                                           ; preds = %invoke.cont92
  %199 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %75) #10
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp89) #10
  br label %ehcleanup99

ehcleanup99:                                      ; preds = %lpad94, %lpad91
  %.pn30 = phi { i8*, i32 } [ %199, %lpad94 ], [ %198, %lpad91 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %74) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %73) #10
  br label %ehcleanup217

lpad105:                                          ; preds = %_ZNSsD2Ev.exit151
  %200 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup122

lpad109:                                          ; preds = %invoke.cont106
  %201 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup118

lpad111:                                          ; preds = %invoke.cont110
  %202 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup117

lpad113:                                          ; preds = %invoke.cont112
  %203 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp102) #10
  br label %ehcleanup117

ehcleanup117:                                     ; preds = %lpad113, %lpad111
  %.pn32 = phi { i8*, i32 } [ %203, %lpad113 ], [ %202, %lpad111 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp107) #10
  br label %ehcleanup118

ehcleanup118:                                     ; preds = %ehcleanup117, %lpad109
  %.pn32.pn = phi { i8*, i32 } [ %.pn32, %ehcleanup117 ], [ %201, %lpad109 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %86) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %85) #10
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp103) #10
  br label %ehcleanup122

ehcleanup122:                                     ; preds = %ehcleanup118, %lpad105
  %.pn32.pn.pn = phi { i8*, i32 } [ %.pn32.pn, %ehcleanup118 ], [ %200, %lpad105 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %84) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %83) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %82) #10
  br label %ehcleanup217

lpad128:                                          ; preds = %_ZNSsD2Ev.exit193
  %204 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup136

lpad131:                                          ; preds = %invoke.cont129
  %205 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %107) #10
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp126) #10
  br label %ehcleanup136

ehcleanup136:                                     ; preds = %lpad131, %lpad128
  %.pn36 = phi { i8*, i32 } [ %205, %lpad131 ], [ %204, %lpad128 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %106) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %105) #10
  br label %ehcleanup217

lpad141:                                          ; preds = %_ZNSsD2Ev.exit207
  %206 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup149

lpad144:                                          ; preds = %invoke.cont142
  %207 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %116) #10
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp139) #10
  br label %ehcleanup149

ehcleanup149:                                     ; preds = %lpad144, %lpad141
  %.pn38 = phi { i8*, i32 } [ %207, %lpad144 ], [ %206, %lpad141 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %115) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %114) #10
  br label %ehcleanup217

lpad154:                                          ; preds = %_ZNSsD2Ev.exit221
  %208 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup162

lpad157:                                          ; preds = %invoke.cont155
  %209 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %125) #10
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp152) #10
  br label %ehcleanup162

ehcleanup162:                                     ; preds = %lpad157, %lpad154
  %.pn40 = phi { i8*, i32 } [ %209, %lpad157 ], [ %208, %lpad154 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %124) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %123) #10
  br label %ehcleanup217

lpad167:                                          ; preds = %_ZNSsD2Ev.exit235
  %210 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup175

lpad170:                                          ; preds = %invoke.cont168
  %211 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %134) #10
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp165) #10
  br label %ehcleanup175

ehcleanup175:                                     ; preds = %lpad170, %lpad167
  %.pn42 = phi { i8*, i32 } [ %211, %lpad170 ], [ %210, %lpad167 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %133) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %132) #10
  br label %ehcleanup217

lpad180:                                          ; preds = %_ZNSsD2Ev.exit249
  %212 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup188

lpad183:                                          ; preds = %invoke.cont181
  %213 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %143) #10
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp178) #10
  br label %ehcleanup188

ehcleanup188:                                     ; preds = %lpad183, %lpad180
  %.pn44 = phi { i8*, i32 } [ %213, %lpad183 ], [ %212, %lpad180 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %142) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %141) #10
  br label %ehcleanup217

lpad193:                                          ; preds = %_ZNSsD2Ev.exit263
  %214 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup201

lpad196:                                          ; preds = %invoke.cont194
  %215 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %152) #10
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp191) #10
  br label %ehcleanup201

ehcleanup201:                                     ; preds = %lpad196, %lpad193
  %.pn46 = phi { i8*, i32 } [ %215, %lpad196 ], [ %214, %lpad193 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %151) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %150) #10
  br label %ehcleanup217

lpad206:                                          ; preds = %_ZNSsD2Ev.exit277
  %216 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup214

lpad209:                                          ; preds = %invoke.cont207
  %217 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %161) #10
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %ref.tmp204) #10
  br label %ehcleanup214

ehcleanup214:                                     ; preds = %lpad209, %lpad206
  %.pn48 = phi { i8*, i32 } [ %217, %lpad209 ], [ %216, %lpad206 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %160) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %159) #10
  br label %ehcleanup217

ehcleanup217:                                     ; preds = %ehcleanup214, %ehcleanup201, %ehcleanup188, %ehcleanup175, %ehcleanup162, %ehcleanup149, %ehcleanup136, %ehcleanup122, %ehcleanup99, %ehcleanup86, %ehcleanup73, %ehcleanup60, %ehcleanup47, %ehcleanup35, %ehcleanup23, %lpad11
  %.pn48.pn = phi { i8*, i32 } [ %.pn48, %ehcleanup214 ], [ %.pn46, %ehcleanup201 ], [ %.pn44, %ehcleanup188 ], [ %.pn42, %ehcleanup175 ], [ %.pn40, %ehcleanup162 ], [ %.pn38, %ehcleanup149 ], [ %.pn36, %ehcleanup136 ], [ %.pn32.pn.pn, %ehcleanup122 ], [ %.pn30, %ehcleanup99 ], [ %.pn28, %ehcleanup86 ], [ %.pn26, %ehcleanup73 ], [ %.pn24, %ehcleanup60 ], [ %.pn22, %ehcleanup47 ], [ %.pn20, %ehcleanup35 ], [ %.pn18, %ehcleanup23 ], [ %20, %lpad11 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %filename) #10
  br label %ehcleanup218

ehcleanup218:                                     ; preds = %ehcleanup217, %ehcleanup
  %.pn48.pn.pn = phi { i8*, i32 } [ %.pn48.pn, %ehcleanup217 ], [ %.pn, %ehcleanup ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #10
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %garbage) #10
  br label %ehcleanup220

ehcleanup220:                                     ; preds = %ehcleanup218, %lpad1
  %.pn48.pn.pn.pn = phi { i8*, i32 } [ %.pn48.pn.pn, %ehcleanup218 ], [ %17, %lpad1 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #10
  br label %ehcleanup221

ehcleanup221:                                     ; preds = %ehcleanup220, %lpad
  %.pn48.pn.pn.pn.pn = phi { i8*, i32 } [ %.pn48.pn.pn.pn, %ehcleanup220 ], [ %16, %lpad ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %argstring) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  resume { i8*, i32 } %.pn48.pn.pn.pn.pn
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare void @_ZN7Mantevo21read_args_into_stringEiPPcRSs(i32 noundef signext, i8** noundef, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

declare void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i8* noundef, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN7Mantevo15parse_parameterISsEET_RKSsS3_RKS1_(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8 %agg.result, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %arg_string, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %param_name, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %default_value) local_unnamed_addr #3 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i49 = alloca %"class.std::allocator", align 1
  %ref.tmp.i.i.i.i = alloca %"class.std::allocator", align 1
  %ref.tmp.i = alloca %"class.std::allocator", align 1
  %str = alloca %"class.std::basic_string", align 8
  %isstr = alloca %"class.std::basic_istringstream", align 8
  %return_val = alloca %"class.std::basic_string", align 8
  %_M_p.i.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %param_name, i64 0, i32 0, i32 0
  %0 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !9
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %0, i64 -24
  %_M_length.i.i = bitcast i8* %arrayidx.i.i.i to i64*
  %1 = load i64, i64* %_M_length.i.i, align 8, !tbaa !14
  %call3.i = tail call noundef i64 @_ZNKSs4findEPKcmm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %arg_string, i8* noundef %0, i64 noundef 0, i64 noundef %1) #10
  %cmp = icmp eq i64 %call3.i, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %agg.result, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %default_value)
  br label %cleanup45

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !9
  %arrayidx.i.i = getelementptr inbounds i8, i8* %2, i64 -24
  %_M_length.i = bitcast i8* %arrayidx.i.i to i64*
  %3 = load i64, i64* %_M_length.i, align 8, !tbaa !14
  %add = add i64 %3, %call3.i
  %_M_p.i.i.i30 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %arg_string, i64 0, i32 0, i32 0
  %4 = load i8*, i8** %_M_p.i.i.i30, align 8, !tbaa !9
  %arrayidx.i.i31 = getelementptr inbounds i8, i8* %4, i64 -24
  %_M_length.i32 = bitcast i8* %arrayidx.i.i31 to i64*
  %5 = load i64, i64* %_M_length.i32, align 8, !tbaa !14
  %cmp3.not = icmp ugt i64 %5, %add
  br i1 %cmp3.not, label %land.rhs, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %agg.result, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %default_value)
  br label %cleanup45

land.rhs:                                         ; preds = %if.end, %while.body
  %pos.064 = phi i64 [ %inc, %while.body ], [ %add, %if.end ]
  %arrayidx.i = getelementptr inbounds i8, i8* %4, i64 %pos.064
  %6 = load i8, i8* %arrayidx.i, align 1, !tbaa !34
  switch i8 %6, label %while.end [
    i8 32, label %while.body
    i8 61, label %while.body
    i8 58, label %while.body
  ]

while.body:                                       ; preds = %land.rhs, %land.rhs, %land.rhs
  %inc = add nuw i64 %pos.064, 1
  %cmp7 = icmp ult i64 %inc, %5
  br i1 %cmp7, label %land.rhs, label %while.body.while.end_crit_edge, !llvm.loop !35

while.body.while.end_crit_edge:                   ; preds = %while.body
  %arrayidx.i41.phi.trans.insert = getelementptr inbounds i8, i8* %4, i64 %5
  %.pre = load i8, i8* %arrayidx.i41.phi.trans.insert, align 1, !tbaa !34
  br label %while.end

while.end:                                        ; preds = %land.rhs, %while.body.while.end_crit_edge
  %7 = phi i8 [ %.pre, %while.body.while.end_crit_edge ], [ %6, %land.rhs ]
  %pos.0.lcssa = phi i64 [ %5, %while.body.while.end_crit_edge ], [ %pos.064, %land.rhs ]
  switch i8 %7, label %if.end25 [
    i8 61, label %if.then23
    i8 58, label %if.then23
  ]

if.then23:                                        ; preds = %while.end, %while.end
  %inc24 = add i64 %pos.0.lcssa, 1
  br label %if.end25

if.end25:                                         ; preds = %while.end, %if.then23
  %pos.1 = phi i64 [ %inc24, %if.then23 ], [ %pos.0.lcssa, %while.end ]
  %8 = bitcast %"class.std::basic_string"* %str to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #10
  %cmp.i.i = icmp ult i64 %5, %pos.1
  br i1 %cmp.i.i, label %if.then.i.i, label %_ZNKSs6substrEmm.exit

if.then.i.i:                                      ; preds = %if.end25
  tail call void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i64 noundef %pos.1, i64 noundef %5) #11, !noalias !37
  unreachable

_ZNKSs6substrEmm.exit:                            ; preds = %if.end25
  call void @_ZNSsC1ERKSsmm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %str, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %arg_string, i64 noundef %pos.1, i64 noundef -1)
  %9 = bitcast %"class.std::basic_istringstream"* %isstr to i8*
  call void @llvm.lifetime.start.p0i8(i64 360, i8* nonnull %9) #10
  invoke void @_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKSsSt13_Ios_Openmode(%"class.std::basic_istringstream"* noundef nonnull align 8 dereferenceable(96) %isstr, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %str, i32 noundef signext 8)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %_ZNKSs6substrEmm.exit
  %10 = bitcast %"class.std::basic_string"* %return_val to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #10
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %return_val, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %default_value)
          to label %invoke.cont27 unwind label %lpad26

invoke.cont27:                                    ; preds = %invoke.cont
  %11 = bitcast %"class.std::basic_istringstream"* %isstr to %"class.std::basic_istream"*
  %call30 = invoke noundef nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E(%"class.std::basic_istream"* noundef nonnull align 8 dereferenceable(16) %11, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %return_val)
          to label %invoke.cont31 unwind label %lpad28

invoke.cont31:                                    ; preds = %invoke.cont27
  %12 = bitcast %"class.std::basic_istringstream"* %isstr to i8**
  %vtable = load i8*, i8** %12, align 8, !tbaa !40
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %13 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %13, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %vbase.offset
  %_M_streambuf_state.i.i.i = getelementptr inbounds i8, i8* %add.ptr, i64 32
  %14 = bitcast i8* %_M_streambuf_state.i.i.i to i32*
  %15 = load i32, i32* %14, align 8, !tbaa !42
  %and.i.i.i = and i32 %15, 5
  %cmp.i.i44.not = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i44.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %invoke.cont31
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %agg.result, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %default_value)
          to label %if.then33.cleanup_crit_edge unwind label %lpad28

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  %_M_p.i.i.i46.phi.trans.insert = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %return_val, i64 0, i32 0, i32 0
  %.pre66 = load i8*, i8** %_M_p.i.i.i46.phi.trans.insert, align 8, !tbaa !9
  br label %cleanup

lpad:                                             ; preds = %_ZNKSs6substrEmm.exit
  %16 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup40

lpad26:                                           ; preds = %invoke.cont
  %17 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

lpad28:                                           ; preds = %if.then33, %invoke.cont27
  %18 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %return_val) #10
  br label %ehcleanup

if.end35:                                         ; preds = %invoke.cont31
  %_M_p.i.i45 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %agg.result, i64 0, i32 0, i32 0
  %_M_p2.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %return_val, i64 0, i32 0, i32 0
  %19 = load i8*, i8** %_M_p2.i.i, align 8, !tbaa !4
  store i8* %19, i8** %_M_p.i.i45, align 8, !tbaa !4
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %_M_p2.i.i, align 8, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %if.then33.cleanup_crit_edge, %if.end35
  %20 = phi i8* [ %.pre66, %if.then33.cleanup_crit_edge ], [ bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), %if.end35 ]
  %arrayidx.i.i47 = getelementptr inbounds i8, i8* %20, i64 -24
  %21 = bitcast i8* %arrayidx.i.i47 to %"struct.std::basic_string<char>::_Rep"*
  %22 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %22) #10
  %cmp.not.i.i = icmp eq i8* %arrayidx.i.i47, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i, label %_ZNSsD2Ev.exit, label %if.then.i.i48, !prof !11

if.then.i.i48:                                    ; preds = %cleanup
  %_M_refcount.i.i = getelementptr inbounds i8, i8* %20, i64 -8
  %23 = bitcast i8* %_M_refcount.i.i to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i48
  %24 = atomicrmw volatile add i32* %23, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i48
  %25 = load i32, i32* %23, align 8, !tbaa !12
  %add.i.i.i.i = add nsw i32 %25, -1
  store i32 %add.i.i.i.i, i32* %23, align 8, !tbaa !12
  br label %invoke.cont.i.i

invoke.cont.i.i:                                  ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %24, %if.then.i.i.i ], [ %25, %if.else.i.i.i ]
  %cmp3.i.i = icmp slt i32 %retval.0.i.i.i, 1
  br i1 %cmp3.i.i, label %if.then4.i.i, label %_ZNSsD2Ev.exit

if.then4.i.i:                                     ; preds = %invoke.cont.i.i
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %21, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i) #10
  br label %_ZNSsD2Ev.exit

_ZNSsD2Ev.exit:                                   ; preds = %cleanup, %invoke.cont.i.i, %if.then4.i.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %22) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #10
  %26 = load i32 (...)**, i32 (...)*** bitcast ([4 x i8*]* @_ZTTSt19basic_istringstreamIcSt11char_traitsIcESaIcEE to i32 (...)***), align 8
  %27 = getelementptr inbounds %"class.std::basic_istringstream", %"class.std::basic_istringstream"* %isstr, i64 0, i32 0, i32 0
  store i32 (...)** %26, i32 (...)*** %27, align 8, !tbaa !40
  %28 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt19basic_istringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 3) to i32 (...)***), align 8
  %vbase.offset.ptr1.i.i = getelementptr i32 (...)*, i32 (...)** %26, i64 -3
  %29 = bitcast i32 (...)** %vbase.offset.ptr1.i.i to i64*
  %vbase.offset.i.i = load i64, i64* %29, align 8
  %add.ptr.i.i = getelementptr inbounds i8, i8* %9, i64 %vbase.offset.i.i
  %30 = bitcast i8* %add.ptr.i.i to i32 (...)***
  store i32 (...)** %28, i32 (...)*** %30, align 8, !tbaa !40
  %31 = getelementptr inbounds %"class.std::basic_istringstream", %"class.std::basic_istringstream"* %isstr, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %31, align 8, !tbaa !40
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.std::basic_istringstream", %"class.std::basic_istringstream"* %isstr, i64 0, i32 1, i32 2, i32 0, i32 0
  %32 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !9
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %32, i64 -24
  %33 = bitcast i8* %arrayidx.i.i.i.i.i to %"struct.std::basic_string<char>::_Rep"*
  %34 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i.i.i.i, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %34) #10
  %cmp.not.i.i.i.i.i = icmp eq i8* %arrayidx.i.i.i.i.i, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i.i.i.i, label %_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %if.then.i.i.i.i.i, !prof !11

if.then.i.i.i.i.i:                                ; preds = %_ZNSsD2Ev.exit
  %_M_refcount.i.i.i.i.i = getelementptr inbounds i8, i8* %32, i64 -8
  %35 = bitcast i8* %_M_refcount.i.i.i.i.i to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i
  %36 = atomicrmw volatile add i32* %35, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i
  %37 = load i32, i32* %35, align 8, !tbaa !12
  %add.i.i.i.i.i.i.i = add nsw i32 %37, -1
  store i32 %add.i.i.i.i.i.i.i, i32* %35, align 8, !tbaa !12
  br label %invoke.cont.i.i.i.i.i

invoke.cont.i.i.i.i.i:                            ; preds = %if.else.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi i32 [ %36, %if.then.i.i.i.i.i.i ], [ %37, %if.else.i.i.i.i.i.i ]
  %cmp3.i.i.i.i.i = icmp slt i32 %retval.0.i.i.i.i.i.i, 1
  br i1 %cmp3.i.i.i.i.i, label %if.then4.i.i.i.i.i, label %_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

if.then4.i.i.i.i.i:                               ; preds = %invoke.cont.i.i.i.i.i
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %33, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i.i.i.i) #10
  br label %_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSsD2Ev.exit, %invoke.cont.i.i.i.i.i, %if.then4.i.i.i.i.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %34) #10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %31, align 8, !tbaa !40
  %_M_buf_locale.i.i.i.i = getelementptr inbounds %"class.std::basic_istringstream", %"class.std::basic_istringstream"* %isstr, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* noundef nonnull align 8 dereferenceable(8) %_M_buf_locale.i.i.i.i) #10
  %38 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt19basic_istringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 1) to i32 (...)***), align 8
  store i32 (...)** %38, i32 (...)*** %27, align 8, !tbaa !40
  %39 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt19basic_istringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 2) to i32 (...)***), align 8
  %vbase.offset.ptr1.i.i.i = getelementptr i32 (...)*, i32 (...)** %38, i64 -3
  %40 = bitcast i32 (...)** %vbase.offset.ptr1.i.i.i to i64*
  %vbase.offset.i.i.i = load i64, i64* %40, align 8
  %add.ptr.i.i.i = getelementptr inbounds i8, i8* %9, i64 %vbase.offset.i.i.i
  %41 = bitcast i8* %add.ptr.i.i.i to i32 (...)***
  store i32 (...)** %39, i32 (...)*** %41, align 8, !tbaa !40
  %42 = getelementptr inbounds %"class.std::basic_istringstream", %"class.std::basic_istringstream"* %isstr, i64 0, i32 0, i32 1
  store i64 0, i64* %42, align 8, !tbaa !48
  %43 = getelementptr inbounds %"class.std::basic_istringstream", %"class.std::basic_istringstream"* %isstr, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* noundef nonnull align 8 dereferenceable(216) %43) #10
  call void @llvm.lifetime.end.p0i8(i64 360, i8* nonnull %9) #10
  %_M_p.i.i.i50 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %str, i64 0, i32 0, i32 0
  %44 = load i8*, i8** %_M_p.i.i.i50, align 8, !tbaa !9
  %arrayidx.i.i51 = getelementptr inbounds i8, i8* %44, i64 -24
  %45 = bitcast i8* %arrayidx.i.i51 to %"struct.std::basic_string<char>::_Rep"*
  %46 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i49, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %46) #10
  %cmp.not.i.i52 = icmp eq i8* %arrayidx.i.i51, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i52, label %_ZNSsD2Ev.exit62, label %if.then.i.i54, !prof !11

if.then.i.i54:                                    ; preds = %_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %_M_refcount.i.i53 = getelementptr inbounds i8, i8* %44, i64 -8
  %47 = bitcast i8* %_M_refcount.i.i53 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i55, label %if.else.i.i.i57

if.then.i.i.i55:                                  ; preds = %if.then.i.i54
  %48 = atomicrmw volatile add i32* %47, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i60

if.else.i.i.i57:                                  ; preds = %if.then.i.i54
  %49 = load i32, i32* %47, align 8, !tbaa !12
  %add.i.i.i.i56 = add nsw i32 %49, -1
  store i32 %add.i.i.i.i56, i32* %47, align 8, !tbaa !12
  br label %invoke.cont.i.i60

invoke.cont.i.i60:                                ; preds = %if.else.i.i.i57, %if.then.i.i.i55
  %retval.0.i.i.i58 = phi i32 [ %48, %if.then.i.i.i55 ], [ %49, %if.else.i.i.i57 ]
  %cmp3.i.i59 = icmp slt i32 %retval.0.i.i.i58, 1
  br i1 %cmp3.i.i59, label %if.then4.i.i61, label %_ZNSsD2Ev.exit62

if.then4.i.i61:                                   ; preds = %invoke.cont.i.i60
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %45, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i49) #10
  br label %_ZNSsD2Ev.exit62

_ZNSsD2Ev.exit62:                                 ; preds = %_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %invoke.cont.i.i60, %if.then4.i.i61
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %46) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #10
  br label %cleanup45

ehcleanup:                                        ; preds = %lpad28, %lpad26
  %.pn = phi { i8*, i32 } [ %18, %lpad28 ], [ %17, %lpad26 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #10
  call void @_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_istringstream"* noundef nonnull align 8 dereferenceable(96) %isstr) #10
  br label %ehcleanup40

ehcleanup40:                                      ; preds = %ehcleanup, %lpad
  %.pn.pn = phi { i8*, i32 } [ %.pn, %ehcleanup ], [ %16, %lpad ]
  call void @llvm.lifetime.end.p0i8(i64 360, i8* nonnull %9) #10
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %str) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #10
  resume { i8*, i32 } %.pn.pn

cleanup45:                                        ; preds = %_ZNSsD2Ev.exit62, %if.then4, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5 align 2

declare void @_ZN7Mantevo21read_file_into_stringERKSsRSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: uwtable
define linkonce_odr dso_local noundef signext i32 @_ZN7Mantevo15parse_parameterIiEET_RKSsS3_RKS1_(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %arg_string, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %param_name, i32* noundef nonnull align 4 dereferenceable(4) %default_value) local_unnamed_addr #3 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i = alloca %"class.std::allocator", align 1
  %ref.tmp.i.i.i.i = alloca %"class.std::allocator", align 1
  %str = alloca %"class.std::basic_string", align 8
  %isstr = alloca %"class.std::basic_istringstream", align 8
  %return_val = alloca i32, align 4
  %_M_p.i.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %param_name, i64 0, i32 0, i32 0
  %0 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !9
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %0, i64 -24
  %_M_length.i.i = bitcast i8* %arrayidx.i.i.i to i64*
  %1 = load i64, i64* %_M_length.i.i, align 8, !tbaa !14
  %call3.i = tail call noundef i64 @_ZNKSs4findEPKcmm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %arg_string, i8* noundef %0, i64 noundef 0, i64 noundef %1) #10
  %cmp = icmp eq i64 %call3.i, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %default_value, align 4, !tbaa !12
  br label %cleanup39

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !9
  %arrayidx.i.i = getelementptr inbounds i8, i8* %3, i64 -24
  %_M_length.i = bitcast i8* %arrayidx.i.i to i64*
  %4 = load i64, i64* %_M_length.i, align 8, !tbaa !14
  %add = add i64 %4, %call3.i
  %_M_p.i.i.i29 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %arg_string, i64 0, i32 0, i32 0
  %5 = load i8*, i8** %_M_p.i.i.i29, align 8, !tbaa !9
  %arrayidx.i.i30 = getelementptr inbounds i8, i8* %5, i64 -24
  %_M_length.i31 = bitcast i8* %arrayidx.i.i30 to i64*
  %6 = load i64, i64* %_M_length.i31, align 8, !tbaa !14
  %cmp3.not = icmp ugt i64 %6, %add
  br i1 %cmp3.not, label %land.rhs, label %if.then4

if.then4:                                         ; preds = %if.end
  %7 = load i32, i32* %default_value, align 4, !tbaa !12
  br label %cleanup39

land.rhs:                                         ; preds = %if.end, %while.body
  %pos.048 = phi i64 [ %inc, %while.body ], [ %add, %if.end ]
  %arrayidx.i = getelementptr inbounds i8, i8* %5, i64 %pos.048
  %8 = load i8, i8* %arrayidx.i, align 1, !tbaa !34
  switch i8 %8, label %while.end [
    i8 32, label %while.body
    i8 61, label %while.body
    i8 58, label %while.body
  ]

while.body:                                       ; preds = %land.rhs, %land.rhs, %land.rhs
  %inc = add nuw i64 %pos.048, 1
  %cmp7 = icmp ult i64 %inc, %6
  br i1 %cmp7, label %land.rhs, label %while.body.while.end_crit_edge, !llvm.loop !50

while.body.while.end_crit_edge:                   ; preds = %while.body
  %arrayidx.i40.phi.trans.insert = getelementptr inbounds i8, i8* %5, i64 %6
  %.pre = load i8, i8* %arrayidx.i40.phi.trans.insert, align 1, !tbaa !34
  br label %while.end

while.end:                                        ; preds = %land.rhs, %while.body.while.end_crit_edge
  %9 = phi i8 [ %.pre, %while.body.while.end_crit_edge ], [ %8, %land.rhs ]
  %pos.0.lcssa = phi i64 [ %6, %while.body.while.end_crit_edge ], [ %pos.048, %land.rhs ]
  switch i8 %9, label %if.end25 [
    i8 61, label %if.then23
    i8 58, label %if.then23
  ]

if.then23:                                        ; preds = %while.end, %while.end
  %inc24 = add i64 %pos.0.lcssa, 1
  br label %if.end25

if.end25:                                         ; preds = %while.end, %if.then23
  %pos.1 = phi i64 [ %inc24, %if.then23 ], [ %pos.0.lcssa, %while.end ]
  %10 = bitcast %"class.std::basic_string"* %str to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #10
  %cmp.i.i = icmp ult i64 %6, %pos.1
  br i1 %cmp.i.i, label %if.then.i.i, label %_ZNKSs6substrEmm.exit

if.then.i.i:                                      ; preds = %if.end25
  tail call void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i64 noundef %pos.1, i64 noundef %6) #11, !noalias !51
  unreachable

_ZNKSs6substrEmm.exit:                            ; preds = %if.end25
  call void @_ZNSsC1ERKSsmm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %str, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %arg_string, i64 noundef %pos.1, i64 noundef -1)
  %11 = bitcast %"class.std::basic_istringstream"* %isstr to i8*
  call void @llvm.lifetime.start.p0i8(i64 360, i8* nonnull %11) #10
  invoke void @_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKSsSt13_Ios_Openmode(%"class.std::basic_istringstream"* noundef nonnull align 8 dereferenceable(96) %isstr, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %str, i32 noundef signext 8)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %_ZNKSs6substrEmm.exit
  %12 = bitcast i32* %return_val to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #10
  %13 = load i32, i32* %default_value, align 4, !tbaa !12
  store i32 %13, i32* %return_val, align 4, !tbaa !12
  %14 = bitcast %"class.std::basic_istringstream"* %isstr to %"class.std::basic_istream"*
  %call28 = invoke noundef nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* noundef nonnull align 8 dereferenceable(16) %14, i32* noundef nonnull align 4 dereferenceable(4) %return_val)
          to label %invoke.cont29 unwind label %lpad26

invoke.cont29:                                    ; preds = %invoke.cont
  %15 = bitcast %"class.std::basic_istringstream"* %isstr to i8**
  %vtable = load i8*, i8** %15, align 8, !tbaa !40
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %16 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %16, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %vbase.offset
  %_M_streambuf_state.i.i.i = getelementptr inbounds i8, i8* %add.ptr, i64 32
  %17 = bitcast i8* %_M_streambuf_state.i.i.i to i32*
  %18 = load i32, i32* %17, align 8, !tbaa !42
  %and.i.i.i = and i32 %18, 5
  %cmp.i.i43.not = icmp eq i32 %and.i.i.i, 0
  %return_val.val = load i32, i32* %return_val, align 4
  %default_value.val = load i32, i32* %default_value, align 4
  %retval.0 = select i1 %cmp.i.i43.not, i32 %return_val.val, i32 %default_value.val
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #10
  %19 = load i32 (...)**, i32 (...)*** bitcast ([4 x i8*]* @_ZTTSt19basic_istringstreamIcSt11char_traitsIcESaIcEE to i32 (...)***), align 8
  %20 = getelementptr inbounds %"class.std::basic_istringstream", %"class.std::basic_istringstream"* %isstr, i64 0, i32 0, i32 0
  store i32 (...)** %19, i32 (...)*** %20, align 8, !tbaa !40
  %21 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt19basic_istringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 3) to i32 (...)***), align 8
  %vbase.offset.ptr1.i.i = getelementptr i32 (...)*, i32 (...)** %19, i64 -3
  %22 = bitcast i32 (...)** %vbase.offset.ptr1.i.i to i64*
  %vbase.offset.i.i = load i64, i64* %22, align 8
  %add.ptr.i.i = getelementptr inbounds i8, i8* %11, i64 %vbase.offset.i.i
  %23 = bitcast i8* %add.ptr.i.i to i32 (...)***
  store i32 (...)** %21, i32 (...)*** %23, align 8, !tbaa !40
  %24 = getelementptr inbounds %"class.std::basic_istringstream", %"class.std::basic_istringstream"* %isstr, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %24, align 8, !tbaa !40
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.std::basic_istringstream", %"class.std::basic_istringstream"* %isstr, i64 0, i32 1, i32 2, i32 0, i32 0
  %25 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !9
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %25, i64 -24
  %26 = bitcast i8* %arrayidx.i.i.i.i.i to %"struct.std::basic_string<char>::_Rep"*
  %27 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i.i.i.i, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %27) #10
  %cmp.not.i.i.i.i.i = icmp eq i8* %arrayidx.i.i.i.i.i, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i.i.i.i, label %_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %if.then.i.i.i.i.i, !prof !11

if.then.i.i.i.i.i:                                ; preds = %invoke.cont29
  %_M_refcount.i.i.i.i.i = getelementptr inbounds i8, i8* %25, i64 -8
  %28 = bitcast i8* %_M_refcount.i.i.i.i.i to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i
  %29 = atomicrmw volatile add i32* %28, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i
  %30 = load i32, i32* %28, align 8, !tbaa !12
  %add.i.i.i.i.i.i.i = add nsw i32 %30, -1
  store i32 %add.i.i.i.i.i.i.i, i32* %28, align 8, !tbaa !12
  br label %invoke.cont.i.i.i.i.i

invoke.cont.i.i.i.i.i:                            ; preds = %if.else.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi i32 [ %29, %if.then.i.i.i.i.i.i ], [ %30, %if.else.i.i.i.i.i.i ]
  %cmp3.i.i.i.i.i = icmp slt i32 %retval.0.i.i.i.i.i.i, 1
  br i1 %cmp3.i.i.i.i.i, label %if.then4.i.i.i.i.i, label %_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

if.then4.i.i.i.i.i:                               ; preds = %invoke.cont.i.i.i.i.i
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %26, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i.i.i.i) #10
  br label %_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %invoke.cont29, %invoke.cont.i.i.i.i.i, %if.then4.i.i.i.i.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %27) #10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %24, align 8, !tbaa !40
  %_M_buf_locale.i.i.i.i = getelementptr inbounds %"class.std::basic_istringstream", %"class.std::basic_istringstream"* %isstr, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* noundef nonnull align 8 dereferenceable(8) %_M_buf_locale.i.i.i.i) #10
  %31 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt19basic_istringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 1) to i32 (...)***), align 8
  store i32 (...)** %31, i32 (...)*** %20, align 8, !tbaa !40
  %32 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt19basic_istringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 2) to i32 (...)***), align 8
  %vbase.offset.ptr1.i.i.i = getelementptr i32 (...)*, i32 (...)** %31, i64 -3
  %33 = bitcast i32 (...)** %vbase.offset.ptr1.i.i.i to i64*
  %vbase.offset.i.i.i = load i64, i64* %33, align 8
  %add.ptr.i.i.i = getelementptr inbounds i8, i8* %11, i64 %vbase.offset.i.i.i
  %34 = bitcast i8* %add.ptr.i.i.i to i32 (...)***
  store i32 (...)** %32, i32 (...)*** %34, align 8, !tbaa !40
  %35 = getelementptr inbounds %"class.std::basic_istringstream", %"class.std::basic_istringstream"* %isstr, i64 0, i32 0, i32 1
  store i64 0, i64* %35, align 8, !tbaa !48
  %36 = getelementptr inbounds %"class.std::basic_istringstream", %"class.std::basic_istringstream"* %isstr, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* noundef nonnull align 8 dereferenceable(216) %36) #10
  call void @llvm.lifetime.end.p0i8(i64 360, i8* nonnull %11) #10
  %_M_p.i.i.i44 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %str, i64 0, i32 0, i32 0
  %37 = load i8*, i8** %_M_p.i.i.i44, align 8, !tbaa !9
  %arrayidx.i.i45 = getelementptr inbounds i8, i8* %37, i64 -24
  %38 = bitcast i8* %arrayidx.i.i45 to %"struct.std::basic_string<char>::_Rep"*
  %39 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %39) #10
  %cmp.not.i.i = icmp eq i8* %arrayidx.i.i45, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i, label %_ZNSsD2Ev.exit, label %if.then.i.i46, !prof !11

if.then.i.i46:                                    ; preds = %_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %_M_refcount.i.i = getelementptr inbounds i8, i8* %37, i64 -8
  %40 = bitcast i8* %_M_refcount.i.i to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i46
  %41 = atomicrmw volatile add i32* %40, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i46
  %42 = load i32, i32* %40, align 8, !tbaa !12
  %add.i.i.i.i = add nsw i32 %42, -1
  store i32 %add.i.i.i.i, i32* %40, align 8, !tbaa !12
  br label %invoke.cont.i.i

invoke.cont.i.i:                                  ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %41, %if.then.i.i.i ], [ %42, %if.else.i.i.i ]
  %cmp3.i.i = icmp slt i32 %retval.0.i.i.i, 1
  br i1 %cmp3.i.i, label %if.then4.i.i, label %_ZNSsD2Ev.exit

if.then4.i.i:                                     ; preds = %invoke.cont.i.i
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %38, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i) #10
  br label %_ZNSsD2Ev.exit

_ZNSsD2Ev.exit:                                   ; preds = %_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %invoke.cont.i.i, %if.then4.i.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %39) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #10
  br label %cleanup39

lpad:                                             ; preds = %_ZNKSs6substrEmm.exit
  %43 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

lpad26:                                           ; preds = %invoke.cont
  %44 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #10
  call void @_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_istringstream"* noundef nonnull align 8 dereferenceable(96) %isstr) #10
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad26, %lpad
  %.pn = phi { i8*, i32 } [ %44, %lpad26 ], [ %43, %lpad ]
  call void @llvm.lifetime.end.p0i8(i64 360, i8* nonnull %11) #10
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %str) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #10
  resume { i8*, i32 } %.pn

cleanup39:                                        ; preds = %_ZNSsD2Ev.exit, %if.then4, %if.then
  %retval.1 = phi i32 [ %2, %if.then ], [ %7, %if.then4 ], [ %retval.0, %_ZNSsD2Ev.exit ]
  ret i32 %retval.1
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef float @_ZN7Mantevo15parse_parameterIfEET_RKSsS3_RKS1_(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %arg_string, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %param_name, float* noundef nonnull align 4 dereferenceable(4) %default_value) local_unnamed_addr #3 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i = alloca %"class.std::allocator", align 1
  %ref.tmp.i.i.i.i = alloca %"class.std::allocator", align 1
  %str = alloca %"class.std::basic_string", align 8
  %isstr = alloca %"class.std::basic_istringstream", align 8
  %return_val = alloca float, align 4
  %_M_p.i.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %param_name, i64 0, i32 0, i32 0
  %0 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !9
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %0, i64 -24
  %_M_length.i.i = bitcast i8* %arrayidx.i.i.i to i64*
  %1 = load i64, i64* %_M_length.i.i, align 8, !tbaa !14
  %call3.i = tail call noundef i64 @_ZNKSs4findEPKcmm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %arg_string, i8* noundef %0, i64 noundef 0, i64 noundef %1) #10
  %cmp = icmp eq i64 %call3.i, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load float, float* %default_value, align 4, !tbaa !22
  br label %cleanup39

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !9
  %arrayidx.i.i = getelementptr inbounds i8, i8* %3, i64 -24
  %_M_length.i = bitcast i8* %arrayidx.i.i to i64*
  %4 = load i64, i64* %_M_length.i, align 8, !tbaa !14
  %add = add i64 %4, %call3.i
  %_M_p.i.i.i29 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %arg_string, i64 0, i32 0, i32 0
  %5 = load i8*, i8** %_M_p.i.i.i29, align 8, !tbaa !9
  %arrayidx.i.i30 = getelementptr inbounds i8, i8* %5, i64 -24
  %_M_length.i31 = bitcast i8* %arrayidx.i.i30 to i64*
  %6 = load i64, i64* %_M_length.i31, align 8, !tbaa !14
  %cmp3.not = icmp ugt i64 %6, %add
  br i1 %cmp3.not, label %land.rhs, label %if.then4

if.then4:                                         ; preds = %if.end
  %7 = load float, float* %default_value, align 4, !tbaa !22
  br label %cleanup39

land.rhs:                                         ; preds = %if.end, %while.body
  %pos.049 = phi i64 [ %inc, %while.body ], [ %add, %if.end ]
  %arrayidx.i = getelementptr inbounds i8, i8* %5, i64 %pos.049
  %8 = load i8, i8* %arrayidx.i, align 1, !tbaa !34
  switch i8 %8, label %while.end [
    i8 32, label %while.body
    i8 61, label %while.body
    i8 58, label %while.body
  ]

while.body:                                       ; preds = %land.rhs, %land.rhs, %land.rhs
  %inc = add nuw i64 %pos.049, 1
  %cmp7 = icmp ult i64 %inc, %6
  br i1 %cmp7, label %land.rhs, label %while.body.while.end_crit_edge, !llvm.loop !54

while.body.while.end_crit_edge:                   ; preds = %while.body
  %arrayidx.i40.phi.trans.insert = getelementptr inbounds i8, i8* %5, i64 %6
  %.pre = load i8, i8* %arrayidx.i40.phi.trans.insert, align 1, !tbaa !34
  br label %while.end

while.end:                                        ; preds = %land.rhs, %while.body.while.end_crit_edge
  %9 = phi i8 [ %.pre, %while.body.while.end_crit_edge ], [ %8, %land.rhs ]
  %pos.0.lcssa = phi i64 [ %6, %while.body.while.end_crit_edge ], [ %pos.049, %land.rhs ]
  switch i8 %9, label %if.end25 [
    i8 61, label %if.then23
    i8 58, label %if.then23
  ]

if.then23:                                        ; preds = %while.end, %while.end
  %inc24 = add i64 %pos.0.lcssa, 1
  br label %if.end25

if.end25:                                         ; preds = %while.end, %if.then23
  %pos.1 = phi i64 [ %inc24, %if.then23 ], [ %pos.0.lcssa, %while.end ]
  %10 = bitcast %"class.std::basic_string"* %str to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #10
  %cmp.i.i = icmp ult i64 %6, %pos.1
  br i1 %cmp.i.i, label %if.then.i.i, label %_ZNKSs6substrEmm.exit

if.then.i.i:                                      ; preds = %if.end25
  tail call void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i64 noundef %pos.1, i64 noundef %6) #11, !noalias !55
  unreachable

_ZNKSs6substrEmm.exit:                            ; preds = %if.end25
  call void @_ZNSsC1ERKSsmm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %str, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %arg_string, i64 noundef %pos.1, i64 noundef -1)
  %11 = bitcast %"class.std::basic_istringstream"* %isstr to i8*
  call void @llvm.lifetime.start.p0i8(i64 360, i8* nonnull %11) #10
  invoke void @_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKSsSt13_Ios_Openmode(%"class.std::basic_istringstream"* noundef nonnull align 8 dereferenceable(96) %isstr, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %str, i32 noundef signext 8)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %_ZNKSs6substrEmm.exit
  %12 = bitcast float* %return_val to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #10
  %13 = load float, float* %default_value, align 4, !tbaa !22
  store float %13, float* %return_val, align 4, !tbaa !22
  %14 = bitcast %"class.std::basic_istringstream"* %isstr to %"class.std::basic_istream"*
  %call.i43 = invoke noundef nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSi10_M_extractIfEERSiRT_(%"class.std::basic_istream"* noundef nonnull align 8 dereferenceable(16) %14, float* noundef nonnull align 4 dereferenceable(4) %return_val)
          to label %invoke.cont29 unwind label %lpad26

invoke.cont29:                                    ; preds = %invoke.cont
  %15 = bitcast %"class.std::basic_istringstream"* %isstr to i8**
  %vtable = load i8*, i8** %15, align 8, !tbaa !40
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %16 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %16, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %vbase.offset
  %_M_streambuf_state.i.i.i = getelementptr inbounds i8, i8* %add.ptr, i64 32
  %17 = bitcast i8* %_M_streambuf_state.i.i.i to i32*
  %18 = load i32, i32* %17, align 8, !tbaa !42
  %and.i.i.i = and i32 %18, 5
  %cmp.i.i44.not = icmp eq i32 %and.i.i.i, 0
  %return_val.val = load float, float* %return_val, align 4
  %default_value.val = load float, float* %default_value, align 4
  %retval.0 = select i1 %cmp.i.i44.not, float %return_val.val, float %default_value.val
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #10
  %19 = load i32 (...)**, i32 (...)*** bitcast ([4 x i8*]* @_ZTTSt19basic_istringstreamIcSt11char_traitsIcESaIcEE to i32 (...)***), align 8
  %20 = getelementptr inbounds %"class.std::basic_istringstream", %"class.std::basic_istringstream"* %isstr, i64 0, i32 0, i32 0
  store i32 (...)** %19, i32 (...)*** %20, align 8, !tbaa !40
  %21 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt19basic_istringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 3) to i32 (...)***), align 8
  %vbase.offset.ptr1.i.i = getelementptr i32 (...)*, i32 (...)** %19, i64 -3
  %22 = bitcast i32 (...)** %vbase.offset.ptr1.i.i to i64*
  %vbase.offset.i.i = load i64, i64* %22, align 8
  %add.ptr.i.i = getelementptr inbounds i8, i8* %11, i64 %vbase.offset.i.i
  %23 = bitcast i8* %add.ptr.i.i to i32 (...)***
  store i32 (...)** %21, i32 (...)*** %23, align 8, !tbaa !40
  %24 = getelementptr inbounds %"class.std::basic_istringstream", %"class.std::basic_istringstream"* %isstr, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %24, align 8, !tbaa !40
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.std::basic_istringstream", %"class.std::basic_istringstream"* %isstr, i64 0, i32 1, i32 2, i32 0, i32 0
  %25 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !9
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %25, i64 -24
  %26 = bitcast i8* %arrayidx.i.i.i.i.i to %"struct.std::basic_string<char>::_Rep"*
  %27 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i.i.i.i, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %27) #10
  %cmp.not.i.i.i.i.i = icmp eq i8* %arrayidx.i.i.i.i.i, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i.i.i.i, label %_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %if.then.i.i.i.i.i, !prof !11

if.then.i.i.i.i.i:                                ; preds = %invoke.cont29
  %_M_refcount.i.i.i.i.i = getelementptr inbounds i8, i8* %25, i64 -8
  %28 = bitcast i8* %_M_refcount.i.i.i.i.i to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i
  %29 = atomicrmw volatile add i32* %28, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i
  %30 = load i32, i32* %28, align 8, !tbaa !12
  %add.i.i.i.i.i.i.i = add nsw i32 %30, -1
  store i32 %add.i.i.i.i.i.i.i, i32* %28, align 8, !tbaa !12
  br label %invoke.cont.i.i.i.i.i

invoke.cont.i.i.i.i.i:                            ; preds = %if.else.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi i32 [ %29, %if.then.i.i.i.i.i.i ], [ %30, %if.else.i.i.i.i.i.i ]
  %cmp3.i.i.i.i.i = icmp slt i32 %retval.0.i.i.i.i.i.i, 1
  br i1 %cmp3.i.i.i.i.i, label %if.then4.i.i.i.i.i, label %_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

if.then4.i.i.i.i.i:                               ; preds = %invoke.cont.i.i.i.i.i
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %26, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i.i.i.i) #10
  br label %_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %invoke.cont29, %invoke.cont.i.i.i.i.i, %if.then4.i.i.i.i.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %27) #10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %24, align 8, !tbaa !40
  %_M_buf_locale.i.i.i.i = getelementptr inbounds %"class.std::basic_istringstream", %"class.std::basic_istringstream"* %isstr, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* noundef nonnull align 8 dereferenceable(8) %_M_buf_locale.i.i.i.i) #10
  %31 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt19basic_istringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 1) to i32 (...)***), align 8
  store i32 (...)** %31, i32 (...)*** %20, align 8, !tbaa !40
  %32 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt19basic_istringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 2) to i32 (...)***), align 8
  %vbase.offset.ptr1.i.i.i = getelementptr i32 (...)*, i32 (...)** %31, i64 -3
  %33 = bitcast i32 (...)** %vbase.offset.ptr1.i.i.i to i64*
  %vbase.offset.i.i.i = load i64, i64* %33, align 8
  %add.ptr.i.i.i = getelementptr inbounds i8, i8* %11, i64 %vbase.offset.i.i.i
  %34 = bitcast i8* %add.ptr.i.i.i to i32 (...)***
  store i32 (...)** %32, i32 (...)*** %34, align 8, !tbaa !40
  %35 = getelementptr inbounds %"class.std::basic_istringstream", %"class.std::basic_istringstream"* %isstr, i64 0, i32 0, i32 1
  store i64 0, i64* %35, align 8, !tbaa !48
  %36 = getelementptr inbounds %"class.std::basic_istringstream", %"class.std::basic_istringstream"* %isstr, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* noundef nonnull align 8 dereferenceable(216) %36) #10
  call void @llvm.lifetime.end.p0i8(i64 360, i8* nonnull %11) #10
  %_M_p.i.i.i45 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %str, i64 0, i32 0, i32 0
  %37 = load i8*, i8** %_M_p.i.i.i45, align 8, !tbaa !9
  %arrayidx.i.i46 = getelementptr inbounds i8, i8* %37, i64 -24
  %38 = bitcast i8* %arrayidx.i.i46 to %"struct.std::basic_string<char>::_Rep"*
  %39 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %39) #10
  %cmp.not.i.i = icmp eq i8* %arrayidx.i.i46, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %cmp.not.i.i, label %_ZNSsD2Ev.exit, label %if.then.i.i47, !prof !11

if.then.i.i47:                                    ; preds = %_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %_M_refcount.i.i = getelementptr inbounds i8, i8* %37, i64 -8
  %40 = bitcast i8* %_M_refcount.i.i to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i47
  %41 = atomicrmw volatile add i32* %40, i32 -1 acq_rel, align 4
  br label %invoke.cont.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i47
  %42 = load i32, i32* %40, align 8, !tbaa !12
  %add.i.i.i.i = add nsw i32 %42, -1
  store i32 %add.i.i.i.i, i32* %40, align 8, !tbaa !12
  br label %invoke.cont.i.i

invoke.cont.i.i:                                  ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %41, %if.then.i.i.i ], [ %42, %if.else.i.i.i ]
  %cmp3.i.i = icmp slt i32 %retval.0.i.i.i, 1
  br i1 %cmp3.i.i, label %if.then4.i.i, label %_ZNSsD2Ev.exit

if.then4.i.i:                                     ; preds = %invoke.cont.i.i
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24) %38, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %ref.tmp.i) #10
  br label %_ZNSsD2Ev.exit

_ZNSsD2Ev.exit:                                   ; preds = %_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %invoke.cont.i.i, %if.then4.i.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %39) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #10
  br label %cleanup39

lpad:                                             ; preds = %_ZNKSs6substrEmm.exit
  %43 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

lpad26:                                           ; preds = %invoke.cont
  %44 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #10
  call void @_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_istringstream"* noundef nonnull align 8 dereferenceable(96) %isstr) #10
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad26, %lpad
  %.pn = phi { i8*, i32 } [ %44, %lpad26 ], [ %43, %lpad ]
  call void @llvm.lifetime.end.p0i8(i64 360, i8* nonnull %11) #10
  call void @_ZNSsD2Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %str) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #10
  resume { i8*, i32 } %.pn

cleanup39:                                        ; preds = %_ZNSsD2Ev.exit, %if.then4, %if.then
  %retval.1 = phi float [ %2, %if.then ], [ %7, %if.then4 ], [ %retval.0, %_ZNSsD2Ev.exit ]
  ret float %retval.1
}

declare void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: uwtable
declare void @_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKSsSt13_Ios_Openmode(%"class.std::basic_istringstream"* noundef nonnull align 8 dereferenceable(96), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i32 noundef signext) unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E(%"class.std::basic_istream"* noundef nonnull align 8 dereferenceable(16), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_istringstream"* noundef nonnull align 8 dereferenceable(96)) unnamed_addr #5 align 2

; Function Attrs: nounwind
declare noundef i64 @_ZNKSs4findEPKcmm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNSsC1ERKSsmm(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(%"class.std::locale"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* noundef nonnull align 8 dereferenceable(216)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* noundef nonnull align 8 dereferenceable(24), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: nounwind
declare extern_weak noundef signext i32 @__pthread_key_create(i32* noundef, void (i8*)* noundef) #1

declare noundef nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* noundef nonnull align 8 dereferenceable(16), i32* noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSi10_M_extractIfEERSiRT_(%"class.std::basic_istream"* noundef nonnull align 8 dereferenceable(16), float* noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #0

declare void @_ZNSs4swapERSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @_ZN6miniFE20broadcast_parametersERNS_10ParametersE(%"struct.miniFE::Parameters"* nocapture noundef nonnull align 8 dereferenceable(68) %params) local_unnamed_addr #7 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @_ZN6miniFE14initialize_mpiEiPPcRiS2_(i32 noundef signext %argc, i8** nocapture noundef readnone %argv, i32* nocapture noundef nonnull writeonly align 4 dereferenceable(4) %numprocs, i32* nocapture noundef nonnull writeonly align 4 dereferenceable(4) %myproc) local_unnamed_addr #8 {
entry:
  store i32 1, i32* %numprocs, align 4, !tbaa !12
  store i32 0, i32* %myproc, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @_ZN6miniFE12finalize_mpiEv() local_unnamed_addr #7 {
entry:
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_utils.cpp() #3 section ".text.startup" {
entry:
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %0 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #10
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #9

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64le" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+vsx,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

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
!10 = !{!"_ZTSSs", !5, i64 0}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!15, !16, i64 0}
!15 = !{!"_ZTSNSs9_Rep_baseE", !16, i64 0, !16, i64 8, !13, i64 16}
!16 = !{!"long", !7, i64 0}
!17 = !{!18, !13, i64 0}
!18 = !{!"_ZTSN6miniFE10ParametersE", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !19, i64 24, !10, i64 32, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !13, i64 64}
!19 = !{!"float", !7, i64 0}
!20 = !{!18, !13, i64 4}
!21 = !{!18, !13, i64 8}
!22 = !{!19, !19, i64 0}
!23 = !{!18, !19, i64 24}
!24 = !{!18, !13, i64 12}
!25 = !{!18, !13, i64 16}
!26 = !{!18, !13, i64 20}
!27 = !{!18, !13, i64 40}
!28 = !{!18, !13, i64 44}
!29 = !{!18, !13, i64 48}
!30 = !{!18, !13, i64 52}
!31 = !{!18, !13, i64 56}
!32 = !{!18, !13, i64 60}
!33 = !{!18, !13, i64 64}
!34 = !{!7, !7, i64 0}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZNKSs6substrEmm: %agg.result"}
!39 = distinct !{!39, !"_ZNKSs6substrEmm"}
!40 = !{!41, !41, i64 0}
!41 = !{!"vtable pointer", !8, i64 0}
!42 = !{!43, !45, i64 32}
!43 = !{!"_ZTSSt8ios_base", !16, i64 8, !16, i64 16, !44, i64 24, !45, i64 28, !45, i64 32, !6, i64 40, !46, i64 48, !7, i64 64, !13, i64 192, !6, i64 200, !47, i64 208}
!44 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!45 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!46 = !{!"_ZTSNSt8ios_base6_WordsE", !6, i64 0, !16, i64 8}
!47 = !{!"_ZTSSt6locale", !6, i64 0}
!48 = !{!49, !16, i64 8}
!49 = !{!"_ZTSSi", !16, i64 8}
!50 = distinct !{!50, !36}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZNKSs6substrEmm: %agg.result"}
!53 = distinct !{!53, !"_ZNKSs6substrEmm"}
!54 = distinct !{!54, !36}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZNKSs6substrEmm: %agg.result"}
!57 = distinct !{!57, !"_ZNKSs6substrEmm"}

; __CLANG_OFFLOAD_BUNDLE____END__ host-powerpc64le-unknown-linux-gnu
