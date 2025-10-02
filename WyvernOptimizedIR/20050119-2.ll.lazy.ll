; ModuleID = './20050119-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050119-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8, i8, i8, i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(%struct.S* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0
  %3 = load i8, i8* %2, align 1
  %4 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1
  %5 = load i8, i8* %4, align 1
  %.not = icmp eq i8 %3, %5
  br i1 %.not, label %7, label %6

6:                                                ; preds = %1
  call void @abort() #3
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 2
  %9 = load i8, i8* %8, align 1
  %.not1 = icmp eq i8 %9, 2
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %7
  call void @abort() #3
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 3
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  ret i32 %14

UnifiedUnreachableBlock:                          ; preds = %10, %6
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca [2 x %struct.S], align 1
  %2 = getelementptr inbounds [2 x %struct.S], [2 x %struct.S]* %1, i64 0, i64 0, i32 0
  store i8 1, i8* %2, align 1
  %3 = getelementptr inbounds [2 x %struct.S], [2 x %struct.S]* %1, i64 0, i64 0, i32 1
  store i8 1, i8* %3, align 1
  %4 = getelementptr inbounds [2 x %struct.S], [2 x %struct.S]* %1, i64 0, i64 0, i32 2
  store i8 2, i8* %4, align 1
  %5 = getelementptr inbounds [2 x %struct.S], [2 x %struct.S]* %1, i64 0, i64 0, i32 3
  store i8 3, i8* %5, align 1
  %6 = getelementptr inbounds [2 x %struct.S], [2 x %struct.S]* %1, i64 0, i64 1, i32 0
  store i8 3, i8* %6, align 1
  %7 = getelementptr inbounds [2 x %struct.S], [2 x %struct.S]* %1, i64 0, i64 1, i32 1
  store i8 2, i8* %7, align 1
  %8 = getelementptr inbounds [2 x %struct.S], [2 x %struct.S]* %1, i64 0, i64 1, i32 2
  store i8 1, i8* %8, align 1
  %9 = getelementptr inbounds [2 x %struct.S], [2 x %struct.S]* %1, i64 0, i64 1, i32 3
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds [2 x %struct.S], [2 x %struct.S]* %1, i64 0, i64 0
  %11 = call i32 @foo(%struct.S* noundef nonnull %10)
  %.not = icmp eq i32 %11, 3
  br i1 %.not, label %13, label %12

12:                                               ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %0
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %13, %12
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
