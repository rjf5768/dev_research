; ModuleID = './ipa-sra-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ipa-sra-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.both = type { %struct.big }
%struct.big = type { [1000000 x i32] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = call dereferenceable_or_null(40) i8* @calloc(i64 noundef 1, i64 noundef 40) #3
  %4 = bitcast i8* %3 to %union.both*
  %5 = icmp sgt i32 %0, 2000
  %6 = zext i1 %5 to i32
  %7 = call i32 @foo(i32 noundef %6, %union.both* noundef %4)
  call void @free(i8* noundef %3)
  ret i32 %7
}

declare dso_local i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @foo(i32 noundef %0, %union.both* nocapture noundef readonly %1) #2 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %5, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %union.both, %union.both* %1, i64 0, i32 0, i32 0, i64 999999
  br label %7

5:                                                ; preds = %2
  %6 = getelementptr %union.both, %union.both* %1, i64 0, i32 0, i32 0, i64 0
  br label %7

7:                                                ; preds = %5, %3
  %.0.in = phi i32* [ %4, %3 ], [ %6, %5 ]
  %.0 = load i32, i32* %.0.in, align 4
  ret i32 %.0
}

declare dso_local void @free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
