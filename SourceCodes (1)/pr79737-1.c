; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr79737-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr79737-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [9 x i8] }

@j = dso_local global i32 0, align 4
@k = dso_local global i32 0, align 4
@__const.foo.m = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 5, i8 0, i8 -40, i8 -1, i8 -1, i8 79, i8 0, i8 20, i8 0 }, align 1
@h = internal global %struct.S zeroinitializer, align 1
@g = dso_local global i32 0, align 4
@i = dso_local global %struct.S zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  %1 = alloca %struct.S, align 1
  store i32 0, i32* @j, align 4
  br label %2

2:                                                ; preds = %6, %0
  %3 = load i32, i32* @j, align 4
  %4 = icmp slt i32 %3, 6
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  store i32 0, i32* @k, align 4
  br label %6

6:                                                ; preds = %5
  %7 = load i32, i32* @j, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @j, align 4
  br label %2, !llvm.loop !4

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %24, %9
  %11 = load i32, i32* @k, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = bitcast %struct.S* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @__const.foo.m, i32 0, i32 0), i64 9, i1 false)
  %15 = bitcast %struct.S* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds (%struct.S, %struct.S* @h, i32 0, i32 0, i32 0), i8* align 1 %15, i64 9, i1 false)
  %16 = load i32, i32* @g, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = bitcast %struct.S* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds (%struct.S, %struct.S* @i, i32 0, i32 0, i32 0), i8* align 1 %19, i64 9, i1 false)
  br label %20

20:                                               ; preds = %18, %13
  %21 = load i72, i72* bitcast (%struct.S* @h to i72*), align 1
  %22 = and i72 %21, -288221580058689537
  %23 = or i72 %22, 0
  store i72 %23, i72* bitcast (%struct.S* @h to i72*), align 1
  br label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @k, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @k, align 4
  br label %10, !llvm.loop !6

27:                                               ; preds = %10
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo()
  %2 = load i72, i72* bitcast (%struct.S* @h to i72*), align 1
  %3 = shl i72 %2, 14
  %4 = ashr i72 %3, 57
  %5 = trunc i72 %4 to i32
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #3
  unreachable

8:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
