; ModuleID = './20020406-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020406-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DUPFFstruct = type { i32, i32, i32* }

@.str = private unnamed_addr constant [40 x i8] c"DUPFFexgcd called on degrees %d and %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"calling DUPFFexgcd on degrees %d and %d\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @FFmul(i32 noundef returned %0, i32 noundef %1) #0 {
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @DUPFFdeg(%struct.DUPFFstruct* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %0, i64 0, i32 1
  %3 = load i32, i32* %2, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.DUPFFstruct* @DUPFFnew(i32 noundef %0) #2 {
  %2 = call dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #5
  %3 = bitcast i8* %2 to %struct.DUPFFstruct*
  %4 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %3, i64 0, i32 2
  store i32* null, i32** %4, align 8
  %5 = icmp sgt i32 %0, -1
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = add nsw i32 %0, 1
  %8 = sext i32 %7 to i64
  %9 = call i8* @calloc(i64 noundef %8, i64 noundef 4) #5
  %10 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %3, i64 0, i32 2
  %11 = bitcast i32** %10 to i8**
  store i8* %9, i8** %11, align 8
  br label %12

12:                                               ; preds = %6, %1
  %13 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %3, i64 0, i32 0
  store i32 %0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %3, i64 0, i32 1
  store i32 -1, i32* %14, align 4
  ret %struct.DUPFFstruct* %3
}

declare dso_local i8* @malloc(i64 noundef) #3

declare dso_local i8* @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @DUPFFfree(%struct.DUPFFstruct* nocapture noundef %0) #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @DUPFFswap(%struct.DUPFFstruct* nocapture noundef %0, %struct.DUPFFstruct* nocapture noundef %1) #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.DUPFFstruct* @DUPFFcopy(%struct.DUPFFstruct* noundef readnone returned %0) #0 {
  ret %struct.DUPFFstruct* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @DUPFFshift_add(%struct.DUPFFstruct* nocapture noundef %0, %struct.DUPFFstruct* nocapture noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.DUPFFstruct* @DUPFFexgcd(%struct.DUPFFstruct** nocapture noundef writeonly %0, %struct.DUPFFstruct** nocapture noundef writeonly %1, %struct.DUPFFstruct* noundef %2, %struct.DUPFFstruct* noundef %3) #2 {
  %5 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %2)
  %6 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %3)
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 noundef %5, i32 noundef %6) #5
  %8 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %2)
  %9 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %3)
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = call %struct.DUPFFstruct* @DUPFFexgcd(%struct.DUPFFstruct** noundef %1, %struct.DUPFFstruct** noundef %0, %struct.DUPFFstruct* noundef %3, %struct.DUPFFstruct* noundef %2)
  br label %57

13:                                               ; preds = %4
  %14 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %2)
  %.not = icmp eq i32 %14, 2
  br i1 %.not, label %15, label %17

15:                                               ; preds = %13
  %16 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %3)
  %.not3 = icmp eq i32 %16, 1
  br i1 %.not3, label %18, label %17

17:                                               ; preds = %15, %13
  call void @abort() #6
  unreachable

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %2, i64 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %57

24:                                               ; preds = %18
  %25 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %2)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %27, %24
  %.02 = phi i32 [ 0, %27 ], [ %25, %24 ]
  %29 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %3)
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %31, %28
  %.01 = phi i32 [ 0, %31 ], [ %29, %28 ]
  %33 = call %struct.DUPFFstruct* @DUPFFnew(i32 noundef %.01)
  %34 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %33, i64 0, i32 2
  %35 = load i32*, i32** %34, align 8
  store i32 1, i32* %35, align 4
  %36 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %33, i64 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = call %struct.DUPFFstruct* @DUPFFnew(i32 noundef %.02)
  %38 = call %struct.DUPFFstruct* @DUPFFnew(i32 noundef %.01)
  %39 = call %struct.DUPFFstruct* @DUPFFnew(i32 noundef %.02)
  %40 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %39, i64 0, i32 2
  %41 = load i32*, i32** %40, align 8
  store i32 1, i32* %41, align 4
  %42 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %39, i64 0, i32 1
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %51, %32
  %44 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %3)
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %3)
  br label %48

48:                                               ; preds = %50, %46
  %49 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %2)
  %.not4 = icmp slt i32 %49, %47
  br i1 %.not4, label %51, label %50

50:                                               ; preds = %48
  br label %48, !llvm.loop !4

51:                                               ; preds = %48
  br label %43, !llvm.loop !6

52:                                               ; preds = %43
  %53 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %3)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %55, %52
  store %struct.DUPFFstruct* %33, %struct.DUPFFstruct** %0, align 8
  store %struct.DUPFFstruct* %37, %struct.DUPFFstruct** %1, align 8
  br label %57

57:                                               ; preds = %56, %23, %11
  %.0 = phi %struct.DUPFFstruct* [ %12, %11 ], [ %2, %23 ], [ %2, %56 ]
  ret %struct.DUPFFstruct* %.0
}

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noreturn
declare dso_local void @abort() #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca %struct.DUPFFstruct*, align 8
  %2 = alloca %struct.DUPFFstruct*, align 8
  %3 = call %struct.DUPFFstruct* @DUPFFnew(i32 noundef 1)
  %4 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %3, i64 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 1
  store i32 1, i32* %6, align 4
  %7 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %3, i64 0, i32 1
  store i32 1, i32* %7, align 4
  %8 = call %struct.DUPFFstruct* @DUPFFnew(i32 noundef 2)
  %9 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %8, i64 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 2
  store i32 1, i32* %11, align 4
  %12 = getelementptr inbounds %struct.DUPFFstruct, %struct.DUPFFstruct* %8, i64 0, i32 1
  store i32 2, i32* %12, align 4
  %13 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %3)
  %14 = call i32 @DUPFFdeg(%struct.DUPFFstruct* noundef %8)
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 noundef %13, i32 noundef %14) #5
  %16 = call %struct.DUPFFstruct* @DUPFFexgcd(%struct.DUPFFstruct** noundef nonnull %1, %struct.DUPFFstruct** noundef nonnull %2, %struct.DUPFFstruct* noundef %3, %struct.DUPFFstruct* noundef %8)
  ret i32 0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
