; ModuleID = './usersub.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/perl/usersub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab = type { %struct.stabptrs*, i32, %union.anon.0, i32, %struct.string*, i8, i8, i8, i8 }
%struct.stabptrs = type { [4 x i8], %struct.string*, %struct.stio*, %struct.formcmd*, %struct.atbl*, %struct.htbl*, %struct.htbl*, %struct.sub*, i32, i16, i8 }
%struct.stio = type { %struct._IO_FILE*, %struct._IO_FILE*, %struct.__dirstream*, i64, i64, i64, i64, i8*, %struct.stab*, i8*, %struct.stab*, i16, i8, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__dirstream = type opaque
%struct.formcmd = type { %struct.formcmd*, %struct.arg*, %struct.string*, i16, i8*, i16, i16, i16, i8, i8 }
%struct.arg = type { %union.argptr, i16, i16, i16 }
%union.argptr = type { %struct.arg* }
%struct.atbl = type { %struct.string**, %struct.string**, %struct.string*, i32, i32, i8 }
%struct.htbl = type { %struct.hentry**, i32, i32, i32, i32, %struct.hentry*, %struct.scanpat*, i8*, i8 }
%struct.hentry = type { %struct.hentry*, i8*, %struct.string*, i32, i32 }
%struct.scanpat = type { %struct.scanpat*, %struct.regexp*, %struct.arg*, %struct.arg*, %struct.string*, i8, i8 }
%struct.regexp = type { i8**, i8**, %struct.string*, i8*, %struct.string*, i32, i8*, i8*, i8*, i8, i8, i8, i8, [1 x i8] }
%struct.sub = type { %struct.cmd*, i32 (...)*, i32, %struct.stab*, i64, %struct.atbl* }
%struct.cmd = type { %struct.cmd*, %struct.arg*, %struct.cmd*, %struct.string*, %struct.stab*, %struct.scanpat*, i8*, %union.ucmd, i16, i16, %struct.htbl*, %struct.stab*, i16, i8 }
%union.ucmd = type { %struct.acmd }
%struct.acmd = type { %struct.stab*, %struct.arg* }
%union.anon.0 = type { double }
%struct.string = type { i8*, i32, %union.anon, i32, %struct.string*, i8, i8, i8, i8 }
%union.anon = type { double }

@statstab = dso_local global %struct.stab* null, align 8
@statname = dso_local global %struct.string* null, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @userinit() #0 {
  ret i32 0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
