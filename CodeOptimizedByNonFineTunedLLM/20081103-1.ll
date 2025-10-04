; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20081103-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20081103-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8, [4 x i8], float }

@A = dso_local global [4 x i8] c"1234", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i64 %0, float %1) #0 {
  %3 = alloca %struct.S, align 4
  %4 = alloca { i64, float }, align 4
  %5 = getelementptr inbounds { i64, float }, { i64, float }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 4
  %6 = getelementptr inbounds { i64, float }, { i64, float }* %4, i32 0, i32 1
  store float %1, float* %6, align 4
  %7 = bitcast %struct.S* %3 to i8*
  %8 = bitcast { i64, float }* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 12, i1 false)
  %9 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 1
  %10 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %11 = call i32 @memcmp(i8* noundef %10, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @A, i64 0, i64 0), i64 noundef 4) #4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  call void @abort() #5
  unreachable

14:                                               ; preds = %2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S, align 4
  %3 = alloca { i64, float }, align 4
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @A, i64 0, i64 0), i64 4, i1 false)
  %6 = bitcast { i64, float }* %3 to i8*
  %7 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 12, i1 false)
  %8 = getelementptr inbounds { i64, float }, { i64, float }* %3, i32 0, i32 0
  %9 = load i64, i64* %8, align 4
  %10 = getelementptr inbounds { i64, float }, { i64, float }* %3, i32 0, i32 1
  %11 = load float, float* %10, align 4
  call void @foo(i64 %9, float %11)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
