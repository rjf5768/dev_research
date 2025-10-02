; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr35472.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr35472.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [16 x i32] }

@p = dso_local global %struct.S* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.S* noundef %0, %struct.S* noundef %1) #0 {
  %3 = alloca %struct.S*, align 8
  %4 = alloca %struct.S*, align 8
  store %struct.S* %0, %struct.S** %3, align 8
  store %struct.S* %1, %struct.S** %4, align 8
  %5 = load %struct.S*, %struct.S** %3, align 8
  %6 = getelementptr inbounds %struct.S, %struct.S* %5, i32 0, i32 0
  %7 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  store i32 -1, i32* %7, align 4
  %8 = load %struct.S*, %struct.S** %4, align 8
  store %struct.S* %8, %struct.S** @p, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test() #0 {
  %1 = alloca %struct.S, align 4
  %2 = alloca %struct.S, align 4
  %3 = getelementptr inbounds %struct.S, %struct.S* %1, i32 0, i32 0
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %5 = bitcast i32* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 64, i1 false)
  %6 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 0
  %7 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %8 = bitcast i32* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 64, i1 false)
  call void @foo(%struct.S* noundef %1, %struct.S* noundef %2)
  %9 = load %struct.S*, %struct.S** @p, align 8
  %10 = bitcast %struct.S* %9 to i8*
  %11 = bitcast %struct.S* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 64, i1 false)
  %12 = load %struct.S*, %struct.S** @p, align 8
  %13 = bitcast %struct.S* %12 to i8*
  %14 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 64, i1 false)
  %15 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 0
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  call void @abort() #4
  unreachable

20:                                               ; preds = %0
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @test()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
