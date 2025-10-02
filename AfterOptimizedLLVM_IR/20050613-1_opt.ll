; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050613-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050613-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.B = type { %struct.A, [1 x i32] }
%struct.A = type { i32, i32, i32, i32 }
%struct.C = type { %struct.A, [0 x i32] }
%struct.D = type { %struct.A, [0 x i32] }

@__const.main.b = private unnamed_addr constant %struct.B { %struct.A { i32 0, i32 5, i32 0, i32 0 }, [1 x i32] zeroinitializer }, align 4
@__const.main.c = private unnamed_addr constant %struct.C { %struct.A { i32 0, i32 5, i32 0, i32 0 }, [0 x i32] zeroinitializer }, align 4
@__const.main.d = private unnamed_addr constant %struct.D { %struct.A { i32 0, i32 5, i32 0, i32 0 }, [0 x i32] zeroinitializer }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.A* noundef %0) #0 {
  %2 = alloca %struct.A*, align 8
  store %struct.A* %0, %struct.A** %2, align 8
  %3 = load %struct.A*, %struct.A** %2, align 8
  %4 = getelementptr inbounds %struct.A, %struct.A* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = load %struct.A*, %struct.A** %2, align 8
  %9 = getelementptr inbounds %struct.A, %struct.A* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 5
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = load %struct.A*, %struct.A** %2, align 8
  %14 = getelementptr inbounds %struct.A, %struct.A* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.A*, %struct.A** %2, align 8
  %19 = getelementptr inbounds %struct.A, %struct.A* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %12, %7, %1
  call void @abort() #3
  unreachable

23:                                               ; preds = %17
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.B, align 4
  %3 = alloca %struct.C, align 4
  %4 = alloca %struct.D, align 4
  store i32 0, i32* %1, align 4
  %5 = bitcast %struct.B* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.B* @__const.main.b to i8*), i64 20, i1 false)
  %6 = bitcast %struct.C* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.C* @__const.main.c to i8*), i64 16, i1 false)
  %7 = bitcast %struct.D* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.D* @__const.main.d to i8*), i64 16, i1 false)
  %8 = getelementptr inbounds %struct.B, %struct.B* %2, i32 0, i32 0
  call void @foo(%struct.A* noundef %8)
  %9 = getelementptr inbounds %struct.C, %struct.C* %3, i32 0, i32 0
  call void @foo(%struct.A* noundef %9)
  %10 = getelementptr inbounds %struct.D, %struct.D* %4, i32 0, i32 0
  call void @foo(%struct.A* noundef %10)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
