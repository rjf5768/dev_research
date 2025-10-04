; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/2003-05-21-BitfieldHandling.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/2003-05-21-BitfieldHandling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test1 = type { i8, [7 x i8] }
%struct.test2 = type { i8, [7 x i8] }
%struct.test3 = type { [3 x i8] }
%struct.test4 = type <{ i24, i16 }>
%struct.test5 = type { [3 x i8] }
%struct.test6 = type { i64 }
%struct.test = type { i8, i8, [2 x i8], i8, i8, [2 x i8] }
%struct.test_empty = type {}
%struct.rtx_def = type { i16, i16, i64 }

@Esize = dso_local global i32 0, align 4
@N = dso_local global { i16, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8 } { i16 2, i8 56, i8 0, [4 x i8] undef, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 8
@Nsize = dso_local global i32 16, align 4
@F1size = dso_local global i32 8, align 4
@F2size = dso_local global i32 8, align 4
@F3size = dso_local global i32 3, align 4
@F4size = dso_local global i32 6, align 4
@F5size = dso_local global i32 3, align 4
@F6size = dso_local global i32 8, align 4
@Msize = dso_local global i32 8, align 4
@.str = private unnamed_addr constant [16 x i8] c"N: %d %d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"F1: %d\0A\00", align 1
@F1 = dso_local global %struct.test1 zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"F2: %d\0A\00", align 1
@F2 = dso_local global %struct.test2 zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"F3: %d\0A\00", align 1
@F3 = dso_local global %struct.test3 zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"F4: %d %d\0A\00", align 1
@F4 = dso_local global %struct.test4 zeroinitializer, align 2
@.str.5 = private unnamed_addr constant [11 x i8] c"F5: %d %d\0A\00", align 1
@F5 = dso_local global %struct.test5 zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"F6: %d %d\0A\00", align 1
@F6 = dso_local global %struct.test6 zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"M: %d %d %d %d %d\0A\00", align 1
@M = dso_local global %struct.test zeroinitializer, align 8
@e = dso_local global %struct.test_empty zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i16, i16* getelementptr inbounds (%struct.rtx_def, %struct.rtx_def* bitcast ({ i16, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8 }* @N to %struct.rtx_def*), i32 0, i32 0), align 8
  %3 = zext i16 %2 to i32
  %4 = load i16, i16* getelementptr inbounds (%struct.rtx_def, %struct.rtx_def* bitcast ({ i16, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8 }* @N to %struct.rtx_def*), i32 0, i32 1), align 2
  %5 = shl i16 %4, 5
  %6 = ashr i16 %5, 8
  %7 = sext i16 %6 to i32
  %8 = load i64, i64* getelementptr inbounds (%struct.rtx_def, %struct.rtx_def* bitcast ({ i16, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8 }* @N to %struct.rtx_def*), i32 0, i32 2), align 8
  %9 = shl i64 %8, 33
  %10 = ashr i64 %9, 33
  %11 = trunc i64 %10 to i32
  %12 = load i64, i64* getelementptr inbounds (%struct.rtx_def, %struct.rtx_def* bitcast ({ i16, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8 }* @N to %struct.rtx_def*), i32 0, i32 2), align 8
  %13 = shl i64 %12, 2
  %14 = ashr i64 %13, 33
  %15 = trunc i64 %14 to i32
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef %3, i32 noundef %7, i32 noundef %11, i32 noundef %15)
  %17 = load i8, i8* getelementptr inbounds (%struct.test1, %struct.test1* @F1, i32 0, i32 0), align 1
  %18 = shl i8 %17, 7
  %19 = ashr i8 %18, 7
  %20 = sext i8 %19 to i32
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef %20)
  %22 = load i8, i8* getelementptr inbounds (%struct.test2, %struct.test2* @F2, i32 0, i32 0), align 8
  %23 = shl i8 %22, 4
  %24 = ashr i8 %23, 4
  %25 = sext i8 %24 to i64
  %26 = trunc i64 %25 to i32
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef %26)
  %28 = load i24, i24* bitcast (%struct.test3* @F3 to i24*), align 1
  %29 = shl i24 %28, 23
  %30 = ashr i24 %29, 23
  %31 = trunc i24 %30 to i8
  %32 = sext i8 %31 to i32
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef %32)
  %34 = load i32, i32* bitcast (%struct.test4* @F4 to i32*), align 2
  %35 = shl i32 %34, 31
  %36 = ashr i32 %35, 31
  %37 = trunc i32 %36 to i8
  %38 = sext i8 %37 to i32
  %39 = load i16, i16* getelementptr inbounds (%struct.test4, %struct.test4* @F4, i32 0, i32 1), align 2
  %40 = shl i16 %39, 2
  %41 = ashr i16 %40, 2
  %42 = sext i16 %41 to i32
  %43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 noundef %38, i32 noundef %42)
  %44 = load i24, i24* bitcast (%struct.test5* @F5 to i24*), align 1
  %45 = shl i24 %44, 23
  %46 = ashr i24 %45, 23
  %47 = trunc i24 %46 to i8
  %48 = sext i8 %47 to i32
  %49 = load i24, i24* bitcast (%struct.test5* @F5 to i24*), align 1
  %50 = shl i24 %49, 5
  %51 = ashr i24 %50, 23
  %52 = trunc i24 %51 to i8
  %53 = sext i8 %52 to i32
  %54 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 noundef %48, i32 noundef %53)
  %55 = load i64, i64* getelementptr inbounds (%struct.test6, %struct.test6* @F6, i32 0, i32 0), align 4
  %56 = shl i64 %55, 63
  %57 = ashr i64 %56, 63
  %58 = trunc i64 %57 to i8
  %59 = sext i8 %58 to i32
  %60 = load i64, i64* getelementptr inbounds (%struct.test6, %struct.test6* @F6, i32 0, i32 0), align 4
  %61 = ashr i64 %60, 43
  %62 = trunc i64 %61 to i32
  %63 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 noundef %59, i32 noundef %62)
  %64 = load i8, i8* getelementptr inbounds (%struct.test, %struct.test* @M, i32 0, i32 0), align 8
  %65 = sext i8 %64 to i32
  %66 = load i8, i8* getelementptr inbounds (%struct.test, %struct.test* @M, i32 0, i32 1), align 1
  %67 = shl i8 %66, 5
  %68 = ashr i8 %67, 5
  %69 = sext i8 %68 to i32
  %70 = load i8, i8* getelementptr inbounds (%struct.test, %struct.test* @M, i32 0, i32 1), align 1
  %71 = shl i8 %70, 2
  %72 = ashr i8 %71, 5
  %73 = sext i8 %72 to i32
  %74 = load i8, i8* getelementptr inbounds (%struct.test, %struct.test* @M, i32 0, i32 3), align 4
  %75 = sext i8 %74 to i32
  %76 = load i8, i8* getelementptr inbounds (%struct.test, %struct.test* @M, i32 0, i32 4), align 1
  %77 = shl i8 %76, 4
  %78 = ashr i8 %77, 4
  %79 = sext i8 %78 to i64
  %80 = trunc i64 %79 to i32
  %81 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 noundef %65, i32 noundef %69, i32 noundef %73, i32 noundef %75, i32 noundef %80)
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
