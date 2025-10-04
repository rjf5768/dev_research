; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr44468.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr44468.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Q = type { float, %struct.S }
%struct.S = type { i32, i32 }
%struct.R = type { i32, %struct.S }

@s = dso_local global %struct.Q zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test1(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.S*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 4
  %6 = bitcast i8* %5 to %struct.S*
  store %struct.S* %6, %struct.S** %3, align 8
  store i32 0, i32* getelementptr inbounds (%struct.Q, %struct.Q* @s, i32 0, i32 1, i32 0), align 4
  %7 = load %struct.S*, %struct.S** %3, align 8
  %8 = getelementptr inbounds %struct.S, %struct.S* %7, i32 0, i32 0
  store i32 3, i32* %8, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.Q, %struct.Q* @s, i32 0, i32 1, i32 0), align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.S*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.R*
  %6 = getelementptr inbounds %struct.R, %struct.R* %5, i32 0, i32 1
  store %struct.S* %6, %struct.S** %3, align 8
  store i32 0, i32* getelementptr inbounds (%struct.Q, %struct.Q* @s, i32 0, i32 1, i32 0), align 4
  %7 = load %struct.S*, %struct.S** %3, align 8
  %8 = getelementptr inbounds %struct.S, %struct.S* %7, i32 0, i32 0
  store i32 3, i32* %8, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.Q, %struct.Q* @s, i32 0, i32 1, i32 0), align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test3(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* getelementptr inbounds (%struct.Q, %struct.Q* @s, i32 0, i32 1, i32 0), align 4
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 4
  %5 = bitcast i8* %4 to %struct.S*
  %6 = getelementptr inbounds %struct.S, %struct.S* %5, i32 0, i32 0
  store i32 3, i32* %6, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.Q, %struct.Q* @s, i32 0, i32 1, i32 0), align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* getelementptr inbounds (%struct.Q, %struct.Q* @s, i32 0, i32 1, i32 0), align 4
  store i32 2, i32* getelementptr inbounds (%struct.Q, %struct.Q* @s, i32 0, i32 1, i32 1), align 4
  %2 = call i32 @test1(i8* noundef bitcast (%struct.Q* @s to i8*))
  %3 = icmp ne i32 %2, 3
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  store i32 1, i32* getelementptr inbounds (%struct.Q, %struct.Q* @s, i32 0, i32 1, i32 0), align 4
  store i32 2, i32* getelementptr inbounds (%struct.Q, %struct.Q* @s, i32 0, i32 1, i32 1), align 4
  %6 = call i32 @test2(i8* noundef bitcast (%struct.Q* @s to i8*))
  %7 = icmp ne i32 %6, 3
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #2
  unreachable

9:                                                ; preds = %5
  store i32 1, i32* getelementptr inbounds (%struct.Q, %struct.Q* @s, i32 0, i32 1, i32 0), align 4
  store i32 2, i32* getelementptr inbounds (%struct.Q, %struct.Q* @s, i32 0, i32 1, i32 1), align 4
  %10 = call i32 @test3(i8* noundef bitcast (%struct.Q* @s to i8*))
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #2
  unreachable

13:                                               ; preds = %9
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
