; ModuleID = './2003-05-21-BitfieldHandling.ll'
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
@F3 = dso_local global %struct.test3 zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"F4: %d %d\0A\00", align 1
@F4 = dso_local global %struct.test4 zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"F5: %d %d\0A\00", align 1
@F5 = dso_local global %struct.test5 zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"F6: %d %d\0A\00", align 1
@F6 = dso_local global %struct.test6 zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"M: %d %d %d %d %d\0A\00", align 1
@M = dso_local global %struct.test zeroinitializer, align 8
@e = dso_local global %struct.test_empty zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i16, i16* getelementptr inbounds ({ i16, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8 }, { i16, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8 }* @N, i64 0, i32 0), align 8
  %2 = zext i16 %1 to i32
  %3 = load i16, i16* bitcast (i8* getelementptr inbounds ({ i16, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8 }, { i16, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8 }* @N, i64 0, i32 1) to i16*), align 2
  %4 = shl i16 %3, 5
  %5 = ashr i16 %4, 8
  %6 = sext i16 %5 to i32
  %7 = load i64, i64* bitcast (i8* getelementptr inbounds ({ i16, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8 }, { i16, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8 }* @N, i64 0, i32 4) to i64*), align 8
  %8 = shl i64 %7, 33
  %9 = ashr exact i64 %8, 33
  %10 = trunc i64 %9 to i32
  %11 = shl i64 %7, 2
  %12 = ashr i64 %11, 33
  %13 = trunc i64 %12 to i32
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef %2, i32 noundef %6, i32 noundef %10, i32 noundef %13) #2
  %15 = load i8, i8* getelementptr inbounds (%struct.test1, %struct.test1* @F1, i64 0, i32 0), align 1
  %16 = and i8 %15, 1
  %17 = sub nsw i8 0, %16
  %18 = sext i8 %17 to i32
  %19 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef %18) #2
  %20 = load i8, i8* getelementptr inbounds (%struct.test2, %struct.test2* @F2, i64 0, i32 0), align 8
  %21 = shl i8 %20, 4
  %22 = ashr exact i8 %21, 4
  %23 = sext i8 %22 to i32
  %24 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef %23) #2
  %25 = load i24, i24* bitcast (%struct.test3* @F3 to i24*), align 4
  %26 = and i24 %25, 1
  %27 = zext i24 %26 to i32
  %28 = sub nsw i32 0, %27
  %29 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef %28) #2
  %30 = load i32, i32* bitcast (%struct.test4* @F4 to i32*), align 4
  %31 = and i32 %30, 1
  %32 = sub nsw i32 0, %31
  %33 = load i16, i16* getelementptr inbounds (%struct.test4, %struct.test4* @F4, i64 0, i32 1), align 4
  %34 = shl i16 %33, 2
  %35 = ashr exact i16 %34, 2
  %36 = sext i16 %35 to i32
  %37 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 noundef %32, i32 noundef %36) #2
  %38 = load i24, i24* bitcast (%struct.test5* @F5 to i24*), align 4
  %39 = and i24 %38, 1
  %40 = zext i24 %39 to i32
  %41 = sub nsw i32 0, %40
  %42 = shl i24 %38, 5
  %43 = ashr i24 %42, 23
  %44 = zext i24 %43 to i32
  %sext = shl i32 %44, 24
  %45 = ashr exact i32 %sext, 24
  %46 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 noundef %41, i32 noundef %45) #2
  %47 = load i64, i64* getelementptr inbounds (%struct.test6, %struct.test6* @F6, i64 0, i32 0), align 8
  %48 = trunc i64 %47 to i32
  %49 = and i32 %48, 1
  %50 = sub nsw i32 0, %49
  %51 = ashr i64 %47, 43
  %52 = trunc i64 %51 to i32
  %53 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 noundef %50, i32 noundef %52) #2
  %54 = load i8, i8* getelementptr inbounds (%struct.test, %struct.test* @M, i64 0, i32 0), align 8
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* getelementptr inbounds (%struct.test, %struct.test* @M, i64 0, i32 1), align 1
  %57 = shl i8 %56, 5
  %58 = ashr exact i8 %57, 5
  %59 = sext i8 %58 to i32
  %60 = shl i8 %56, 2
  %61 = ashr i8 %60, 5
  %62 = sext i8 %61 to i32
  %63 = load i8, i8* getelementptr inbounds (%struct.test, %struct.test* @M, i64 0, i32 3), align 4
  %64 = sext i8 %63 to i32
  %65 = load i8, i8* getelementptr inbounds (%struct.test, %struct.test* @M, i64 0, i32 4), align 1
  %66 = shl i8 %65, 4
  %67 = ashr exact i8 %66, 4
  %68 = sext i8 %67 to i32
  %69 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 noundef %55, i32 noundef %59, i32 noundef %62, i32 noundef %64, i32 noundef %68) #2
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
