; ModuleID = './uuencode.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/BitBench/uuencode/uuencode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c" \0Aend\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"begin 640 \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"Usage: uuencode [infile]\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"uuencode.c\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str = private unnamed_addr constant [25 x i8] c"Usage: uuencode [infile]\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @encode_char(i8 noundef signext %0) #0 {
  %2 = and i8 %0, 63
  %narrow = add nuw nsw i8 %2, 32
  %3 = zext i8 %narrow to i32
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @encode_line(i8* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8* nocapture noundef writeonly %3) #1 {
  %5 = trunc i32 %2 to i8
  %6 = call i32 @encode_char(i8 noundef signext %5)
  %7 = trunc i32 %6 to i8
  store i8 %7, i8* %3, align 1
  br label %8

8:                                                ; preds = %132, %4
  %.02 = phi i32 [ 1, %4 ], [ %.3, %132 ]
  %.01 = phi i32 [ %2, %4 ], [ %134, %132 ]
  %.0 = phi i32 [ %1, %4 ], [ %133, %132 ]
  %9 = icmp sgt i32 %.01, 0
  br i1 %9, label %10, label %135

10:                                               ; preds = %8
  %11 = icmp sgt i32 %.01, 2
  br i1 %11, label %12, label %62

12:                                               ; preds = %10
  %13 = sext i32 %.0 to i64
  %14 = getelementptr inbounds i8, i8* %0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = ashr i8 %15, 2
  %17 = call i32 @encode_char(i8 noundef signext %16)
  %18 = trunc i32 %17 to i8
  %19 = add nsw i32 %.02, 1
  %20 = sext i32 %.02 to i64
  %21 = getelementptr inbounds i8, i8* %3, i64 %20
  store i8 %18, i8* %21, align 1
  %22 = sext i32 %.0 to i64
  %23 = getelementptr inbounds i8, i8* %0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = shl i8 %24, 4
  %26 = add nsw i32 %.0, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = ashr i8 %29, 4
  %31 = or i8 %25, %30
  %32 = call i32 @encode_char(i8 noundef signext %31)
  %33 = trunc i32 %32 to i8
  %34 = add nsw i32 %.02, 2
  %35 = sext i32 %19 to i64
  %36 = getelementptr inbounds i8, i8* %3, i64 %35
  store i8 %33, i8* %36, align 1
  %37 = add nsw i32 %.0, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = shl i8 %40, 2
  %42 = add nsw i32 %.0, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = ashr i8 %45, 6
  %47 = or i8 %41, %46
  %48 = call i32 @encode_char(i8 noundef signext %47)
  %49 = trunc i32 %48 to i8
  %50 = add nsw i32 %.02, 3
  %51 = sext i32 %34 to i64
  %52 = getelementptr inbounds i8, i8* %3, i64 %51
  store i8 %49, i8* %52, align 1
  %53 = add nsw i32 %.0, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = call i32 @encode_char(i8 noundef signext %56)
  %58 = trunc i32 %57 to i8
  %59 = add nsw i32 %.02, 4
  %60 = sext i32 %50 to i64
  %61 = getelementptr inbounds i8, i8* %3, i64 %60
  store i8 %58, i8* %61, align 1
  br label %131

62:                                               ; preds = %10
  %63 = icmp eq i32 %.01, 1
  br i1 %63, label %64, label %89

64:                                               ; preds = %62
  %65 = sext i32 %.0 to i64
  %66 = getelementptr inbounds i8, i8* %0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = ashr i8 %67, 2
  %69 = call i32 @encode_char(i8 noundef signext %68)
  %70 = trunc i32 %69 to i8
  %71 = add nsw i32 %.02, 1
  %72 = sext i32 %.02 to i64
  %73 = getelementptr inbounds i8, i8* %3, i64 %72
  store i8 %70, i8* %73, align 1
  %74 = sext i32 %.0 to i64
  %75 = getelementptr inbounds i8, i8* %0, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = shl i8 %76, 4
  %78 = call i32 @encode_char(i8 noundef signext %77)
  %79 = trunc i32 %78 to i8
  %80 = add nsw i32 %.02, 2
  %81 = sext i32 %71 to i64
  %82 = getelementptr inbounds i8, i8* %3, i64 %81
  store i8 %79, i8* %82, align 1
  %83 = add nsw i32 %.02, 3
  %84 = sext i32 %80 to i64
  %85 = getelementptr inbounds i8, i8* %3, i64 %84
  store i8 61, i8* %85, align 1
  %86 = add nsw i32 %.02, 4
  %87 = sext i32 %83 to i64
  %88 = getelementptr inbounds i8, i8* %3, i64 %87
  store i8 61, i8* %88, align 1
  br label %130

