; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2003-07-09-SignedArgs.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2003-07-09-SignedArgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"getShort():\09%d %d %d %d %d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"getUnknown():\09%d %d %d %d %d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @passShort(i8 noundef signext %0, i16 noundef signext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  store i8 %0, i8* %3, align 1
  store i16 %1, i16* %4, align 2
  %10 = load i16, i16* %4, align 2
  %11 = sext i16 %10 to i32
  %12 = load i8, i8* %3, align 1
  %13 = sext i8 %12 to i32
  %14 = add nsw i32 %11, %13
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %5, align 1
  %16 = load i16, i16* %4, align 2
  %17 = sext i16 %16 to i32
  %18 = load i8, i8* %3, align 1
  %19 = sext i8 %18 to i32
  %20 = sub nsw i32 %17, %19
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %6, align 1
  %22 = load i16, i16* %4, align 2
  %23 = sext i16 %22 to i32
  %24 = load i8, i8* %3, align 1
  %25 = sext i8 %24 to i32
  %26 = mul nsw i32 %23, %25
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %7, align 2
  %28 = load i16, i16* %4, align 2
  %29 = sext i16 %28 to i32
  %30 = load i16, i16* %4, align 2
  %31 = sext i16 %30 to i32
  %32 = mul nsw i32 %29, %31
  %33 = load i8, i8* %3, align 1
  %34 = sext i8 %33 to i32
  %35 = mul nsw i32 %32, %34
  %36 = load i8, i8* %3, align 1
  %37 = sext i8 %36 to i32
  %38 = mul nsw i32 %35, %37
  store i32 %38, i32* %8, align 4
  %39 = load i8, i8* %3, align 1
  %40 = load i8, i8* %5, align 1
  %41 = load i8, i8* %6, align 1
  %42 = load i16, i16* %4, align 2
  %43 = load i16, i16* %7, align 2
  %44 = load i32, i32* %8, align 4
  %45 = call signext i16 @getShort(i8 noundef signext %39, i8 noundef signext %40, i8 noundef signext %41, i16 noundef signext %42, i16 noundef signext %43, i32 noundef %44)
  store i16 %45, i16* %9, align 2
  %46 = load i8, i8* %3, align 1
  %47 = load i8, i8* %5, align 1
  %48 = sext i8 %47 to i32
  %49 = load i8, i8* %6, align 1
  %50 = sext i8 %49 to i32
  %51 = load i16, i16* %4, align 2
  %52 = sext i16 %51 to i32
  %53 = load i16, i16* %7, align 2
  %54 = sext i16 %53 to i32
  %55 = load i16, i16* %9, align 2
  %56 = sext i16 %55 to i32
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i8, ...) @getUnknown(i8 noundef signext %46, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %57)
  ret i32 %58
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @getShort(i8 noundef signext %0, i8 noundef signext %1, i8 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i32 noundef %5) #0 {
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8 %0, i8* %7, align 1
  store i8 %1, i8* %8, align 1
  store i8 %2, i8* %9, align 1
  store i16 %3, i16* %10, align 2
  store i16 %4, i16* %11, align 2
  store i32 %5, i32* %12, align 4
  %19 = load i8, i8* %7, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, -128
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %13, align 4
  %23 = load i8, i8* %8, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 116
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %14, align 4
  %27 = load i8, i8* %9, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 116
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %15, align 4
  %31 = load i16, i16* %10, align 2
  %32 = sext i16 %31 to i32
  %33 = icmp eq i32 %32, -3852
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %16, align 4
  %35 = load i16, i16* %11, align 2
  %36 = sext i16 %35 to i32
  %37 = icmp eq i32 %36, -31232
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %39, -1708916736
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %18, align 4
  %48 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 noundef %42, i32 noundef %43, i32 noundef %44, i32 noundef %45, i32 noundef %46, i32 noundef %47)
  %49 = load i8, i8* %7, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* %8, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8, i8* %9, align 1
  %54 = sext i8 %53 to i32
  %55 = load i16, i16* %10, align 2
  %56 = sext i16 %55 to i32
  %57 = load i16, i16* %11, align 2
  %58 = sext i16 %57 to i32
  %59 = load i32, i32* %12, align 4
  %60 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %59)
  %61 = load i8, i8* %7, align 1
  %62 = sext i8 %61 to i32
  %63 = load i8, i8* %8, align 1
  %64 = sext i8 %63 to i32
  %65 = add nsw i32 %62, %64
  %66 = load i8, i8* %9, align 1
  %67 = sext i8 %66 to i32
  %68 = add nsw i32 %65, %67
  %69 = load i16, i16* %10, align 2
  %70 = sext i16 %69 to i32
  %71 = add nsw i32 %68, %70
  %72 = load i16, i16* %11, align 2
  %73 = sext i16 %72 to i32
  %74 = add nsw i32 %71, %73
  %75 = load i32, i32* %12, align 4
  %76 = trunc i32 %75 to i16
  %77 = sext i16 %76 to i32
  %78 = add nsw i32 %74, %77
  %79 = trunc i32 %78 to i16
  ret i16 %79
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getUnknown(i8 noundef signext %0, ...) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  store i8 %0, i8* %2, align 1
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0
  %11 = bitcast %struct.__va_list_tag* %10 to i8*
  call void @llvm.va_start(i8* %11)
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0
  %13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 16
  %15 = icmp ule i32 %14, 40
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 3
  %18 = load i8*, i8** %17, align 16
  %19 = getelementptr i8, i8* %18, i32 %14
  %20 = bitcast i8* %19 to i32*
  %21 = add i32 %14, 8
  store i32 %21, i32* %13, align 16
  br label %27

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = getelementptr i8, i8* %24, i32 8
  store i8* %26, i8** %23, align 8
  br label %27

