; ModuleID = './return-addr.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/return-addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"%p %p %p %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"assertion failed on line %i: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"0 != test_max_2 ()\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"0 != test_max_3 ()\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"0 != test_min_2 ()\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"0 != test_min_3 ()\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"0 != test_min_3_phi (0)\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local nonnull i8* @get_max_2(i8* noundef readnone %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 1
  ret i8* %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local nonnull i8* @get_max_3(i8* noundef readnone %0, i8* noundef readnone %1) #0 {
  %3 = icmp ult i8* %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %.pn = phi i8* [ %1, %4 ], [ %0, %5 ]
  %7 = getelementptr inbounds i8, i8* %.pn, i64 1
  ret i8* %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local nonnull i8* @get_min_2(i8* noundef readnone %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1
  ret i8* %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local nonnull i8* @get_min_3(i8* noundef readnone %0, i8* noundef readnone %1) #0 {
  %3 = icmp ult i8* %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %.pn = phi i8* [ %0, %4 ], [ %1, %5 ]
  %7 = getelementptr inbounds i8, i8* %.pn, i64 -1
  ret i8* %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local nonnull i8* @test_max_2() #0 {
  %1 = alloca i8, align 1
  %2 = call i8* @get_max_2(i8* noundef nonnull %1)
  %3 = icmp ugt i8* %2, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %6

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %5, %4
  %7 = phi i8* [ %2, %4 ], [ %1, %5 ]
  ret i8* %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local nonnull i8* @test_max_3() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = call i8* @get_max_3(i8* noundef nonnull %1, i8* noundef nonnull %2)
  %4 = icmp ult i8* %3, %1
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = icmp ult i8* %1, %2
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %9

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %8, %7
  %10 = phi i8* [ %2, %7 ], [ %1, %8 ]
  br label %12

11:                                               ; preds = %0
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i8* [ %10, %9 ], [ %3, %11 ]
  ret i8* %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local nonnull i8* @test_min_2() #0 {
  %1 = alloca i8, align 1
  %2 = call i8* @get_min_2(i8* noundef nonnull %1)
  %3 = icmp ult i8* %2, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %6

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %5, %4
  %7 = phi i8* [ %2, %4 ], [ %1, %5 ]
  ret i8* %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local nonnull i8* @test_min_3() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = call i8* @get_min_3(i8* noundef nonnull %1, i8* noundef nonnull %2)
  %4 = icmp ugt i8* %3, %1
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = icmp ugt i8* %1, %2
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %9

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %8, %7
  %10 = phi i8* [ %2, %7 ], [ %1, %8 ]
  br label %12

11:                                               ; preds = %0
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i8* [ %10, %9 ], [ %3, %11 ]
  ret i8* %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local nonnull i8* @test_min_3_phi(i32 noundef %0) #1 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = call i8* @get_min_3(i8* noundef nonnull %2, i8* noundef nonnull %3)
  %5 = call i8* @get_min_3(i8* noundef nonnull %2, i8* noundef nonnull %3)
  %6 = icmp ult i8* %4, %2
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %9

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %8, %7
  %10 = phi i8* [ %4, %7 ], [ %2, %8 ]
  %11 = icmp ult i8* %5, %3
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %14

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %13, %12
  %15 = phi i8* [ %5, %12 ], [ %3, %13 ]
  %16 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %4, i8* noundef nonnull %5, i8* noundef nonnull %10, i8* noundef nonnull %15) #4
  %17 = icmp eq i32 %0, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %20

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %18
  %.0 = phi i8* [ %10, %18 ], [ %15, %19 ]
  ret i8* %.0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  br i1 true, label %1, label %2

1:                                                ; preds = %0
  br label %4

2:                                                ; preds = %0
  br label %UnifiedUnreachableBlock

3:                                                ; No predecessors!
  br label %4

4:                                                ; preds = %3, %1
  br i1 true, label %5, label %6

5:                                                ; preds = %4
  br label %8

6:                                                ; preds = %4
  br label %UnifiedUnreachableBlock

7:                                                ; No predecessors!
  br label %8

8:                                                ; preds = %7, %5
  br i1 true, label %9, label %10

9:                                                ; preds = %8
  br label %12

10:                                               ; preds = %8
  br label %UnifiedUnreachableBlock

11:                                               ; No predecessors!
  br label %12

12:                                               ; preds = %11, %9
  br i1 true, label %13, label %14

13:                                               ; preds = %12
  br label %16

14:                                               ; preds = %12
  br label %UnifiedUnreachableBlock

15:                                               ; No predecessors!
  br label %16

16:                                               ; preds = %15, %13
  %17 = call i8* @test_min_3_phi(i32 noundef 0)
  br i1 true, label %18, label %19

18:                                               ; preds = %16
  br label %21

19:                                               ; preds = %16
  br label %UnifiedUnreachableBlock

20:                                               ; No predecessors!
  br label %21

21:                                               ; preds = %20, %18
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %19, %14, %10, %6, %2
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
