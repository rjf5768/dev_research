; ModuleID = './20010116-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010116-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Data = type { i32, i32, i32 }

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @find(%struct.Data* noundef %0, %struct.Data* noundef %1) #0 {
  %3 = ptrtoint %struct.Data* %1 to i64
  %4 = ptrtoint %struct.Data* %0 to i64
  %5 = sub i64 %3, %4
  %6 = sdiv exact i64 %5, 12
  %7 = lshr i64 %6, 2
  %8 = trunc i64 %7 to i32
  br label %9

9:                                                ; preds = %12, %2
  %.0 = phi i32 [ %8, %2 ], [ %13, %12 ]
  %10 = icmp sgt i32 %.0, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  call void @ok(i32 noundef %.0)
  br label %12

12:                                               ; preds = %11
  %13 = add nsw i32 %.0, -1
  br label %9, !llvm.loop !4

14:                                               ; preds = %9
  call void @abort() #2
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @ok(i32 noundef %0) #0 {
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  call void @abort() #2
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %1
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %3, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [4 x %struct.Data], align 16
  %2 = getelementptr inbounds [4 x %struct.Data], [4 x %struct.Data]* %1, i64 0, i64 0
  %3 = getelementptr inbounds [4 x %struct.Data], [4 x %struct.Data]* %1, i64 0, i64 4
  call void @find(%struct.Data* noundef nonnull %2, %struct.Data* noundef nonnull %3)
  ret i32 0
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
