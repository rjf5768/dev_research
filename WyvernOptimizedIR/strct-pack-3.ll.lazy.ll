; ModuleID = './strct-pack-3.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strct-pack-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type <{ i16, [2 x i32] }>

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @f(%struct.A* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.A, %struct.A* %0, i64 0, i32 1, i64 1
  %3 = load i32, i32* %2, align 2
  %.tr = trunc i32 %3 to i16
  %4 = shl i16 %.tr, 1
  br label %5

5:                                                ; preds = %8, %1
  %.01 = phi i16 [ %4, %1 ], [ %13, %8 ]
  %.0 = phi i16 [ 0, %1 ], [ %14, %8 ]
  %6 = icmp slt i16 %.0, 2
  br i1 %6, label %7, label %15

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %7
  %9 = sext i16 %.0 to i64
  %10 = getelementptr inbounds %struct.A, %struct.A* %0, i64 0, i32 1, i64 %9
  %11 = load i32, i32* %10, align 2
  %12 = trunc i32 %11 to i16
  %13 = add i16 %.01, %12
  %14 = add i16 %.0, 1
  br label %5, !llvm.loop !4

15:                                               ; preds = %5
  %16 = sext i16 %.01 to i32
  ret i32 %16
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %struct.A, align 2
  %2 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 0
  store i32 100, i32* %2, align 2
  %3 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1, i64 1
  store i32 13, i32* %3, align 2
  %4 = call i32 @f(%struct.A* noundef nonnull %1)
  %.not = icmp eq i32 %4, 139
  br i1 %.not, label %6, label %5

5:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %0
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %6, %5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
