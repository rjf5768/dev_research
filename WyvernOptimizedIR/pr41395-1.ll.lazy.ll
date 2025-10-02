; ModuleID = './pr41395-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr41395-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VEC_char_base = type { i32, i32, [1 x i16] }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local signext i16 @foo(%struct.VEC_char_base* nocapture noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_char_base, %struct.VEC_char_base* %0, i64 0, i32 2, i64 %3
  store i16 0, i16* %4, align 2
  %5 = getelementptr inbounds %struct.VEC_char_base, %struct.VEC_char_base* %0, i64 0, i32 2, i64 8
  store i16 1, i16* %5, align 2
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.VEC_char_base, %struct.VEC_char_base* %0, i64 0, i32 2, i64 %6
  %8 = load i16, i16* %7, align 2
  ret i16 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call dereferenceable_or_null(268) i8* @malloc(i64 noundef 268) #4
  %2 = bitcast i8* %1 to %struct.VEC_char_base*
  %3 = call signext i16 @foo(%struct.VEC_char_base* noundef %2, i32 noundef 8)
  %.not = icmp eq i16 %3, 1
  br i1 %.not, label %5, label %4

4:                                                ; preds = %0
  call void @abort() #5
  unreachable

5:                                                ; preds = %0
  ret i32 0
}

declare dso_local i8* @malloc(i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
