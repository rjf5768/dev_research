; ModuleID = './floatrep.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/spiff/floatrep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.R_flstr = type { i32, i32, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.R_flstr* @R_makefloat() #0 {
  %1 = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 noundef 16) #3
  %2 = bitcast i32* %1 to %struct.R_flstr*
  %3 = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 noundef 200) #3
  %4 = getelementptr inbounds i32, i32* %1, i64 2
  %5 = bitcast i32* %4 to i32**
  store i32* %3, i32** %5, align 8
  ret %struct.R_flstr* %2
}

declare dso_local i32* @_Z_myalloc(...) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @R_getexp(%struct.R_flstr* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  ret i32 %3
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
