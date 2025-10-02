; ModuleID = './token.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/spiff/token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._K_str = type { i32, i32, i32, i8*, %struct.R_flstr*, %struct._T_tstr* }
%struct.R_flstr = type { i32, i32, i8* }
%struct._T_tstr = type { i32, %struct.R_flstr*, %struct._T_tstr* }

@_K_bto = dso_local global [50000 x %struct._K_str*] zeroinitializer, align 16
@_K_ato = dso_local global [50000 x %struct._K_str*] zeroinitializer, align 16
@_K_atm = dso_local global i32 0, align 4
@_K_btm = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @K_settoken(i32 noundef %0, i32 noundef %1, %struct._K_str* noundef %2) #0 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %7, label %4

4:                                                ; preds = %3
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds [50000 x %struct._K_str*], [50000 x %struct._K_str*]* @_K_bto, i64 0, i64 %5
  store %struct._K_str* %2, %struct._K_str** %6, align 8
  br label %10

7:                                                ; preds = %3
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [50000 x %struct._K_str*], [50000 x %struct._K_str*]* @_K_ato, i64 0, i64 %8
  store %struct._K_str* %2, %struct._K_str** %9, align 8
  br label %10

10:                                               ; preds = %7, %4
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
