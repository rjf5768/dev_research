; ModuleID = './20001130-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001130-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@which_alternative = internal global i32 3, align 4
@.str = private unnamed_addr constant [10 x i8] c"mov\09%1,%0\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ld\09%1,%0\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"st\09%1,%0\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"foo\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i8* @output_25()
  %2 = load i8, i8* %1, align 1
  %.not = icmp eq i8 %2, 115
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %4, %3
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i8* @output_25() #1 {
  %1 = load i32, i32* @which_alternative, align 4
  switch i32 %1, label %7 [
    i32 0, label %2
    i32 1, label %3
    i32 2, label %5
    i32 3, label %6
  ]

2:                                                ; preds = %0
  br label %7

3:                                                ; preds = %0
  %4 = call i8* @i960_output_ldconst()
  br label %7

5:                                                ; preds = %0
  br label %7

6:                                                ; preds = %0
  br label %7

7:                                                ; preds = %6, %5, %3, %2, %0
  %.0 = phi i8* [ undef, %0 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %6 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %5 ], [ %4, %3 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %2 ]
  ret i8* %.0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i8* @i960_output_ldconst() #3 {
  ret i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
