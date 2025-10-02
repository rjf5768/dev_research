; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001124-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001124-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i8, i32 }
%struct.inode = type { i64, %struct.super_block* }
%struct.file = type { i64 }

@s = dso_local global %struct.super_block zeroinitializer, align 4
@i = dso_local global %struct.inode zeroinitializer, align 8
@f = dso_local global %struct.file zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 512, i32* getelementptr inbounds (%struct.super_block, %struct.super_block* @s, i32 0, i32 0), align 4
  store i8 9, i8* getelementptr inbounds (%struct.super_block, %struct.super_block* @s, i32 0, i32 1), align 4
  store i64 2048, i64* getelementptr inbounds (%struct.inode, %struct.inode* @i, i32 0, i32 0), align 8
  store %struct.super_block* @s, %struct.super_block** getelementptr inbounds (%struct.inode, %struct.inode* @i, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.file, %struct.file* @f, i32 0, i32 0), align 8
  %6 = call i32 @do_isofs_readdir(%struct.inode* noundef @i, %struct.file* noundef @f)
  call void @abort() #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @do_isofs_readdir(%struct.inode* noundef %0, %struct.file* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 1
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 1
  %21 = load i8, i8* %20, align 4
  store i8 %21, i8* %7, align 1
  store i8* null, i8** %10, align 8
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %104

30:                                               ; preds = %2
  %31 = load %struct.file*, %struct.file** %5, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = and i64 %33, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %9, align 4
  %39 = load %struct.file*, %struct.file** %5, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i8, i8* %7, align 1
  %43 = zext i8 %42 to i32
  %44 = zext i32 %43 to i64
  %45 = ashr i64 %41, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %8, align 4
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  %49 = load %struct.super_block*, %struct.super_block** %48, align 8
  %50 = getelementptr inbounds %struct.super_block, %struct.super_block* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %98, %30
  %53 = load %struct.file*, %struct.file** %5, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.inode*, %struct.inode** %4, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %103

60:                                               ; preds = %52
  %61 = load i8*, i8** %10, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = call i8* @isofs_bread(i32 noundef %64)
  store i8* %65, i8** %10, align 8
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %8, align 4
  %68 = load i8, i8* %7, align 1
  %69 = zext i8 %68 to i32
  %70 = shl i32 %67, %69
  %71 = load i32, i32* %11, align 4
  %72 = add i32 %71, %70
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %66
  %76 = load %struct.file*, %struct.file** %5, align 8
  %77 = getelementptr inbounds %struct.file, %struct.file* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %75, %66
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp uge i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, 1
  %87 = load i32, i32* %9, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %84, %80
  %90 = load i8*, i8** %10, align 8
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load %struct.file*, %struct.file** %5, align 8
  %95 = getelementptr inbounds %struct.file, %struct.file* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %95, align 8
  br label %98

98:                                               ; preds = %93, %89
  %99 = load %struct.file*, %struct.file** %5, align 8
  %100 = getelementptr inbounds %struct.file, %struct.file* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %100, align 8
  br label %52, !llvm.loop !4

103:                                              ; preds = %52
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %29
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @isofs_bread(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @abort() #2
  unreachable

6:                                                ; preds = %1
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
