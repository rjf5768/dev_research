; ModuleID = './pr60960.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr60960.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f1(i32 noundef %0) #0 {
  %.cast = bitcast i32 %0 to <4 x i8>
  %2 = lshr <4 x i8> %.cast, <i8 1, i8 1, i8 1, i8 1>
  %.cast1 = bitcast <4 x i8> %2 to i32
  ret i32 %.cast1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f2(i32 noundef %0) #0 {
  %.cast = bitcast i32 %0 to <4 x i8>
  %2 = lshr <4 x i8> %.cast, <i8 1, i8 1, i8 1, i8 1>
  %.cast1 = bitcast <4 x i8> %2 to i32
  ret i32 %.cast1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f3(i32 noundef %0, i32 noundef %1) #0 {
  %.cast = bitcast i32 %0 to <4 x i8>
  %.cast1 = bitcast i32 %1 to <4 x i8>
  %3 = udiv <4 x i8> %.cast, %.cast1
  %.cast2 = bitcast <4 x i8> %3 to i32
  ret i32 %.cast2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca <4 x i8>, align 4
  store <4 x i8> <i8 2, i8 2, i8 2, i8 2>, <4 x i8>* %1, align 4
  %2 = call i32 @f1(i32 noundef 84215045)
  %.not = icmp eq i32 %2, 33686018
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  %5 = call i32 @f2(i32 noundef 84215045)
  %6 = bitcast <4 x i8>* %1 to i32*
  %lhsv = load i32, i32* %6, align 4
  %.not1 = icmp eq i32 %lhsv, %5
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %4
  call void @abort() #4
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %4
  %9 = bitcast <4 x i8>* %1 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @f3(i32 noundef 84215045, i32 noundef %10)
  %.not3 = icmp eq i32 %10, %11
  br i1 %.not3, label %13, label %12

12:                                               ; preds = %8
  call void @abort() #4
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %8
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %12, %7, %3
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
