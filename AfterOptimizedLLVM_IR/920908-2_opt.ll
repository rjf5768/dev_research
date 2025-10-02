; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920908-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920908-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T = type { i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 %0) #0 {
  %2 = alloca %struct.T, align 4
  %3 = alloca [1 x %struct.T], align 4
  %4 = getelementptr inbounds %struct.T, %struct.T* %2, i32 0, i32 0
  store i32 %0, i32* %4, align 4
  %5 = getelementptr inbounds [1 x %struct.T], [1 x %struct.T]* %3, i64 0, i64 0
  %6 = bitcast %struct.T* %5 to i8*
  %7 = bitcast %struct.T* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 4, i1 false)
  %8 = getelementptr inbounds [1 x %struct.T], [1 x %struct.T]* %3, i64 0, i64 0
  %9 = bitcast %struct.T* %8 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = lshr i32 %10, 8
  %12 = trunc i32 %11 to i8
  %13 = sext i8 %12 to i32
  ret i32 %13
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.T, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast %struct.T* %2 to i32*
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, -256
  %6 = or i32 %5, 255
  store i32 %6, i32* %3, align 4
  %7 = bitcast %struct.T* %2 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 255
  %10 = or i32 %9, -61184
  store i32 %10, i32* %7, align 4
  %11 = getelementptr inbounds %struct.T, %struct.T* %2, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @f(i32 %12)
  %14 = icmp ne i32 %13, 17
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  call void @abort() #3
  unreachable

16:                                               ; preds = %0
  call void @exit(i32 noundef 0) #3
  unreachable
}

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
