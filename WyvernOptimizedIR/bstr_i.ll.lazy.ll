; ModuleID = './bstr_i.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/automotive-bitcount/bstr_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"01\00", align 1

; Function Attrs: nofree noinline nounwind readonly uwtable
define dso_local i32 @bstr_i(i8* noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %12, %1
  %.01 = phi i32 [ 0, %1 ], [ %18, %12 ]
  %.0 = phi i8* [ %0, %1 ], [ %13, %12 ]
  %.not = icmp eq i8* %.0, null
  br i1 %.not, label %10, label %3

3:                                                ; preds = %2
  %4 = load i8, i8* %.0, align 1
  %.not2 = icmp eq i8 %4, 0
  br i1 %.not2, label %10, label %5

5:                                                ; preds = %3
  %6 = load i8, i8* %.0, align 1
  %7 = zext i8 %6 to i64
  %memchr.bounds = icmp ult i8 %6, 64
  %8 = shl i64 1, %7
  %9 = and i64 %8, 844424930131969
  %memchr.bits = icmp ne i64 %9, 0
  %memchr3 = select i1 %memchr.bounds, i1 %memchr.bits, i1 false
  br label %10

10:                                               ; preds = %5, %3, %2
  %11 = phi i1 [ false, %3 ], [ false, %2 ], [ %memchr3, %5 ]
  br i1 %11, label %12, label %19

12:                                               ; preds = %10
  %13 = getelementptr inbounds i8, i8* %.0, i64 1
  %14 = load i8, i8* %.0, align 1
  %15 = shl i32 %.01, 1
  %16 = and i8 %14, 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %15, %17
  br label %2, !llvm.loop !4

19:                                               ; preds = %10
  ret i32 %.01
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @memchr(i8*, i32, i64) #2

attributes #0 = { nofree noinline nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
