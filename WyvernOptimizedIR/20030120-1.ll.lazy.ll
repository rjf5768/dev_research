; ModuleID = './20030120-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030120-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i16 @test1(i16 noundef zeroext %0) #0 {
  %2 = icmp ult i16 %0, 256
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = icmp eq i16 %0, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5, %3
  %.0 = phi i16 [ 2, %5 ], [ %0, %3 ]
  br label %7

7:                                                ; preds = %6, %1
  %.1 = phi i16 [ %.0, %6 ], [ %0, %1 ]
  ret i16 %.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @test2(i64 noundef %0) #0 {
  %2 = and i64 %0, 4294901760
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = icmp eq i64 %0, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6, %4
  %.0 = phi i64 [ 2, %6 ], [ %0, %4 ]
  br label %8

8:                                                ; preds = %7, %1
  %.1 = phi i64 [ %.0, %7 ], [ %0, %1 ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test3(i16 noundef zeroext %0) #0 {
  %2 = and i16 %0, 1
  %.not = icmp eq i16 %2, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  br label %7

4:                                                ; preds = %1
  %.not1 = icmp eq i16 %0, 0
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %4
  br label %7

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6, %5, %3
  %.0 = phi i32 [ 1, %3 ], [ 1, %5 ], [ 0, %6 ]
  ret i32 %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call zeroext i16 @test1(i16 noundef zeroext 1)
  %.not = icmp eq i16 %1, 1
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  %4 = call i64 @test2(i64 noundef 1)
  %.not1 = icmp eq i64 %4, 1
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  %7 = call i32 @test3(i16 noundef zeroext 2)
  %.not2 = icmp eq i32 %7, 1
  br i1 %.not2, label %9, label %8

8:                                                ; preds = %6
  call void @abort() #3
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %9, %8, %5, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
