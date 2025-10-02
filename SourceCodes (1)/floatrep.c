; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/spiff/floatrep.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/spiff/floatrep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.R_flstr = type { i32, i32, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.R_flstr* @R_makefloat() #0 {
  %1 = alloca %struct.R_flstr*, align 8
  %2 = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 noundef 16)
  %3 = bitcast i32* %2 to %struct.R_flstr*
  store %struct.R_flstr* %3, %struct.R_flstr** %1, align 8
  %4 = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 noundef 200)
  %5 = bitcast i32* %4 to i8*
  %6 = load %struct.R_flstr*, %struct.R_flstr** %1, align 8
  %7 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %6, i32 0, i32 2
  store i8* %5, i8** %7, align 8
  %8 = load %struct.R_flstr*, %struct.R_flstr** %1, align 8
  ret %struct.R_flstr* %8
}

declare dso_local i32* @_Z_myalloc(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @R_getexp(%struct.R_flstr* noundef %0) #0 {
  %2 = alloca %struct.R_flstr*, align 8
  store %struct.R_flstr* %0, %struct.R_flstr** %2, align 8
  %3 = load %struct.R_flstr*, %struct.R_flstr** %2, align 8
  %4 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
