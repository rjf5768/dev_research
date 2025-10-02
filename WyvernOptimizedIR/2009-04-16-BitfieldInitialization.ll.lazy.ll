; ModuleID = './2009-04-16-BitfieldInitialization.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2009-04-16-BitfieldInitialization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ty2 = type <{ float, i8, i32 }>
%struct.ty4 = type <{ x86_fp80, i8, x86_fp80 }>
%struct.anon = type { i8, i8 }
%struct.anon.2 = type <{ x86_fp80, i8 }>
%struct.sDescrItem = type { i8, i8*, i8 }
%struct.t10s = type <{ i16, [2 x i8], i32* }>

@t1 = dso_local global { i32, [4 x i8], { i32, [4 x i8] } } { i32 101, [4 x i8] undef, { i32, [4 x i8] } { i32 1, [4 x i8] undef } }, align 8
@t2 = dso_local global %struct.ty2 <{ float 1.010000e+02, i8 1, i32 204 }>, align 4
@t3 = dso_local global { i32, [3 x i8] } { i32 4, [3 x i8] c"fo\00" }, align 4
@t4 = dso_local global %struct.ty4 <{ x86_fp80 0xK3FFF8000000000000000, i8 4, x86_fp80 0xK40038800000000000000 }>, align 16
@t5a = dso_local global %struct.anon { i8 101, i8 15 }, align 1
@t5b = dso_local global { i8, i8, i8 } { i8 101, i8 -49, i8 4 }, align 1
@t5 = dso_local global { i8, i8, i8 } { i8 101, i8 -65, i8 7 }, align 1
@t6 = dso_local global %struct.anon.2 <{ x86_fp80 0xK4005F6D2F1A9FBE77000, i8 5 }>, align 16
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
  %1 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8], { i32, [4 x i8] } }, { i32, [4 x i8], { i32, [4 x i8] } }* @t1, i64 0, i32 0), align 8
  %2 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8], { i32, [4 x i8] } }, { i32, [4 x i8], { i32, [4 x i8] } }* @t1, i64 0, i32 2, i32 0), align 8
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef %1, i32 noundef %2) #2
  %4 = load float, float* getelementptr inbounds (%struct.ty2, %struct.ty2* @t2, i64 0, i32 0), align 4
  %5 = fpext float %4 to double
  %6 = load i8, i8* getelementptr inbounds (%struct.ty2, %struct.ty2* @t2, i64 0, i32 1), align 4
  %7 = sext i8 %6 to i32
  %8 = load i32, i32* getelementptr inbounds (%struct.ty2, %struct.ty2* @t2, i64 0, i32 2), align 1
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), double noundef %5, i32 noundef %7, i32 noundef %8) #2
  %10 = load i32, i32* getelementptr inbounds ({ i32, [3 x i8] }, { i32, [3 x i8] }* @t3, i64 0, i32 0), align 4
  %11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef %10, i8* noundef getelementptr inbounds ({ i32, [3 x i8] }, { i32, [3 x i8] }* @t3, i64 0, i32 1, i64 0)) #2
  %12 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.ty4, %struct.ty4* @t4, i64 0, i32 0), align 16
  %13 = fptrunc x86_fp80 %12 to double
  %14 = load i8, i8* getelementptr inbounds (%struct.ty4, %struct.ty4* @t4, i64 0, i32 1), align 16
  %15 = sext i8 %14 to i32
  %16 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.ty4, %struct.ty4* @t4, i64 0, i32 2), align 1
  %17 = fptrunc x86_fp80 %16 to double
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), double noundef %13, i32 noundef %15, double noundef %17) #2
  %19 = load i8, i8* getelementptr inbounds ({ i8, i8, i8 }, { i8, i8, i8 }* @t5, i64 0, i32 0), align 1
  %20 = sext i8 %19 to i32
  %21 = load i16, i16* bitcast (i8* getelementptr inbounds ({ i8, i8, i8 }, { i8, i8, i8 }* @t5, i64 0, i32 1) to i16*), align 1
  %22 = and i16 %21, 15
  %23 = zext i16 %22 to i32
  %24 = lshr i16 %21, 4
  %25 = and i16 %24, 127
  %26 = zext i16 %25 to i32
  %27 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 noundef %20, i32 noundef %23, i32 noundef %26) #2
  %28 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @t5a, i64 0, i32 0), align 1
  %29 = sext i8 %28 to i32
  %30 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @t5a, i64 0, i32 1), align 1
  %31 = and i8 %30, 15
  %32 = zext i8 %31 to i32
  %33 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 noundef %29, i32 noundef %32) #2
  %34 = load i8, i8* getelementptr inbounds ({ i8, i8, i8 }, { i8, i8, i8 }* @t5b, i64 0, i32 0), align 1
  %35 = sext i8 %34 to i32
  %36 = load i16, i16* bitcast (i8* getelementptr inbounds ({ i8, i8, i8 }, { i8, i8, i8 }* @t5b, i64 0, i32 1) to i16*), align 1
  %37 = and i16 %36, 4095
  %38 = zext i16 %37 to i32
  %39 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 noundef %35, i32 noundef %38) #2
  %40 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.anon.2, %struct.anon.2* @t6, i64 0, i32 0), align 16
  %41 = load i8, i8* getelementptr inbounds (%struct.anon.2, %struct.anon.2* @t6, i64 0, i32 1), align 16
  %42 = and i8 %41, 15
  %43 = zext i8 %42 to i32
  %44 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), x86_fp80 noundef %40, i32 noundef %43) #2
  %45 = load i8, i8* getelementptr inbounds ({ i8, i8, i8 }, { i8, i8, i8 }* @t7, i64 0, i32 0), align 1
  %46 = sext i8 %45 to i32
  %47 = load i16, i16* bitcast (i8* getelementptr inbounds ({ i8, i8, i8 }, { i8, i8, i8 }* @t7, i64 0, i32 1) to i16*), align 1
  %48 = and i16 %47, 15
  %49 = zext i16 %48 to i32
  %50 = lshr i16 %47, 4
  %51 = and i16 %50, 7
  %52 = zext i16 %51 to i32
  %53 = lshr i16 %47, 7
  %54 = and i16 %53, 127
  %55 = zext i16 %54 to i32
  %56 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 noundef %46, i32 noundef %49, i32 noundef %52, i32 noundef %55) #2
  %57 = load i8, i8* getelementptr inbounds ({ i8, i8, i8 }, { i8, i8, i8 }* @t7a, i64 0, i32 0), align 1
  %58 = sext i8 %57 to i32
  %59 = load i16, i16* bitcast (i8* getelementptr inbounds ({ i8, i8, i8 }, { i8, i8, i8 }* @t7a, i64 0, i32 1) to i16*), align 1
  %60 = and i16 %59, 15
  %61 = zext i16 %60 to i32
  %62 = lshr i16 %59, 4
  %63 = zext i16 %62 to i32
  %64 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 noundef %58, i32 noundef %61, i32 noundef %63) #2
  %65 = load i8, i8* getelementptr inbounds (%struct.sDescrItem, %struct.sDescrItem* @t8, i64 0, i32 0), align 8
  %66 = sext i8 %65 to i32
  %67 = load i8, i8* getelementptr inbounds (%struct.sDescrItem, %struct.sDescrItem* @t8, i64 0, i32 2), align 8
  %68 = sext i8 %67 to i32
  %69 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 noundef %66, i32 noundef %68) #2
  %70 = load i32, i32* bitcast (i8* getelementptr inbounds ({ i32*, i8, i8, i8, i8 }, { i32*, i8, i8, i8, i8 }* @t9, i64 0, i32 1) to i32*), align 8
  %71 = and i32 %70, 65535
  %72 = ashr i32 %70, 16
  %73 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 noundef %71, i32 noundef %72) #2
  %74 = load i32*, i32** getelementptr inbounds (%struct.t10s, %struct.t10s* @t10, i64 0, i32 2), align 4
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef %75) #2
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
