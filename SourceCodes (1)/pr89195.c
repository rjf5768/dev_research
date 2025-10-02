; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr89195.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr89195.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i24 }

@x = dso_local global i8 0, align 1
@__const.main.d = private unnamed_addr constant { i8, i8, i8, i8 } { i8 86, i8 52, i8 18, i8 undef }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 %0) #0 {
  %2 = alloca %struct.S, align 4
  %3 = bitcast %struct.S* %2 to i32*
  store i32 %0, i32* %3, align 4
  %4 = bitcast %struct.S* %2 to i32*
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 16777215
  %7 = load volatile i8, i8* @x, align 1
  %8 = zext i8 %7 to i32
  %9 = and i32 %6, %8
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 getelementptr inbounds ({ i8, i8, i8, i8 }, { i8, i8, i8, i8 }* @__const.main.d, i32 0, i32 0), i64 4, i1 false)
  store volatile i8 117, i8* @x, align 1
  %4 = bitcast %struct.S* %2 to i32*
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @foo(i32 %5)
  %7 = icmp ne i32 %6, 84
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void @abort() #3
  unreachable

9:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
