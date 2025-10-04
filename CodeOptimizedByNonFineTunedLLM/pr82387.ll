; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr82387.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr82387.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32 }

@f = dso_local global i32 1, align 4
@__const.foo.h = private unnamed_addr constant [70 x %struct.A] [%struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo() #0 {
  %1 = alloca %struct.A, align 4
  %2 = alloca [70 x %struct.A], align 16
  %3 = bitcast [70 x %struct.A]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([70 x %struct.A]* @__const.foo.h to i8*), i64 280, i1 false)
  %4 = getelementptr inbounds [70 x %struct.A], [70 x %struct.A]* %2, i64 0, i64 24
  %5 = bitcast %struct.A* %1 to i8*
  %6 = bitcast %struct.A* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 16 %6, i64 4, i1 false)
  %7 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  ret i32 %8
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.A, align 4
  %3 = alloca %struct.A, align 4
  store i32 0, i32* %1, align 4
  %4 = call i32 @foo()
  %5 = getelementptr inbounds %struct.A, %struct.A* %2, i32 0, i32 0
  store i32 %4, i32* %5, align 4
  %6 = bitcast %struct.A* %3 to i8*
  %7 = bitcast %struct.A* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 4, i1 false)
  %8 = getelementptr inbounds %struct.A, %struct.A* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 0, i32* @f, align 4
  br label %12

12:                                               ; preds = %11, %0
  %13 = phi i1 [ false, %0 ], [ false, %11 ]
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* @f, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
