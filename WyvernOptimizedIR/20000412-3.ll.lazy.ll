; ModuleID = './20000412-3.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000412-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X = type { i8, [32 x i8] }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @z() #0 {
  %1 = alloca %struct.X, align 8
  %2 = getelementptr inbounds %struct.X, %struct.X* %1, i64 0, i32 1, i64 31
  store i8 48, i8* %2, align 8
  %3 = getelementptr inbounds %struct.X, %struct.X* %1, i64 0, i32 1, i64 0
  store i8 48, i8* %3, align 1
  %4 = getelementptr inbounds %struct.X, %struct.X* %1, i64 0, i32 0
  store i8 15, i8* %4, align 8
  %5 = call i32 @f(%struct.X* noundef nonnull byval(%struct.X) align 8 %1, %struct.X* noundef nonnull byval(%struct.X) align 8 %1)
  ret i32 %5
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @z()
  %.not = icmp eq i32 %1, 96
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %3, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @f(%struct.X* nocapture noundef readonly byval(%struct.X) align 8 %0, %struct.X* nocapture noundef readonly byval(%struct.X) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.X, %struct.X* %0, i64 0, i32 0
  %4 = load i8, i8* %3, align 8
  %5 = getelementptr inbounds %struct.X, %struct.X* %1, i64 0, i32 0
  %6 = load i8, i8* %5, align 8
  %.not = icmp eq i8 %4, %6
  br i1 %.not, label %8, label %7

7:                                                ; preds = %2
  br label %16

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.X, %struct.X* %0, i64 0, i32 1, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = getelementptr inbounds %struct.X, %struct.X* %1, i64 0, i32 1, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = add nsw i32 %11, %14
  br label %16

16:                                               ; preds = %8, %7
  %.0 = phi i32 [ 70, %7 ], [ %15, %8 ]
  ret i32 %.0
}

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