27:                                               ; preds = %22, %16
  %28 = phi i32* [ %20, %16 ], [ %25, %22 ]
  %29 = load i32, i32* %28, align 4
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %3, align 1
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0
  %32 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 16
  %34 = icmp ule i32 %33, 40
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %31, i32 0, i32 3
  %37 = load i8*, i8** %36, align 16
  %38 = getelementptr i8, i8* %37, i32 %33
  %39 = bitcast i8* %38 to i32*
  %40 = add i32 %33, 8
  store i32 %40, i32* %32, align 16
  br label %46

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %31, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = getelementptr i8, i8* %43, i32 8
  store i8* %45, i8** %42, align 8
  br label %46

46:                                               ; preds = %41, %35
  %47 = phi i32* [ %39, %35 ], [ %44, %41 ]
  %48 = load i32, i32* %47, align 4
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %4, align 1
  %50 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0
  %51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 16
  %53 = icmp ule i32 %52, 40
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %50, i32 0, i32 3
  %56 = load i8*, i8** %55, align 16
  %57 = getelementptr i8, i8* %56, i32 %52
  %58 = bitcast i8* %57 to i32*
  %59 = add i32 %52, 8
  store i32 %59, i32* %51, align 16
  br label %65

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %50, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = bitcast i8* %62 to i32*
  %64 = getelementptr i8, i8* %62, i32 8
  store i8* %64, i8** %61, align 8
  br label %65

65:                                               ; preds = %60, %54
  %66 = phi i32* [ %58, %54 ], [ %63, %60 ]
  %67 = load i32, i32* %66, align 4
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %5, align 2
  %69 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0
  %70 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 16
  %72 = icmp ule i32 %71, 40
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %69, i32 0, i32 3
  %75 = load i8*, i8** %74, align 16
  %76 = getelementptr i8, i8* %75, i32 %71
  %77 = bitcast i8* %76 to i32*
  %78 = add i32 %71, 8
  store i32 %78, i32* %70, align 16
  br label %84

