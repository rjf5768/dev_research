; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr88739.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr88739.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32, i32, i32, i32 }
%union.U = type { %struct.A }

@v = dso_local global { { i32, i32, i32, i8, i8, i8, i8 } } { { i32, i32, i32, i8, i8, i8, i8 } { i32 0, i32 0, i32 0, i8 -119, i8 64, i8 0, i8 0 } }, align 4
@bar.i = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @bar.i, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @bar.i, align 4
  switch i32 %3, label %39 [
    i32 0, label %5
    i32 1, label %12
    i32 2, label %19
    i32 3, label %25
    i32 4, label %32
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = load volatile i32, i32* getelementptr inbounds (%struct.A, %struct.A* bitcast ({ { i32, i32, i32, i8, i8, i8, i8 } }* @v to %struct.A*), i32 0, i32 3), align 4
  %8 = and i32 %7, 1073741823
  %9 = icmp ne i32 %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  call void @abort() #2
  unreachable

11:                                               ; preds = %5
  br label %40

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = load volatile i32, i32* getelementptr inbounds (%struct.A, %struct.A* bitcast ({ { i32, i32, i32, i8, i8, i8, i8 } }* @v to %struct.A*), i32 0, i32 3), align 4
  %15 = lshr i32 %14, 30
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  call void @abort() #2
  unreachable

18:                                               ; preds = %12
  br label %40

19:                                               ; preds = %1
  %20 = load i32, i32* %2, align 4
  %21 = load volatile i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast ({ { i32, i32, i32, i8, i8, i8, i8 } }* @v to [4 x i32]*), i64 0, i64 3), align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  call void @abort() #2
  unreachable

24:                                               ; preds = %19
  br label %40

25:                                               ; preds = %1
  %26 = load i32, i32* %2, align 4
  %27 = load volatile i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast ({ { i32, i32, i32, i8, i8, i8, i8 } }* @v to [8 x i16]*), i64 0, i64 6), align 4
  %28 = zext i16 %27 to i32
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  call void @abort() #2
  unreachable

31:                                               ; preds = %25
  br label %40

32:                                               ; preds = %1
  %33 = load i32, i32* %2, align 4
  %34 = load volatile i16, i16* getelementptr inbounds ([8 x i16], [8 x i16]* bitcast ({ { i32, i32, i32, i8, i8, i8, i8 } }* @v to [8 x i16]*), i64 0, i64 7), align 2
  %35 = zext i16 %34 to i32
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  call void @abort() #2
  unreachable

38:                                               ; preds = %32
  br label %40

39:                                               ; preds = %1
  call void @abort() #2
  unreachable

40:                                               ; preds = %38, %31, %24, %18, %11
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.U, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = lshr i32 %4, 2
  %6 = bitcast %union.U* %3 to %struct.A*
  %7 = getelementptr inbounds %struct.A, %struct.A* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %5, 1073741823
  %10 = and i32 %8, -1073741824
  %11 = or i32 %10, %9
  store i32 %11, i32* %7, align 4
  %12 = bitcast %union.U* %3 to %struct.A*
  %13 = getelementptr inbounds %struct.A, %struct.A* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 1073741823
  %16 = or i32 %15, 0
  store i32 %16, i32* %13, align 4
  %17 = bitcast %union.U* %3 to %struct.A*
  %18 = getelementptr inbounds %struct.A, %struct.A* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 1073741823
  call void @bar(i32 noundef %20)
  %21 = bitcast %union.U* %3 to %struct.A*
  %22 = getelementptr inbounds %struct.A, %struct.A* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = lshr i32 %23, 30
  call void @bar(i32 noundef %24)
  %25 = bitcast %union.U* %3 to [4 x i32]*
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 3
  %27 = load i32, i32* %26, align 4
  call void @bar(i32 noundef %27)
  %28 = bitcast %union.U* %3 to [8 x i16]*
  %29 = getelementptr inbounds [8 x i16], [8 x i16]* %28, i64 0, i64 6
  %30 = load i16, i16* %29, align 4
  %31 = zext i16 %30 to i32
  call void @bar(i32 noundef %31)
  %32 = bitcast %union.U* %3 to [8 x i16]*
  %33 = getelementptr inbounds [8 x i16], [8 x i16]* %32, i64 0, i64 7
  %34 = load i16, i16* %33, align 2
  %35 = zext i16 %34 to i32
  call void @bar(i32 noundef %35)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo(i32 noundef 66084)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
