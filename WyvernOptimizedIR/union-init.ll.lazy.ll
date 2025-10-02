; ModuleID = './union-init.ll'
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
  %1 = load i32, i32* bitcast (%struct.Bar* @test to i32*), align 8
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %5, label %2

2:                                                ; preds = %0
  %3 = load i32, i32* bitcast (%struct.Bar* @test to i32*), align 8
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef %3) #2
  br label %5

5:                                                ; preds = %2, %0
  %6 = load i32, i32* getelementptr (%struct.Foo, %struct.Foo* bitcast (%struct.Bar* @test to %struct.Foo*), i64 0, i32 1), align 4
  %.not1 = icmp eq i32 %6, 0
  br i1 %.not1, label %10, label %7

7:                                                ; preds = %5
  %8 = load i32, i32* getelementptr (%struct.Foo, %struct.Foo* bitcast (%struct.Bar* @test to %struct.Foo*), i64 0, i32 1), align 4
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef %8) #2
  br label %10

10:                                               ; preds = %7, %5
  %11 = load i32, i32* bitcast (i8* getelementptr inbounds (%struct.Bar, %struct.Bar* @test, i64 0, i32 0, i32 1, i64 0) to i32*), align 8
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %15, label %12

12:                                               ; preds = %10
  %13 = load i32, i32* bitcast (i8* getelementptr inbounds (%struct.Bar, %struct.Bar* @test, i64 0, i32 0, i32 1, i64 0) to i32*), align 8
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef %13) #2
  br label %15

15:                                               ; preds = %12, %10
  %16 = load i8**, i8*** getelementptr inbounds (%struct.Bar, %struct.Bar* @test, i64 0, i32 0, i32 0), align 8
  %17 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** noundef %16) #2
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
