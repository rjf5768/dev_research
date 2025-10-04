; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000914-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000914-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.tree_node = type { %struct.tree_common }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @blah() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* %1, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @convert_like_real(%union.tree_node* noundef %0) #0 {
  %2 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8
  %4 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, 255
  switch i32 %7, label %10 [
    i32 222, label %8
  ]

8:                                                ; preds = %1
  %9 = call i32 @blah()
  ret i32 %9

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10
  call void @abort() #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.tree_node*, align 8
  store i32 0, i32* %1, align 4
  %3 = call i8* @malloc(i64 noundef 24)
  %4 = bitcast i8* %3 to %union.tree_node*
  store %union.tree_node* %4, %union.tree_node** %2, align 8
  %5 = load %union.tree_node*, %union.tree_node** %2, align 8
  %6 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = and i32 %8, -256
  %10 = or i32 %9, 222
  store i32 %10, i32* %7, align 8
  %11 = load %union.tree_node*, %union.tree_node** %2, align 8
  %12 = call i32 @convert_like_real(%union.tree_node* noundef %11)
  call void @exit(i32 noundef 0) #3
  unreachable
}

declare dso_local i8* @malloc(i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
