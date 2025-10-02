; ModuleID = './follow.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/agrep/follow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i16, %union.anon.0 }
%union.anon.0 = type { %struct.ch_set* }
%struct.ch_set = type { %struct.anon.1*, %struct.ch_set* }
%struct.anon.1 = type { i8, i8 }
%struct.rnode = type { i16, %union.anon, i16, %struct.pnode*, %struct.pnode* }
%union.anon = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.rnode*, %struct.rnode* }
%struct.pnode = type { i32, %struct.pnode* }

@.str = private unnamed_addr constant [4 x i8] c".*(\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"mk_followpos: unknown node type %d\0A\00", align 1
@pos_cnt = external dso_local global i32, align 4
@lpos = dso_local global [0 x %struct.anon*]* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @extend_re(i8* noundef %0) #0 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #5
  %3 = add i64 %2, 5
  %4 = and i64 %3, 4294967295
  %5 = call noalias i8* @malloc(i64 noundef %4) #6
  %6 = bitcast i8* %5 to i32*
  store i32 2632238, i32* %6, align 1
  %7 = call i8* @strcat(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(1) %0) #6
  %strlen = call i64 @strlen(i8* nonnull dereferenceable(1) %7)
  %endptr = getelementptr i8, i8* %7, i64 %strlen
  %8 = bitcast i8* %endptr to i16*
  store i16 41, i16* %8, align 1
  ret i8* %7
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @mk_followpos_1(%struct.rnode* nocapture noundef readonly %0, [0 x %struct.pnode*]* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rnode, %struct.rnode* %0, i64 0, i32 0
  %4 = load i16, i16* %3, align 8
  %5 = sext i16 %4 to i32
  switch i32 %5, label %58 [
    i32 0, label %6
    i32 2, label %7
    i32 5, label %25
    i32 4, label %49
    i32 3, label %52
    i32 1, label %57
  ]

6:                                                ; preds = %2
  br label %63

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rnode, %struct.rnode* %0, i64 0, i32 4
  br label %9

9:                                                ; preds = %10, %7
  %.0.in = phi %struct.pnode** [ %8, %7 ], [ %21, %10 ]
  %.0 = load %struct.pnode*, %struct.pnode** %.0.in, align 8
  %.not1 = icmp eq %struct.pnode* %.0, null
  br i1 %.not1, label %22, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.pnode, %struct.pnode* %.0, i64 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.rnode, %struct.rnode* %0, i64 0, i32 3
  %14 = load %struct.pnode*, %struct.pnode** %13, align 8
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds [0 x %struct.pnode*], [0 x %struct.pnode*]* %1, i64 0, i64 %15
  %17 = load %struct.pnode*, %struct.pnode** %16, align 8
  %18 = call %struct.pnode* @pset_union(%struct.pnode* noundef %14, %struct.pnode* noundef %17) #6
  %19 = sext i32 %12 to i64
  %20 = getelementptr inbounds [0 x %struct.pnode*], [0 x %struct.pnode*]* %1, i64 0, i64 %19
  store %struct.pnode* %18, %struct.pnode** %20, align 8
  %21 = getelementptr inbounds %struct.pnode, %struct.pnode* %.0, i64 0, i32 1
  br label %9, !llvm.loop !4

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.rnode, %struct.rnode* %0, i64 0, i32 1, i32 0, i32 0
  %24 = load %struct.rnode*, %struct.rnode** %23, align 8
  call void @mk_followpos_1(%struct.rnode* noundef %24, [0 x %struct.pnode*]* noundef %1)
  br label %63

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.rnode, %struct.rnode* %0, i64 0, i32 1, i32 0, i32 0
  %27 = load %struct.rnode*, %struct.rnode** %26, align 8
  %28 = getelementptr inbounds %struct.rnode, %struct.rnode* %27, i64 0, i32 4
  br label %29

29:                                               ; preds = %30, %25
  %.1.in = phi %struct.pnode** [ %28, %25 ], [ %43, %30 ]
  %.1 = load %struct.pnode*, %struct.pnode** %.1.in, align 8
  %.not = icmp eq %struct.pnode* %.1, null
  br i1 %.not, label %44, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.pnode, %struct.pnode* %.1, i64 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.rnode, %struct.rnode* %0, i64 0, i32 1, i32 0, i32 1
  %34 = load %struct.rnode*, %struct.rnode** %33, align 8
  %35 = getelementptr inbounds %struct.rnode, %struct.rnode* %34, i64 0, i32 3
  %36 = load %struct.pnode*, %struct.pnode** %35, align 8
  %37 = sext i32 %32 to i64
  %38 = getelementptr inbounds [0 x %struct.pnode*], [0 x %struct.pnode*]* %1, i64 0, i64 %37
  %39 = load %struct.pnode*, %struct.pnode** %38, align 8
  %40 = call %struct.pnode* @pset_union(%struct.pnode* noundef %36, %struct.pnode* noundef %39) #6
  %41 = sext i32 %32 to i64
  %42 = getelementptr inbounds [0 x %struct.pnode*], [0 x %struct.pnode*]* %1, i64 0, i64 %41
  store %struct.pnode* %40, %struct.pnode** %42, align 8
  %43 = getelementptr inbounds %struct.pnode, %struct.pnode* %.1, i64 0, i32 1
  br label %29, !llvm.loop !6

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.rnode, %struct.rnode* %0, i64 0, i32 1, i32 0, i32 0
  %46 = load %struct.rnode*, %struct.rnode** %45, align 8
  call void @mk_followpos_1(%struct.rnode* noundef %46, [0 x %struct.pnode*]* noundef %1)
  %47 = getelementptr inbounds %struct.rnode, %struct.rnode* %0, i64 0, i32 1, i32 0, i32 1
  %48 = load %struct.rnode*, %struct.rnode** %47, align 8
  call void @mk_followpos_1(%struct.rnode* noundef %48, [0 x %struct.pnode*]* noundef %1)
  br label %63

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.rnode, %struct.rnode* %0, i64 0, i32 1, i32 0, i32 0
  %51 = load %struct.rnode*, %struct.rnode** %50, align 8
  call void @mk_followpos_1(%struct.rnode* noundef %51, [0 x %struct.pnode*]* noundef %1)
  br label %63

52:                                               ; preds = %2
  %53 = getelementptr inbounds %struct.rnode, %struct.rnode* %0, i64 0, i32 1, i32 0, i32 0
  %54 = load %struct.rnode*, %struct.rnode** %53, align 8
  call void @mk_followpos_1(%struct.rnode* noundef %54, [0 x %struct.pnode*]* noundef %1)
  %55 = getelementptr inbounds %struct.rnode, %struct.rnode* %0, i64 0, i32 1, i32 0, i32 1
  %56 = load %struct.rnode*, %struct.rnode** %55, align 8
  call void @mk_followpos_1(%struct.rnode* noundef %56, [0 x %struct.pnode*]* noundef %1)
  br label %63

57:                                               ; preds = %2
  br label %63

58:                                               ; preds = %2
  %59 = getelementptr inbounds %struct.rnode, %struct.rnode* %0, i64 0, i32 0
  %60 = load i16, i16* %59, align 8
  %61 = sext i16 %60 to i32
  %62 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef %61) #6
  br label %63

