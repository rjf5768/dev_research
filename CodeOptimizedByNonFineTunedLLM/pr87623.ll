; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr87623.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr87623.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be = type { [1 x i16], i8, i8 }
%struct.le = type { [3 x i16], i8, i8 }

@__const.main.x = private unnamed_addr constant %struct.be { [1 x i16] zeroinitializer, i8 1, i8 2 }, align 2
@__const.main.y = private unnamed_addr constant %struct.le { [3 x i16] zeroinitializer, i8 1, i8 2 }, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @a_or_b_different(%struct.be* noundef %0, %struct.le* noundef %1) #0 {
  %3 = alloca %struct.be*, align 8
  %4 = alloca %struct.le*, align 8
  store %struct.be* %0, %struct.be** %3, align 8
  store %struct.le* %1, %struct.le** %4, align 8
  %5 = load %struct.be*, %struct.be** %3, align 8
  %6 = getelementptr inbounds %struct.be, %struct.be* %5, i32 0, i32 1
  %7 = load i8, i8* %6, align 2
  %8 = zext i8 %7 to i32
  %9 = load %struct.le*, %struct.le** %4, align 8
  %10 = getelementptr inbounds %struct.le, %struct.le* %9, i32 0, i32 1
  %11 = load i8, i8* %10, align 2
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %8, %12
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load %struct.be*, %struct.be** %3, align 8
  %16 = getelementptr inbounds %struct.be, %struct.be* %15, i32 0, i32 2
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = load %struct.le*, %struct.le** %4, align 8
  %20 = getelementptr inbounds %struct.le, %struct.le* %19, i32 0, i32 2
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %18, %22
  br label %24

24:                                               ; preds = %14, %2
  %25 = phi i1 [ true, %2 ], [ %23, %14 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.be, align 2
  %3 = alloca %struct.le, align 2
  store i32 0, i32* %1, align 4
  %4 = bitcast %struct.be* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %4, i8* align 2 bitcast (%struct.be* @__const.main.x to i8*), i64 4, i1 false)
  %5 = bitcast %struct.le* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %5, i8* align 2 bitcast (%struct.le* @__const.main.y to i8*), i64 8, i1 false)
  %6 = call i32 @a_or_b_different(%struct.be* noundef %2, %struct.le* noundef %3)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void @abort() #3
  unreachable

9:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

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
