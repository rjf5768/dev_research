; ModuleID = './20000320-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/20000320-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.dl = type { double }
%union.fl = type { float }

@failed = dso_local global i32 0, align 4
@ud = dso_local global %union.dl zeroinitializer, align 8
@uf = dso_local global %union.fl zeroinitializer, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @c(i64 noundef %0, i32 noundef %1) #0 {
  store i64 %0, i64* bitcast (%union.dl* @ud to i64*), align 8
  %.cast = bitcast i64 %0 to double
  %3 = fptrunc double %.cast to float
  store float %3, float* getelementptr inbounds (%union.fl, %union.fl* @uf, i64 0, i32 0), align 4
  %.cast1 = bitcast float %3 to i32
  %.not = icmp eq i32 %.cast1, %1
  br i1 %.not, label %7, label %4

4:                                                ; preds = %2
  %5 = load i32, i32* @failed, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @failed, align 4
  br label %7

7:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  call void @c(i64 noundef 3931642474694443008, i32 noundef 0)
  call void @c(i64 noundef 3931642474694443009, i32 noundef 1)
  call void @c(i64 noundef 3936146074321813503, i32 noundef 1)
  call void @c(i64 noundef 3936146074321813504, i32 noundef 1)
  call void @c(i64 noundef 3938397874135498751, i32 noundef 1)
  call void @c(i64 noundef 3938397874135498752, i32 noundef 2)
  call void @c(i64 noundef 3940649673949183999, i32 noundef 2)
  call void @c(i64 noundef 3940649673949184000, i32 noundef 2)
  call void @c(i64 noundef 3940649673949184001, i32 noundef 2)
  call void @c(i64 noundef 4039728865214463999, i32 noundef 8388607)
  call void @c(i64 noundef 4039728865214464000, i32 noundef 8388608)
  call void @c(i64 noundef 4039728865214464001, i32 noundef 8388608)
  call void @c(i64 noundef 4039728865751334911, i32 noundef 8388608)
  call void @c(i64 noundef 4039728865751334912, i32 noundef 8388608)
  call void @c(i64 noundef 4039728865751334913, i32 noundef 8388608)
  call void @c(i64 noundef 4039728866019770368, i32 noundef 8388608)
  call void @c(i64 noundef 4039728866019770369, i32 noundef 8388609)
  call void @c(i64 noundef 4039728866556641279, i32 noundef 8388609)
  call void @c(i64 noundef 4039728866556641280, i32 noundef 8388610)
  call void @c(i64 noundef 4039728867093512192, i32 noundef 8388610)
  call void @c(i64 noundef 4039728867093512193, i32 noundef 8388611)
  %1 = load i32, i32* @failed, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %3, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
