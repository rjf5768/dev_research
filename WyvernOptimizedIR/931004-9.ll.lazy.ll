; ModuleID = './931004-9.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i8, i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, i16 %1, i16 %2, i16 %3, i64 noundef %4) #0 {
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %tmpcast1 = bitcast i16* %7 to %struct.tiny*
  %8 = alloca i16, align 2
  %tmpcast2 = bitcast i16* %8 to %struct.tiny*
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %9 = bitcast i16* %6 to i8*
  %10 = load i8, i8* %9, align 2
  %.not = icmp eq i8 %10, 10
  br i1 %.not, label %12, label %11

11:                                               ; preds = %5
  call void @abort() #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %5
  %tmpcast = bitcast i16* %6 to %struct.tiny*
  %13 = getelementptr inbounds %struct.tiny, %struct.tiny* %tmpcast, i64 0, i32 1
  %14 = load i8, i8* %13, align 1
  %.not3 = icmp eq i8 %14, 20
  br i1 %.not3, label %16, label %15

15:                                               ; preds = %12
  call void @abort() #3
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %12
  %17 = bitcast i16* %7 to i8*
  %18 = load i8, i8* %17, align 2
  %.not4 = icmp eq i8 %18, 11
  br i1 %.not4, label %20, label %19

19:                                               ; preds = %16
  call void @abort() #3
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tiny, %struct.tiny* %tmpcast1, i64 0, i32 1
  %22 = load i8, i8* %21, align 1
  %.not5 = icmp eq i8 %22, 21
  br i1 %.not5, label %24, label %23

23:                                               ; preds = %20
  call void @abort() #3
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %20
  %25 = bitcast i16* %8 to i8*
  %26 = load i8, i8* %25, align 2
  %.not6 = icmp eq i8 %26, 12
  br i1 %.not6, label %28, label %27

27:                                               ; preds = %24
  call void @abort() #3
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.tiny, %struct.tiny* %tmpcast2, i64 0, i32 1
  %30 = load i8, i8* %29, align 1
  %.not7 = icmp eq i8 %30, 22
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
  %1 = alloca [3 x %struct.tiny], align 2
  %2 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 0, i32 0
  store i8 10, i8* %2, align 2
  %3 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 1, i32 0
  store i8 11, i8* %3, align 2
  %4 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 2, i32 0
  store i8 12, i8* %4, align 2
  %5 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 0, i32 1
  store i8 20, i8* %5, align 1
  %6 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 1, i32 1
  store i8 21, i8* %6, align 1
  %7 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 2, i32 1
  store i8 22, i8* %7, align 1
  %8 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 1
  %9 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %1, i64 0, i64 2
  %10 = bitcast [3 x %struct.tiny]* %1 to i16*
  %11 = load i16, i16* %10, align 2
  %12 = bitcast %struct.tiny* %8 to i16*
  %13 = load i16, i16* %12, align 2
  %14 = bitcast %struct.tiny* %9 to i16*
  %15 = load i16, i16* %14, align 2
  %16 = call i32 @f(i32 noundef 3, i16 %11, i16 %13, i16 %15, i64 noundef 123)
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
