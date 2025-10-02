; ModuleID = './pr78170.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr78170.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S0 = type <{ i32, i32, i32, i32, i32, i64 }>

@b = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@__const.fn1.e = private unnamed_addr constant { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 } { i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 -128, i8 0, i8 0, i8 4, i8 0, i8 0, i8 0 }, align 4
@c = dso_local global %struct.S0 zeroinitializer, align 4
@a = dso_local global i32 0, align 4

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @fn1() #0 {
  store i32 1, i32* @b, align 4
  store i32 1, i32* @d, align 4
  br label %1

1:                                                ; preds = %6, %0
  %2 = load i32, i32* @b, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %8, label %3

3:                                                ; preds = %1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(28) bitcast (%struct.S0* @c to i8*), i8* noundef nonnull align 4 dereferenceable(28) bitcast ({ i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }* @__const.fn1.e to i8*), i64 28, i1 false)
  %4 = load i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* @c, i64 0, i32 5), align 4
  %5 = or i64 %4, 4294934528
  store i64 %5, i64* getelementptr inbounds (%struct.S0, %struct.S0* @c, i64 0, i32 5), align 4
  br label %6

6:                                                ; preds = %3
  %7 = load i32, i32* @a, align 4
  store i32 %7, i32* @b, align 4
  br label %1, !llvm.loop !4

8:                                                ; preds = %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  call void @fn1()
  %1 = load i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* @c, i64 0, i32 5), align 4
  %2 = shl i64 %1, 30
  %3 = ashr i64 %2, 62
  %4 = trunc i64 %3 to i32
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %6, label %5

5:                                                ; preds = %0
  call void @abort() #4
  unreachable

6:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
