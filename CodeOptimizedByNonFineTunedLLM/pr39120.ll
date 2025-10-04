; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr39120.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr39120.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X = type { i32* }

@x = dso_local global %struct.X zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32* @foo(i32* noundef %0) #0 {
  %2 = alloca %struct.X, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = getelementptr inbounds %struct.X, %struct.X* %2, i32 0, i32 0
  store i32* %4, i32** %5, align 8
  %6 = getelementptr inbounds %struct.X, %struct.X* %2, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  ret i32* %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar() #0 {
  %1 = load i32*, i32** getelementptr inbounds (%struct.X, %struct.X* @x, i32 0, i32 0), align 8
  store i32 1, i32* %1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.X, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %4 = call i32* @foo(i32* noundef %2)
  %5 = getelementptr inbounds %struct.X, %struct.X* %3, i32 0, i32 0
  store i32* %4, i32** %5, align 8
  %6 = bitcast %struct.X* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.X* @x to i8*), i8* align 8 %6, i64 8, i1 false)
  call void @bar()
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  call void @abort() #3
  unreachable

10:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
