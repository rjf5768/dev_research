; ModuleID = './patch-malloc.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/perl/patch-malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @malloc(i32 noundef %0) #0 {
  %2 = call i8* (i32, ...) bitcast (i8* (...)* @bZa to i8* (i32, ...)*)(i32 noundef %0) #3
  ret i8* %2
}

declare dso_local i8* @bZa(...) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local noalias i8* @calloc(i32 noundef %0) #2 {
  ret i8* undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @free(i8* noundef %0) #0 {
  %2 = call i32 (i8*, ...) bitcast (i32 (...)* @bZf to i32 (i8*, ...)*)(i8* noundef %0) #3
  ret i32 undef
}

declare dso_local i32 @bZf(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @realloc(i8* noundef %0, i32 noundef %1) #0 {
  %3 = call i8* (i8*, i32, ...) bitcast (i8* (...)* @bZr to i8* (i8*, i32, ...)*)(i8* noundef %0, i32 noundef %1) #3
  ret i8* %3
}

declare dso_local i8* @bZr(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
