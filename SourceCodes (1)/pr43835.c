; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43835.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43835.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PMC = type { i32 }
%struct.Pcc_cell = type { %struct.PMC*, i64, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @Parrot_gc_mark_PMC_alive_fun(i32* noundef %0, %struct.PMC* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.PMC*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.PMC* %1, %struct.PMC** %4, align 8
  call void @abort() #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32* noundef %0, %struct.Pcc_cell* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.Pcc_cell*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.Pcc_cell* %1, %struct.Pcc_cell** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  call void @mark_cell(i32* noundef %5, %struct.Pcc_cell* noundef %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @mark_cell(i32* noundef nonnull %0, %struct.Pcc_cell* noundef nonnull %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.Pcc_cell*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.Pcc_cell* %1, %struct.Pcc_cell** %4, align 8
  %5 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %6 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 4
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %11 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %10, i32 0, i32 0
  %12 = load %struct.PMC*, %struct.PMC** %11, align 8
  %13 = icmp ne %struct.PMC* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %16 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %15, i32 0, i32 0
  %17 = load %struct.PMC*, %struct.PMC** %16, align 8
  %18 = getelementptr inbounds %struct.PMC, %struct.PMC* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 262144
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %25 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %24, i32 0, i32 0
  %26 = load %struct.PMC*, %struct.PMC** %25, align 8
  call void @Parrot_gc_mark_PMC_alive_fun(i32* noundef %23, %struct.PMC* noundef %26)
  br label %27

27:                                               ; preds = %22, %14, %9, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.Pcc_cell, align 8
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %3, i32 0, i32 0
  store %struct.PMC* null, %struct.PMC** %4, align 8
  %5 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %3, i32 0, i32 1
  store i64 42, i64* %5, align 8
  %6 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %3, i32 0, i32 2
  store i64 4, i64* %6, align 8
  call void @foo(i32* noundef %2, %struct.Pcc_cell* noundef %3)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
