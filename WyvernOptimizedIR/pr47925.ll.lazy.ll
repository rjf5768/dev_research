; ModuleID = './pr47925.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr47925.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { %struct.s* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0, i32 noundef %1) #0 {
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(%struct.s* noundef %0, i32 noundef %1) #0 {
  call void @bar(i32 noundef 0, i32 noundef %1)
  br label %3

3:                                                ; preds = %8, %2
  %.01 = phi %struct.s* [ %0, %2 ], [ %7, %8 ]
  %.0 = phi i32 [ 0, %2 ], [ %9, %8 ]
  %4 = icmp slt i32 %.0, %1
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.s, %struct.s* %.01, i64 0, i32 0
  %7 = load volatile %struct.s*, %struct.s** %6, align 8
  br label %8

8:                                                ; preds = %5
  %9 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !5

10:                                               ; preds = %3
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.s, align 8
  %2 = getelementptr inbounds %struct.s, %struct.s* %1, i64 0, i32 0
  store %struct.s* %1, %struct.s** %2, align 8
  %3 = call i32 @foo(%struct.s* noundef nonnull %1, i32 noundef 10)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 116}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
