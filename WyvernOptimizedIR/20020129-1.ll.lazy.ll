; ModuleID = './20020129-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020129-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.B = type { %struct.C, %struct.A* }
%struct.C = type { %struct.D, i64, i64, i64, i64, i64 }
%struct.D = type { i32, %struct.D* }
%struct.A = type { %struct.A*, %struct.C* }

@y = dso_local global %struct.B zeroinitializer, align 8
@x = dso_local global %struct.B zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.B* noundef %0, %struct.B* nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.B, %struct.B* %0, i64 0, i32 1
  %4 = load %struct.A*, %struct.A** %3, align 8
  %5 = icmp eq %struct.A* %4, null
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.B, %struct.B* %1, i64 0, i32 1
  %8 = load %struct.A*, %struct.A** %7, align 8
  %9 = getelementptr inbounds %struct.B, %struct.B* %0, i64 0, i32 1
  store %struct.A* %8, %struct.A** %9, align 8
  %10 = getelementptr inbounds %struct.B, %struct.B* %1, i64 0, i32 1
  store %struct.A* null, %struct.A** %10, align 8
  br label %11

11:                                               ; preds = %15, %6
  %.0 = phi %struct.A* [ %8, %6 ], [ %17, %15 ]
  %.not2 = icmp eq %struct.A* %.0, null
  br i1 %.not2, label %18, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.B, %struct.B* %0, i64 0, i32 0
  %14 = getelementptr inbounds %struct.A, %struct.A* %.0, i64 0, i32 1
  store %struct.C* %13, %struct.C** %14, align 8
  br label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.A, %struct.A* %.0, i64 0, i32 0
  %17 = load %struct.A*, %struct.A** %16, align 8
  br label %11, !llvm.loop !4

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18, %2
  %20 = getelementptr inbounds %struct.B, %struct.B* %1, i64 0, i32 1
  %21 = load %struct.A*, %struct.A** %20, align 8
  %.not = icmp eq %struct.A* %21, null
  br i1 %.not, label %23, label %22

22:                                               ; preds = %19
  call void @abort() #3
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.B, %struct.B* %0, i64 0, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, -1
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.B, %struct.B* %1, i64 0, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.B, %struct.B* %0, i64 0, i32 0, i32 2
  store i64 %29, i64* %30, align 8
  %31 = getelementptr inbounds %struct.B, %struct.B* %1, i64 0, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.B, %struct.B* %0, i64 0, i32 0, i32 3
  store i64 %32, i64* %33, align 8
  %34 = getelementptr inbounds %struct.B, %struct.B* %1, i64 0, i32 0, i32 2
  store i64 -1, i64* %34, align 8
  %35 = getelementptr inbounds %struct.B, %struct.B* %1, i64 0, i32 0, i32 3
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %27, %23
  %37 = getelementptr inbounds %struct.B, %struct.B* %1, i64 0, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %.not1 = icmp eq i64 %38, -1
  br i1 %.not1, label %40, label %39

39:                                               ; preds = %36
  call void @abort() #3
  br label %UnifiedUnreachableBlock

40:                                               ; preds = %36
  ret void

UnifiedUnreachableBlock:                          ; preds = %39, %22
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  store i32 6, i32* getelementptr inbounds (%struct.B, %struct.B* @y, i64 0, i32 0, i32 0, i32 0), align 8
  store i64 145, i64* getelementptr inbounds (%struct.B, %struct.B* @y, i64 0, i32 0, i32 2), align 8
  store i64 2448, i64* getelementptr inbounds (%struct.B, %struct.B* @y, i64 0, i32 0, i32 3), align 8
  store i64 -1, i64* getelementptr inbounds (%struct.B, %struct.B* @x, i64 0, i32 0, i32 2), align 8
  call void @foo(%struct.B* noundef nonnull @x, %struct.B* noundef nonnull @y)
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
