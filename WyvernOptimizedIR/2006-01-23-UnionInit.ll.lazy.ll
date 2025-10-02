; ModuleID = './2006-01-23-UnionInit.ll'
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
@__const.ucast_test.y = private unnamed_addr constant %struct.s { i32 1, i32 2, i32 0 }, align 8
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
@str = private unnamed_addr constant [19 x i8] c"returning raw_lock\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i8* @foo() #0 {
  ret i8* bitcast ({ i32, [3 x i32] }* @hobbit2 to i8*)
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @one_raw_spinlock() #1 {
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local { i64, i32 } @ucast_test() #3 {
  %1 = alloca { i64, i32 }, align 8
  %2 = bitcast { i64, i32 }* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %2, i8* noundef nonnull align 8 dereferenceable(12) bitcast (%struct.s* @__const.ucast_test.y to i8*), i64 12, i1 false)
  %3 = load { i64, i32 }, { i64, i32 }* %1, align 8
  ret { i64, i32 } %3
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %union.ucast, align 4
  %2 = alloca %union.ucast, align 4
  %3 = alloca { i64, i32 }, align 8
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ({ %struct.task_struct, [16368 x i8] }, { %struct.task_struct, [16368 x i8] }* @init_task_union, i64 0, i32 0, i32 0, i64 0)) #6
  %5 = load i32, i32* bitcast ([1 x { { %struct.anon, [2 x i8] }, i32 }]* @fixed_tl to i32*), align 4
  %6 = load i32, i32* getelementptr inbounds ([1 x { { %struct.anon, [2 x i8] }, i32 }], [1 x { { %struct.anon, [2 x i8] }, i32 }]* @fixed_tl, i64 0, i64 0, i32 1), align 4
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 noundef %5, i32 noundef %6) #6
  %8 = load i64, i64* getelementptr inbounds (%union.bt4, %union.bt4* @bkv4, i64 0, i32 0, i32 0), align 8
  %9 = trunc i64 %8 to i32
  %10 = load i16, i16* bitcast ({ i8, i8, [1 x i8], i8 }* @cav1 to i16*), align 4
  %11 = shl i16 %10, 12
  %12 = ashr exact i16 %11, 12
  %13 = sext i16 %12 to i32
  %14 = shl i16 %10, 6
  %15 = ashr i16 %14, 10
  %16 = sext i16 %15 to i32
  %17 = load i8, i8* getelementptr inbounds ({ i8, i8, [1 x i8], i8 }, { i8, i8, [1 x i8], i8 }* @cav1, i64 0, i32 2, i64 0), align 2
  %18 = zext i8 %17 to i32
  %19 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 noundef %9, i32 noundef %13, i32 noundef %16, i32 noundef %18) #6
  %20 = load i8, i8* getelementptr inbounds ({ %struct.anon.0, [2 x i8] }, { %struct.anon.0, [2 x i8] }* @V, i64 0, i32 0, i32 0), align 4
  %21 = sext i8 %20 to i32
  %22 = load i8, i8* getelementptr inbounds ({ %struct.anon.0, [2 x i8] }, { %struct.anon.0, [2 x i8] }* @V, i64 0, i32 0, i32 1), align 1
  %23 = sext i8 %22 to i32
  %24 = load i32, i32* bitcast ({ %struct.anon.0, [2 x i8] }* @V to i32*), align 4
  %25 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 noundef %21, i32 noundef %23, i32 noundef %24) #6
  %26 = load i32, i32* bitcast ({ [64 x i8] }* @nd to i32*), align 4
  %27 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ({ [64 x i8] }, { [64 x i8] }* @nd, i64 0, i32 0, i64 0), i32 noundef %26) #6
  %28 = load i32, i32* getelementptr inbounds ({ i32, [3 x i32] }, { i32, [3 x i32] }* @hobbit, i64 0, i32 0), align 4
  %29 = load i32, i32* getelementptr inbounds ({ i32, [3 x i32] }, { i32, [3 x i32] }* @hobbit, i64 0, i32 1, i64 0), align 4
  %30 = load i32, i32* getelementptr inbounds ({ i32, [3 x i32] }, { i32, [3 x i32] }* @hobbit, i64 0, i32 1, i64 1), align 4
  %31 = load i32, i32* getelementptr inbounds ({ i32, [3 x i32] }, { i32, [3 x i32] }* @hobbit, i64 0, i32 1, i64 2), align 4
  %32 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 noundef %28, i32 noundef %29, i32 noundef %30, i32 noundef %31) #6
  %33 = load i32, i32* getelementptr inbounds ({ i32, [3 x i32] }, { i32, [3 x i32] }* @hobbit2, i64 0, i32 0), align 4
  %34 = load i32, i32* getelementptr inbounds ({ i32, [3 x i32] }, { i32, [3 x i32] }* @hobbit2, i64 0, i32 1, i64 0), align 4
  %35 = load i32, i32* getelementptr inbounds ({ i32, [3 x i32] }, { i32, [3 x i32] }* @hobbit2, i64 0, i32 1, i64 1), align 4
  %36 = load i32, i32* getelementptr inbounds ({ i32, [3 x i32] }, { i32, [3 x i32] }* @hobbit2, i64 0, i32 1, i64 2), align 4
  %37 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef %36) #6
  %38 = load i32, i32* getelementptr inbounds ({ i32, [3 x i32] }, { i32, [3 x i32] }* @data, i64 0, i32 0), align 4
  %39 = load i32, i32* getelementptr inbounds ({ i32, [3 x i32] }, { i32, [3 x i32] }* @data, i64 0, i32 1, i64 0), align 4
  %40 = load i32, i32* getelementptr inbounds ({ i32, [3 x i32] }, { i32, [3 x i32] }* @data, i64 0, i32 1, i64 1), align 4
  %41 = load i32, i32* getelementptr inbounds ({ i32, [3 x i32] }, { i32, [3 x i32] }* @data, i64 0, i32 1, i64 2), align 4
  %42 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 noundef %38, i32 noundef %39, i32 noundef %40, i32 noundef %41) #6
  %43 = load i8*, i8** getelementptr inbounds ({ i8*, [19 x i8] }, { i8*, [19 x i8] }* @s, i64 0, i32 0), align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i64 noundef %44, i8* noundef getelementptr inbounds ({ i8*, [19 x i8] }, { i8*, [19 x i8] }* @s, i64 0, i32 1, i64 0)) #6
  %46 = load i8, i8* getelementptr inbounds (%union.anon.3, %union.anon.3* @ai, i64 0, i32 0, i32 0), align 4
  %47 = and i8 %46, 3
  %48 = zext i8 %47 to i32
  %49 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 noundef %48, i8* noundef getelementptr inbounds (%union.anon.3, %union.anon.3* @ai, i64 0, i32 0, i32 1, i64 0)) #6
  call void @one_raw_spinlock()
  %50 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 noundef 0) #6
  %51 = call { i64, i32 } @ucast_test()
  store { i64, i32 } %51, { i64, i32 }* %3, align 8
  %52 = bitcast %union.ucast* %2 to i8*
  %53 = bitcast { i64, i32 }* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %52, i8* noundef nonnull align 8 dereferenceable(12) %53, i64 12, i1 false)
  %54 = bitcast %union.ucast* %1 to i8*
  %55 = bitcast %union.ucast* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %54, i8* noundef nonnull align 4 dereferenceable(12) %55, i64 12, i1 false)
  %56 = getelementptr inbounds %union.ucast, %union.ucast* %1, i64 0, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %union.ucast, %union.ucast* %1, i64 0, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %union.ucast, %union.ucast* %1, i64 0, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %57) #6
  %63 = load i16, i16* getelementptr inbounds (%struct.foo2, %struct.foo2* @foo2, i64 0, i32 0), align 4
  %64 = sext i16 %63 to i32
  %65 = load i64, i64* getelementptr inbounds (%struct.foo2, %struct.foo2* @foo2, i64 0, i32 2), align 4
  %66 = trunc i64 %65 to i32
  %67 = load i16, i16* getelementptr inbounds (%struct.foo2, %struct.foo2* @foo2, i64 0, i32 3), align 4
  %68 = sext i16 %67 to i32
  %69 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 noundef %64, i32 noundef %66, i32 noundef %68) #6
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
