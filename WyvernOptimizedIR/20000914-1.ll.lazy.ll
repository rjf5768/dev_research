; ModuleID = './20000914-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000914-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.tree_node = type { %struct.tree_common }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @blah() #0 {
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @convert_like_real(%union.tree_node* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 2
  %3 = load i32, i32* %2, align 8
  %trunc = trunc i32 %3 to i8
  switch i8 %trunc, label %6 [
    i8 -34, label %4
  ]

4:                                                ; preds = %1
  %5 = call i32 @blah()
  ret i32 %5

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %6
  call void @abort() #5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = call dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #6
  %2 = bitcast i8* %1 to %union.tree_node*
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 2
  %4 = load i32, i32* %3, align 8
  %5 = and i32 %4, -256
  %6 = or i32 %5, 222
  store i32 %6, i32* %3, align 8
  %7 = call i32 @convert_like_real(%union.tree_node* noundef %2)
  call void @exit(i32 noundef 0) #5
  unreachable
}

declare dso_local i8* @malloc(i64 noundef) #4

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
