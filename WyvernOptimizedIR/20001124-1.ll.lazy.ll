; ModuleID = './20001124-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001124-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i8, i32 }
%struct.inode = type { i64, %struct.super_block* }
%struct.file = type { i64 }

@s = dso_local global %struct.super_block zeroinitializer, align 4
@i = dso_local global %struct.inode zeroinitializer, align 8
@f = dso_local global %struct.file zeroinitializer, align 8

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  store i32 512, i32* getelementptr inbounds (%struct.super_block, %struct.super_block* @s, i64 0, i32 0), align 4
  store i8 9, i8* getelementptr inbounds (%struct.super_block, %struct.super_block* @s, i64 0, i32 1), align 4
  store i64 2048, i64* getelementptr inbounds (%struct.inode, %struct.inode* @i, i64 0, i32 0), align 8
  store %struct.super_block* @s, %struct.super_block** getelementptr inbounds (%struct.inode, %struct.inode* @i, i64 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.file, %struct.file* @f, i64 0, i32 0), align 8
  %3 = call i32 @do_isofs_readdir(%struct.inode* noundef nonnull @i, %struct.file* noundef nonnull @f)
  call void @abort() #3
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @do_isofs_readdir(%struct.inode* nocapture noundef readonly %0, %struct.file* nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 1
  %4 = load %struct.super_block*, %struct.super_block** %3, align 8
  %5 = getelementptr inbounds %struct.super_block, %struct.super_block* %4, i64 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds %struct.super_block, %struct.super_block* %4, i64 0, i32 1
  %8 = load i8, i8* %7, align 4
  %9 = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 0
  %12 = load i64, i64* %11, align 8
  %.not = icmp slt i64 %10, %12
  br i1 %.not, label %14, label %13

13:                                               ; preds = %2
  br label %60

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i32 %6, -1
  %18 = trunc i64 %16 to i32
  %19 = and i32 %17, %18
  %20 = zext i8 %8 to i64
  %21 = ashr i64 %16, %20
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 1
  %24 = load %struct.super_block*, %struct.super_block** %23, align 8
  %25 = getelementptr inbounds %struct.super_block, %struct.super_block* %24, i64 0, i32 2
  %26 = load i32, i32* %25, align 4
  br label %27

27:                                               ; preds = %55, %14
  %.03 = phi i32 [ %19, %14 ], [ %.14, %55 ]
  %.02 = phi i8* [ null, %14 ], [ %.1, %55 ]
  %.01 = phi i32 [ %26, %14 ], [ %39, %55 ]
  %28 = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %27
  %.not5 = icmp eq i8* %.02, null
  br i1 %.not5, label %34, label %36

34:                                               ; preds = %33
  %35 = call i8* @isofs_bread(i32 noundef %22)
  br label %36

36:                                               ; preds = %34, %33
  %.1 = phi i8* [ %.02, %33 ], [ %35, %34 ]
  %37 = zext i8 %8 to i32
  %38 = shl i32 %22, %37
  %39 = add i32 %.01, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %41, %36
  %.not6 = icmp ult i32 %.03, %6
  br i1 %.not6, label %49, label %46

46:                                               ; preds = %45
  %47 = add nsw i32 %6, -1
  %48 = and i32 %.03, %47
  br label %49

49:                                               ; preds = %46, %45
  %.14 = phi i32 [ %48, %46 ], [ %.03, %45 ]
  %50 = load i8, i8* %.1, align 1
  %.not7 = icmp eq i8 %50, 0
  br i1 %.not7, label %55, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %51, %49
  %56 = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  br label %27, !llvm.loop !4

59:                                               ; preds = %27
  br label %60

60:                                               ; preds = %59, %13
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline noreturn nounwind uwtable
define internal noalias nonnull i8* @isofs_bread(i32 noundef %0) #0 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  call void @abort() #3
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %1
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %3, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
