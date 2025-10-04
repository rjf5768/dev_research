; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030224-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030224-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { %struct.jint16_t, %struct.jint16_t, i32 }
%struct.jint16_t = type { i16 }

@node = dso_local global %struct.node zeroinitializer, align 1
@node_p = dso_local global %struct.node* @node, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.node, align 1
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.jint16_t, %struct.jint16_t* %3, i32 0, i32 0
  store i16 6533, i16* %4, align 1
  %5 = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 1
  %6 = getelementptr inbounds %struct.jint16_t, %struct.jint16_t* %5, i32 0, i32 0
  store i16 8195, i16* %6, align 1
  %7 = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 2
  %8 = load %struct.node*, %struct.node** @node_p, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 1
  store i32 %10, i32* %7, align 1
  %11 = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  %12 = getelementptr inbounds %struct.jint16_t, %struct.jint16_t* %11, i32 0, i32 0
  %13 = load i16, i16* %12, align 1
  %14 = sext i16 %13 to i32
  %15 = icmp ne i32 %14, 6533
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  call void @abort() #2
  unreachable

17:                                               ; preds = %0
  %18 = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 1
  %19 = getelementptr inbounds %struct.jint16_t, %struct.jint16_t* %18, i32 0, i32 0
  %20 = load i16, i16* %19, align 1
  %21 = sext i16 %20 to i32
  %22 = icmp ne i32 %21, 8195
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  call void @abort() #2
  unreachable

24:                                               ; preds = %17
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
