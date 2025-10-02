; ModuleID = './20091028-1_1.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/lto/20091028-1_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = dso_local global i8* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @int_gen_ti_header_c_(i8* nocapture noundef readnone %0, i32* nocapture noundef readnone %1, i32* nocapture noundef readnone %2, i32* noundef %3, i32* nocapture noundef readnone %4, i8* noundef %5, i32* nocapture noundef readonly %6, i32* nocapture noundef readnone %7) #0 {
  %9 = load i32*, i32** bitcast (i8** @p to i32**), align 8
  %10 = load i32, i32* %3, align 1
  store i32 %10, i32* %9, align 1
  %11 = load i8*, i8** @p, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %3, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %5, i64 %15, i1 false)
  ret void
}

declare dso_local void @bcopy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
