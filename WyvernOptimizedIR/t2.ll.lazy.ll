; ModuleID = './t2.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/t2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @tableput() #0 {
  call void @saveline() #2
  call void @savefill() #2
  call void @ifdivert() #2
  call void @cleanfc() #2
  call void @getcomm() #2
  call void @getspec() #2
  call void @gettbl() #2
  call void @getstop() #2
  call void @checkuse() #2
  call void @choochar() #2
  call void @maktab() #2
  call void @runout() #2
  call void @release() #2
  call void @rstofill() #2
  call void @endoff() #2
  call void @restline() #2
  ret void
}

declare dso_local void @saveline() #1

declare dso_local void @savefill() #1

declare dso_local void @ifdivert() #1

declare dso_local void @cleanfc() #1

declare dso_local void @getcomm() #1

declare dso_local void @getspec() #1

declare dso_local void @gettbl() #1

declare dso_local void @getstop() #1

declare dso_local void @checkuse() #1

declare dso_local void @choochar() #1

declare dso_local void @maktab() #1

declare dso_local void @runout() #1

declare dso_local void @release() #1

declare dso_local void @rstofill() #1

declare dso_local void @endoff() #1

declare dso_local void @restline() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
