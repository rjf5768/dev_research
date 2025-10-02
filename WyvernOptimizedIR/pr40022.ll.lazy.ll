; ModuleID = './pr40022.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr40022.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { %struct.A* }
%struct.B = type { %struct.A* }

@g = dso_local global %struct.A zeroinitializer, align 8
@f = dso_local global %struct.A zeroinitializer, align 8
@d = dso_local global %struct.B zeroinitializer, align 8
@e = dso_local global %struct.A zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.A* @foo(%struct.A* noundef returned %0) #0 {
  call void asm sideeffect "", "imr,~{memory},~{dirflag},~{fpsr},~{flags}"(%struct.A* %0) #2, !srcloc !4
  ret %struct.A* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(%struct.B* nocapture noundef %0, %struct.A* noundef %1, %struct.A* noundef %2, %struct.A* noundef %3) #0 {
  %5 = getelementptr inbounds %struct.B, %struct.B* %0, i64 0, i32 0
  %6 = call %struct.A* @foo(%struct.A* noundef %1)
  store %struct.A* %1, %struct.A** %5, align 8
  br label %7

7:                                                ; preds = %9, %4
  %.0 = phi %struct.A** [ %5, %4 ], [ %11, %9 ]
  %8 = load %struct.A*, %struct.A** %.0, align 8
  %.not = icmp eq %struct.A* %8, null
  br i1 %.not, label %12, label %9

9:                                                ; preds = %7
  %10 = load %struct.A*, %struct.A** %.0, align 8
  %11 = getelementptr inbounds %struct.A, %struct.A* %10, i64 0, i32 0
  br label %7, !llvm.loop !5

12:                                               ; preds = %7
  %13 = call %struct.A* @foo(%struct.A* noundef %2)
  store %struct.A* %2, %struct.A** %.0, align 8
  br label %14

14:                                               ; preds = %16, %12
  %.1 = phi %struct.A** [ %.0, %12 ], [ %18, %16 ]
  %15 = load %struct.A*, %struct.A** %.1, align 8
  %.not1 = icmp eq %struct.A* %15, null
  br i1 %.not1, label %19, label %16

16:                                               ; preds = %14
  %17 = load %struct.A*, %struct.A** %.1, align 8
  %18 = getelementptr inbounds %struct.A, %struct.A* %17, i64 0, i32 0
  br label %14, !llvm.loop !7

19:                                               ; preds = %14
  %20 = call %struct.A* @foo(%struct.A* noundef %3)
  store %struct.A* %3, %struct.A** %.1, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  store %struct.A* @g, %struct.A** getelementptr inbounds (%struct.A, %struct.A* @f, i64 0, i32 0), align 8
  call void @bar(%struct.B* noundef nonnull @d, %struct.A* noundef nonnull @e, %struct.A* noundef nonnull @f, %struct.A* noundef null)
  %1 = load %struct.A*, %struct.A** getelementptr inbounds (%struct.B, %struct.B* @d, i64 0, i32 0), align 8
  %2 = icmp eq %struct.A* %1, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %0
  %4 = load %struct.A*, %struct.A** getelementptr inbounds (%struct.B, %struct.B* @d, i64 0, i32 0), align 8
  %5 = getelementptr inbounds %struct.A, %struct.A* %4, i64 0, i32 0
  %6 = load %struct.A*, %struct.A** %5, align 8
  %7 = icmp eq %struct.A* %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %3
  %9 = load %struct.A*, %struct.A** getelementptr inbounds (%struct.B, %struct.B* @d, i64 0, i32 0), align 8
  %10 = getelementptr inbounds %struct.A, %struct.A* %9, i64 0, i32 0
  %11 = load %struct.A*, %struct.A** %10, align 8
  %12 = getelementptr inbounds %struct.A, %struct.A* %11, i64 0, i32 0
  %13 = load %struct.A*, %struct.A** %12, align 8
  %14 = icmp eq %struct.A* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %8
  %16 = load %struct.A*, %struct.A** getelementptr inbounds (%struct.B, %struct.B* @d, i64 0, i32 0), align 8
  %17 = getelementptr inbounds %struct.A, %struct.A* %16, i64 0, i32 0
  %18 = load %struct.A*, %struct.A** %17, align 8
  %19 = getelementptr inbounds %struct.A, %struct.A* %18, i64 0, i32 0
  %20 = load %struct.A*, %struct.A** %19, align 8
  %21 = getelementptr inbounds %struct.A, %struct.A* %20, i64 0, i32 0
  %22 = load %struct.A*, %struct.A** %21, align 8
  %.not = icmp eq %struct.A* %22, null
  br i1 %.not, label %24, label %23

23:                                               ; preds = %15, %8, %3, %0
  call void @abort() #3
  unreachable

24:                                               ; preds = %15
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 162}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
