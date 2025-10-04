; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20181120-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20181120-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U1 = type { i32 }

@d = dso_local global i32 0, align 4
@e = dso_local global i32* @d, align 8
@u = dso_local global %union.U1 { i32 67305985 }, align 4
@c = dso_local global i32 0, align 4
@__const.main.f = private unnamed_addr constant %union.U1 { i32 67305985 }, align 4
@b = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.U1, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* @c, align 4
  br label %3

3:                                                ; preds = %18, %0
  %4 = load i32, i32* @c, align 4
  %5 = icmp sle i32 %4, 1
  br i1 %5, label %6, label %21

6:                                                ; preds = %3
  %7 = bitcast %union.U1* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%union.U1* @__const.main.f to i8*), i64 4, i1 false)
  %8 = load i32, i32* @c, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load volatile i32, i32* @b, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = bitcast %union.U1* %2 to i16*
  %14 = load i16, i16* %13, align 4
  %15 = and i16 %14, 32767
  %16 = zext i16 %15 to i32
  %17 = load i32*, i32** @e, align 8
  store i32 %16, i32* %17, align 4
  br label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @c, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @c, align 4
  br label %3, !llvm.loop !4

21:                                               ; preds = %3
  %22 = load i32, i32* @d, align 4
  %23 = load volatile i16, i16* bitcast (%union.U1* @u to i16*), align 4
  %24 = and i16 %23, 32767
  %25 = zext i16 %24 to i32
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  call void @abort() #3
  unreachable

28:                                               ; preds = %21
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
