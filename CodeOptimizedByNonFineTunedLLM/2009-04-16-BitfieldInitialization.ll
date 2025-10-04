; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2009-04-16-BitfieldInitialization.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2009-04-16-BitfieldInitialization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ty2 = type <{ float, i8, i32 }>
%struct.ty4 = type <{ x86_fp80, i8, x86_fp80 }>
%struct.anon = type { i8, i8 }
%struct.anon.2 = type <{ x86_fp80, i8 }>
%struct.sDescrItem = type { i8, i8*, i8 }
%struct.t10s = type <{ i16, [2 x i8], i32* }>
%struct.ty = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ty3 = type { i32, [0 x i8] }
%struct.anon.1 = type <{ i8, i16 }>
%struct.anon.0 = type <{ i8, i16 }>
%struct.anon.3 = type <{ i8, i16 }>
%struct.anon.4 = type <{ i8, i16 }>
%struct.resword = type { i32*, i32 }

@t1 = dso_local global { i32, [4 x i8], { i32, [4 x i8] } } { i32 101, [4 x i8] undef, { i32, [4 x i8] } { i32 1, [4 x i8] undef } }, align 8
@t2 = dso_local global %struct.ty2 <{ float 1.010000e+02, i8 1, i32 204 }>, align 1
@t3 = dso_local global { i32, [3 x i8] } { i32 4, [3 x i8] c"fo\00" }, align 4
@t4 = dso_local global %struct.ty4 <{ x86_fp80 0xK3FFF8000000000000000, i8 4, x86_fp80 0xK40038800000000000000 }>, align 1
@t5a = dso_local global %struct.anon { i8 101, i8 15 }, align 1
@t5b = dso_local global { i8, i8, i8 } { i8 101, i8 -49, i8 4 }, align 1
@t5 = dso_local global { i8, i8, i8 } { i8 101, i8 -65, i8 7 }, align 1
@t6 = dso_local global %struct.anon.2 <{ x86_fp80 0xK4005F6D2F1A9FBE77000, i8 5 }>, align 1
@t7 = dso_local global { i8, i8, i8 } { i8 101, i8 63, i8 0 }, align 1
@t7a = dso_local global { i8, i8, i8 } { i8 101, i8 -65, i8 7 }, align 1
@t8 = dso_local global %struct.sDescrItem { i8 16, i8* null, i8 32 }, align 8
@t9 = dso_local global { i32*, i8, i8, i8, i8 } { i32* null, i8 123, i8 0, i8 -56, i8 1 }, align 8
@x = dso_local global i32 42, align 4
@t10 = dso_local global %struct.t10s <{ i16 0, [2 x i8] undef, i32* @x }>, align 4
@.str = private unnamed_addr constant [11 x i8] c"1: %d, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"2: %f, %d, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"3: %d %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"4: %f %d %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"5: %d %d %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"5a: %d %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"5b: %d %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"6: %Lf %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"7: %d %d %d %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"7a: %d %d %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"8: %d %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"9: %d %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"10: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.ty, %struct.ty* bitcast ({ i32, [4 x i8], { i32, [4 x i8] } }* @t1 to %struct.ty*), i32 0, i32 0), align 8
  %3 = load i32, i32* bitcast (%union.anon* getelementptr inbounds (%struct.ty, %struct.ty* bitcast ({ i32, [4 x i8], { i32, [4 x i8] } }* @t1 to %struct.ty*), i32 0, i32 1) to i32*), align 8
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef %2, i32 noundef %3)
  %5 = load float, float* getelementptr inbounds (%struct.ty2, %struct.ty2* @t2, i32 0, i32 0), align 1
  %6 = fpext float %5 to double
  %7 = load i8, i8* getelementptr inbounds (%struct.ty2, %struct.ty2* @t2, i32 0, i32 1), align 1
  %8 = sext i8 %7 to i32
  %9 = load i32, i32* getelementptr inbounds (%struct.ty2, %struct.ty2* @t2, i32 0, i32 2), align 1
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), double noundef %6, i32 noundef %8, i32 noundef %9)
  %11 = load i32, i32* getelementptr inbounds (%struct.ty3, %struct.ty3* bitcast ({ i32, [3 x i8] }* @t3 to %struct.ty3*), i32 0, i32 0), align 4
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef %11, i8* noundef getelementptr inbounds (%struct.ty3, %struct.ty3* bitcast ({ i32, [3 x i8] }* @t3 to %struct.ty3*), i32 0, i32 1, i64 0))
  %13 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.ty4, %struct.ty4* @t4, i32 0, i32 0), align 1
  %14 = fptrunc x86_fp80 %13 to double
  %15 = load i8, i8* getelementptr inbounds (%struct.ty4, %struct.ty4* @t4, i32 0, i32 1), align 1
  %16 = sext i8 %15 to i32
  %17 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.ty4, %struct.ty4* @t4, i32 0, i32 2), align 1
  %18 = fptrunc x86_fp80 %17 to double
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), double noundef %14, i32 noundef %16, double noundef %18)
  %20 = load i8, i8* getelementptr inbounds (%struct.anon.1, %struct.anon.1* bitcast ({ i8, i8, i8 }* @t5 to %struct.anon.1*), i32 0, i32 0), align 1
  %21 = sext i8 %20 to i32
  %22 = load i16, i16* getelementptr inbounds (%struct.anon.1, %struct.anon.1* bitcast ({ i8, i8, i8 }* @t5 to %struct.anon.1*), i32 0, i32 1), align 1
  %23 = and i16 %22, 15
  %24 = trunc i16 %23 to i8
  %25 = zext i8 %24 to i32
  %26 = load i16, i16* getelementptr inbounds (%struct.anon.1, %struct.anon.1* bitcast ({ i8, i8, i8 }* @t5 to %struct.anon.1*), i32 0, i32 1), align 1
  %27 = lshr i16 %26, 4
  %28 = and i16 %27, 127
  %29 = trunc i16 %28 to i8
  %30 = zext i8 %29 to i32
  %31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 noundef %21, i32 noundef %25, i32 noundef %30)
  %32 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @t5a, i32 0, i32 0), align 1
  %33 = sext i8 %32 to i32
  %34 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @t5a, i32 0, i32 1), align 1
  %35 = and i8 %34, 15
  %36 = zext i8 %35 to i32
  %37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 noundef %33, i32 noundef %36)
  %38 = load i8, i8* getelementptr inbounds (%struct.anon.0, %struct.anon.0* bitcast ({ i8, i8, i8 }* @t5b to %struct.anon.0*), i32 0, i32 0), align 1
  %39 = sext i8 %38 to i32
  %40 = load i16, i16* getelementptr inbounds (%struct.anon.0, %struct.anon.0* bitcast ({ i8, i8, i8 }* @t5b to %struct.anon.0*), i32 0, i32 1), align 1
  %41 = and i16 %40, 4095
  %42 = zext i16 %41 to i32
  %43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 noundef %39, i32 noundef %42)
  %44 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.anon.2, %struct.anon.2* @t6, i32 0, i32 0), align 1
  %45 = load i8, i8* getelementptr inbounds (%struct.anon.2, %struct.anon.2* @t6, i32 0, i32 1), align 1
  %46 = and i8 %45, 15
  %47 = zext i8 %46 to i32
  %48 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), x86_fp80 noundef %44, i32 noundef %47)
  %49 = load i8, i8* getelementptr inbounds (%struct.anon.3, %struct.anon.3* bitcast ({ i8, i8, i8 }* @t7 to %struct.anon.3*), i32 0, i32 0), align 1
  %50 = sext i8 %49 to i32
  %51 = load i16, i16* getelementptr inbounds (%struct.anon.3, %struct.anon.3* bitcast ({ i8, i8, i8 }* @t7 to %struct.anon.3*), i32 0, i32 1), align 1
  %52 = and i16 %51, 15
  %53 = trunc i16 %52 to i8
  %54 = zext i8 %53 to i32
  %55 = load i16, i16* getelementptr inbounds (%struct.anon.3, %struct.anon.3* bitcast ({ i8, i8, i8 }* @t7 to %struct.anon.3*), i32 0, i32 1), align 1
  %56 = lshr i16 %55, 4
  %57 = and i16 %56, 7
  %58 = trunc i16 %57 to i8
  %59 = zext i8 %58 to i32
  %60 = load i16, i16* getelementptr inbounds (%struct.anon.3, %struct.anon.3* bitcast ({ i8, i8, i8 }* @t7 to %struct.anon.3*), i32 0, i32 1), align 1
  %61 = lshr i16 %60, 7
  %62 = and i16 %61, 127
  %63 = trunc i16 %62 to i8
  %64 = zext i8 %63 to i32
  %65 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 noundef %50, i32 noundef %54, i32 noundef %59, i32 noundef %64)
  %66 = load i8, i8* getelementptr inbounds (%struct.anon.4, %struct.anon.4* bitcast ({ i8, i8, i8 }* @t7a to %struct.anon.4*), i32 0, i32 0), align 1
  %67 = sext i8 %66 to i32
  %68 = load i16, i16* getelementptr inbounds (%struct.anon.4, %struct.anon.4* bitcast ({ i8, i8, i8 }* @t7a to %struct.anon.4*), i32 0, i32 1), align 1
  %69 = and i16 %68, 15
  %70 = zext i16 %69 to i32
  %71 = load i16, i16* getelementptr inbounds (%struct.anon.4, %struct.anon.4* bitcast ({ i8, i8, i8 }* @t7a to %struct.anon.4*), i32 0, i32 1), align 1
  %72 = lshr i16 %71, 4
  %73 = zext i16 %72 to i32
  %74 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 noundef %67, i32 noundef %70, i32 noundef %73)
  %75 = load i8, i8* getelementptr inbounds (%struct.sDescrItem, %struct.sDescrItem* @t8, i32 0, i32 0), align 8
  %76 = sext i8 %75 to i32
  %77 = load i8, i8* getelementptr inbounds (%struct.sDescrItem, %struct.sDescrItem* @t8, i32 0, i32 2), align 8
  %78 = sext i8 %77 to i32
  %79 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 noundef %76, i32 noundef %78)
  %80 = load i32, i32* getelementptr inbounds (%struct.resword, %struct.resword* bitcast ({ i32*, i8, i8, i8, i8 }* @t9 to %struct.resword*), i32 0, i32 1), align 8
  %81 = and i32 %80, 65535
  %82 = load i32, i32* getelementptr inbounds (%struct.resword, %struct.resword* bitcast ({ i32*, i8, i8, i8, i8 }* @t9 to %struct.resword*), i32 0, i32 1), align 8
  %83 = ashr i32 %82, 16
  %84 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 noundef %81, i32 noundef %83)
  %85 = load i32*, i32** getelementptr inbounds (%struct.t10s, %struct.t10s* @t10, i32 0, i32 2), align 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef %86)
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
