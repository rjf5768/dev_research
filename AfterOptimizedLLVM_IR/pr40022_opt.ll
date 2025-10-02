; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr40022.c'
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
define dso_local %struct.A* @foo(%struct.A* noundef %0) #0 {
  %2 = alloca %struct.A*, align 8
  store %struct.A* %0, %struct.A** %2, align 8
  %3 = load %struct.A*, %struct.A** %2, align 8
  call void asm sideeffect "", "imr,~{memory},~{dirflag},~{fpsr},~{flags}"(%struct.A* %3) #2, !srcloc !4
  %4 = load %struct.A*, %struct.A** %2, align 8
  ret %struct.A* %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(%struct.B* noundef %0, %struct.A* noundef %1, %struct.A* noundef %2, %struct.A* noundef %3) #0 {
  %5 = alloca %struct.B*, align 8
  %6 = alloca %struct.A*, align 8
  %7 = alloca %struct.A*, align 8
  %8 = alloca %struct.A*, align 8
  %9 = alloca %struct.A**, align 8
  store %struct.B* %0, %struct.B** %5, align 8
  store %struct.A* %1, %struct.A** %6, align 8
  store %struct.A* %2, %struct.A** %7, align 8
  store %struct.A* %3, %struct.A** %8, align 8
  %10 = load %struct.B*, %struct.B** %5, align 8
  %11 = getelementptr inbounds %struct.B, %struct.B* %10, i32 0, i32 0
  store %struct.A** %11, %struct.A*** %9, align 8
  %12 = load %struct.A*, %struct.A** %6, align 8
  %13 = call %struct.A* @foo(%struct.A* noundef %12)
  %14 = load %struct.A**, %struct.A*** %9, align 8
  store %struct.A* %13, %struct.A** %14, align 8
  br label %15

15:                                               ; preds = %19, %4
  %16 = load %struct.A**, %struct.A*** %9, align 8
  %17 = load %struct.A*, %struct.A** %16, align 8
  %18 = icmp ne %struct.A* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.A**, %struct.A*** %9, align 8
  %21 = load %struct.A*, %struct.A** %20, align 8
  %22 = getelementptr inbounds %struct.A, %struct.A* %21, i32 0, i32 0
  store %struct.A** %22, %struct.A*** %9, align 8
  br label %15, !llvm.loop !5

23:                                               ; preds = %15
  %24 = load %struct.A*, %struct.A** %7, align 8
  %25 = call %struct.A* @foo(%struct.A* noundef %24)
  %26 = load %struct.A**, %struct.A*** %9, align 8
  store %struct.A* %25, %struct.A** %26, align 8
  br label %27

27:                                               ; preds = %31, %23
  %28 = load %struct.A**, %struct.A*** %9, align 8
  %29 = load %struct.A*, %struct.A** %28, align 8
  %30 = icmp ne %struct.A* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.A**, %struct.A*** %9, align 8
  %33 = load %struct.A*, %struct.A** %32, align 8
  %34 = getelementptr inbounds %struct.A, %struct.A* %33, i32 0, i32 0
  store %struct.A** %34, %struct.A*** %9, align 8
  br label %27, !llvm.loop !7

35:                                               ; preds = %27
  %36 = load %struct.A*, %struct.A** %8, align 8
  %37 = call %struct.A* @foo(%struct.A* noundef %36)
  %38 = load %struct.A**, %struct.A*** %9, align 8
  store %struct.A* %37, %struct.A** %38, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store %struct.A* @g, %struct.A** getelementptr inbounds (%struct.A, %struct.A* @f, i32 0, i32 0), align 8
  call void @bar(%struct.B* noundef @d, %struct.A* noundef @e, %struct.A* noundef @f, %struct.A* noundef null)
  %2 = load %struct.A*, %struct.A** getelementptr inbounds (%struct.B, %struct.B* @d, i32 0, i32 0), align 8
  %3 = icmp eq %struct.A* %2, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %0
  %5 = load %struct.A*, %struct.A** getelementptr inbounds (%struct.B, %struct.B* @d, i32 0, i32 0), align 8
  %6 = getelementptr inbounds %struct.A, %struct.A* %5, i32 0, i32 0
  %7 = load %struct.A*, %struct.A** %6, align 8
  %8 = icmp eq %struct.A* %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = load %struct.A*, %struct.A** getelementptr inbounds (%struct.B, %struct.B* @d, i32 0, i32 0), align 8
  %11 = getelementptr inbounds %struct.A, %struct.A* %10, i32 0, i32 0
  %12 = load %struct.A*, %struct.A** %11, align 8
  %13 = getelementptr inbounds %struct.A, %struct.A* %12, i32 0, i32 0
  %14 = load %struct.A*, %struct.A** %13, align 8
  %15 = icmp eq %struct.A* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %9
  %17 = load %struct.A*, %struct.A** getelementptr inbounds (%struct.B, %struct.B* @d, i32 0, i32 0), align 8
  %18 = getelementptr inbounds %struct.A, %struct.A* %17, i32 0, i32 0
  %19 = load %struct.A*, %struct.A** %18, align 8
  %20 = getelementptr inbounds %struct.A, %struct.A* %19, i32 0, i32 0
  %21 = load %struct.A*, %struct.A** %20, align 8
  %22 = getelementptr inbounds %struct.A, %struct.A* %21, i32 0, i32 0
  %23 = load %struct.A*, %struct.A** %22, align 8
  %24 = icmp ne %struct.A* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %16, %9, %4, %0
  call void @abort() #3
  unreachable

26:                                               ; preds = %16
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { noreturn }

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
