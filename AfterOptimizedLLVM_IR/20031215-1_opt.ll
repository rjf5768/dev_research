; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20031215-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20031215-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pstr = type { i32, i32, [3 x i8] }

@ao = dso_local constant %struct.pstr { i32 2, i32 2, [3 x i8] c"OK\00" }, align 4
@a = dso_local constant %struct.pstr* @ao, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.pstr, %struct.pstr* @ao, i32 0, i32 1), align 4
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds [3 x i8], [3 x i8]* getelementptr inbounds (%struct.pstr, %struct.pstr* @ao, i32 0, i32 2), i64 0, i64 %2
  %4 = load i8, i8* %3, align 1
  %5 = icmp ne i8 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.pstr, %struct.pstr* @ao, i32 0, i32 1), align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* getelementptr inbounds (%struct.pstr, %struct.pstr* @ao, i32 0, i32 2, i64 0), i64 %8
  store i8 0, i8* %9, align 1
  br label %10

10:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.pstr, %struct.pstr* @ao, i32 0, i32 1), align 4
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds [3 x i8], [3 x i8]* getelementptr inbounds (%struct.pstr, %struct.pstr* @ao, i32 0, i32 2), i64 0, i64 %2
  %4 = load i8, i8* %3, align 1
  %5 = icmp ne i8 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.pstr, %struct.pstr* @ao, i32 0, i32 1), align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* getelementptr inbounds (%struct.pstr, %struct.pstr* @ao, i32 0, i32 2, i64 0), i64 %8
  store i8 -1, i8* %9, align 1
  br label %10

10:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.pstr, %struct.pstr* @ao, i32 0, i32 1), align 4
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds [3 x i8], [3 x i8]* getelementptr inbounds (%struct.pstr, %struct.pstr* @ao, i32 0, i32 2), i64 0, i64 %2
  %4 = load i8, i8* %3, align 1
  %5 = icmp ne i8 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.pstr, %struct.pstr* @ao, i32 0, i32 1), align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* getelementptr inbounds (%struct.pstr, %struct.pstr* @ao, i32 0, i32 2, i64 0), i64 %8
  store i8 1, i8* %9, align 1
  br label %10

10:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @test1()
  call void @test2()
  call void @test3()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
