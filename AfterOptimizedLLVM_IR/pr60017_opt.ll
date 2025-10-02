; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr60017.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr60017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S1 = type { i8, [2 x [2 x i8]], [2 x %struct.S0], [2 x i8] }
%struct.S0 = type { i16, i16 }

@x = dso_local global %struct.S1 { i8 1, [2 x [2 x i8]] [[2 x i8] c"\02\03", [2 x i8] c"\04\05"], [2 x %struct.S0] [%struct.S0 { i16 6, i16 7 }, %struct.S0 { i16 8, i16 9 }], [2 x i8] undef }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i64 } @func() #0 {
  %1 = alloca %struct.S1, align 4
  %2 = bitcast %struct.S1* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 getelementptr inbounds (%struct.S1, %struct.S1* @x, i32 0, i32 0), i64 16, i1 false)
  %3 = bitcast %struct.S1* %1 to { i64, i64 }*
  %4 = load { i64, i64 }, { i64, i64 }* %3, align 4
  ret { i64, i64 } %4
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S1, align 4
  store i32 0, i32* %1, align 4
  %3 = call { i64, i64 } @func()
  %4 = bitcast %struct.S1* %2 to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  %6 = extractvalue { i64, i64 } %3, 0
  store i64 %6, i64* %5, align 4
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  %8 = extractvalue { i64, i64 } %3, 1
  store i64 %8, i64* %7, align 4
  %9 = getelementptr inbounds %struct.S1, %struct.S1* %2, i32 0, i32 2
  %10 = getelementptr inbounds [2 x %struct.S0], [2 x %struct.S0]* %9, i64 0, i64 1
  %11 = getelementptr inbounds %struct.S0, %struct.S0* %10, i32 0, i32 1
  %12 = load i16, i16* %11, align 2
  %13 = sext i16 %12 to i32
  %14 = icmp ne i32 %13, 9
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  call void @abort() #3
  unreachable

16:                                               ; preds = %0
  ret i32 0
}

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
