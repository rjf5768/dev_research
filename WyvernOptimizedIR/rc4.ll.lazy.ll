; ModuleID = './rc4.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Trimaran/enc-rc4/rc4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc4_state = type { i32, i32, [256 x i32] }

@.str = private unnamed_addr constant [26 x i8] c"\0A RC4 Validation Tests:\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" Test %d \00", align 1
@data_len = internal global [7 x i8] c"\08\08\08\14\1C\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"passed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@data = internal global <{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ [21 x i8], [9 x i8] }>, [30 x i8], <{ [11 x i8], [19 x i8] }>, [30 x i8] }> <{ <{ [9 x i8], [21 x i8] }> <{ [9 x i8] c"\01#Eg\89\AB\CD\EF\FF", [21 x i8] zeroinitializer }>, <{ [9 x i8], [21 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\FF", [21 x i8] zeroinitializer }>, <{ [9 x i8], [21 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\FF", [21 x i8] zeroinitializer }>, <{ [21 x i8], [9 x i8] }> <{ [21 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF", [9 x i8] zeroinitializer }>, [30 x i8] c"\124Vx\9A\BC\DE\F0\124Vx\9A\BC\DE\F0\124Vx\9A\BC\DE\F0\124Vx\FF\00", <{ [11 x i8], [19 x i8] }> <{ [11 x i8] c"\00\00\00\00\00\00\00\00\00\00\FF", [19 x i8] zeroinitializer }>, [30 x i8] zeroinitializer }>, align 16
@keys = internal global <{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, [29 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, [30 x i8] }> <{ <{ [9 x i8], [21 x i8] }> <{ [9 x i8] c"\08\01#Eg\89\AB\CD\EF", [21 x i8] zeroinitializer }>, <{ [9 x i8], [21 x i8] }> <{ [9 x i8] c"\08\01#Eg\89\AB\CD\EF", [21 x i8] zeroinitializer }>, <{ i8, [29 x i8] }> <{ i8 8, [29 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [25 x i8] }> <{ i8 4, i8 -17, i8 1, i8 35, i8 69, [25 x i8] zeroinitializer }>, <{ [9 x i8], [21 x i8] }> <{ [9 x i8] c"\08\01#Eg\89\AB\CD\EF", [21 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [25 x i8] }> <{ i8 4, i8 -17, i8 1, i8 35, i8 69, [25 x i8] zeroinitializer }>, [30 x i8] zeroinitializer }>, align 16
@output = internal global <{ <{ [8 x i8], [22 x i8] }>, <{ [8 x i8], [22 x i8] }>, <{ [8 x i8], [22 x i8] }>, <{ [20 x i8], [10 x i8] }>, [30 x i8], <{ [10 x i8], [20 x i8] }>, [30 x i8] }> <{ <{ [8 x i8], [22 x i8] }> <{ [8 x i8] c"u\B7\87\80\99\E0\C5\96", [22 x i8] zeroinitializer }>, <{ [8 x i8], [22 x i8] }> <{ [8 x i8] c"t\94\C2\E7\10K\08y", [22 x i8] zeroinitializer }>, <{ [8 x i8], [22 x i8] }> <{ [8 x i8] c"\DE\18\89A\A37]:", [22 x i8] zeroinitializer }>, <{ [20 x i8], [10 x i8] }> <{ [20 x i8] c"\D6\A1A\A7\EC<8\DF\BDaZ\11b\E1\C7\BA6\B6xX", [10 x i8] zeroinitializer }>, [30 x i8] c"f\A0\94\9F\8A\F7\D6\89\1F\7F\83+\A83\C0\0C\89.\BE0\14<\E2\87@\01\1E\CF\00\00", <{ [10 x i8], [20 x i8] }> <{ [10 x i8] c"\D6\A1A\A7\EC<8\DF\BDa", [20 x i8] zeroinitializer }>, [30 x i8] zeroinitializer }>, align 16
@str = private unnamed_addr constant [25 x i8] c"\0A RC4 Validation Tests:\0A\00", align 1
@str.1 = private unnamed_addr constant [8 x i8] c"passed.\00", align 1
@str.2 = private unnamed_addr constant [8 x i8] c"failed!\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @rc4_setup(%struct.rc4_state* nocapture noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %0, i64 0, i32 0
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %0, i64 0, i32 1
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %11, %3
  %.02 = phi i32 [ 0, %3 ], [ %12, %11 ]
  %7 = icmp ult i32 %.02, 256
  br i1 %7, label %8, label %13

8:                                                ; preds = %6
  %9 = zext i32 %.02 to i64
  %10 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %0, i64 0, i32 2, i64 %9
  store i32 %.02, i32* %10, align 4
  br label %11

11:                                               ; preds = %8
  %12 = add nuw nsw i32 %.02, 1
  br label %6, !llvm.loop !4

13:                                               ; preds = %6
  br label %14

14:                                               ; preds = %37, %13
  %.13 = phi i32 [ 0, %13 ], [ %38, %37 ]
  %.01 = phi i32 [ 0, %13 ], [ %26, %37 ]
  %.0 = phi i32 [ 0, %13 ], [ %.1, %37 ]
  %15 = icmp ult i32 %.13, 256
  br i1 %15, label %16, label %39

16:                                               ; preds = %14
  %17 = zext i32 %.13 to i64
  %18 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %0, i64 0, i32 2, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %.01, %19
  %21 = sext i32 %.0 to i64
  %22 = getelementptr inbounds i8, i8* %1, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = trunc i32 %20 to i8
  %25 = add i8 %23, %24
  %26 = zext i8 %25 to i32
  %27 = zext i8 %25 to i64
  %28 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %0, i64 0, i32 2, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = zext i32 %.13 to i64
  %31 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %0, i64 0, i32 2, i64 %30
  store i32 %29, i32* %31, align 4
  %32 = zext i8 %25 to i64
  %33 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %0, i64 0, i32 2, i64 %32
  store i32 %19, i32* %33, align 4
  %34 = add nsw i32 %.0, 1
  %.not = icmp slt i32 %34, %2
  br i1 %.not, label %36, label %35

35:                                               ; preds = %16
  br label %36

36:                                               ; preds = %35, %16
  %.1 = phi i32 [ 0, %35 ], [ %34, %16 ]
  br label %37

37:                                               ; preds = %36
  %38 = add nuw nsw i32 %.13, 1
  br label %14, !llvm.loop !6

39:                                               ; preds = %14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @rc4_crypt(%struct.rc4_state* nocapture noundef %0, i8* nocapture noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %0, i64 0, i32 1
  %7 = load i32, i32* %6, align 4
  br label %8

8:                                                ; preds = %35, %3
  %.02 = phi i32 [ 0, %3 ], [ %36, %35 ]
  %.01 = phi i32 [ %5, %3 ], [ %12, %35 ]
  %.0 = phi i32 [ %7, %3 ], [ %17, %35 ]
  %9 = icmp slt i32 %.02, %2
  br i1 %9, label %10, label %37

10:                                               ; preds = %8
  %11 = add i32 %.01, 1
  %12 = and i32 %11, 255
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %0, i64 0, i32 2, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %.0, %15
  %17 = and i32 %16, 255
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %0, i64 0, i32 2, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = zext i32 %12 to i64
  %22 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %0, i64 0, i32 2, i64 %21
  store i32 %20, i32* %22, align 4
  %23 = zext i32 %17 to i64
  %24 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %0, i64 0, i32 2, i64 %23
  store i32 %15, i32* %24, align 4
  %25 = add nsw i32 %15, %20
  %26 = and i32 %25, 255
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %0, i64 0, i32 2, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = zext i32 %.02 to i64
  %31 = getelementptr inbounds i8, i8* %1, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = trunc i32 %29 to i8
  %34 = xor i8 %32, %33
  store i8 %34, i8* %31, align 1
  br label %35

35:                                               ; preds = %10
  %36 = add nuw nsw i32 %.02, 1
  br label %8, !llvm.loop !7

37:                                               ; preds = %8
  %38 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %0, i64 0, i32 0
  store i32 %.01, i32* %38, align 4
  %39 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %0, i64 0, i32 1
  store i32 %.0, i32* %39, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.rc4_state, align 4
  %4 = alloca [30 x i8], align 16
  %5 = icmp eq i32 %0, 2
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8*, i8** %1, i64 1
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @atoi(i8* noundef %8) #7
  br label %10

10:                                               ; preds = %6, %2
  %.01 = phi i32 [ %9, %6 ], [ 200000, %2 ]
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %49, %10
  %.03 = phi i32 [ 0, %10 ], [ %50, %49 ]
  %12 = icmp ult i32 %.03, 6
  br i1 %12, label %13, label %51

13:                                               ; preds = %11
  %14 = add nuw nsw i32 %.03, 1
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 noundef %14) #8
  br label %16

16:                                               ; preds = %37, %13
  %.02 = phi i32 [ 0, %13 ], [ %38, %37 ]
  %17 = icmp slt i32 %.02, %.01
  br i1 %17, label %18, label %39

18:                                               ; preds = %16
  %19 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %20 = zext i32 %.03 to i64
  %21 = getelementptr inbounds [7 x [30 x i8]], [7 x [30 x i8]]* bitcast (<{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ [21 x i8], [9 x i8] }>, [30 x i8], <{ [11 x i8], [19 x i8] }>, [30 x i8] }>* @data to [7 x [30 x i8]]*), i64 0, i64 %20, i64 0
  %22 = zext i32 %.03 to i64
  %23 = getelementptr inbounds [7 x i8], [7 x i8]* @data_len, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %19, i8* align 2 %21, i64 %25, i1 false)
  %26 = zext i32 %.03 to i64
  %27 = getelementptr inbounds [7 x [30 x i8]], [7 x [30 x i8]]* bitcast (<{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, [29 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, [30 x i8] }>* @keys to [7 x [30 x i8]]*), i64 0, i64 %26, i64 1
  %28 = zext i32 %.03 to i64
  %29 = getelementptr inbounds [7 x [30 x i8]], [7 x [30 x i8]]* bitcast (<{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, [29 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, [30 x i8] }>* @keys to [7 x [30 x i8]]*), i64 0, i64 %28, i64 0
  %30 = load i8, i8* %29, align 2
  %31 = zext i8 %30 to i32
  call void @rc4_setup(%struct.rc4_state* noundef nonnull %3, i8* noundef nonnull %27, i32 noundef %31)
  %32 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %33 = zext i32 %.03 to i64
  %34 = getelementptr inbounds [7 x i8], [7 x i8]* @data_len, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  call void @rc4_crypt(%struct.rc4_state* noundef nonnull %3, i8* noundef nonnull %32, i32 noundef %36)
  br label %37

37:                                               ; preds = %18
  %38 = add nuw nsw i32 %.02, 1
  br label %16, !llvm.loop !8

39:                                               ; preds = %16
  %40 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %41 = zext i32 %.03 to i64
  %42 = getelementptr inbounds [7 x [30 x i8]], [7 x [30 x i8]]* bitcast (<{ <{ [8 x i8], [22 x i8] }>, <{ [8 x i8], [22 x i8] }>, <{ [8 x i8], [22 x i8] }>, <{ [20 x i8], [10 x i8] }>, [30 x i8], <{ [10 x i8], [20 x i8] }>, [30 x i8] }>* @output to [7 x [30 x i8]]*), i64 0, i64 %41, i64 0
  %43 = zext i32 %.03 to i64
  %44 = getelementptr inbounds [7 x i8], [7 x i8]* @data_len, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i64
  %bcmp = call i32 @bcmp(i8* nonnull %40, i8* %42, i64 %46)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %48, label %47

47:                                               ; preds = %39
  %puts5 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @str.2, i64 0, i64 0))
  br label %52

48:                                               ; preds = %39
  %puts4 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %48
  %50 = add nuw nsw i32 %.03, 1
  br label %11, !llvm.loop !9

51:                                               ; preds = %11
  %putchar = call i32 @putchar(i32 10)
  br label %52

52:                                               ; preds = %51, %47
  %.0 = phi i32 [ 1, %47 ], [ 0, %51 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #6

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nofree nounwind }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
