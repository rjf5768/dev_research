; ModuleID = './hash.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Shootout/hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ht_node = type { i8*, i32, %struct.ht_node* }
%struct.ht_ht = type { i32, %struct.ht_node**, i32, %struct.ht_node*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"malloc ht_node\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"strdup newkey\00", align 1
@ht_prime_list = internal global [28 x i64] [i64 53, i64 97, i64 193, i64 389, i64 769, i64 1543, i64 3079, i64 6151, i64 12289, i64 24593, i64 49157, i64 98317, i64 196613, i64 393241, i64 786433, i64 1572869, i64 3145739, i64 6291469, i64 12582917, i64 25165843, i64 50331653, i64 100663319, i64 201326611, i64 402653189, i64 805306457, i64 1610612741, i64 3221225473, i64 4294967291], align 16
@.str.2 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.ht_node* @ht_node_create(i8* noundef %0) #0 {
  %2 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #7
  %3 = bitcast i8* %2 to %struct.ht_node*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @perror(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #8
  call void @exit(i32 noundef 1) #9
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %1
  %7 = call noalias i8* @strdup(i8* noundef %0) #7
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  call void @perror(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #8
  call void @exit(i32 noundef 1) #9
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %3, i64 0, i32 0
  store i8* %7, i8** %11, align 8
  %12 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %3, i64 0, i32 1
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %3, i64 0, i32 2
  store %struct.ht_node* null, %struct.ht_node** %13, align 8
  ret %struct.ht_node* %3

UnifiedUnreachableBlock:                          ; preds = %9, %5
  unreachable
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local void @perror(i8* noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @strdup(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.ht_ht* @ht_create(i32 noundef %0) #0 {
  %2 = call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #7
  %3 = bitcast i8* %2 to %struct.ht_ht*
  br label %4

4:                                                ; preds = %10, %1
  %.0 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [28 x i64], [28 x i64]* @ht_prime_list, i64 0, i64 %5
  %7 = load i64, i64* %6, align 8
  %8 = sext i32 %0 to i64
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

12:                                               ; preds = %4
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds [28 x i64], [28 x i64]* @ht_prime_list, i64 0, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %3, i64 0, i32 0
  store i32 %16, i32* %17, align 8
  %sext = shl i64 %15, 32
  %18 = ashr exact i64 %sext, 32
  %19 = call noalias i8* @calloc(i64 noundef %18, i64 noundef 8) #7
  %20 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %3, i64 0, i32 1
  %21 = bitcast %struct.ht_node*** %20 to i8**
  store i8* %19, i8** %21, align 8
  %22 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %3, i64 0, i32 2
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %3, i64 0, i32 3
  store %struct.ht_node* null, %struct.ht_node** %23, align 8
  %24 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %3, i64 0, i32 4
  store i32 0, i32* %24, align 8
  ret %struct.ht_ht* %3
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @ht_destroy(%struct.ht_ht* noundef %0) #0 {
  br label %2

2:                                                ; preds = %20, %1
  %.0 = phi i32 [ 0, %1 ], [ %21, %20 ]
  %3 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = icmp slt i32 %.0, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %0, i64 0, i32 1
  %8 = load %struct.ht_node**, %struct.ht_node*** %7, align 8
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds %struct.ht_node*, %struct.ht_node** %8, i64 %9
  %11 = load %struct.ht_node*, %struct.ht_node** %10, align 8
  br label %12

12:                                               ; preds = %13, %6
  %.01 = phi %struct.ht_node* [ %11, %6 ], [ %15, %13 ]
  %.not = icmp eq %struct.ht_node* %.01, null
  br i1 %.not, label %19, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %.01, i64 0, i32 2
  %15 = load %struct.ht_node*, %struct.ht_node** %14, align 8
  %16 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %.01, i64 0, i32 0
  %17 = load i8*, i8** %16, align 8
  call void @free(i8* noundef %17) #7
  %18 = bitcast %struct.ht_node* %.01 to i8*
  call void @free(i8* noundef %18) #7
  br label %12, !llvm.loop !6

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19
  %21 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !7

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %0, i64 0, i32 1
  %24 = bitcast %struct.ht_node*** %23 to i8**
  %25 = load i8*, i8** %24, align 8
  call void @free(i8* noundef %25) #7
  %26 = bitcast %struct.ht_ht* %0 to i8*
  call void @free(i8* noundef %26) #7
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = alloca [32 x i8], align 16
  %4 = icmp eq i32 %0, 2
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8*, i8** %1, i64 1
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @atoi(i8* noundef %7) #10
  br label %10

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i32 [ %8, %5 ], [ 3500000, %9 ]
  %12 = call %struct.ht_ht* @ht_create(i32 noundef %11)
  br label %13

13:                                               ; preds = %20, %10
  %.01 = phi i32 [ 1, %10 ], [ %21, %20 ]
  %.not = icmp sgt i32 %.01, %11
  br i1 %.not, label %22, label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %16 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %15, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.01) #7
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %18 = call %struct.ht_node* @ht_find_new(%struct.ht_ht* noundef %12, i8* noundef nonnull %17)
  %19 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %18, i64 0, i32 1
  store i32 %.01, i32* %19, align 8
  br label %20

20:                                               ; preds = %14
  %21 = add nuw nsw i32 %.01, 1
  br label %13, !llvm.loop !8

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %33, %22
  %.12 = phi i32 [ %11, %22 ], [ %34, %33 ]
  %.0 = phi i32 [ 0, %22 ], [ %.1, %33 ]
  %24 = icmp sgt i32 %.12, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %23
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %27 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %26, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 noundef %.12) #7
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %29 = call %struct.ht_node* @ht_find(%struct.ht_ht* noundef %12, i8* noundef nonnull %28)
  %.not3 = icmp eq %struct.ht_node* %29, null
  br i1 %.not3, label %32, label %30

30:                                               ; preds = %25
  %31 = add nsw i32 %.0, 1
  br label %32

32:                                               ; preds = %30, %25
  %.1 = phi i32 [ %31, %30 ], [ %.0, %25 ]
  br label %33

33:                                               ; preds = %32
  %34 = add nsw i32 %.12, -1
  br label %23, !llvm.loop !9

35:                                               ; preds = %23
  call void @ht_destroy(%struct.ht_ht* noundef %12)
  %36 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.0) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.ht_node* @ht_find_new(%struct.ht_ht* nocapture noundef %0, i8* noundef %1) #0 {
  %3 = call i32 @ht_hashcode(%struct.ht_ht* noundef %0, i8* noundef %1)
  %4 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %0, i64 0, i32 1
  %5 = load %struct.ht_node**, %struct.ht_node*** %4, align 8
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds %struct.ht_node*, %struct.ht_node** %5, i64 %6
  br label %8

8:                                                ; preds = %15, %2
  %.02 = phi %struct.ht_node* [ null, %2 ], [ %.01, %15 ]
  %.01.in = phi %struct.ht_node** [ %7, %2 ], [ %16, %15 ]
  %.01 = load %struct.ht_node*, %struct.ht_node** %.01.in, align 8
  %.not = icmp eq %struct.ht_node* %.01, null
  br i1 %.not, label %17, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %.01, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(1) %11) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %30

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %.01, i64 0, i32 2
  br label %8, !llvm.loop !10

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %0, i64 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %.not5 = icmp eq %struct.ht_node* %.02, null
  br i1 %.not5, label %24, label %21

21:                                               ; preds = %17
  %22 = call %struct.ht_node* @ht_node_create(i8* noundef %1)
  %23 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %.02, i64 0, i32 2
  store %struct.ht_node* %22, %struct.ht_node** %23, align 8
  br label %30

24:                                               ; preds = %17
  %25 = call %struct.ht_node* @ht_node_create(i8* noundef %1)
  %26 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %0, i64 0, i32 1
  %27 = load %struct.ht_node**, %struct.ht_node*** %26, align 8
  %28 = sext i32 %3 to i64
  %29 = getelementptr inbounds %struct.ht_node*, %struct.ht_node** %27, i64 %28
  store %struct.ht_node* %25, %struct.ht_node** %29, align 8
  br label %30

30:                                               ; preds = %24, %21, %14
  %.0 = phi %struct.ht_node* [ %.01, %14 ], [ %22, %21 ], [ %25, %24 ]
  ret %struct.ht_node* %.0
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define internal %struct.ht_node* @ht_find(%struct.ht_ht* nocapture noundef readonly %0, i8* noundef readonly %1) #5 {
  %3 = call i32 @ht_hashcode(%struct.ht_ht* noundef %0, i8* noundef %1)
  %4 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %0, i64 0, i32 1
  %5 = load %struct.ht_node**, %struct.ht_node*** %4, align 8
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds %struct.ht_node*, %struct.ht_node** %5, i64 %6
  br label %8

8:                                                ; preds = %15, %2
  %.01.in = phi %struct.ht_node** [ %7, %2 ], [ %16, %15 ]
  %.01 = load %struct.ht_node*, %struct.ht_node** %.01.in, align 8
  %.not = icmp eq %struct.ht_node* %.01, null
  br i1 %.not, label %17, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %.01, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(1) %11) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %.01, i64 0, i32 2
  br label %8, !llvm.loop !11

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17, %14
  %.0 = phi %struct.ht_node* [ %.01, %14 ], [ null, %17 ]
  ret %struct.ht_node* %.0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal i32 @ht_hashcode(%struct.ht_ht* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) #6 {
  br label %3

3:                                                ; preds = %6, %2
  %.01 = phi i8* [ %1, %2 ], [ %11, %6 ]
  %.0 = phi i64 [ 0, %2 ], [ %10, %6 ]
  %4 = load i8, i8* %.01, align 1
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %12, label %5

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5
  %7 = mul i64 %.0, 5
  %8 = load i8, i8* %.01, align 1
  %9 = sext i8 %8 to i64
  %10 = add i64 %7, %9
  %11 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %3, !llvm.loop !12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %0, i64 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = urem i64 %.0, %15
  %17 = trunc i64 %16 to i32
  ret i32 %17
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly willreturn }

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
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
