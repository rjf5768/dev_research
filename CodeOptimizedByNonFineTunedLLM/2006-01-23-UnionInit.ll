; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2006-01-23-UnionInit.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2006-01-23-UnionInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { [16 x i8] }
%struct.anon = type { i8, i8 }
%union.bt4 = type { %struct.at4 }
%struct.at4 = type { i64 }
%struct.anon.0 = type { i8, i8 }
%union.anon.3 = type { %struct.dvd_send_key }
%struct.dvd_send_key = type { i8, [5 x i8], [2 x i8] }
%struct.s = type { i32, i32, i32 }
%struct.foo2 = type <{ i16, [2 x i8], i64, i16, [2 x i8] }>
%union.ucast = type { %struct.s }
%struct.spinlock_t = type { %struct.emptystruct }
%struct.emptystruct = type {}
%struct.inflate_huft_s = type { %union.anon, i32 }
%union.anon = type { i32 }
%struct.bt1 = type { i16, [1 x i8] }
%struct.one = type { i32, [0 x i32] }
%struct.anon.1 = type { i32, [0 x i32] }
%struct.anon.2 = type { i8*, [0 x i8] }

@init_task_union = dso_local global { %struct.task_struct, [16368 x i8] } { %struct.task_struct { [16 x i8] c"swapper\00\00\00\00\00\00\00\00\00" }, [16368 x i8] undef }, align 8
@fixed_tl = dso_local global [1 x { { %struct.anon, [2 x i8] }, i32 }] [{ { %struct.anon, [2 x i8] }, i32 } { { %struct.anon, [2 x i8] } { %struct.anon { i8 96, i8 7 }, [2 x i8] undef }, i32 256 }], align 4
@bkv4 = dso_local global %union.bt4 { %struct.at4 { i64 61172160 } }, align 8
@cav1 = dso_local global { i8, i8, [1 x i8], i8 } { i8 100, i8 1, [1 x i8] c"\02", i8 undef }, align 4
@V = dso_local global { %struct.anon.0, [2 x i8] } { %struct.anon.0 { i8 1, i8 2 }, [2 x i8] undef }, align 4
@nd = dso_local global { [64 x i8] } { [64 x i8] c"relname\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@hobbit = dso_local global { i32, [3 x i32] } { i32 5, [3 x i32] [i32 1, i32 2, i32 3] }, align 4
@hobbit2 = dso_local global { i32, [3 x i32] } { i32 5, [3 x i32] [i32 1, i32 2, i32 3] }, align 4
@data = dso_local global { i32, [3 x i32] } { i32 0, [3 x i32] [i32 1, i32 2, i32 3] }, align 4
@s = dso_local global { i8*, [19 x i8] } { i8* null, [19 x i8] c"   xyzkasjdlf     \00" }, align 8
@ai = dso_local global %union.anon.3 { %struct.dvd_send_key { i8 3, [5 x i8] c"foo\00\00", [2 x i8] undef } }, align 4
@.str = private unnamed_addr constant [20 x i8] c"returning raw_lock\0A\00", align 1
@__const.ucast_test.y = private unnamed_addr constant %struct.s { i32 1, i32 2, i32 0 }, align 4
@foo2 = dso_local global %struct.foo2 <{ i16 23122, [2 x i8] undef, i64 -12312731, i16 -312, [2 x i8] undef }>, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"PR156: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"PR295/PR568: %d, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"PR574: %d, %d, %d, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"PR162: %d, %d, %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"PR650: %s, %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"PR199: %d, %d, %d, %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"PR431: %d, %d, %d, %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"PR654: %ld, '%s'\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"PR323: %d, '%s'\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"PR627: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"PR684: %d, %d, %d %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"rdar://6828787: %d, %d, %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @foo() #0 {
  ret i8* bitcast ({ i32, [3 x i32] }* @hobbit2 to i8*)
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @one_raw_spinlock() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i32 } @ucast_test() #0 {
  %1 = alloca %union.ucast, align 4
  %2 = alloca %struct.s, align 4
  %3 = alloca { i64, i32 }, align 8
  %4 = bitcast %struct.s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.s* @__const.ucast_test.y to i8*), i64 12, i1 false)
  %5 = bitcast %union.ucast* %1 to %struct.s*
  %6 = bitcast %struct.s* %5 to i8*
  %7 = bitcast %struct.s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 12, i1 false)
  %8 = getelementptr inbounds %union.ucast, %union.ucast* %1, i32 0, i32 0
  %9 = bitcast { i64, i32 }* %3 to i8*
  %10 = bitcast %struct.s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 4 %10, i64 12, i1 false)
  %11 = load { i64, i32 }, { i64, i32 }* %3, align 8
  ret { i64, i32 } %11
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.ucast, align 4
  %3 = alloca %struct.spinlock_t, align 1
  %4 = alloca %struct.spinlock_t, align 1
  %5 = alloca %struct.emptystruct, align 1
  %6 = alloca %union.ucast, align 4
  %7 = alloca { i64, i32 }, align 8
  store i32 0, i32* %1, align 4
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ({ %struct.task_struct, [16368 x i8] }, { %struct.task_struct, [16368 x i8] }* @init_task_union, i32 0, i32 0, i32 0, i64 0))
  %9 = load i32, i32* bitcast ([1 x { { %struct.anon, [2 x i8] }, i32 }]* @fixed_tl to i32*), align 4
  %10 = load i32, i32* getelementptr inbounds ([1 x %struct.inflate_huft_s], [1 x %struct.inflate_huft_s]* bitcast ([1 x { { %struct.anon, [2 x i8] }, i32 }]* @fixed_tl to [1 x %struct.inflate_huft_s]*), i64 0, i64 0, i32 1), align 4
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 noundef %9, i32 noundef %10)
  %12 = load i64, i64* getelementptr inbounds (%union.bt4, %union.bt4* @bkv4, i32 0, i32 0, i32 0), align 8
  %13 = trunc i64 %12 to i32
  %14 = load i16, i16* bitcast ({ i8, i8, [1 x i8], i8 }* @cav1 to i16*), align 4
  %15 = shl i16 %14, 12
  %16 = ashr i16 %15, 12
  %17 = sext i16 %16 to i32
  %18 = load i16, i16* bitcast ({ i8, i8, [1 x i8], i8 }* @cav1 to i16*), align 4
  %19 = shl i16 %18, 6
  %20 = ashr i16 %19, 10
  %21 = sext i16 %20 to i32
  %22 = load i8, i8* getelementptr inbounds (%struct.bt1, %struct.bt1* bitcast ({ i8, i8, [1 x i8], i8 }* @cav1 to %struct.bt1*), i32 0, i32 1, i64 0), align 2
  %23 = zext i8 %22 to i32
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 noundef %13, i32 noundef %17, i32 noundef %21, i32 noundef %23)
  %25 = load i8, i8* getelementptr inbounds ({ %struct.anon.0, [2 x i8] }, { %struct.anon.0, [2 x i8] }* @V, i32 0, i32 0, i32 0), align 4
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* getelementptr inbounds ({ %struct.anon.0, [2 x i8] }, { %struct.anon.0, [2 x i8] }* @V, i32 0, i32 0, i32 1), align 1
  %28 = sext i8 %27 to i32
  %29 = load i32, i32* bitcast ({ %struct.anon.0, [2 x i8] }* @V to i32*), align 4
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 noundef %26, i32 noundef %28, i32 noundef %29)
  %31 = load i32, i32* bitcast ({ [64 x i8] }* @nd to i32*), align 4
  %32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ({ [64 x i8] }, { [64 x i8] }* @nd, i32 0, i32 0, i64 0), i32 noundef %31)
  %33 = load i32, i32* getelementptr inbounds (%struct.one, %struct.one* bitcast ({ i32, [3 x i32] }* @hobbit to %struct.one*), i32 0, i32 0), align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.one, %struct.one* bitcast ({ i32, [3 x i32] }* @hobbit to %struct.one*), i32 0, i32 1, i64 0), align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.one, %struct.one* bitcast ({ i32, [3 x i32] }* @hobbit to %struct.one*), i32 0, i32 1, i64 1), align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.one, %struct.one* bitcast ({ i32, [3 x i32] }* @hobbit to %struct.one*), i32 0, i32 1, i64 2), align 4
  %37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef %36)
  %38 = load i32, i32* getelementptr inbounds (%struct.one, %struct.one* bitcast ({ i32, [3 x i32] }* @hobbit2 to %struct.one*), i32 0, i32 0), align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.one, %struct.one* bitcast ({ i32, [3 x i32] }* @hobbit2 to %struct.one*), i32 0, i32 1, i64 0), align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.one, %struct.one* bitcast ({ i32, [3 x i32] }* @hobbit2 to %struct.one*), i32 0, i32 1, i64 1), align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.one, %struct.one* bitcast ({ i32, [3 x i32] }* @hobbit2 to %struct.one*), i32 0, i32 1, i64 2), align 4
  %42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 noundef %38, i32 noundef %39, i32 noundef %40, i32 noundef %41)
  %43 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* bitcast ({ i32, [3 x i32] }* @data to %struct.anon.1*), i32 0, i32 0), align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* bitcast ({ i32, [3 x i32] }* @data to %struct.anon.1*), i32 0, i32 1, i64 0), align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* bitcast ({ i32, [3 x i32] }* @data to %struct.anon.1*), i32 0, i32 1, i64 1), align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* bitcast ({ i32, [3 x i32] }* @data to %struct.anon.1*), i32 0, i32 1, i64 2), align 4
  %47 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 noundef %43, i32 noundef %44, i32 noundef %45, i32 noundef %46)
  %48 = load i8*, i8** getelementptr inbounds (%struct.anon.2, %struct.anon.2* bitcast ({ i8*, [19 x i8] }* @s to %struct.anon.2*), i32 0, i32 0), align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i64 noundef %49, i8* noundef getelementptr inbounds (%struct.anon.2, %struct.anon.2* bitcast ({ i8*, [19 x i8] }* @s to %struct.anon.2*), i32 0, i32 1, i64 0))
  %51 = load i8, i8* getelementptr inbounds (%union.anon.3, %union.anon.3* @ai, i32 0, i32 0, i32 0), align 4
  %52 = and i8 %51, 3
  %53 = zext i8 %52 to i32
  %54 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 noundef %53, i8* noundef getelementptr inbounds (%union.anon.3, %union.anon.3* @ai, i32 0, i32 0, i32 1, i64 0))
  call void @one_raw_spinlock()
  %55 = bitcast %struct.spinlock_t* %3 to i8*
  %56 = bitcast %struct.spinlock_t* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %55, i8* align 1 %56, i64 0, i1 false)
  %57 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 noundef 0)
  %58 = call { i64, i32 } @ucast_test()
  %59 = getelementptr inbounds %union.ucast, %union.ucast* %6, i32 0, i32 0
  store { i64, i32 } %58, { i64, i32 }* %7, align 8
  %60 = bitcast %struct.s* %59 to i8*
  %61 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 8 %61, i64 12, i1 false)
  %62 = bitcast %union.ucast* %2 to i8*
  %63 = bitcast %union.ucast* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 12, i1 false)
  %64 = bitcast %union.ucast* %2 to %struct.s*
  %65 = getelementptr inbounds %struct.s, %struct.s* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = bitcast %union.ucast* %2 to %struct.s*
  %68 = getelementptr inbounds %struct.s, %struct.s* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = bitcast %union.ucast* %2 to %struct.s*
  %71 = getelementptr inbounds %struct.s, %struct.s* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = bitcast %union.ucast* %2 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 noundef %66, i32 noundef %69, i32 noundef %72, i32 noundef %74)
  %76 = load i16, i16* getelementptr inbounds (%struct.foo2, %struct.foo2* @foo2, i32 0, i32 0), align 4
  %77 = sext i16 %76 to i32
  %78 = load i64, i64* getelementptr inbounds (%struct.foo2, %struct.foo2* @foo2, i32 0, i32 2), align 4
  %79 = trunc i64 %78 to i32
  %80 = load i16, i16* getelementptr inbounds (%struct.foo2, %struct.foo2* @foo2, i32 0, i32 3), align 4
  %81 = sext i16 %80 to i32
  %82 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 noundef %77, i32 noundef %79, i32 noundef %81)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
