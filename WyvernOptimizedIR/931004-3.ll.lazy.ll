; ModuleID = './931004-3.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i16 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, i16 %1, i16 %2, i16 %3, i64 noundef %4) #0 {
  %6 = alloca %struct.tiny, align 2
  %7 = alloca %struct.tiny, align 2
  %8 = getelementptr inbounds %struct.tiny, %struct.tiny* %6, i64 0, i32 0
  store i16 %2, i16* %8, align 2
  %9 = getelementptr inbounds %struct.tiny, %struct.tiny* %7, i64 0, i32 0
  store i16 %3, i16* %9, align 2
  %.not = icmp eq i16 %1, 10
  br i1 %.not, label %11, label %10

10:                                               ; preds = %5
  call void @abort() #3
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tiny, %struct.tiny* %6, i64 0, i32 0
  %13 = load i16, i16* %12, align 2
  %.not1 = icmp eq i16 %13, 11
  br i1 %.not1, label %15, label %14

14:                                               ; preds = %11
  call void @abort() #3
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tiny, %struct.tiny* %7, i64 0, i32 0
  %17 = load i16, i16* %16, align 2
  %.not2 = icmp eq i16 %17, 12
  br i1 %.not2, label %19, label %18

18:                                               ; preds = %15
  call void @abort() #3
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %15
  %.not3 = icmp eq i64 %4, 123
  br i1 %.not3, label %21, label %20

20:                                               ; preds = %19
  call void @abort() #3
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %19
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %20, %18, %14, %10
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call i32 @f(i32 noundef 3, i16 10, i16 11, i16 12, i64 noundef 123)
  call void @exit(i32 noundef 0) #3
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
