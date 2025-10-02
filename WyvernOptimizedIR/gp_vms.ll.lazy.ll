; ModuleID = './gp_vms.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gp_vms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64, i64 }
%struct.anon.0 = type { i16, i8, i8, i8* }

@.str = private unnamed_addr constant [11 x i8] c"1-JAN-1980\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"00:00:00.00\00", align 1
@gp_file_name_list_separator = dso_local global i8 59, align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @gp_init() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @gs_get_clock(i64* nocapture noundef writeonly %0) #1 {
  %2 = alloca %struct.anon, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.anon.0, align 8
  %7 = call i64 (i64*, ...) bitcast (i64 (...)* @"lib$day" to i64 (i64*, ...)*)(i64* noundef nonnull %4) #4
  %8 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %6, i64 0, i32 0
  store i16 10, i16* %8, align 8
  %9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %6, i64 0, i32 3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = call i64 (%struct.anon.0*, %struct.anon*, ...) bitcast (i64 (...)* @"sys$bintim" to i64 (%struct.anon.0*, %struct.anon*, ...)*)(%struct.anon.0* noundef nonnull %6, %struct.anon* noundef nonnull %2) #4
  %11 = call i64 (i64*, %struct.anon*, ...) bitcast (i64 (...)* @"lib$day" to i64 (i64*, %struct.anon*, ...)*)(i64* noundef nonnull %3, %struct.anon* noundef nonnull %2) #4
  %12 = load i64, i64* %4, align 8
  %13 = add nsw i64 %12, 1
  %14 = load i64, i64* %3, align 8
  %15 = sub nsw i64 %13, %14
  store i64 %15, i64* %0, align 8
  %16 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %6, i64 0, i32 0
  store i16 11, i16* %16, align 8
  %17 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %6, i64 0, i32 3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  %18 = call i64 (%struct.anon.0*, %struct.anon*, ...) bitcast (i64 (...)* @"sys$bintim" to i64 (%struct.anon.0*, %struct.anon*, ...)*)(%struct.anon.0* noundef nonnull %6, %struct.anon* noundef nonnull %2) #4
  %19 = call i64 (i64*, %struct.anon*, i64*, ...) bitcast (i64 (...)* @"lib$day" to i64 (i64*, %struct.anon*, i64*, ...)*)(i64* noundef nonnull %3, %struct.anon* noundef nonnull %2, i64* noundef nonnull %5) #4
  %20 = load i64, i64* %5, align 8
  %21 = mul nsw i64 %20, 10
  %22 = getelementptr inbounds i64, i64* %0, i64 1
  store i64 %21, i64* %22, align 8
  ret void
}

declare dso_local i64 @"lib$day"(...) #2

declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i64 @"sys$bintim"(...) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @gp_file_name_is_absolute(i8* nocapture noundef readnone %0, i32 noundef %1) #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @gp_file_name_concat_string(i8* nocapture noundef readonly %0, i32 noundef %1, i8* nocapture noundef readnone %2, i32 noundef %3) #3 {
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %13, label %5

5:                                                ; preds = %4
  %6 = add i32 %1, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds i8, i8* %0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  switch i32 %10, label %12 [
    i32 58, label %11
    i32 93, label %11
  ]

11:                                               ; preds = %5, %5
  br label %14

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %12, %4
  br label %14

14:                                               ; preds = %13, %11
  %.0 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %13 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %11 ]
  ret i8* %.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