89:                                               ; preds = %62
  %90 = icmp eq i32 %.01, 2
  br i1 %90, label %91, label %129

91:                                               ; preds = %89
  %92 = sext i32 %.0 to i64
  %93 = getelementptr inbounds i8, i8* %0, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = ashr i8 %94, 2
  %96 = call i32 @encode_char(i8 noundef signext %95)
  %97 = trunc i32 %96 to i8
  %98 = add nsw i32 %.02, 1
  %99 = sext i32 %.02 to i64
  %100 = getelementptr inbounds i8, i8* %3, i64 %99
  store i8 %97, i8* %100, align 1
  %101 = sext i32 %.0 to i64
  %102 = getelementptr inbounds i8, i8* %0, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = shl i8 %103, 4
  %105 = add nsw i32 %.0, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = ashr i8 %108, 4
  %110 = or i8 %104, %109
  %111 = call i32 @encode_char(i8 noundef signext %110)
  %112 = trunc i32 %111 to i8
  %113 = add nsw i32 %.02, 2
  %114 = sext i32 %98 to i64
  %115 = getelementptr inbounds i8, i8* %3, i64 %114
  store i8 %112, i8* %115, align 1
  %116 = add nsw i32 %.0, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %0, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = shl i8 %119, 2
  %121 = call i32 @encode_char(i8 noundef signext %120)
  %122 = trunc i32 %121 to i8
  %123 = add nsw i32 %.02, 3
  %124 = sext i32 %113 to i64
  %125 = getelementptr inbounds i8, i8* %3, i64 %124
  store i8 %122, i8* %125, align 1
  %126 = add nsw i32 %.02, 4
  %127 = sext i32 %123 to i64
  %128 = getelementptr inbounds i8, i8* %3, i64 %127
  store i8 61, i8* %128, align 1
  br label %129

129:                                              ; preds = %91, %89
  %.1 = phi i32 [ %126, %91 ], [ %.02, %89 ]
  br label %130

130:                                              ; preds = %129, %64
  %.2 = phi i32 [ %86, %64 ], [ %.1, %129 ]
  br label %131

131:                                              ; preds = %130, %12
  %.3 = phi i32 [ %59, %12 ], [ %.2, %130 ]
  br label %132

132:                                              ; preds = %131
  %133 = add nsw i32 %.0, 3
  %134 = add nsw i32 %.01, -3
  br label %8, !llvm.loop !4

135:                                              ; preds = %8
  %136 = add nsw i32 %.02, 1
  %137 = sext i32 %.02 to i64
  %138 = getelementptr inbounds i8, i8* %3, i64 %137
  store i8 10, i8* %138, align 1
  %139 = sext i32 %136 to i64
  %140 = getelementptr inbounds i8, i8* %3, i64 %139
  store i8 0, i8* %140, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @encode(i8* nocapture noundef readonly %0, i32 noundef %1, i8* noundef %2) #2 {
  %4 = alloca [63 x i8], align 16
  br label %5

5:                                                ; preds = %16, %3
  %.01 = phi i8* [ %2, %3 ], [ %20, %16 ]
  %.0 = phi i32 [ 0, %3 ], [ %.1, %16 ]
  %6 = icmp slt i32 %.0, %1
  br i1 %6, label %7, label %21

7:                                                ; preds = %5
  %8 = sub nsw i32 %1, %.0
  %9 = icmp sgt i32 %8, 44
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = getelementptr inbounds [63 x i8], [63 x i8]* %4, i64 0, i64 0
  call void @encode_line(i8* noundef %0, i32 noundef %.0, i32 noundef 45, i8* noundef nonnull %11)
  %12 = add nsw i32 %.0, 45
  br label %16

13:                                               ; preds = %7
  %14 = sub nsw i32 %1, %.0
  %15 = getelementptr inbounds [63 x i8], [63 x i8]* %4, i64 0, i64 0
  call void @encode_line(i8* noundef %0, i32 noundef %.0, i32 noundef %14, i8* noundef nonnull %15)
  br label %16

