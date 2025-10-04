; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020619-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020619-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32, [4 x i8] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 @ref()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 16909060
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 67305985
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  call void @abort() #3
  unreachable

10:                                               ; preds = %6, %0
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ref() #0 {
  %1 = alloca %union.anon, align 4
  %2 = bitcast %union.anon* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 8, i1 false)
  %3 = bitcast %union.anon* %1 to [5 x i8]*
  %4 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  store i8 1, i8* %4, align 4
  %5 = bitcast %union.anon* %1 to [5 x i8]*
  %6 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 1
  store i8 2, i8* %6, align 1
  %7 = bitcast %union.anon* %1 to [5 x i8]*
  %8 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 2
  store i8 3, i8* %8, align 2
  %9 = bitcast %union.anon* %1 to [5 x i8]*
  %10 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 3
  store i8 4, i8* %10, align 1
  %11 = bitcast %union.anon* %1 to i32*
  %12 = load i32, i32* %11, align 4
  ret i32 %12
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
