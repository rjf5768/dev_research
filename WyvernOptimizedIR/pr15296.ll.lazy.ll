; ModuleID = './pr15296.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr15296.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s1 = type { %union.u0**, [4 x %union.u0] }
%union.u0 = type { %union.u0* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.main.uv = private unnamed_addr constant [4 x { i64 }] [{ i64 } { i64 111 }, { i64 } { i64 222 }, { i64 } { i64 333 }, { i64 } { i64 444 }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i8* nocapture noundef readnone %0, %struct.s1* nocapture noundef %1, %union.u0* nocapture noundef readnone %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.s1, %struct.s1* %1, i64 0, i32 0
  %8 = load %union.u0**, %union.u0*** %7, align 8
  %9 = getelementptr inbounds %struct.s1, %struct.s1* %1, i64 0, i32 1, i64 0
  br label %10

10:                                               ; preds = %12, %6
  %11 = icmp slt i64 %3, %4
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  br label %10

13:                                               ; preds = %10
  %14 = icmp eq i64 %3, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  br label %25

16:                                               ; preds = %13
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %18, label %17

17:                                               ; preds = %16
  br label %25

18:                                               ; preds = %16
  %19 = load %union.u0*, %union.u0** %8, align 8
  %20 = getelementptr %union.u0, %union.u0* %9, i64 0, i32 0
  store %union.u0* %19, %union.u0** %20, align 8
  %.not1 = icmp eq %union.u0* %19, null
  br i1 %.not1, label %22, label %21

21:                                               ; preds = %18
  call void @g(i8* noundef %0, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %21, %18
  %23 = getelementptr inbounds %union.u0, %union.u0* %19, i64 3
  %24 = bitcast %union.u0* %23 to i64*
  store i64 -1, i64* %24, align 8
  br label %39

25:                                               ; preds = %17, %15
  %.0 = phi i64 [ %3, %15 ], [ %5, %17 ]
  %26 = bitcast %union.u0* %9 to i64*
  store i64 %.0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.s1, %struct.s1* %1, i64 0, i32 1, i64 1, i32 0
  %28 = load %union.u0*, %union.u0** %27, align 8
  %.not2 = icmp eq %union.u0* %28, null
  br i1 %.not2, label %30, label %29

29:                                               ; preds = %25
  call void @g(i8* noundef %0, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr %union.u0, %union.u0* %9, i64 0, i32 0
  %32 = load %union.u0*, %union.u0** %31, align 8
  %33 = icmp eq %union.u0* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  call void @g(i8* noundef %0, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds %struct.s1, %struct.s1* %1, i64 0, i32 1, i64 1, i32 0
  %37 = load %union.u0*, %union.u0** %36, align 8
  %38 = getelementptr inbounds %union.u0, %union.u0* %32, i64 2, i32 0
  store %union.u0* %37, %union.u0** %38, align 8
  br label %39

39:                                               ; preds = %35, %22
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @g(i8* nocapture noundef readnone %0, i8* nocapture noundef readnone %1) #1 {
  call void @abort() #5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca [4 x %union.u0], align 16
  %2 = alloca %struct.s1, align 8
  %3 = bitcast [4 x %union.u0]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %3, i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x { i64 }]* @__const.main.uv to i8*), i64 32, i1 false)
  %4 = bitcast %struct.s1* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %5 = getelementptr inbounds %struct.s1, %struct.s1* %2, i64 0, i32 1
  %6 = bitcast [4 x %union.u0]* %5 to i64*
  store i64 555, i64* %6, align 8
  %7 = getelementptr inbounds %struct.s1, %struct.s1* %2, i64 0, i32 1, i64 2
  %8 = bitcast %union.u0* %7 to i64*
  store i64 999, i64* %8, align 8
  %9 = getelementptr inbounds %struct.s1, %struct.s1* %2, i64 0, i32 1, i64 3
  %10 = bitcast %union.u0* %9 to i64*
  store i64 777, i64* %10, align 8
  %11 = ptrtoint [4 x %union.u0]* %1 to i64
  call void @f(i8* noundef null, %struct.s1* noundef nonnull %2, %union.u0* noundef null, i64 noundef 20000, i64 noundef 10000, i64 noundef %11)
  %12 = getelementptr inbounds %struct.s1, %struct.s1* %2, i64 0, i32 1, i64 0
  %13 = bitcast %union.u0* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = ptrtoint [4 x %union.u0]* %1 to i64
  %.not = icmp eq i64 %14, %15
  br i1 %.not, label %16, label %43

16:                                               ; preds = %0
  %17 = getelementptr inbounds %struct.s1, %struct.s1* %2, i64 0, i32 1, i64 1
  %18 = bitcast %union.u0* %17 to i64*
  %19 = load i64, i64* %18, align 8
  %.not1 = icmp eq i64 %19, 0
  br i1 %.not1, label %20, label %43

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.s1, %struct.s1* %2, i64 0, i32 1, i64 2
  %22 = bitcast %union.u0* %21 to i64*
  %23 = load i64, i64* %22, align 8
  %.not2 = icmp eq i64 %23, 999
  br i1 %.not2, label %24, label %43

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.s1, %struct.s1* %2, i64 0, i32 1, i64 3
  %26 = bitcast %union.u0* %25 to i64*
  %27 = load i64, i64* %26, align 8
  %.not3 = icmp eq i64 %27, 777
  br i1 %.not3, label %28, label %43

28:                                               ; preds = %24
  %29 = bitcast [4 x %union.u0]* %1 to i64*
  %30 = load i64, i64* %29, align 16
  %.not4 = icmp eq i64 %30, 111
  br i1 %.not4, label %31, label %43

31:                                               ; preds = %28
  %32 = getelementptr inbounds [4 x %union.u0], [4 x %union.u0]* %1, i64 0, i64 1
  %33 = bitcast %union.u0* %32 to i64*
  %34 = load i64, i64* %33, align 8
  %.not5 = icmp eq i64 %34, 222
  br i1 %.not5, label %35, label %43

35:                                               ; preds = %31
  %36 = getelementptr inbounds [4 x %union.u0], [4 x %union.u0]* %1, i64 0, i64 2
  %37 = bitcast %union.u0* %36 to i64*
  %38 = load i64, i64* %37, align 16
  %.not6 = icmp eq i64 %38, 0
  br i1 %.not6, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds [4 x %union.u0], [4 x %union.u0]* %1, i64 0, i64 3
  %41 = bitcast %union.u0* %40 to i64*
  %42 = load i64, i64* %41, align 8
  %.not7 = icmp eq i64 %42, 444
  br i1 %.not7, label %44, label %43

43:                                               ; preds = %39, %35, %31, %28, %24, %20, %16, %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

44:                                               ; preds = %39
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %44, %43
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
