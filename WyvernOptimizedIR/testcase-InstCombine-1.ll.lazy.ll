; ModuleID = './testcase-InstCombine-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/testcase-InstCombine-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [9 x i8] }

@f = dso_local global i32 0, align 4
@__const.main.m = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 5, i8 0, i8 -40, i8 -1, i8 -1, i8 79, i8 0, i8 20, i8 0 }, align 1
@h = dso_local global %struct.S zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = load i32, i32* @f, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %7, label %3

3:                                                ; preds = %1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(9) getelementptr inbounds (%struct.S, %struct.S* @h, i64 0, i32 0, i64 0), i8* noundef nonnull align 1 dereferenceable(9) getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @__const.main.m, i64 0, i32 0), i64 9, i1 false)
  br label %4

4:                                                ; preds = %3
  %5 = load i32, i32* @f, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @f, align 4
  br label %1, !llvm.loop !4

7:                                                ; preds = %1
  %8 = load i72, i72* bitcast (%struct.S* @h to i72*), align 8
  %9 = shl i72 %8, 14
  %sh.diff = ashr i72 %9, 25
  %tr.sh.diff = trunc i72 %sh.diff to i64
  %10 = ashr i64 %tr.sh.diff, 32
  %11 = shl i72 %8, 14
  %12 = ashr i72 %11, 57
  %13 = trunc i72 %12 to i64
  %14 = load i72, i72* bitcast (%struct.S* @h to i72*), align 8
  %15 = shl i72 %14, 14
  %16 = ashr i72 %15, 57
  %17 = trunc i72 %16 to i64
  %18 = mul i64 %13, %17
  %sext = shl i64 %18, 32
  %19 = ashr exact i64 %sext, 32
  %20 = sub nsw i64 0, %19
  %.not1 = icmp eq i64 %10, %20
  br i1 %.not1, label %22, label %21

21:                                               ; preds = %7
  %putchar = call i32 @putchar(i32 49)
  br label %22

22:                                               ; preds = %21, %7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
