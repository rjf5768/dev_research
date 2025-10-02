; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/compndlit-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/compndlit-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32 }

@x = dso_local global { i8, i8, i8, i8 } { i8 25, i8 0, i8 0, i8 0 }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S, align 4
  %3 = alloca %struct.S, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = bitcast %struct.S* %2 to i32*
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, -8
  %8 = or i32 %7, 0
  store i32 %8, i32* %5, align 4
  %9 = bitcast %struct.S* %2 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, -9
  %12 = or i32 %11, 0
  store i32 %12, i32* %9, align 4
  %13 = bitcast %struct.S* %2 to i32*
  %14 = bitcast %struct.S* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 getelementptr inbounds ({ i8, i8, i8, i8 }, { i8, i8, i8, i8 }* @x, i32 0, i32 0), i64 4, i1 false)
  %15 = bitcast %struct.S* %3 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 29
  %18 = ashr i32 %17, 29
  %19 = icmp eq i32 %18, 1
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 10, i32 20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %13, align 4
  %24 = and i32 %22, 268435455
  %25 = shl i32 %24, 4
  %26 = and i32 %23, 15
  %27 = or i32 %26, %25
  store i32 %27, i32* %13, align 4
  %28 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 getelementptr inbounds ({ i8, i8, i8, i8 }, { i8, i8, i8, i8 }* @x, i32 0, i32 0), i8* align 4 %28, i64 4, i1 false)
  %29 = load i32, i32* bitcast ({ i8, i8, i8, i8 }* @x to i32*), align 4
  %30 = lshr i32 %29, 4
  %31 = icmp ne i32 %30, 10
  br i1 %31, label %32, label %33

32:                                               ; preds = %0
  call void @abort() #3
  unreachable

33:                                               ; preds = %0
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

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
