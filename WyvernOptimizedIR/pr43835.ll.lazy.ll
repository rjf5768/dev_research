; ModuleID = './pr43835.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43835.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PMC = type { i32 }
%struct.Pcc_cell = type { %struct.PMC*, i64, i64 }

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @Parrot_gc_mark_PMC_alive_fun(i32* nocapture noundef readnone %0, %struct.PMC* nocapture noundef readnone %1) #0 {
  call void @abort() #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32* nocapture noundef nonnull readnone %0, %struct.Pcc_cell* nocapture noundef nonnull readonly %1) #2 {
  call void @mark_cell(i32* noundef %0, %struct.Pcc_cell* noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @mark_cell(i32* nocapture noundef nonnull readnone %0, %struct.Pcc_cell* nocapture noundef nonnull readonly %1) #2 {
  %3 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 2
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 4
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %8 = load %struct.PMC*, %struct.PMC** %7, align 8
  %.not = icmp eq %struct.PMC* %8, null
  br i1 %.not, label %18, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %11 = load %struct.PMC*, %struct.PMC** %10, align 8
  %12 = getelementptr inbounds %struct.PMC, %struct.PMC* %11, i64 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 262144
  %.not1 = icmp eq i32 %14, 0
  br i1 %.not1, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %1, i64 0, i32 0
  %17 = load %struct.PMC*, %struct.PMC** %16, align 8
  call void @Parrot_gc_mark_PMC_alive_fun(i32* noundef nonnull %0, %struct.PMC* noundef %17)
  br label %18

18:                                               ; preds = %15, %9, %6, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Pcc_cell, align 8
  %3 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %2, i64 0, i32 0
  store %struct.PMC* null, %struct.PMC** %3, align 8
  %4 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %2, i64 0, i32 1
  store i64 42, i64* %4, align 8
  %5 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %2, i64 0, i32 2
  store i64 4, i64* %5, align 8
  call void @foo(i32* noundef %1, %struct.Pcc_cell* noundef %2)
  ret i32 0
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
