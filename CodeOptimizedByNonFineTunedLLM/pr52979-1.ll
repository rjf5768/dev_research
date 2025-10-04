; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr52979-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr52979-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [5 x i8] }

@a = dso_local global { i8, i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 0, i8 0 }, align 1
@e = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@b = internal global { i8, i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 0, i8 0 }, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar() #0 {
  %1 = alloca %struct.S, align 1
  %2 = load i40, i40* bitcast ({ i8, i8, i8, i8, i8 }* @a to i40*), align 1
  %3 = and i40 %2, -135291469825
  %4 = or i40 %3, 2147483648
  store i40 %4, i40* bitcast ({ i8, i8, i8, i8, i8 }* @a to i40*), align 1
  %5 = bitcast %struct.S* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %5, i8 0, i64 5, i1 false)
  %6 = bitcast %struct.S* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds (%struct.S, %struct.S* bitcast ({ i8, i8, i8, i8, i8 }* @b to %struct.S*), i32 0, i32 0, i32 0), i8* align 1 %6, i64 5, i1 false)
  store i32 0, i32* @e, align 4
  %7 = load i32, i32* @d, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %0
  %10 = load i40, i40* bitcast ({ i8, i8, i8, i8, i8 }* @a to i40*), align 1
  %11 = shl i40 %10, 9
  %12 = ashr i40 %11, 9
  %13 = trunc i40 %12 to i32
  store i32 %13, i32* @c, align 4
  br label %14

14:                                               ; preds = %9, %0
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz() #0 {
  call void @bar()
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds ({ i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }* @a, i32 0, i32 0), i8* align 1 getelementptr inbounds (%struct.S, %struct.S* bitcast ({ i8, i8, i8, i8, i8 }* @b to %struct.S*), i32 0, i32 0, i32 0), i64 5, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @baz()
  %2 = load i40, i40* bitcast ({ i8, i8, i8, i8, i8 }* @a to i40*), align 1
  %3 = shl i40 %2, 9
  %4 = ashr i40 %3, 9
  %5 = trunc i40 %4 to i32
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #4
  unreachable

8:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
