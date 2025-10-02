; ModuleID = './931004-5.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i16, i16 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, i32 %1, i32 %2, i32 %3, i64 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %tmpcast1 = bitcast i32* %7 to %struct.tiny*
  %8 = alloca i32, align 4
  %tmpcast2 = bitcast i32* %8 to %struct.tiny*
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = bitcast i32* %6 to i16*
  %10 = load i16, i16* %9, align 4
  %.not = icmp eq i16 %10, 10
  br i1 %.not, label %12, label %11

11:                                               ; preds = %5
  call void @abort() #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %5
  %tmpcast = bitcast i32* %6 to %struct.tiny*
  %13 = getelementptr inbounds %struct.tiny, %struct.tiny* %tmpcast, i64 0, i32 1
  %14 = load i16, i16* %13, align 2
  %.not3 = icmp eq i16 %14, 20
  br i1 %.not3, label %16, label %15

15:                                               ; preds = %12
  call void @abort() #3
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %12
  %17 = bitcast i32* %7 to i16*
  %18 = load i16, i16* %17, align 4
  %.not4 = icmp eq i16 %18, 11
  br i1 %.not4, label %20, label %19

19:                                               ; preds = %16
  call void @abort() #3
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tiny, %struct.tiny* %tmpcast1, i64 0, i32 1
  %22 = load i16, i16* %21, align 2
  %.not5 = icmp eq i16 %22, 21
  br i1 %.not5, label %24, label %23

23:                                               ; preds = %20
  call void @abort() #3
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %20
  %25 = bitcast i32* %8 to i16*
  %26 = load i16, i16* %25, align 4
  %.not6 = icmp eq i16 %26, 12
  br i1 %.not6, label %28, label %27

27:                                               ; preds = %24
  call void @abort() #3
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.tiny, %struct.tiny* %tmpcast2, i64 0, i32 1
  %30 = load i16, i16* %29, align 2
  %.not7 = icmp eq i16 %30, 22
  br i1 %.not7, label %32, label %31

31:                                               ; preds = %28
  call void @abort() #3
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %28
  %.not8 = icmp eq i64 %4, 123
  br i1 %.not8, label %34, label %33

33:                                               ; preds = %32
  call void @abort() #3
  br label %UnifiedUnreachableBlock

34:                                               ; preds = %32
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %33, %31, %27, %23, %19, %15, %11
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca [3 x %struct.tiny], align 4
  %2 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 0, i32 0
  store i16 10, i16* %2, align 4
  %3 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 1, i32 0
  store i16 11, i16* %3, align 4
  %4 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 2, i32 0
  store i16 12, i16* %4, align 4
  %5 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 0, i32 1
  store i16 20, i16* %5, align 2
  %6 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 1, i32 1
  store i16 21, i16* %6, align 2
  %7 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 2, i32 1
  store i16 22, i16* %7, align 2
  %8 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 1
  %9 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 2
  %10 = bitcast [3 x %struct.tiny]* %1 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = bitcast %struct.tiny* %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %struct.tiny* %9 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @f(i32 noundef 3, i32 %11, i32 %13, i32 %15, i64 noundef 123)
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
