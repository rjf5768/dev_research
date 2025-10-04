; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/restrict-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/restrict-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32, i32 }

@__const.main.a = private unnamed_addr constant %struct.A { i32 1, i32 0 }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(%struct.A* noalias noundef %0) #0 {
  %2 = alloca %struct.A*, align 8
  %3 = alloca %struct.A, align 4
  store %struct.A* %0, %struct.A** %2, align 8
  %4 = load %struct.A*, %struct.A** %2, align 8
  %5 = load %struct.A*, %struct.A** %2, align 8
  %6 = load %struct.A*, %struct.A** %2, align 8
  %7 = call i64 @foo(%struct.A* noundef %5, %struct.A* noundef %6)
  %8 = bitcast %struct.A* %3 to i64*
  store i64 %7, i64* %8, align 4
  %9 = bitcast %struct.A* %4 to i8*
  %10 = bitcast %struct.A* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 8, i1 false)
  %11 = load %struct.A*, %struct.A** %2, align 8
  %12 = getelementptr inbounds %struct.A, %struct.A* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  call void @abort() #4
  unreachable

16:                                               ; preds = %1
  ret void
}

declare dso_local i64 @foo(%struct.A* noundef, %struct.A* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.A, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast %struct.A* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.A* @__const.main.a to i8*), i64 8, i1 false)
  call void @bar(%struct.A* noundef %2)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