79:                                               ; preds = %65
  %80 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %69, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = getelementptr i8, i8* %81, i32 8
  store i8* %83, i8** %80, align 8
  br label %84

84:                                               ; preds = %79, %73
  %85 = phi i32* [ %77, %73 ], [ %82, %79 ]
  %86 = load i32, i32* %85, align 4
  %87 = trunc i32 %86 to i16
  store i16 %87, i16* %6, align 2
  %88 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0
  %89 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 16
  %91 = icmp ule i32 %90, 40
  br i1 %91, label %92, label %98

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %88, i32 0, i32 3
  %94 = load i8*, i8** %93, align 16
  %95 = getelementptr i8, i8* %94, i32 %90
  %96 = bitcast i8* %95 to i32*
  %97 = add i32 %90, 8
  store i32 %97, i32* %89, align 16
  br label %103

98:                                               ; preds = %84
  %99 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %88, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = bitcast i8* %100 to i32*
  %102 = getelementptr i8, i8* %100, i32 8
  store i8* %102, i8** %99, align 8
  br label %103

103:                                              ; preds = %98, %92
  %104 = phi i32* [ %96, %92 ], [ %101, %98 ]
  %105 = load i32, i32* %104, align 4
  %106 = trunc i32 %105 to i16
  store i16 %106, i16* %7, align 2
  %107 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0
  %108 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 16
  %110 = icmp ule i32 %109, 40
  br i1 %110, label %111, label %117

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %107, i32 0, i32 3
  %113 = load i8*, i8** %112, align 16
  %114 = getelementptr i8, i8* %113, i32 %109
  %115 = bitcast i8* %114 to i32*
  %116 = add i32 %109, 8
  store i32 %116, i32* %108, align 16
  br label %122

117:                                              ; preds = %103
  %118 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %107, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = bitcast i8* %119 to i32*
  %121 = getelementptr i8, i8* %119, i32 8
  store i8* %121, i8** %118, align 8
  br label %122

122:                                              ; preds = %117, %111
  %123 = phi i32* [ %115, %111 ], [ %120, %117 ]
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %8, align 4
  %125 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0
  %126 = bitcast %struct.__va_list_tag* %125 to i8*
  call void @llvm.va_end(i8* %126)
  %127 = load i8, i8* %2, align 1
  %128 = sext i8 %127 to i32
  %129 = load i8, i8* %3, align 1
  %130 = sext i8 %129 to i32
  %131 = load i8, i8* %4, align 1
  %132 = sext i8 %131 to i32
  %133 = load i16, i16* %5, align 2
  %134 = sext i16 %133 to i32
  %135 = load i16, i16* %6, align 2
  %136 = sext i16 %135 to i32
  %137 = load i16, i16* %7, align 2
  %138 = sext i16 %137 to i32
  %139 = load i32, i32* %8, align 4
  %140 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef %128, i32 noundef %130, i32 noundef %132, i32 noundef %134, i32 noundef %136, i32 noundef %138, i32 noundef %139)
  %141 = load i8, i8* %2, align 1
  %142 = sext i8 %141 to i32
  %143 = load i8, i8* %3, align 1
  %144 = sext i8 %143 to i32
  %145 = add nsw i32 %142, %144
  %146 = load i8, i8* %4, align 1
  %147 = sext i8 %146 to i32
  %148 = add nsw i32 %145, %147
  %149 = load i16, i16* %5, align 2
  %150 = sext i16 %149 to i32
  %151 = add nsw i32 %148, %150
  %152 = load i16, i16* %6, align 2
  %153 = sext i16 %152 to i32
  %154 = add nsw i32 %151, %153
  %155 = load i16, i16* %7, align 2
  %156 = sext i16 %155 to i32
  %157 = add nsw i32 %154, %156
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %157, %158
  ret i32 %159
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @passShort(i8 noundef signext -128, i16 noundef signext -3852)
  %3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %2)
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
