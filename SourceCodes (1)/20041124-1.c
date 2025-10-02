; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20041124-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20041124-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { { i16, i16 } }

@gs = dso_local global %struct.s { { i16, i16 } { i16 100, i16 200 } }, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo() #0 {
  %1 = alloca %struct.s, align 2
  %2 = bitcast %struct.s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %2, i8* align 2 bitcast (%struct.s* @gs to i8*), i64 4, i1 false)
  %3 = getelementptr inbounds %struct.s, %struct.s* %1, i32 0, i32 0
  %4 = bitcast { i16, i16 }* %3 to i32*
  %5 = load i32, i32* %4, align 2
  ret i32 %5
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.s, align 2
  store i32 0, i32* %1, align 4
  %3 = call i32 @foo()
  %4 = getelementptr inbounds %struct.s, %struct.s* %2, i32 0, i32 0
  %5 = bitcast { i16, i16 }* %4 to i32*
  store i32 %3, i32* %5, align 2
  %6 = getelementptr inbounds %struct.s, %struct.s* %2, i32 0, i32 0
  %7 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %6, i32 0, i32 0
  %8 = load i16, i16* %7, align 2
  %9 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %6, i32 0, i32 1
  %10 = load i16, i16* %9, align 2
  %11 = load i16, i16* getelementptr inbounds (%struct.s, %struct.s* @gs, i32 0, i32 0, i32 0), align 2
  %12 = load i16, i16* getelementptr inbounds (%struct.s, %struct.s* @gs, i32 0, i32 0, i32 1), align 2
  %13 = icmp ne i16 %8, %11
  %14 = icmp ne i16 %10, %12
  %15 = or i1 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  call void @abort() #3
  unreachable

17:                                               ; preds = %0
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
