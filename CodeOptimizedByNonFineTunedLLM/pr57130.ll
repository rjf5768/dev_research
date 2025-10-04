; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57130.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57130.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, i32, i32 }

@s = dso_local global [2 x %struct.S] [%struct.S { i32 6, i32 8, i32 -8, i32 -5 }, %struct.S { i32 0, i32 2, i32 -1, i32 2 }], align 16
@foo.cnt = internal global i32 0, align 4
@__const.main.r = private unnamed_addr constant %struct.S { i32 6, i32 8, i32 -8, i32 -5 }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.S, align 4
  %4 = bitcast %struct.S* %3 to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 4
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 4
  %7 = bitcast %struct.S* %3 to i8*
  %8 = load i32, i32* @foo.cnt, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @foo.cnt, align 4
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds [2 x %struct.S], [2 x %struct.S]* @s, i64 0, i64 %10
  %12 = bitcast %struct.S* %11 to i8*
  %13 = call i32 @memcmp(i8* noundef %7, i8* noundef %12, i64 noundef 16) #4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  call void @abort() #5
  unreachable

16:                                               ; preds = %2
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S, align 4
  %3 = alloca %struct.S, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.S* @__const.main.r to i8*), i64 16, i1 false)
  %5 = bitcast %struct.S* %2 to { i64, i64 }*
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 4
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  %9 = load i64, i64* %8, align 4
  call void @foo(i64 %7, i64 %9)
  %10 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 1
  store i32 2, i32* %11, align 4
  %12 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 2
  store i32 -1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 3
  store i32 2, i32* %13, align 4
  %14 = bitcast %struct.S* %2 to i8*
  %15 = bitcast %struct.S* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 16, i1 false)
  %16 = bitcast %struct.S* %2 to { i64, i64 }*
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 4
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 1
  %20 = load i64, i64* %19, align 4
  call void @foo(i64 %18, i64 %20)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
