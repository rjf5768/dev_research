; ModuleID = './strct-pack-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strct-pack-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TRIAL = type <{ i16, double }>

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @check(%struct.TRIAL* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.TRIAL, %struct.TRIAL* %0, i64 0, i32 0
  %3 = load i16, i16* %2, align 2
  %.not = icmp eq i16 %3, 1
  br i1 %.not, label %4, label %8

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.TRIAL, %struct.TRIAL* %0, i64 0, i32 1
  %6 = load double, double* %5, align 2
  %7 = fcmp une double %6, 1.600000e+01
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %1
  br label %10

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9, %8
  %.0 = phi i32 [ 1, %8 ], [ 0, %9 ]
  ret i32 %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %struct.TRIAL, align 2
  %2 = getelementptr inbounds %struct.TRIAL, %struct.TRIAL* %1, i64 0, i32 0
  store i16 1, i16* %2, align 2
  %3 = getelementptr inbounds %struct.TRIAL, %struct.TRIAL* %1, i64 0, i32 1
  store double 1.600000e+01, double* %3, align 2
  %4 = call i32 @check(%struct.TRIAL* noundef nonnull %1)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %6, label %5

5:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %0
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %6, %5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
