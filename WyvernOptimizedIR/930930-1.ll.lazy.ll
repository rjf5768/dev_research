; ModuleID = './930930-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930930-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mem = dso_local global [100 x i64] zeroinitializer, align 16
@wm_TR = dso_local global i64* null, align 8
@wm_HB = dso_local global i64* null, align 8
@wm_SPB = dso_local global i64* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i64* noundef writeonly %0, i64* noundef readnone %1, i64* noundef readnone %2, i64* noundef readonly %3, i64* noundef readnone %4) #0 {
  br label %6

6:                                                ; preds = %19, %5
  %.01 = phi i64* [ %0, %5 ], [ %.1, %19 ]
  %.0 = phi i64* [ %3, %5 ], [ %20, %19 ]
  %7 = icmp ult i64* %.0, %4
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %21

9:                                                ; preds = %6
  %10 = load i64, i64* %.0, align 8
  %11 = inttoptr i64 %10 to i64*
  %12 = icmp ult i64* %11, %2
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load i64, i64* %.0, align 8
  %15 = inttoptr i64 %14 to i64*
  %.not = icmp ult i64* %15, %1
  br i1 %.not, label %19, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* %.0, align 8
  %18 = getelementptr inbounds i64, i64* %.01, i64 -1
  store i64 %17, i64* %18, align 8
  br label %19

19:                                               ; preds = %16, %13, %9
  %.1 = phi i64* [ %18, %16 ], [ %.01, %13 ], [ %.01, %9 ]
  %20 = getelementptr inbounds i64, i64* %.0, i64 -1
  br label %6

21:                                               ; preds = %8
  %.not2 = icmp eq i64* %.01, %0
  br i1 %.not2, label %23, label %22

22:                                               ; preds = %21
  call void @abort() #3
  unreachable

23:                                               ; preds = %21
  ret i32 undef
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  store i64 ptrtoint ([100 x i64]* @mem to i64), i64* getelementptr inbounds ([100 x i64], [100 x i64]* @mem, i64 0, i64 99), align 8
  %1 = call i32 @f(i64* noundef getelementptr inbounds ([100 x i64], [100 x i64]* @mem, i64 1, i64 0), i64* noundef getelementptr inbounds ([100 x i64], [100 x i64]* @mem, i64 0, i64 6), i64* noundef getelementptr inbounds ([100 x i64], [100 x i64]* @mem, i64 0, i64 8), i64* noundef getelementptr inbounds ([100 x i64], [100 x i64]* @mem, i64 0, i64 99), i64* noundef getelementptr inbounds ([100 x i64], [100 x i64]* @mem, i64 0, i64 99))
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
