; ModuleID = './pr64718.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr64718.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = internal global i32 4660, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i32, i32* @a, align 4
  %2 = call i32 @swap(i32 noundef %1)
  %.not = icmp eq i32 %2, 13330
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  %5 = call i32 @swap(i32 noundef 4660)
  %.not1 = icmp eq i32 %5, 13330
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %4
  call void @abort() #4
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %6, %3
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @swap(i32 noundef %0) #1 {
  %trunc = trunc i32 %0 to i16
  %rev = call i16 @llvm.bswap.i16(i16 %trunc)
  %2 = zext i16 %rev to i32
  ret i32 %2
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