16:                                               ; preds = %13, %10
  %.1 = phi i32 [ %12, %10 ], [ %1, %13 ]
  %17 = getelementptr inbounds [63 x i8], [63 x i8]* %4, i64 0, i64 0
  %18 = call i8* @strcat(i8* noundef nonnull dereferenceable(1) %.01, i8* noundef nonnull %17) #10
  %19 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %.01) #11
  %20 = getelementptr inbounds i8, i8* %.01, i64 %19
  br label %5, !llvm.loop !6

21:                                               ; preds = %5
  %strlen = call i64 @strlen(i8* nonnull dereferenceable(1) %.01)
  %endptr = getelementptr i8, i8* %.01, i64 %strlen
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %endptr, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 6, i1 false)
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @do_encode(i8* nocapture noundef readonly %0, i8* noundef %1, i32 noundef %2, i8* noundef %3) #2 {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(11) %1, i8* noundef nonnull align 1 dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 11, i1 false) #10
  %5 = call i8* @strcat(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(1) %3) #10
  %strlen = call i64 @strlen(i8* nonnull dereferenceable(1) %1)
  %endptr = getelementptr i8, i8* %1, i64 %strlen
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %endptr, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 3, i1 false)
  %6 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #11
  %7 = getelementptr inbounds i8, i8* %1, i64 %6
  call void @encode(i8* noundef %0, i32 noundef %2, i8* noundef %7)
  %8 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #11
  %9 = trunc i64 %8 to i32
  ret i32 %9
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #5 {
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = call noalias dereferenceable_or_null(1000000) i8* @malloc(i64 noundef 1000000) #10
  %6 = call noalias dereferenceable_or_null(2000000) i8* @malloc(i64 noundef 2000000) #10
  %7 = icmp sgt i32 %0, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8*, i8** %1, i64 1
  %10 = load i8*, i8** %9, align 8
  %11 = call noalias %struct._IO_FILE* @fopen(i8* noundef %10, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
  %12 = icmp eq %struct._IO_FILE* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds i8*, i8** %1, i64 1
  %15 = load i8*, i8** %14, align 8
  call void @perror(i8* noundef %15) #12
  call void @exit(i32 noundef 1) #13
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %8
  %17 = add nsw i32 %0, -1
  br label %20

18:                                               ; preds = %2
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %20

20:                                               ; preds = %18, %16
  %.03 = phi %struct._IO_FILE* [ %11, %16 ], [ %19, %18 ]
  %.01 = phi i32 [ %17, %16 ], [ %0, %18 ]
  %.not = icmp eq i32 %.01, 1
  br i1 %.not, label %22, label %21

21:                                               ; preds = %20
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str, i64 0, i64 0))
  call void @exit(i32 noundef 2) #13
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %20
  %23 = call i64 @read_data(%struct._IO_FILE* noundef %.03, i8* noundef %5)
  %24 = call i32 @gettimeofday(%struct.timeval* noundef nonnull %3, i8* noundef null) #10
  br label %25

25:                                               ; preds = %30, %22
  %.02 = phi i32 [ 0, %22 ], [ %31, %30 ]
  %.0 = phi i32 [ undef, %22 ], [ %29, %30 ]
  %26 = icmp ult i32 %.02, 1000
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = trunc i64 %23 to i32
  %29 = call i32 @do_encode(i8* noundef %5, i8* noundef %6, i32 noundef %28, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27
  %31 = add nuw nsw i32 %.02, 1
  br label %25, !llvm.loop !7

32:                                               ; preds = %25
  %33 = call i32 @gettimeofday(%struct.timeval* noundef nonnull %4, i8* noundef null) #10
  %34 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 noundef %.0) #10
  call void @exit(i32 noundef 0) #13
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %32, %21, %13
  unreachable
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #6

declare dso_local void @perror(i8* noundef) #6

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #7

declare dso_local i32 @printf(i8* noundef, ...) #6

; Function Attrs: noinline nounwind uwtable
define internal i64 @read_data(%struct._IO_FILE* noundef %0, i8* noundef %1) #2 {
  %3 = call i64 @fread(i8* noundef %1, i64 noundef 1, i64 noundef 1000000, %struct._IO_FILE* noundef %0) #10
  ret i64 %3
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval* noundef, i8* noundef) #3

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { cold nounwind }
attributes #13 = { noreturn nounwind }

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
