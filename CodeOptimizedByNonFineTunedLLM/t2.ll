; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/t2.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/t2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @tableput() #0 {
  call void @saveline()
  call void @savefill()
  call void @ifdivert()
  call void @cleanfc()
  call void @getcomm()
  call void @getspec()
  call void @gettbl()
  call void @getstop()
  call void @checkuse()
  call void @choochar()
  call void @maktab()
  call void @runout()
  call void @release()
  call void @rstofill()
  call void @endoff()
  call void @restline()
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

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
