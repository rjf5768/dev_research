; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/union-init.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/union-init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Bar = type { %union.anon }
%union.anon = type { i8**, [8 x i8] }
%struct.Foo = type { i32, i32, i32 }

@test = dso_local global %struct.Bar { %union.anon { i8** null, [8 x i8] undef } }, align 8
@.str = private unnamed_addr constant [15 x i8] c"error: a = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.Foo, %struct.Foo* bitcast (%struct.Bar* @test to %struct.Foo*), i32 0, i32 0), align 8
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* getelementptr inbounds (%struct.Foo, %struct.Foo* bitcast (%struct.Bar* @test to %struct.Foo*), i32 0, i32 0), align 8
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef %5)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i32, i32* getelementptr inbounds (%struct.Foo, %struct.Foo* bitcast (%struct.Bar* @test to %struct.Foo*), i32 0, i32 1), align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32, i32* getelementptr inbounds (%struct.Foo, %struct.Foo* bitcast (%struct.Bar* @test to %struct.Foo*), i32 0, i32 1), align 4
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef %11)
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32, i32* getelementptr inbounds (%struct.Foo, %struct.Foo* bitcast (%struct.Bar* @test to %struct.Foo*), i32 0, i32 2), align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* getelementptr inbounds (%struct.Foo, %struct.Foo* bitcast (%struct.Bar* @test to %struct.Foo*), i32 0, i32 2), align 8
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i8**, i8*** getelementptr inbounds (%struct.Bar, %struct.Bar* @test, i32 0, i32 0, i32 0), align 8
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** noundef %20)
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
