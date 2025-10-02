; ModuleID = './20030224-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030224-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { %struct.jint16_t, %struct.jint16_t, i32 }
%struct.jint16_t = type { i16 }

@node = dso_local global %struct.node zeroinitializer, align 1
@node_p = dso_local global %struct.node* @node, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.node, align 2
  %2 = getelementptr inbounds %struct.node, %struct.node* %1, i64 0, i32 0, i32 0
  store i16 6533, i16* %2, align 2
  %3 = getelementptr inbounds %struct.node, %struct.node* %1, i64 0, i32 1, i32 0
  store i16 8195, i16* %3, align 2
  %4 = getelementptr inbounds %struct.node, %struct.node* %1, i64 0, i32 2
  %5 = load %struct.node*, %struct.node** @node_p, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i64 0, i32 2
  %7 = load i32, i32* %6, align 1
  store i32 %7, i32* %4, align 2
  %8 = getelementptr inbounds %struct.node, %struct.node* %1, i64 0, i32 0, i32 0
  %9 = load i16, i16* %8, align 2
  %.not = icmp eq i16 %9, 6533
  br i1 %.not, label %11, label %10

10:                                               ; preds = %0
  call void @abort() #2
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.node, %struct.node* %1, i64 0, i32 1, i32 0
  %13 = load i16, i16* %12, align 2
  %.not1 = icmp eq i16 %13, 8195
  br i1 %.not1, label %15, label %14

14:                                               ; preds = %11
  call void @abort() #2
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %11
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %14, %10
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
