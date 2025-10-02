; ModuleID = './931102-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931102-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.T = type { i64 }
%struct.anon = type { i16, i16 }

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @f(i32 noundef %0) #0 {
  %2 = alloca %union.T, align 8
  %3 = trunc i32 %0 to i16
  %4 = bitcast %union.T* %2 to %struct.anon*
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %4, i64 0, i32 1
  store i16 %3, i16* %5, align 2
  br label %6

6:                                                ; preds = %12, %1
  %.0 = phi i32 [ 0, %1 ], [ %13, %12 ]
  %7 = bitcast %union.T* %2 to %struct.anon*
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i64 0, i32 1
  %9 = load i16, i16* %8, align 2
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = add nuw nsw i32 %.0, 1
  %14 = bitcast %union.T* %2 to %struct.anon*
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i64 0, i32 1
  %16 = load i16, i16* %15, align 2
  %17 = ashr i16 %16, 1
  store i16 %17, i16* %15, align 2
  br label %6, !llvm.loop !4

18:                                               ; preds = %6
  ret i32 %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @f(i32 noundef 2)
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %3, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
