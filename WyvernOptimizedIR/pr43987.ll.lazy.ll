; ModuleID = './pr43987.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43987.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B = dso_local global [2048 x i8] zeroinitializer, align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @add_input_file(i8** noundef %0) #0 {
  %2 = load i8***, i8**** bitcast (i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @B, i64 0, i64 8) to i8****), align 8
  store i8** %0, i8*** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i8*, align 8
  store i8** %1, i8*** bitcast (i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @B, i64 0, i64 8) to i8***), align 8
  call void @add_input_file(i8** noundef nonnull inttoptr (i64 -1 to i8**))
  %2 = load i8**, i8*** bitcast (i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @B, i64 0, i64 8) to i8***), align 8
  %3 = load i8*, i8** %2, align 8
  %.not = icmp eq i8* %3, inttoptr (i64 -1 to i8*)
  br i1 %.not, label %5, label %4

4:                                                ; preds = %0
  call void @abort() #3
  unreachable

5:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
