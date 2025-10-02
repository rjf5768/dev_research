; ModuleID = './pr70127.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr70127.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i8 }

@c = dso_local global %struct.S { i32 5, i8 1 }, align 8
@b = dso_local global i16 0, align 2
@__const.main.e = private unnamed_addr constant %struct.S { i32 1, i8 1 }, align 4
@d = dso_local global %struct.S zeroinitializer, align 8
@a = dso_local global [1 x %struct.S] zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0) #0 {
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  call void @abort() #3
  unreachable

3:                                                ; preds = %1
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %5, %0
  %2 = load i16, i16* @b, align 2
  %3 = add i16 %2, 1
  store i16 %3, i16* @b, align 2
  %4 = icmp slt i16 %2, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load i64, i64* bitcast (%struct.S* @c to i64*), align 8
  store i64 %6, i64* bitcast ([1 x %struct.S]* @a to i64*), align 8
  store i64 %6, i64* bitcast (%struct.S* @d to i64*), align 8
  br label %1, !llvm.loop !4

7:                                                ; preds = %1
  %8 = load i8, i8* getelementptr inbounds ([1 x %struct.S], [1 x %struct.S]* @a, i64 0, i64 0, i32 1), align 4
  %9 = shl i8 %8, 6
  %10 = ashr exact i8 %9, 6
  %11 = sext i8 %10 to i32
  call void @foo(i32 noundef %11)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
