; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20081218-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20081218-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32, i32, [512 x i8] }

@a = dso_local global %struct.A zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo() #0 {
  call void @llvm.memset.p0i8.i64(i8* align 4 bitcast (%struct.A* @a to i8*), i8 38, i64 520, i1 false)
  %1 = load i32, i32* getelementptr inbounds (%struct.A, %struct.A* @a, i32 0, i32 0), align 4
  ret i32 %1
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar() #0 {
  call void @llvm.memset.p0i8.i64(i8* align 4 bitcast (%struct.A* @a to i8*), i8 54, i64 520, i1 false)
  store i32 909522486, i32* getelementptr inbounds (%struct.A, %struct.A* @a, i32 0, i32 0), align 4
  store i32 909588022, i32* getelementptr inbounds (%struct.A, %struct.A* @a, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 @foo()
  %4 = icmp ne i32 %3, 640034342
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void @abort() #3
  unreachable

6:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %20, %6
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %9, 520
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* bitcast (%struct.A* @a to i8*), i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 38
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  call void @abort() #3
  unreachable

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  br label %7, !llvm.loop !4

23:                                               ; preds = %7
  call void @bar()
  %24 = load i32, i32* getelementptr inbounds (%struct.A, %struct.A* @a, i32 0, i32 1), align 4
  %25 = icmp ne i32 %24, 909588022
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  call void @abort() #3
  unreachable

27:                                               ; preds = %23
  store i32 909522486, i32* getelementptr inbounds (%struct.A, %struct.A* @a, i32 0, i32 1), align 4
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %41, %27
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %30, 520
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* bitcast (%struct.A* @a to i8*), i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 54
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  call void @abort() #3
  unreachable

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %28, !llvm.loop !6

44:                                               ; preds = %28
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