63:                                               ; preds = %58, %57, %52, %49, %44, %22, %6
  ret void
}

declare dso_local %struct.pnode* @pset_union(%struct.pnode* noundef, %struct.pnode* noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local [0 x %struct.pnode*]* @mk_followpos(%struct.rnode* noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq %struct.rnode* %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = icmp slt i32 %1, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4, %2
  br label %23

7:                                                ; preds = %4
  %8 = add nsw i32 %1, 1
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  %11 = call noalias i8* @malloc(i64 noundef %10) #6
  %12 = bitcast i8* %11 to [0 x %struct.pnode*]*
  %13 = icmp eq i8* %11, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %23

15:                                               ; preds = %7
  br label %16

16:                                               ; preds = %20, %15
  %.01 = phi i32 [ 0, %15 ], [ %21, %20 ]
  %.not = icmp sgt i32 %.01, %1
  br i1 %.not, label %22, label %17

17:                                               ; preds = %16
  %18 = zext i32 %.01 to i64
  %19 = getelementptr inbounds [0 x %struct.pnode*], [0 x %struct.pnode*]* %12, i64 0, i64 %18
  store %struct.pnode* null, %struct.pnode** %19, align 8
  br label %20

20:                                               ; preds = %17
  %21 = add nuw nsw i32 %.01, 1
  br label %16, !llvm.loop !7

22:                                               ; preds = %16
  call void @mk_followpos_1(%struct.rnode* noundef nonnull %0, [0 x %struct.pnode*]* noundef nonnull %12)
  br label %23

23:                                               ; preds = %22, %14, %6
  %.0 = phi [0 x %struct.pnode*]* [ null, %6 ], [ null, %14 ], [ %12, %22 ]
  ret [0 x %struct.pnode*]* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @init(i8* noundef %0, [32 x i32]* nocapture noundef writeonly %1) #0 {
  %3 = call i8* @extend_re(i8* noundef %0)
  %4 = call %struct.rnode* @parse(i8* noundef %3) #6
  %5 = icmp eq %struct.rnode* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  br label %33

7:                                                ; preds = %2
  %8 = load i32, i32* @pos_cnt, align 4
  %9 = call [0 x %struct.pnode*]* @mk_followpos(%struct.rnode* noundef nonnull %4, i32 noundef %8)
  %10 = icmp eq [0 x %struct.pnode*]* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %33

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %29, %12
  %.02 = phi i32 [ 0, %12 ], [ %30, %29 ]
  %14 = load i32, i32* @pos_cnt, align 4
  %.not = icmp sgt i32 %.02, %14
  br i1 %.not, label %31, label %15

15:                                               ; preds = %13
  %16 = zext i32 %.02 to i64
  %17 = getelementptr inbounds [0 x %struct.pnode*], [0 x %struct.pnode*]* %9, i64 0, i64 %16
  br label %18

18:                                               ; preds = %25, %15
  %.03.in = phi %struct.pnode** [ %17, %15 ], [ %27, %25 ]
  %.01 = phi i32 [ 0, %15 ], [ %26, %25 ]
  %.03 = load %struct.pnode*, %struct.pnode** %.03.in, align 8
  %.not4 = icmp eq %struct.pnode* %.03, null
  br i1 %.not4, label %28, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.pnode, %struct.pnode* %.03, i64 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = zext i32 %.02 to i64
  %23 = zext i32 %.01 to i64
  %24 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 %22, i64 %23
  store i32 %21, i32* %24, align 4
  br label %25

25:                                               ; preds = %19
  %26 = add nuw nsw i32 %.01, 1
  %27 = getelementptr inbounds %struct.pnode, %struct.pnode* %.03, i64 0, i32 1
  br label %18, !llvm.loop !8

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28
  %30 = add nuw nsw i32 %.02, 1
  br label %13, !llvm.loop !9

31:                                               ; preds = %13
  %32 = load i32, i32* @pos_cnt, align 4
  br label %33

33:                                               ; preds = %31, %11, %6
  %.0 = phi i32 [ -1, %6 ], [ -1, %11 ], [ %32, %31 ]
  ret i32 %.0
}

declare dso_local %struct.rnode* @parse(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }

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
