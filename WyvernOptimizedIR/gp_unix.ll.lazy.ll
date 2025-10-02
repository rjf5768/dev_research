; ModuleID = './gp_unix.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gp_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [34 x i8] c"Ghostscript: gettimeofday failed:\00", align 1
@gp_file_name_list_separator = dso_local global i8 58, align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @gp_init() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @gs_get_clock(i64* nocapture noundef writeonly %0) #1 {
  %2 = alloca %struct.timeval, align 8
  %3 = alloca %struct.timezone, align 4
  %4 = bitcast %struct.timezone* %3 to i8*
  %5 = call i32 @gettimeofday(%struct.timeval* noundef nonnull %2, i8* noundef nonnull %4) #6
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  call void @perror(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0)) #7
  call void @exit(i32 noundef -1) #8
  unreachable

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, -315576000
  %12 = getelementptr inbounds %struct.timezone, %struct.timezone* %3, i64 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 60
  %15 = sext i32 %14 to i64
  %16 = sub nsw i64 %11, %15
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %18 = call %struct.tm* @localtime(i64* noundef nonnull %17) #6
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %18, i64 0, i32 8
  %20 = load i32, i32* %19, align 8
  %.not = icmp eq i32 %20, 0
  br i1 %.not, label %23, label %21

21:                                               ; preds = %8
  %22 = add nsw i64 %16, 3600
  br label %23

23:                                               ; preds = %21, %8
  %.0 = phi i64 [ %22, %21 ], [ %16, %8 ]
  %24 = sdiv i64 %.0, 86400
  store i64 %24, i64* %0, align 8
  %25 = srem i64 %.0, 86400
  %26 = mul nsw i64 %25, 1000
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sdiv i64 %28, 1000
  %30 = add nsw i64 %26, %29
  %31 = getelementptr inbounds i64, i64* %0, i64 1
  store i64 %30, i64* %31, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval* noundef, i8* noundef) #2

declare dso_local void @perror(i8* noundef) #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: nounwind
declare dso_local %struct.tm* @localtime(i64* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @gp_file_name_is_absolute(i8* nocapture noundef readonly %0, i32 noundef %1) #5 {
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %6, label %3

3:                                                ; preds = %2
  %4 = load i8, i8* %0, align 1
  %5 = icmp eq i8 %4, 47
  %phi.cast = zext i1 %5 to i32
  br label %6

6:                                                ; preds = %3, %2
  %7 = phi i32 [ 0, %2 ], [ %phi.cast, %3 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @gp_file_name_concat_string(i8* nocapture noundef readonly %0, i32 noundef %1, i8* nocapture noundef readnone %2, i32 noundef %3) #5 {
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %12, label %5

5:                                                ; preds = %4
  %6 = add i32 %1, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds i8, i8* %0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 47
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  br label %13

12:                                               ; preds = %5, %4
  br label %13

13:                                               ; preds = %12, %11
  %.0 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %11 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %12 ]
  ret i8* %.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
