; ModuleID = './930718-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930718-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_def = type { i8, [3 x i8] }

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @f2() #0 {
  call void @abort() #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.rtx_def, align 4
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0
  %3 = load i8, i8* %2, align 4
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0
  %5 = and i8 %3, -4
  %6 = or i8 %5, 1
  store i8 %6, i8* %4, align 4
  %7 = call %struct.rtx_def* @f(%struct.rtx_def* noundef nonnull %1)
  br i1 false, label %11, label %8

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0
  %10 = load i8, i8* %9, align 4
  %.mask = and i8 %10, 2
  %.not = icmp eq i8 %.mask, 0
  br i1 %.not, label %12, label %11

11:                                               ; preds = %8, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %8
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %12, %11
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal %struct.rtx_def* @f(%struct.rtx_def* noundef returned %0) #2 {
  %2 = getelementptr %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 0
  %3 = load i8, i8* %2, align 4
  %4 = and i8 %3, 1
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 0
  %7 = load i8, i8* %6, align 4
  %.mask = and i8 %7, 2
  %.not1 = icmp eq i8 %.mask, 0
  br i1 %.not1, label %9, label %8

8:                                                ; preds = %5, %1
  br label %13

9:                                                ; preds = %5
  %10 = getelementptr %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 0
  %11 = load i8, i8* %10, align 4
  %12 = or i8 %11, 2
  store i8 %12, i8* %10, align 4
  br label %13

13:                                               ; preds = %9, %8
  ret %struct.rtx_def* %0
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
