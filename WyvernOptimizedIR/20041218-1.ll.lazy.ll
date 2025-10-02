; ModuleID = './20041218-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20041218-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.V = type { i32, %struct.U }
%struct.U = type { %struct.S, %struct.S }
%struct.S = type { i32, %struct.T }
%struct.T = type { i32, i32, i32*, i8 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@baz.v = internal global %struct.V zeroinitializer, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i8* @dummy1(i8* nocapture noundef readnone %0) #0 {
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local noalias nonnull i8* @dummy2(i8* nocapture noundef readnone %0, i8* nocapture noundef readnone %1) #1 {
  call void @exit(i32 noundef 0) #7
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define dso_local nonnull %struct.V* @baz(i32 noundef %0) #3 {
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) bitcast (%struct.V* @baz.v to i8*), i8 85, i64 72, i1 false)
  ret %struct.V* @baz.v
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @check(i8* nocapture noundef readnone %0, %struct.S* nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %5, label %17

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 1, i32 0
  %7 = load i32, i32* %6, align 8
  %.not1 = icmp eq i32 %7, 0
  br i1 %.not1, label %8, label %17

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 1, i32 1
  %10 = load i32, i32* %9, align 4
  %.not2 = icmp eq i32 %10, 0
  br i1 %.not2, label %11, label %17

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 1, i32 2
  %13 = load i32*, i32** %12, align 8
  %.not3 = icmp eq i32* %13, null
  br i1 %.not3, label %14, label %17

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 1, i32 3
  %16 = load i8, i8* %15, align 8
  %.not4 = icmp eq i8 %16, 0
  br i1 %.not4, label %18, label %17

17:                                               ; preds = %14, %11, %8, %5, %2
  call void @abort() #7
  unreachable

18:                                               ; preds = %14
  ret i32 1
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32* nocapture noundef readonly %0, i32 noundef %1, i8** nocapture noundef writeonly %2) #5 {
  store i8* null, i8** %2, align 8
  br label %4

4:                                                ; preds = %18, %3
  %.03 = phi i8* [ null, %3 ], [ %15, %18 ]
  %.02 = phi i32 [ 0, %3 ], [ %19, %18 ]
  %5 = icmp ult i32 %.02, %1
  br i1 %5, label %6, label %20

6:                                                ; preds = %4
  %7 = load i32, i32* %0, align 4
  switch i32 %7, label %11 [
    i32 1, label %8
  ]

8:                                                ; preds = %6
  %9 = bitcast i32* %0 to i8*
  %10 = call %struct.V* @bar(i32 noundef %7, i8* noundef nonnull %9)
  br label %12

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %11, %8
  %.01 = phi %struct.V* [ null, %11 ], [ %10, %8 ]
  %.not = icmp eq %struct.V* %.01, null
  br i1 %.not, label %16, label %13

13:                                               ; preds = %12
  %14 = bitcast %struct.V* %.01 to i8*
  %15 = call i8* @dummy2(i8* noundef %.03, i8* noundef nonnull %14)
  br label %17

16:                                               ; preds = %12
  br label %21

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %17
  %19 = add i32 %.02, 1
  br label %4, !llvm.loop !4

20:                                               ; preds = %4
  store i8* %.03, i8** %2, align 8
  br label %21

21:                                               ; preds = %20, %16
  %.0 = phi i32 [ 1, %16 ], [ 0, %20 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.V* @bar(i32 noundef %0, i8* nocapture noundef readnone %1) #5 {
  %3 = alloca %struct.T, align 8
  %4 = bitcast %struct.T* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %5 = call i8* @dummy1(i8* noundef %1)
  %.not = icmp eq i8* %5, null
  br i1 %.not, label %6, label %7

6:                                                ; preds = %2
  br label %25

7:                                                ; preds = %2
  %8 = call %struct.V* @baz(i32 noundef 72)
  %9 = getelementptr inbounds %struct.V, %struct.V* %8, i64 0, i32 0
  store i32 %0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.V, %struct.V* %8, i64 0, i32 1, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.V, %struct.V* %8, i64 0, i32 1, i32 0, i32 1
  %12 = bitcast %struct.T* %11 to i8*
  %13 = bitcast %struct.T* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %12, i8* noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false)
  %14 = getelementptr inbounds %struct.V, %struct.V* %8, i64 0, i32 1, i32 1, i32 0
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.V, %struct.V* %8, i64 0, i32 1, i32 1, i32 1
  %16 = bitcast %struct.T* %15 to i8*
  %17 = bitcast %struct.T* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %16, i8* noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false)
  %18 = getelementptr inbounds %struct.V, %struct.V* %8, i64 0, i32 1, i32 0
  %19 = call i32 @check(i8* noundef nonnull %5, %struct.S* noundef nonnull %18)
  %.not1 = icmp eq i32 %19, 0
  br i1 %.not1, label %23, label %20

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.V, %struct.V* %8, i64 0, i32 1, i32 1
  %22 = call i32 @check(i8* noundef nonnull %5, %struct.S* noundef nonnull %21)
  %.not2 = icmp eq i32 %22, 0
  br i1 %.not2, label %23, label %24

23:                                               ; preds = %20, %7
  br label %25

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %24, %23, %6
  %.0 = phi %struct.V* [ %8, %24 ], [ null, %23 ], [ null, %6 ]
  ret %struct.V* %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i32 1, i32* %1, align 4
  %3 = call i32 @foo(i32* noundef nonnull %1, i32 noundef 1, i8** noundef nonnull %2)
  call void @abort() #7
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
