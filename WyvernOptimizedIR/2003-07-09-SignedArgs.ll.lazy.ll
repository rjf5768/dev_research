; ModuleID = './2003-07-09-SignedArgs.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2003-07-09-SignedArgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"getShort():\09%d %d %d %d %d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"getUnknown():\09%d %d %d %d %d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @passShort(i8 noundef signext %0, i16 noundef signext %1) #0 {
  %3 = trunc i16 %1 to i8
  %4 = add i8 %3, %0
  %5 = trunc i16 %1 to i8
  %6 = sub i8 %5, %0
  %7 = sext i8 %0 to i16
  %8 = mul i16 %7, %1
  %9 = sext i16 %1 to i32
  %10 = sext i16 %1 to i32
  %11 = mul nsw i32 %9, %10
  %12 = sext i8 %0 to i32
  %13 = mul nsw i32 %11, %12
  %14 = sext i8 %0 to i32
  %15 = mul nsw i32 %13, %14
  %16 = call signext i16 @getShort(i8 noundef signext %0, i8 noundef signext %4, i8 noundef signext %6, i16 noundef signext %1, i16 noundef signext %8, i32 noundef %15)
  %17 = sext i8 %4 to i32
  %18 = sext i8 %6 to i32
  %19 = sext i16 %1 to i32
  %20 = sext i16 %8 to i32
  %21 = sext i16 %16 to i32
  %22 = call i32 (i8, ...) @getUnknown(i8 noundef signext %0, i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef %15)
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @getShort(i8 noundef signext %0, i8 noundef signext %1, i8 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i32 noundef %5) #0 {
  %7 = icmp eq i8 %0, -128
  %8 = zext i1 %7 to i32
  %9 = icmp eq i8 %1, 116
  %10 = zext i1 %9 to i32
  %11 = icmp eq i8 %2, 116
  %12 = zext i1 %11 to i32
  %13 = icmp eq i16 %3, -3852
  %14 = zext i1 %13 to i32
  %15 = icmp eq i16 %4, -31232
  %16 = zext i1 %15 to i32
  %17 = icmp eq i32 %5, -1708916736
  %18 = zext i1 %17 to i32
  %19 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18) #3
  %20 = sext i8 %0 to i32
  %21 = sext i8 %1 to i32
  %22 = sext i8 %2 to i32
  %23 = sext i16 %3 to i32
  %24 = sext i16 %4 to i32
  %25 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %5) #3
  %26 = sext i8 %0 to i32
  %27 = sext i8 %1 to i32
  %28 = add nsw i32 %26, %27
  %29 = sext i8 %2 to i32
  %30 = add nsw i32 %28, %29
  %31 = zext i16 %3 to i32
  %32 = add nsw i32 %30, %31
  %33 = zext i16 %4 to i32
  %34 = add nsw i32 %32, %33
  %35 = add i32 %34, %5
  %36 = trunc i32 %35 to i16
  ret i16 %36
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getUnknown(i8 noundef signext %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %5 = load i32, i32* %4, align 16
  %6 = icmp ult i32 %5, 41
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %9 = load i8*, i8** %8, align 16
  %10 = sext i32 %5 to i64
  %11 = getelementptr i8, i8* %9, i64 %10
  %12 = add i32 %5, 8
  store i32 %12, i32* %4, align 16
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr i8, i8* %15, i64 8
  store i8* %16, i8** %14, align 8
  br label %17

17:                                               ; preds = %13, %7
  %.in = phi i8* [ %11, %7 ], [ %15, %13 ]
  %18 = bitcast i8* %.in to i32*
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %21 = load i32, i32* %20, align 16
  %22 = icmp ult i32 %21, 41
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %25 = load i8*, i8** %24, align 16
  %26 = sext i32 %21 to i64
  %27 = getelementptr i8, i8* %25, i64 %26
  %28 = add i32 %21, 8
  store i32 %28, i32* %20, align 16
  br label %33

29:                                               ; preds = %17
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr i8, i8* %31, i64 8
  store i8* %32, i8** %30, align 8
  br label %33

33:                                               ; preds = %29, %23
  %.in1 = phi i8* [ %27, %23 ], [ %31, %29 ]
  %34 = bitcast i8* %.in1 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %37 = load i32, i32* %36, align 16
  %38 = icmp ult i32 %37, 41
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %41 = load i8*, i8** %40, align 16
  %42 = sext i32 %37 to i64
  %43 = getelementptr i8, i8* %41, i64 %42
  %44 = add i32 %37, 8
  store i32 %44, i32* %36, align 16
  br label %49

45:                                               ; preds = %33
  %46 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr i8, i8* %47, i64 8
  store i8* %48, i8** %46, align 8
  br label %49

49:                                               ; preds = %45, %39
  %.in2 = phi i8* [ %43, %39 ], [ %47, %45 ]
  %50 = bitcast i8* %.in2 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %53 = load i32, i32* %52, align 16
  %54 = icmp ult i32 %53, 41
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %57 = load i8*, i8** %56, align 16
  %58 = sext i32 %53 to i64
  %59 = getelementptr i8, i8* %57, i64 %58
  %60 = add i32 %53, 8
  store i32 %60, i32* %52, align 16
  br label %65

61:                                               ; preds = %49
  %62 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr i8, i8* %63, i64 8
  store i8* %64, i8** %62, align 8
  br label %65

65:                                               ; preds = %61, %55
  %.in3 = phi i8* [ %59, %55 ], [ %63, %61 ]
  %66 = bitcast i8* %.in3 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %69 = load i32, i32* %68, align 16
  %70 = icmp ult i32 %69, 41
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %73 = load i8*, i8** %72, align 16
  %74 = sext i32 %69 to i64
  %75 = getelementptr i8, i8* %73, i64 %74
  %76 = add i32 %69, 8
  store i32 %76, i32* %68, align 16
  br label %81

77:                                               ; preds = %65
  %78 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr i8, i8* %79, i64 8
  store i8* %80, i8** %78, align 8
  br label %81

81:                                               ; preds = %77, %71
  %.in4 = phi i8* [ %75, %71 ], [ %79, %77 ]
  %82 = bitcast i8* %.in4 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %85 = load i32, i32* %84, align 16
  %86 = icmp ult i32 %85, 41
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %89 = load i8*, i8** %88, align 16
  %90 = sext i32 %85 to i64
  %91 = getelementptr i8, i8* %89, i64 %90
  %92 = add i32 %85, 8
  store i32 %92, i32* %84, align 16
  br label %97

93:                                               ; preds = %81
  %94 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr i8, i8* %95, i64 8
  store i8* %96, i8** %94, align 8
  br label %97

97:                                               ; preds = %93, %87
  %.in5 = phi i8* [ %91, %87 ], [ %95, %93 ]
  %98 = bitcast i8* %.in5 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %100)
  %101 = sext i8 %0 to i32
  %sext = shl i32 %19, 24
  %102 = ashr exact i32 %sext, 24
  %sext6 = shl i32 %35, 24
  %103 = ashr exact i32 %sext6, 24
  %sext7 = shl i32 %51, 16
  %104 = ashr exact i32 %sext7, 16
  %sext8 = shl i32 %67, 16
  %105 = ashr exact i32 %sext8, 16
  %sext9 = shl i32 %83, 16
  %106 = ashr exact i32 %sext9, 16
  %107 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef %101, i32 noundef %102, i32 noundef %103, i32 noundef %104, i32 noundef %105, i32 noundef %106, i32 noundef %99) #3
  %108 = sext i8 %0 to i32
  %sext10 = shl i32 %19, 24
  %109 = ashr exact i32 %sext10, 24
  %110 = add nsw i32 %109, %108
  %sext11 = shl i32 %35, 24
  %111 = ashr exact i32 %sext11, 24
  %112 = add nsw i32 %110, %111
  %sext12 = shl i32 %51, 16
  %113 = ashr exact i32 %sext12, 16
  %114 = add nsw i32 %112, %113
  %sext13 = shl i32 %67, 16
  %115 = ashr exact i32 %sext13, 16
  %116 = add nsw i32 %114, %115
  %sext14 = shl i32 %83, 16
  %117 = ashr exact i32 %sext14, 16
  %118 = add nsw i32 %116, %117
  %119 = add nsw i32 %118, %99
  ret i32 %119
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @passShort(i8 noundef signext -128, i16 noundef signext -3852)
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %1) #3
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
