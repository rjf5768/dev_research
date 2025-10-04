; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr41463.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr41463.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.tree_node = type { %struct.other_tree }
%struct.other_tree = type { %struct.tree_common, [14 x i32] }
%struct.tree_common = type { i32, i64, i64, i8*, i32 }
%struct.tree_vec = type { %struct.tree_common, i32, [1 x %union.tree_node*] }

@global = dso_local global %union.tree_node zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local %union.tree_node* @foo(%union.tree_node* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %union.tree_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.tree_node**, align 8
  store %union.tree_node* %0, %union.tree_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %union.tree_node*, %union.tree_node** %3, align 8
  %7 = bitcast %union.tree_node* %6 to %struct.tree_vec*
  %8 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %7, i32 0, i32 2
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %8, i64 0, i64 %10
  store %union.tree_node* null, %union.tree_node** %11, align 8
  %12 = load %union.tree_node*, %union.tree_node** %3, align 8
  %13 = bitcast %union.tree_node* %12 to %struct.tree_vec*
  %14 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %13, i32 0, i32 2
  %15 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %14, i64 0, i64 1
  store %union.tree_node** %15, %union.tree_node*** %5, align 8
  %16 = load %union.tree_node**, %union.tree_node*** %5, align 8
  store %union.tree_node* @global, %union.tree_node** %16, align 8
  %17 = load %union.tree_node*, %union.tree_node** %3, align 8
  %18 = bitcast %union.tree_node* %17 to %struct.tree_vec*
  %19 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %18, i32 0, i32 2
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %19, i64 0, i64 %21
  %23 = load %union.tree_node*, %union.tree_node** %22, align 8
  ret %union.tree_node* %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.tree_node*, align 8
  store i32 0, i32* %1, align 4
  %3 = call noalias i8* @malloc(i64 noundef 96) #3
  %4 = bitcast i8* %3 to %union.tree_node*
  store %union.tree_node* %4, %union.tree_node** %2, align 8
  %5 = load %union.tree_node*, %union.tree_node** %2, align 8
  %6 = call %union.tree_node* @foo(%union.tree_node* noundef %5, i32 noundef 1)
  %7 = icmp ne %union.tree_node* %6, @global
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void @abort() #4
  unreachable

9:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
