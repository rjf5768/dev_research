; ModuleID = './pr57344-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57344-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [7 x i8], i8 }

@__const.main.t = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 56, i8 -99, i8 -1, i8 1, i8 0 }, align 1
@s = dso_local global [2 x %struct.S] zeroinitializer, align 16
@i = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0) #0 {
  %.not = icmp eq i32 %0, -3161
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  call void @abort() #3
  unreachable

3:                                                ; preds = %1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !4
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  store i64 562525691183104, i64* bitcast (i8* getelementptr inbounds ([2 x %struct.S], [2 x %struct.S]* @s, i64 0, i64 1, i32 0, i64 0) to i64*), align 8
  br label %1

1:                                                ; preds = %9, %0
  %2 = load i32, i32* @i, align 4
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = load i56, i56* bitcast (%struct.S* getelementptr inbounds ([2 x %struct.S], [2 x %struct.S]* @s, i64 0, i64 1) to i56*), align 8
  %6 = shl i56 %5, 7
  %7 = ashr i56 %6, 34
  %8 = trunc i56 %7 to i32
  call void @foo(i32 noundef %8)
  br label %9

9:                                                ; preds = %4
  %10 = load i32, i32* @i, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @i, align 4
  br label %1, !llvm.loop !5

12:                                               ; preds = %1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 356}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
